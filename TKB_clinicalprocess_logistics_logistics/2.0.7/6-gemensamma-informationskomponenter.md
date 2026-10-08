# 6 Gemensamma informationskomponenter - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

## Gemensamma informationskomponenter

> I källdokumentet (TKB 2.0.7) är detta kapitel 5. Här följer IG:n mallens kapitelordning.

I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelanden i flera domäner eller inom denna domän, och dessa beskrivs i detta avsnitt.

Observera att med anledning av att tjänstekontrakten även kan stödjas av producentsystem som saknar (fullständig) HSAid-information så är HSAid-attribut i beskrivningarna nedan valfria. Se även avsnittet ”Informationssäkerhet” ovan.

### ActorType

Information om medarbetare i hälso- och sjukvård som genomfört den behandling som rapporteras genom tjänstekontrakt i denna domän.

| | | | |
| :--- | :--- | :--- | :--- |
| hsaId | HSAIdType | HSAid för personen | 0..1 |
| name | string | Namn på personen. Minst ett av dessa två fält ska anges. | 0..1 |
| personTelecom | string | Telefon till personen. | 0..1 |
| personEmail | string | Epostadress till personen. | 0..1 |
| personAddress | string | Postadress till personen. | 0..1 |

### CVType

Typ som beskriver kodade värden med en struktur hämtad från HL7 v3 CV (”CodedValue”). För implementering av attribut av slaget ”KTOV” i RIV. Kodade värden avser officiellt hanterade kodverk som hänvisas till med CodeSystem OID/UUID.

För annan användning av koder, exempelvis för lokala kodverk utan OID, ska originalText attributet användas för att ge kodens text i det lokala systemet, och övriga attribut lämnas tomma.

| | | | |
| :--- | :--- | :--- | :--- |
| code | string | Kod enligt producentsystemets kodverk. / Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| codeSystem | string | Anger kodverket som definierar koden. Dvs OID för det kodverk som används. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| codeSystemName | string | Kodverkets namn i klartext. Ska anges när så är möjligt. | 0..1 |
| codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| displayName | string | Koden i klartext, under vilket det producerande systemet visar koden för sina användare. / Om separat displayName inte finns i producerande system ska det ange samma värde som för code. / Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |

### DatePeriodType

| | | | |
| :--- | :--- | :--- | :--- |
| start | DateType | Periodens startdatum. Minst ett av start och end ska anges. | 0..1 |
| end | DateType | Periodens slutdatum. Minst ett av start och end ska anges. | 0..1 |

### DateType

Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

| | | | |
| :--- | :--- | :--- | :--- |
| date | string | Datum uttrycks med formatet ”ÅÅÅÅMMDD” | 1..1 |

### HealthcareProfessionalType

| | | | |
| :--- | :--- | :--- | :--- |
| authorTime | TimeStampType | Den tidpunkt då dokumentet skapades. | 1..1 |
| healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso- och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. | 0..1 |
| healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso- och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenhet som hälso- och sjukvårdspersonen är uppdragstagare för. Ska anges om tillgänglig. | 0..1 |
| healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. | 0..1 |

### HSAIdType

| | | | |
| :--- | :--- | :--- | :--- |
| hsaId | string | HSA-id enligt definition från Inera AB | 1..1 |

### IIType

| | | | |
| :--- | :--- | :--- | :--- |
| root | string | En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren. | 1..1 |
| extension | string | En textsträng som tillsammans med root bildar en unik identifierare. | 0..1 |

### LegalAuthenticatorType

| | | | |
| :--- | :--- | :--- | :--- |
| signatureTime | TimeStampType | Tidpunkt för signering | 1..1 |
| legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| legalAuthenticatorName | string | Namnen i klartext för signerande person | 0..1 |

### MultimediaType

| | | | |
| :--- | :--- | :--- | :--- |
| id | string | Identitet på multimediaobjekt som används vid referenser inom multimediadokument. | 0..1 |
| mediaType | MediaTypeEnum | Mediatyper enligt HL7 | 1..1 |
| value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. | 0..1 |

### OrgUnitType

| | | | |
| :--- | :--- | :--- | :--- |
| orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| orgUnitName | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| orgUnitEmail | string | Epost till enhet | 0..1 |
| orgUnitAddress | string | Postadress till enhet | 0..1 |
| orgUnitLocation | string | Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering | 0..1 |

### PatientSummaryHeaderType

Innehåller basinformation om ett dokument.

| | | | |
| :--- | :--- | :--- | :--- |
| documentId | string | Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| documentTime | TimeStampType | Händelsetidpunkt, om relevant. | 0..1 |
| patientId | PersonIdType | Id för patienten. Anges med 12 siffror utan avskiljare. / id sätts till patientens identifierare. / Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| accountableHealthcareProfessional | HealthcareProfessionalType | Ansvarig hälso- och sjukvårdsperson. | 1..1 |
| legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| careContactId | string | Identitet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 0..1 |
| nullifiedReason | string | Anger orsak till makulering. | 0..1 |

### PersonIdType

| | | | |
| :--- | :--- | :--- | :--- |
| id | string | Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck. | 1..1 |
| type | string | OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |

### PQType

Typ som baseras på datatypen PQ enligt HL7, och som beskriver överföring av uppmätta värden (”Physical Quantity”). Tillåtna värden för ”unit” bestäms av http://unitsofmeasure.org/ucum.html. Dimension ska preciseras av fältregel vid tillämpning (ex. ”Massa”). Typen är till för presentation av givna mätvärden. Vaksamhet ska iakttagas vid konvertering mellan enheter.

| | | | |
| :--- | :--- | :--- | :--- |
| value | double | Mätetal mätt i enheten som anges av ”unit” | 1..1 |
| unit | string | Enhet enligt standard http://unitsofmeasure.org/ucum.html | 1..1 |

### TimePeriodType

| | | | |
| :--- | :--- | :--- | :--- |
| start | TimeStampType | Periodens starttid. Minst ett av start och end ska anges. | 0..1 |
| end | TimeStampType | Periodens sluttid. Minst ett av start och end ska anges. | 0..1 |

### TimeStampType

Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

| | | | |
| :--- | :--- | :--- | :--- |
| timestamp | string | Tid uttrycks med formatet ”ÅÅÅÅMMDDttmmss” | 1..1 |

