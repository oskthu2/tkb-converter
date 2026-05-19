Tjänstekontraktsbeskrivning - Terminologitjänsten
Utgåvehistorik

| Revision Nr | Revision Datum | Kort beskrivning av ändring | Ändringarna gjorda av |
| :--- | :--- | :--- | :--- |
| 0.1 | 2010-11-05 | Beskrivning av Terminologitjänst för Infektionsverktyget | Stefan Skoog, Mawell |
| 0.1 | 2010-11-05 | Uppdaterade beskrivningar och kardinaliteter | Torbjörn Dahlin, Mawell |
| 0.2 | 2011-03-08 | Uppdatering av dokumentationslayout i enlighet med övriga tjänstekontraktsbeskrivningar. | Kristin Schoug Bertilsson, Mawell |
| PA1 | 2011-04-27 | Ny tabell med kända subset-id:n tillagd | Torbjörn Dahlin, Mawell |
| P1.1 | 2011-09-23 | Ändring av dokumentnamn / Mindre layoutförändringar | Kristin Schoug Bertilsson, Mawell |
| P1.2 | 2012-04-26 | Förtydligande kring användandet av parametern LocalOrganizationExtension samt korrigering av detaljfel i kapitel 5. | Kristin Schoug Bertilsson, Mawell |
| P1.3 | 2012-08-13 | Uppdaterat information om Logical Address i avsnitt 4.1 | Torbjörn Dahlin, Mawell |
| P1.4 | 2013-04-09 | Dokumentet har bytt namn från Infektionsverktyget terminologitjänst till Terminologitjänsten. / Uppdaterat information om Logical Address i avsnitt 4.1 | Eva Biberg, Mawell |
Innehållsförteckning
1	Inledning	4
2	Generella regler	5
3	SLA-krav/support	6
4	GetTerminologySubset	7
5	Tillgängliga urval	9

## Inledning
Detta är beskrivningen av tjänstekontraktet för terminologiurvalstjänsten i den nationella lösningen Infektionsverktyget.
De urval av begrepp och termer som skall användas vid registrering av den information som skall registreras i Infektionsverktyget kan hämtas från denna tjänst. Urvalstjänsten är generisk i sin uppbyggnad och liknar den standardfunktionalitet kring urval som vanligen återfinns i en generisk terminologitjänst.
Tjänstekontraktsbeskrivningen är ett teknisk-oberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt . Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

## Generella regler

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara nätverksproblem eller följdeffekter av programmeringsfel (exempelvis att anropet inte validerar mot tjänstens xml-schema).

## SLA-krav/support

### Tillgänglighet/support
Denna tjänst driftas med kontorstidssupport. System som utnyttjar den skall inte vara beroende av tillgänglighet hos tjänsterna under vård av enskild patient. Dessa system måste därför kunna hantera att tjänsten tidvis inte är tillgängligt. Tjänsten är normalt tillgänglig 24h/dygn.

### Svarstider
Ett enskilt anrop ska utföras på <0.5 sekunder exklusive nätverksfördröjningar till den nationella tjänsteplattformen.

### Last
Tjänsten är dimensionerad för att ta emot 100 000 anrop/dygn. Om den faktiska lasten skulle överskrida detta finns möjlighet att skala ut lösningen med flera front-end servrar.

## GetTerminologySubset
GetTerminologySubset hämtar ut en delmängd (subset) av en terminologi (exempelvis SNOMED CT, ICD-10, ATC-kodverket) som är användbar i ett visst sammanhang.
Denna tjänst stöttar bland annat det dynamiska urvalet av orsaker till antibiotikainsättning som skall rapporteras till Infektionsregistret. Tjänsten levererar även urvalet av ATC-koder som skall trigga frågan om ordinationsorsak. Tjänsten skall förutom en kod och en visningsterm kunna returnera ytterligare metadata som krävs för att veta vilka delar av OpenEHR templaten som skall fyllas i vid sändande av ordinationsorsaken till Infektionsverktyget.

### Begäran (Request)

| Soapenv:Header | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| LogicalAddress | wsa:To | HSASERVICES-10BK | 1..1 |

| GetTerminologySubsetRequest | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..1 |
| LocalOrganizationExtension | String | HSAId för organisationspost motsvarande vårdgivare i HSA-trädet. Om denna anges kommer det nationella urvalet returneras tillsammans med de koder i urvalet som är specifika för den aktuella vårdgivaren. | 0..1 |
| TermType | String | Typ av term som ska användas. / Fixt värde: DisplayName | 1..1 |

### Svar (Response)
Tjänsten retunerar förutom en kod och en visningsterm ytterligare metadata som krävs för att veta vilka delar som skall fyllas i vid sändande av ordinationsorsaken till Infektionsverktyget.

| GetTerminologySubsetResponseType | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| Concept | ConceptType | Svaret består av en lista med begrepp | 0..* |

| ConceptType | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| CodeSystem | String | Identifierare av kodsystem | 1..1 |
| Code | String | Begreppskod | 1..1 |
| Term | String | Term som beskriver begreppet | 1..1 |
| Metadata | MetadataType | Lista med metadata | 0..* |

| MetadataType | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| Name | String | Identifierar typ av metadata. | 1..1 |
| Value | String | Metadatavärde. | 1..1 |

### Tjänsteinteraktion
GetTerminologySubset

## Tillgängliga urval
Nedanstående tabell innehåller den uppsättning urval som en klient kan behöva känna till. Utöver dessa finns det ytterligare urval som kan returneras som metadata för att exempelvis hitta underliggande nivåer i en hierarkisk struktur.

| SubsetId | Kommentar |
| :--- | :--- |
| 14EF2CE5-5B02-45D6-BBB3-10A958BD85A4 | Starturval för val av ordinationsorsak |
| 5FD548C5-E551-4417-8871-4CC3BA24B6F0 | ATC-trigger för att ange ordinationsorsak |
| 90E066BB-E1A9-4907-9433-00E849D6A151 | Diagnostrigger. De diagnoser som skall sändas till infektionsverktyget |
| 8A0C81CC-4D32-484C-B7B7-C5F1F01C59B3 | Åtgärdstrigger. De åtgärder som skall sändas till Infektionsverktyget |
| CA29A6CA-3A9F-45E2-90FD-F0459881AF46 | NPU-trigger. NPU-koder för de laboratoriefynd som skall sändas till Infektionsverktyget |
| 12C61DE8-1CDC-43B2-8AE4-244F18C82D96 | Riskåtgärder för postop inf (kirurgiska åtgärder) |
