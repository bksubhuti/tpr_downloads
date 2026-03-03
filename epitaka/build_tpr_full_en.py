import sqlite3
import os
from itertools import groupby
from collections import defaultdict

# ── Configuration ───────────────────────────────────────────────────────
LANGUAGE = "english"
DB_PATH = "translations.db" 
TPR_DB_PATH = "tipitaka_pali.db" 

book_id_mapping = {
    # ═══════════════════════════════════════════════════════════════════════
    # MŪLA — canonical texts
    # ═══════════════════════════════════════════════════════════════════════

    # ── Vinaya Piṭaka ────────────────────────────────────────────────────
    "mula_vi_01":    ("vin01m.mul",   1),   # Pārājikapāḷi
    "mula_vi_02":    ("vin02m1.mul",  1),   # Pācittiyapāḷi
    "mula_vi_03":    ("vin02m2.mul",  1),   # Mahāvaggapāḷi
    "mula_vi_04":    ("vin02m3.mul",  1),   # Cūḷavaggapāḷi
    "mula_vi_05":    ("vin02m4.mul",  1),   # Parivārapāḷi

    # ── Dīgha Nikāya ────────────────────────────────────────────────────
    "mula_di_01":    ("s0101m.mul",   1),   # Sīlakkhandhavaggapāḷi
    "mula_di_02":    ("s0102m.mul",   1),   # Mahāvaggapāḷi
    "mula_di_03":    ("s0103m.mul",   1),   # Pāthikavaggapāḷi

    # ── Majjhima Nikāya ─────────────────────────────────────────────────
    "mula_ma_01":    ("s0201m.mul",   1),   # Mūlapaṇṇāsapāḷi
    "mula_ma_02":    ("s0202m.mul",   1),   # Majjhimapaṇṇāsapāḷi
    "mula_ma_03":    ("s0203m.mul",   1),   # Uparipaṇṇāsapāḷi

    # ── Saṃyutta Nikāya ─────────────────────────────────────────────────
    "mula_sa_01":    ("s0301m.mul",   1),   # Sagāthāvaggapāḷi
    "mula_sa_02":    ("s0302m.mul", 243),   # Nidānavaggapāḷi
    "mula_sa_03":    ("s0303m.mul",   1),   # Khandhavaggapāḷi
    "mula_sa_04":    ("s0304m.mul", 236),   # Saḷāyatanavaggapāḷi
    "mula_sa_05":    ("s0305m.mul",   1),   # Mahāvaggapāḷi

    # ── Aṅguttara Nikāya ────────────────────────────────────────────────
    "mula_an_01":    ("s0401m.mul",   1),   # Ekakanipātapāḷi
    "mula_an_02":    ("s0402m1.mul",  49),  # Dukanipātapāḷi
    "mula_an_03":    ("s0402m2.mul",  99),  # Tikanipātapāḷi
    "mula_an_04":    ("s0402m3.mul", 307),  # Catukkanipātapāḷi
    "mula_an_05":    ("s0403m1.mul",  1),   # Pañcakanipātapāḷi
    "mula_an_06":    ("s0403m2.mul", 247),  # Chakkanipātapāḷi
    "mula_an_07":    ("s0403m3.mul", 395),  # Sattakanipātapāḷi
    "mula_an_08":    ("s0404m1.mul",  1),   # Aṭṭhakanipātapāḷi
    "mula_an_09":    ("s0404m2.mul", 163),  # Navakanipātapāḷi
    "mula_an_10":    ("s0404m3.mul", 257),  # Dasakanipātapāḷi
    "mula_an_11":    ("s0404m4.mul", 515),  # Ekādasakanipātapāḷi

    # ── Khuddaka Nikāya ─────────────────────────────────────────────────
    "mula_ku_01":    ("s0501m.mul",   1),   # Khuddakapāṭhapāḷi
    "mula_ku_02":    ("s0502m.mul",  13),   # Dhammapadapāḷi
    "mula_ku_03":    ("s0503m.mul",  77),   # Udānapāḷi
    "mula_ku_04":    ("s0504m.mul", 195),   # Itivuttakapāḷi
    "mula_ku_05":    ("s0505m.mul", 279),   # Suttanipātapāḷi
    "mula_ku_06":    ("s0506m.mul",   1),   # Vimānavatthupāḷi
    "mula_ku_07":    ("s0507m.mul", 127),   # Petavatthupāḷi
    "mula_ku_08":    ("s0508m.mul", 219),   # Theragāthāpāḷi
    "mula_ku_09":    ("s0509m.mul", 377),   # Therīgāthāpāḷi
    "mula_ku_10":    ("s0510m1.mul",  1),   # Apadānapāḷi-1
    "mula_ku_11":    ("s0510m2.mul",  1),   # Apadānapāḷi-2
    "mula_ku_12":    ("s0511m.mul",  299),  # Buddhavaṃsapāḷi
    "mula_ku_13":    ("s0512m.mul",  385),  # Cariyāpiṭakapāḷi
    "mula_ku_14":    ("s0513m.mul",   1),   # Jātakapāḷi-1
    "mula_ku_15":    ("s0514m.mul",   1),   # Jātakapāḷi-2
    "mula_ku_16":    ("s0515m.mul",   1),   # Mahāniddesapāḷi
    "mula_ku_17":    ("s0516m.mul",   1),   # Cūḷaniddesapāḷi
    "mula_ku_18":    ("s0517m.mul",   1),   # Paṭisambhidāmaggapāḷi
    "mula_ku_19":    ("s0518m.nrf",   1),   # Milindapañhapāḷi
    "mula_ku_20":    ("s0519m.mul",   1),   # Nettippakaraṇapāḷi
    "mula_ku_21":    ("s0520m.nrf",  167),  # Peṭakopadesapāḷi

    # ── Abhidhamma Piṭaka ───────────────────────────────────────────────
    "mula_bi_01":    ("abh01m.mul",   1),   # Dhammasaṅgaṇīpāḷi
    "mula_bi_02":    ("abh02m.mul",   1),   # Vibhaṅgapāḷi
    "mula_bi_03":    ("abh03m1.mul",  1),   # Dhātukathāpāḷi
    "mula_bi_04":    ("abh03m2.mul", 101),  # Puggalapaññattipāḷi
    "mula_bi_05":    ("abh03m3.mul",  1),   # Kathāvatthupāḷi
    "mula_bi_06_01": ("abh03m4.mul",  1),   # Yamakapāḷi-1
    "mula_bi_06_02": ("abh03m5.mul",  1),   # Yamakapāḷi-2
    "mula_bi_06_03": ("abh03m6.mul",  1),   # Yamakapāḷi-3
    "mula_bi_07_01": ("abh03m7.mul",  1),   # Paṭṭhānapāḷi-1
    "mula_bi_07_02": ("abh03m8.mul",  1),   # Paṭṭhānapāḷi-2
    "mula_bi_07_03": ("abh03m9.mul",  1),   # Paṭṭhānapāḷi-3
    "mula_bi_07_04": ("abh03m10.mul", 1),   # Paṭṭhānapāḷi-4
    "mula_bi_07_05": ("abh03m11.mul", 1),   # Paṭṭhānapāḷi-5

    # ═══════════════════════════════════════════════════════════════════════
    # AṬṬHAKATHĀ — commentaries
    # ═══════════════════════════════════════════════════════════════════════

    # ── Vinaya Aṭṭhakathā ───────────────────────────────────────────────
    "attha_vi_01_01": ("vin01a.att",   "1.1"),  # Pārājikakaṇḍa-aṭṭhakathā (pa)
    "attha_vi_01_02": ("vin01a.att",   "2.1"),  # Pārājikakaṇḍa-aṭṭhakathā (du)
    "attha_vi_02":    ("vin02a1.att",  1),  # Pācittiya-aṭṭhakathā
    "attha_vi_03":    ("vin02a2.att", 233), # Mahāvagga-aṭṭhakathā
    "attha_vi_04":    ("vin02a3.att",  1),  # Cūḷavagga-aṭṭhakathā
    "attha_vi_05":    ("vin02a4.att", 137), # Parivāra-aṭṭhakathā

    # ── Dīgha Aṭṭhakathā ────────────────────────────────────────────────
    "attha_di_01":    ("s0101a.att",   1),  # Sīlakkhandhavagga-aṭṭhakathā
    "attha_di_02":    ("s0102a.att",   1),  # Mahāvagga-aṭṭhakathā
    "attha_di_03":    ("s0103a.att",   1),  # Pāthikavagga-aṭṭhakathā

    # ── Majjhima Aṭṭhakathā ─────────────────────────────────────────────
    "attha_ma_01_01": ("s0201a.att",   "1.1"),  # Mūlapaṇṇāsa-aṭṭhakathā (pa)
    "attha_ma_01_02": ("s0201a.att",   "2.1"),  # Mūlapaṇṇāsa-aṭṭhakathā (du)
    "attha_ma_02":    ("s0202a.att",   1),  # Majjhimapaṇṇāsa-aṭṭhakathā
    "attha_ma_03":    ("s0203a.att",   1),  # Uparipaṇṇāsa-aṭṭhakathā

    # ── Saṃyutta Aṭṭhakathā ─────────────────────────────────────────────
    "attha_sa_01":    ("s0301a.att",   1),  # Sagāthāvagga-aṭṭhakathā
    "attha_sa_02":    ("s0302a.att",   1),  # Nidānavagga-aṭṭhakathā
    "attha_sa_03":    ("s0303a.att", 229),  # Khandhavagga-aṭṭhakathā
    "attha_sa_04":    ("s0304a.att",   1),  # Saḷāyatanavagga-aṭṭhakathā
    "attha_sa_05":    ("s0305a.att", 153),  # Mahāvagga-aṭṭhakathā

    # ── Aṅguttara Aṭṭhakathā ────────────────────────────────────────────
    "attha_an_01":    ("s0401a.att",   1),  # Ekakanipāta-aṭṭhakathā
    "attha_an_02":    ("s0402a.att",   1),  # Duka-tika-catukka-aṭṭhakathā
    "attha_an_03":    ("s0403a.att",   1),  # Pañcaka-chakka-sattaka-aṭṭhakathā
    "attha_an_04":    ("s0404a.att", 193),  # Aṭṭhakādi-aṭṭhakathā

    # ── Khuddaka Aṭṭhakathā ─────────────────────────────────────────────
    "attha_ku_01":    ("s0501a.att",   1),  # Khuddakapāṭha-aṭṭhakathā
    "attha_ku_02_01": ("s0502a.att",   "1.1"),  # Dhammapada-aṭṭhakathā (pa)
    "attha_ku_02_02": ("s0502a.att",   "2.1"),  # Dhammapada-aṭṭhakathā (du)
    "attha_ku_03":    ("s0503a.att",   1),  # Udāna-aṭṭhakathā
    "attha_ku_04":    ("s0504a.att",   1),  # Itivuttaka-aṭṭhakathā
    "attha_ku_05_01": ("s0505a.att",   "1.1"),  # Suttanipāta-aṭṭhakathā (pa)
    "attha_ku_05_02": ("s0505a.att",   "2.1"),  # Suttanipāta-aṭṭhakathā (du)
    "attha_ku_06":    ("s0506a.att",   1),  # Vimānavatthu-aṭṭhakathā
    "attha_ku_07":    ("s0507a.att",   1),  # Petavatthu-aṭṭhakathā
    "attha_ku_08_01": ("s0508a1.att",  1),  # Theragāthā-aṭṭhakathā (pa)
    "attha_ku_08_02": ("s0508a2.att",  1),  # Theragāthā-aṭṭhakathā (du)
    "attha_ku_09":    ("s0509a.att",   1),  # Therīgāthā-aṭṭhakathā
    "attha_ku_10":    ("s0510a.att",   "1.1"),  # Apadāna-aṭṭhakathā (pa)
    "attha_ku_11":    ("s0510a.att",   "2.1"),  # Apadāna-aṭṭhakathā (du)
    "attha_ku_12":    ("s0511a.att",   1),  # Buddhavaṃsa-aṭṭhakathā
    "attha_ku_13":    ("s0512a.att",   1),  # Cariyāpiṭaka-aṭṭhakathā
    "attha_ku_16":    ("s0515a.att",   1),  # Mahāniddesa-aṭṭhakathā
    "attha_ku_17":    ("s0516a.att",   1),  # Cūḷaniddesa-aṭṭhakathā
    "attha_ku_18_01": ("s0517a.att",   "1.1"),  # Paṭisambhidāmagga-aṭṭhakathā (pa)
    "attha_ku_18_02": ("s0517a.att",   "2.1"),  # Paṭisambhidāmagga-aṭṭhakathā (du)
    "attha_ku_20":    ("s0519a.att",   1),  # Nettippakaraṇa-aṭṭhakathā
    "attha_ku_zat_01": ("s0513a1.att", 1),  # Jātaka-aṭṭhakathā vol 1
    "attha_ku_zat_02": ("s0513a2.att", 1),  # Jātaka-aṭṭhakathā vol 2
    "attha_ku_zat_03": ("s0513a3.att", 1),  # Jātaka-aṭṭhakathā vol 3
    "attha_ku_zat_04": ("s0513a4.att", 1),  # Jātaka-aṭṭhakathā vol 4
    "attha_ku_zat_05": ("s0514a1.att", 1),  # Jātaka-aṭṭhakathā vol 5
    "attha_ku_zat_06": ("s0514a2.att", 1),  # Jātaka-aṭṭhakathā vol 6
    "attha_ku_zat_07": ("s0514a3.att", 1),  # Jātaka-aṭṭhakathā vol 7

    # ── Abhidhamma Aṭṭhakathā ───────────────────────────────────────────
    "attha_bi_01":    ("abh01a.att",   1),  # Dhammasaṅgaṇi-aṭṭhakathā
    "attha_bi_02":    ("abh02a.att",   1),  # Sammohavinodanī (Vibhaṅga-aṭṭhakathā)
    "attha_bi_03":    ("abh03a.att",   1),  # Pañcapakaraṇa-aṭṭhakathā

    # ═══════════════════════════════════════════════════════════════════════
    # ṬĪKĀ — sub-commentaries
    # ═══════════════════════════════════════════════════════════════════════

    # ── Vinaya Ṭīkā ─────────────────────────────────────────────────────
    "tika_vi_01":    ("vin01t1.tik",  1),   # Sāratthadīpanī-ṭīkā-1
    "tika_vi_02":    ("vin01t2.tik",  1),   # Sāratthadīpanī-ṭīkā-2
    "tika_vi_03":    ("vin02t.tik",   1),   # Sāratthadīpanī-ṭīkā-3
    "tika_vi_04":    ("vin06t.nrf",   1),   # Vajirabuddhi-ṭīkā
    "tika_vi_05":    ("vin07t.nrf",   "1.1"),   # Vimativinodanī-ṭīkā (pa)
    "tika_vi_06":    ("vin07t.nrf",   "2.1"),   # Vimativinodanī-ṭīkā (du)

    # ── Dīgha Ṭīkā ──────────────────────────────────────────────────────
    "tika_di_01_01": ("s0101t.tik",   1),   # Sīlakkhandhavagga-ṭīkā
    "tika_di_01_02": ("s0104t.nrf",   1),   # Sīlakkhandhavagga-abhinavaṭīkā (pa)
    "tika_di_01_03": ("s0105t.nrf",   1),   # Sīlakkhandhavagga-abhinavaṭīkā (du)
    "tika_di_02":    ("s0102t.tik",   1),   # Mahāvagga-ṭīkā
    "tika_di_03":    ("s0103t.tik",   1),   # Pāthikavagga-ṭīkā

    # ── Majjhima Ṭīkā ───────────────────────────────────────────────────
    "tika_ma_01":    ("s0201t.tik",   "1.1"),   # Mūlapaṇṇāsa-ṭīkā (pa)
    "tika_ma_02":    ("s0201t.tik",   "2.1"),   # Mūlapaṇṇāsa-ṭīkā (du)
    "tika_ma_03":    ("s0202t.tik",   1),   # Majjhimapaṇṇāsa-ṭīkā
    "tika_ma_04":    ("s0203t.tik", 211),   # Uparipaṇṇāsa-ṭīkā

    # ── Saṃyutta Ṭīkā ───────────────────────────────────────────────────
    "tika_sa_01":    ("s0301t.tik",   1),   # Sagāthāvagga-ṭīkā
    "tika_sa_02":    ("s0302t.tik",   1),   # Nidānavagga-ṭīkā
    "tika_sa_03":    ("s0303t.tik", 201),   # Khandhavagga-ṭīkā
    "tika_sa_04":    ("s0304t.tik", 281),   # Saḷāyatanavagga-ṭīkā
    "tika_sa_05":    ("s0305t.tik", 393),   # Mahāvagga-ṭīkā

    # ── Aṅguttara Ṭīkā ──────────────────────────────────────────────────
    "tika_an_01":    ("s0401t.tik",   1),   # Ekakanipāta-ṭīkā
    "tika_an_02":    ("s0402t.tik",   1),   # Dukādi-ṭīkā
    "tika_an_03":    ("s0403t.tik",   1),   # Pañcakādi-ṭīkā
    "tika_an_04":    ("s0404t.tik", 203),   # Aṭṭhakādi-ṭīkā

    # ── Khuddaka Ṭīkā ───────────────────────────────────────────────────
    "tika_ku_20_01": ("s0519t.tik",   1),   # Nettippakaraṇa-ṭīkā
    "tika_ku_20_02": ("s0501t.nrf",   1),   # Nettivibhāvinī

    # ── Abhidhamma Ṭīkā ─────────────────────────────────────────────────
    "tika_bi_01":    ("abh01t.tik",   1),   # Dhammasaṅgaṇī-mūlaṭīkā
    "tika_bi_02_01": ("abh02t.tik",   "1.1"),   # Vibhaṅga-mūlaṭīkā (pa)
    "tika_bi_02_02": ("abh02t.tik",   "2.1"),   # Vibhaṅga-anuṭīkā (du)
    "tika_bi_03":    ("abh03t.tik",   1),   # Pañcapakaraṇa-mūlaṭīkā
    "tika_bi_04":    ("abh04t.nrf",   1),   # Dhammasaṅgaṇī-anuṭīkā
    "tika_bi_05":    ("abh05t.nrf",   1),   # Pañcapakaraṇa-anuṭīkā

    # ═══════════════════════════════════════════════════════════════════════
    # AÑÑA — other works
    # ═══════════════════════════════════════════════════════════════════════

    # ── Vinaya-related Añña ─────────────────────────────────────────────
    "annya_vi_01":   ("vin04t.nrf",  1),    # Dvemātikā / Kaṅkhāvitaraṇī
    "annya_vi_02":   ("vin05t.nrf",  1),    # Vinayasaṅgaha-aṭṭhakathā
    "annya_vi_03":   ("vin10t.nrf",  1),    # Vinayavinicchayo / Uttaravinicchayo
    "annya_vi_04":   ("vin13t.nrf",  1),    # Khuddasikkhā / Mūlasikkhā
    "annya_vi_07":   ("vin08t.nrf",  "1.1"),    # Vinayālaṅkāra-ṭīkā (pa)
    "annya_vi_08":   ("vin08t.nrf",  "2.1"),    # Vinayālaṅkāra-ṭīkā (du)
    "annya_vi_09":   ("vin09t.nrf",  1),    # Kaṅkhāvitaraṇī purāṇa/abhinava ṭīkā
    "annya_vi_10":   ("vin11t.nrf",  "1.1"),    # Vinayavinicchaya-ṭīkā (pa)
    "annya_vi_11":   ("vin11t.nrf",  "2.1"),    # Vinayavinicchaya-ṭīkā (du)
    "annya_vi_12":   ("vin12t.nrf",  1),    # Pācityādiyojanā

    # ── Visuddhimagga & Abhidhamma companions ───────────────────────────
    "annya_bi_01":   ("e0101n.mul",  1),    # Visuddhimagga (pa)
    "annya_bi_02":   ("e0102n.mul",  1),    # Visuddhimagga (du)
    "annya_bi_03":   ("e0103n.att",  1),    # Visuddhimagga-mahāṭīkā (pa)
    "annya_bi_04":   ("e0104n.att",  1),    # Visuddhimagga-mahāṭīkā (du)
    "annya_bi_05":   ("abh07t.nrf",  1),    # Abhidhammatthasaṅgaho
    "annya_bi_06":   ("abh07t.nrf", 69),    # Abhidhammatthavibhāvinī
    "annya_bi_07":   ("e0301n.nrf",  1),    # Paramatthadīpanī

    # ── Grammar / Byākaraṇa ─────────────────────────────────────────────
    "annya_sadda_01": ("e0802n.nrf",   1),
    "annya_sadda_02": ("e0805n.nrf",   1),
    "annya_sadda_03": ("e0801n.nrf",   1),
    "annya_sadda_05": ("e0806n.nrf",   1),
    "annya_sadda_06": ("e0807n.nrf",   1),
    "annya_sadda_07": ("e0803n.nrf",   1),
    "annya_sadda_08": ("e0804n.nrf",   1),
    "annya_sadda_09": ("e0804n.nrf",   1),
    "annya_sadda_10": ("e0201n.nrf",   1),
    "annya_sadda_11": ("e0809n.nrf",   1),
    "annya_sadda_12": ("e0810n.nrf",   1),
    "annya_sadda_13": ("e0808n.nrf", 192),
    "annya_sadda_14": ("e0811n.nrf", 156),
    "annya_sadda_15": ("e0812n.nrf",   1),
    "annya_sadda_16": ("e0802n.nrf",   1),
    "annya_sadda_17": ("e0802n.nrf",   1),
}


