## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot Nationell Informationsstruktur, här version 2016:1.
Mappning är ej gjord mot schema (XSD) i nedan tabell, men attributnamnen som framgår i modellen går att återfinna i fältregeltabellen.

### V-MIM
Klasser och attribut som är gråmarkerade i modellen finns ej med i denna version, men är viktiga och ska eventuellt med i en kommande version av domänen. De gråmarkerade attributen visas endast i modellen, ej i fältregler eller i mappningstabell.

![img_006.png](images/img_006.png)
PLATS FÖR BILD MED DIAGRAM

| Klass.attribut | Mappning mot Nationell Informationsstruktur 2016:1 |
| :--- | :--- |
| Fakturaunderlag vård | saknas |
| Fakturaunderlag vård_huvud | saknas |
| id | saknas |
| datum | saknas |
| tid | saknas |
| fakturatyp | saknas |
| fakturanummer | saknas |
| fakturadatum | saknas |
| referens till faktura | saknas |
| referens till fakturaunderlag vård id | saknas |
| fakturabelopp | saknas |
| ospecificerat | saknas |
| Leverantör | saknas |
| identitet | saknas |
| Kontaktuppgifter | saknas |
| namn | saknas |
| telefonnummer | saknas |
| epost | saknas |
| Köpare | saknas |
| identitet | saknas |
| Kontaktuppgifter | saknas |
| namn | saknas |
| telefonnummer | saknas |
| epost | saknas |
| Fakturaunderlag vård_rad | saknas |
| Patient | Person + / Vård- och omsorgstagare |
| Patient id | person.person-id + / vård- och omsorgstagare.id |
| Övrig information | saknas |
| länskod | saknas |
| kommunkod | saknas |
| listningsregion | saknas |
| LMA kortnummer | saknas |
| kön | person.kön |
| EU kortets nummer | saknas |
| ospecificerat | saknas |
| Vårdinsats | saknas |
| post id vårdinsats | saknas |
| vårdkontakts id | saknas |
| referens till Post id vårdinsats | saknas |
| orsak till kreditering | saknas |
| ospecificerat | saknas |
| Betalningsförbindelse | uppgift i patientjournal |
| remiss id | uppgift i patientjournal.id |
| betalningsförbindelse id | uppgift i patientjournal.id |
| betalningsförbindelsetyp avtal | saknas |
| betalningsförbindelsetyp kapitel | saknas |
| avtalspost i Riksavtalet | saknas |
| betalningsförbindelse ersättningstyp | saknas |
| ospecificerat | saknas |
| Vårdkategori | saknas |
| vård- och omsorgsform | saknas |
| offentlig vård | saknas |
| planerad vård | saknas |
| typ av besök | saknas |
| ospecificerat | saknas |
| Tidsomfång | saknas |
| fakturaperiod | saknas |
| Besökstid | vårdkontakt |
| inskrivnings eller besöksdatum för vård | vårdkontakt.tid |
| inskrivning eller besökstid | vårdkontakt.tid |
| Utskrivningsdatum och tid | vårdkontakt |
| utskrivningsdatum | vårdkontakt.tid |
| utskrivningstid | vårdkontakt.tid |
| Antal dagar | saknas |
| permissionsdagar | saknas |
| vårddagar | saknas |
| Vårdenhet | organisation |
| id | organisation.id |
| namn | organisation.namn |
| yrkeskod | hälso- och sjukvårdspersonal.befattning |
| ospecificerat | saknas |
| Kategorisering | saknas |
| produktkategori | saknas |
| prislista kod | saknas |
| DRG-kostnad | saknas |
| produktkod | saknas |
| pris | saknas |
| ytterfallsersättning vårdtid | saknas |
| ytterfallsersättning kostnad | saknas |
| Patient specifik åtgärd | saknas |
| typ av patientspecifik åtgärd | saknas |
| namn | saknas |
| antal | saknas |
| pris | saknas |
| totalbelopp | saknas |
| ospecificerat | saknas |
| Fakturerat | saknas |
| patient vårdkontakt fakturerat belopp brutto | saknas |
| patient vårdkontakt fakturerat belopp netto | saknas |
| patient vårdkontakt avdrag 6 procent momskompensation | saknas |
| patient vårdkontakt rabatt | saknas |
| patient vårdkontakt påslag och avgifter | saknas |
| patientavgift öppenvård | saknas |
| patientavgift erlagd öppenvård | saknas |
| patientavgift nedsatt kategori | saknas |
| patientavgift frikortsgrundad indikator | saknas |
| patientavgift slutenvård | saknas |
| ospecificerat | saknas |
| Verksamhet | Organisation |
| medicinskt verksamhetsområde | saknas |
| verksamhetskod | organisation.typ |
| vårdnivå | saknas |
| ospecificerat | saknas |
| Diagnos | Observation |
| Diagnos slutenvård | observation |
| Huvuddiagnos | observation |
| diagnoskod | observation.typ |
| Bidiagnos | observation |
| diagnoskod | observation.typ |
| Diagnos öppenvård | observation |
| Huvuddiagnos | observation |
| diagnoskod | observation.typ |
| Bidiagnos | observation |
| diagnoskod | observation.typ |
| Åtgärd | beslut |
| åtgärdskod | beslut.kod |
| ATC kod | beslut.kod |
| ospecificerat | saknas |

### Formatregler

#### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tid
Tid anges på formatet ”ttmmss” formatbeskrivningen ”hhmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för patient id

##### Personnummer
Personnummer anges enligt format ÅÅÅÅMMDDNNNN.

##### Samordningsnummer
Samordningsnummer anges enligt format ÅÅÅÅMMDDNNNN.
De inledande sex siffrorna utgår från personens födelsetid (år, månad och dag). Därefter följer ett tresiffrigt individnummer som motsvarar födelsenumret i ett personnummer. Individnumret hämtas slumpvis ur en serie 001-999 för alla som är födda samma dag. Numret är udda för män och jämnt för kvinnor. Siffran för födelsedag ökas med talet 60 och en kontrollsiffra beräknas på samma sätt som för ett personnummer.
Exempel
Samordningsnummer för en man som är född den 3 oktober 1970 och har individnummer 239 blir
19701003
           +60
————---
197010632391

##### Reservnummer
Format för lokala reservnummer: Olika format för varje region och därmed krav på flexibel hantering. Några exempel på reservnummer i olika regioner:
201612345678, 19521234TA3C, 20081234-0123, 123456-DA0A, 123456789A.
Format för nationellt reservnummer: XXYYMMDDNNGC.
Se informationsspecifikationen i domänen strategicresourcemanagement.persons.person för mer information om formatet [R8].

#### Format för organisationsnummer
Format enligt: NNNNNNNNNN (10 siffror)

#### Format för GLN-nummer
Format enligt NNNNNNNNNNNNN (13 siffror)

#### Format för Fakturaunderlag vård, id
Kodens uppbyggnad: prefix, organisationsnummer, datum samt en räknare med 999999 möjligheter.
ZVF1234567890ÅÅMMNNNNNN.

#### Format för belopp
Samtliga belopp anges som heltal eller med max 2 decimaler, exempelvis: 1123.40

