## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM

#### Begäran Offentliga vårdgivare

![img_001.png](images/img_001.png)

#### Begäran IVO

![img_002.png](images/img_002.png)

#### Svar Offentliga vårdgivare

![img_003.png](images/img_003.png)

#### Svar IVO

![img_004.png](images/img_004.png)

#### Mappning mot RIM

| Klass.attribut | Mappning mot NI 2015-2 |
| :--- | :--- |
| legitimation.examensdatum | Saknar motsvarighet i RIM |
| legitimation.lärosäte | Saknar motsvarighet i RIM |
| hospPerson.födelseDatum | Person.födelsetidpunkt |
| hospPerson.hospId | Saknar motsvarighet i RIM |
| hospPerson.efternamn | Person.efternamn |
| hospPerson.mellannamn | Person.mellannamn |
| hospPerson.samtligaFornamn | Person.förnamn |
| hospPerson.tilltalsnamn | Person.tilltalsnamnsmarkering |
| hospPerson.skyddadidentitet | Person.sekretessmarkering |
| hospPerson.skyddadidentitetUpplysning | Saknar motsvarighet i RIM |
| hospPerson.kön | Person.kön |
| hospPerson.län | Saknar motsvarighet i RIM |
| hospPerson.kommun | Saknar motsvarighet i RIM |
| hospPerson.folkbokföringsort | Person.Adress (City) |
| hospPerson.forskrivarkod | Saknar motsvarighet i RIM |
| hospPerson.avliden | Saknar motsvarighet i RIM |
| hospPerson.avlidenDatum | avlidenDatum är mappad mot NI 2015:1 eftersom detta inte finns i 2015:2: Person.avlidentidpunkt |
| hospPerson.utvandrad | Saknar motsvarighet i RIM |
| legitimation.legitimeratYrke | Person med kompetens att utföra hälso- och sjukvård, legitimation |
| legitimation.giltigLegitimation | Saknar motsvarighet i RIM |
| legitimation.legitimationsDatum | Saknar motsvarighet i RIM |
| legitimation.forskrivningsratt | Saknar motsvarighet i RIM |
| legitimation.forskrivningsrattDatum | Saknar motsvarighet i RIM |
| legitimation.beslutsdatumFysioterapeut | Saknar motsvarighet i RIM |
| legitimation.utbildning | Saknar motsvarighet i RIM |
| legitimation.utbildningsland | Saknar motsvarighet i RIM |
| legitimation.internationellÖverrenskommelse | Saknar motsvarighet i RIM |
| legitimation.examensdatum | Saknar motsvarighet i RIM |
| legitimation.lärosäte | Saknar motsvarighet i RIM |
| legitimation.grundyrke | Saknar motsvarighet i RIM |
| specialistbevis.specialistinriktning | Person med kompetens att utföra hälso- och sjukvård, specialistkompetens |
| specialistbevis.specialistbevisDatum | Saknar motsvarighet i RIM |
| specialistbevis.utbildningsland | Saknar motsvarighet i RIM |
| specialistbevis.internationellÖverrenskommelse | Saknar motsvarighet i RIM |
| behorighetsbegransning.typAvBehorighetsbegransning | Saknar motsvarighet i RIM |
| behorighetsbegransning.fromDatum | Saknar motsvarighet i RIM |
| behorighetsbegransning.tomDatum | Saknar motsvarighet i RIM |
| övrigBehörighet.behörighet | Saknar motsvarighet i RIM |
| övrigBehörighet.behörighetsdatum | Saknar motsvarighet i RIM |

### Formatregler

#### Datum
Datumvärdet är en sträng på formatet ”ÅÅÅÅMMDD” som matchar begränsad ISO 8601. Tid samt tidszon skall ej anges.