def parse_page_string(p) -> tuple[int, int]:
    if p is None: return (1, 1)
    s = str(p).strip()
    if '.' in s:
        parts = s.split('.')
        v = int(parts[0]) if parts[0].isdigit() else 1
        pg = int(parts[1]) if len(parts) > 1 and parts[1].isdigit() else 1
        return (v, pg)
    return (1, int(s) if s.isdigit() else 1)


def render_inline(text: str) -> str:
    result, i = [], 0
    while i < len(text):
        if text[i] == '`':
            end = text.find('`', i + 1)
            if end != -1:
                result.append(f'<span class="paranum">{text[i+1:end]}</span>')
                i = end + 1; continue
        if text[i:i+2] == '**':
            end = text.find('**', i + 2)
            if end != -1:
                result.append(f'<span class="bld">{text[i+2:end]}</span>')
                i = end + 2; continue
        if text[i:i+2] == r'\[':
            end = text.find(r'\]', i + 2)
            if end != -1:
                result.append(f'<span class="note">[{text[i+2:end]}]</span>')
                i = end + 2; continue
        if text[i] == '[':
            end = text.find(']', i + 1)
            if end != -1:
                result.append(f'<span class="note">[{text[i+1:end]}]</span>')
                i = end + 1; continue
        result.append(text[i]); i += 1
    return "".join(result)


def parse_line(line: str) -> tuple[str, str]:
    s = line.strip()
    if not s: return ("", "")
    for hashes, cls in [("######", "subsubhead"), ("#####", "subhead"), ("####", "title"), ("###", "chapter"), ("##", "book"), ("#", "nikaya")]:
        if s.startswith(hashes + " "): return (cls, render_inline(s[len(hashes)+1:].strip()))
    if s.startswith("*") and s.endswith("*") and not s.startswith("**") and len(s) > 2:
        return ("centre", render_inline(s[1:-1].strip()))
    return ("bodytext", render_inline(s))


def format_page_content(paragraphs: dict, lang: str) -> str:
    html_parts = []
    block_classes = {"nikaya", "book", "chapter", "title", "subhead", "subsubhead", "centre"}
    
    for pid in sorted(paragraphs.keys()):
        lines = paragraphs[pid]
        body_buf = []
        
        def flush_body():
            if body_buf:
                html_parts.append(f'<p class="bodytext">\n{"\n\n<br/>\n\n".join(body_buf)}\n</p>')
                body_buf.clear()
                
        for pali_line, trans_line in lines:
            if not pali_line or not pali_line.strip(): continue
            cls, pali_txt = parse_line(pali_line)
            if not cls: continue
            
            trans_span = ""
            if trans_line:
                t_cls, t_txt = parse_line(trans_line)
                if t_cls in block_classes: t_txt = f'<span class="centre">{t_txt}</span>'
                # Uses both translation_text and english_text classes
                trans_span = f'<span class="translation_text {lang}_text">{t_txt}</span>'
                
            pali_span = f'<span class="palitext">{pali_txt}</span>'
            
            if cls in block_classes:
                flush_body()
                html_parts.append(f'<p class="{cls}">{pali_span}\n\t<br/>\n\t{trans_span}</p>')
            else:
                body_buf.append(f'{pali_span}\n\t<br/>\n\t{trans_span}')
        flush_body()
    return "\n\n".join(html_parts)


def build_paranum(vri_vals: list) -> str:
    seen = []
    for v in vri_vals:
        if v and v not in seen: seen.append(v)
    return "-" + "-".join(seen) + "-" if seen else ""


def main():
    print(f"Reading from {DB_PATH}...")
    
    split_map = defaultdict(list)
    for new_id, (orig_book, start_val) in book_id_mapping.items():
        split_map[orig_book].append((parse_page_string(start_val), new_id))
    for orig_book in split_map:
        split_map[orig_book].sort(key=lambda x: (x[0][0], x[0][1]))
        
    def get_mapped_bookid(orig_book, page_str):
        if orig_book not in split_map: return orig_book
        page_val = parse_page_string(page_str)
        segments = split_map[orig_book]
        assigned_id = segments[0][1]
        for start_val, new_id in segments:
            if (page_val[0] > start_val[0]) or (page_val[0] == start_val[0] and page_val[1] >= start_val[1]):
                assigned_id = new_id
            else: break
        return assigned_id

    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    rows = conn.execute(f"SELECT book_id, para_id, line_id, vripara, mypage, pali_sentence, {LANGUAGE}_translation FROM sentences ORDER BY book_id, para_id, line_id").fetchall()
    
    generated_pages = []
    seen_books = set()  # Tracker for applying disclaimer
    
    for book_id, book_rows in groupby(rows, key=lambda r: r["book_id"]):
        book_rows = list(book_rows)
        current_page_num_str = "1.1"
        current_page_rows = []
        pages_in_book = []
        
        for row in book_rows:
            if row["mypage"] is not None:
                if current_page_rows:
                    pages_in_book.append((current_page_num_str, current_page_rows))
                current_page_num_str = str(row["mypage"])
                current_page_rows = [row]
            else:
                if not current_page_rows: current_page_num_str = "1.1"
                current_page_rows.append(row)
        if current_page_rows:
            pages_in_book.append((current_page_num_str, current_page_rows))
            
        for page_num_str, page_rows in pages_in_book:
            paragraphs = {}
            vripara_values = []
            for row in page_rows:
                pid = row["para_id"]
                if pid not in paragraphs: paragraphs[pid] = []
                if row["pali_sentence"]:
                    paragraphs[pid].append((row["pali_sentence"], row[f"{LANGUAGE}_translation"]))
                if row["vripara"]: vripara_values.append(row["vripara"])
            
            content = format_page_content(paragraphs, LANGUAGE)
            paranum = build_paranum(vripara_values)
            assigned_bookid = get_mapped_bookid(book_id, page_num_str)
            
            vol, pure_page_int = parse_page_string(page_num_str)
            
            # UPDATED: Add Disclaimer to the very first page of each mapped book (split into two lines via <br/>)
            if assigned_bookid not in seen_books:
                disclaimer = (
                    f'<p class="translation_text {LANGUAGE}_text">'
                    f'<i>Epitaka.org AI Translation (2026)---use with discretion.<br/>'
                    f'The translation was created with Myanmar Nissaya data provided by Wikipali.org.</i>'
                    f'</p>'
                )
                content = disclaimer + "\n\n" + content
                seen_books.add(assigned_bookid)
            
            generated_pages.append((assigned_bookid, pure_page_int, content, paranum))
    conn.close()
    
    print("Building SQL script...")
    sql_parts = ["BEGIN TRANSACTION;"]
    unique_book_ids = sorted(list(set([p[0] for p in generated_pages])))
    
    conn_tpr = sqlite3.connect(TPR_DB_PATH)
    conn_tpr.row_factory = sqlite3.Row
    cur = conn_tpr.cursor()
    
    for bid in unique_book_ids:
        cur.execute("SELECT id, basket, category, name, firstpage, lastpage, pagecount FROM books WHERE id = ?", (bid,))
        book = cur.fetchone()
        if not book: continue 
        
        cat_id = book['category']
        
        sql_parts.extend([
            f"DELETE FROM tocs WHERE book_id = '{bid}';",
            f"DELETE FROM books WHERE id = '{bid}';",
            f"DELETE FROM pages WHERE bookid = '{bid}';",
            f"DELETE FROM fts_pages WHERE bookid = '{bid}';",
            f"DELETE FROM category WHERE id = '{cat_id}';",
        ])
        
        cur.execute("SELECT name, basket FROM category WHERE id = ?", (cat_id,))
        cat_row = cur.fetchone()
        if cat_row:
            cat_name = cat_row['name'].replace("'", "''")
            cat_basket = cat_row['basket'].replace("'", "''")
            sql_parts.append(f"INSERT INTO category (id, name, basket) SELECT '{cat_id}', '{cat_name}', '{cat_basket}' WHERE NOT EXISTS(SELECT 1 FROM category WHERE id = '{cat_id}');")
        
        book_name = book['name'].replace("'", "''")
        sql_parts.append(f"INSERT INTO books (id, basket, category, name, firstpage, lastpage, pagecount) VALUES ('{bid}', '{book['basket']}', '{cat_id}', '{book_name}', {book['firstpage']}, {book['lastpage']}, {book['pagecount']});")
        
        cur.execute("SELECT name, type, page_number FROM tocs WHERE book_id = ? ORDER BY page_number, rowid", (bid,))
        for toc in cur.fetchall():
            toc_name = toc['name'].replace("'", "''")
            sql_parts.append(f"INSERT INTO tocs (book_id, name, type, page_number) VALUES ('{bid}', '{toc_name}', '{toc['type']}', {toc['page_number']});")
            
    conn_tpr.close()
    
    for bid, pnum_int, content, paranum in generated_pages:
        content_escaped = content.replace("'", "''").replace("\n", " ").replace("\r", " ")
        paranum_escaped = paranum.replace("'", "''").replace("\n", " ").replace("\r", " ") if paranum else ""
        sql_parts.append(f"INSERT INTO pages (bookid, page, content, paranum) VALUES ('{bid}', {pnum_int}, '{content_escaped}', '{paranum_escaped}');")
        
    sql_parts.append("COMMIT;")
    
    out_file = f"full_{LANGUAGE}.sql"
    with open(out_file, "w", encoding="utf-8") as f:
        f.write("\n".join(sql_parts))
    print(f"Success! {len(generated_pages)} pages processed and written directly to {out_file}")

if __name__ == "__main__":
    main()
