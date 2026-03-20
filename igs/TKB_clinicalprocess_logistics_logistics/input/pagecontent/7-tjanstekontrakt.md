## Tjänstekontrakt

### GetCareContacts
GetCareContacts returnerar vårdkontakter som finns dokumenterade för en patient.

#### Version
3.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| careGiverHSAId | HSAIdType | Filtrering på informationsägande vårdgivare, vilket motsvarar careGiverHSAId i healthcareProfessionalType | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer- OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| ../id | string | Id för patient enligt ovan. | 1..1 |
| ../type | string | OID enligt ovan. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, careContactTimePeriod.start och careContactTimePeriod.end i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / careContactTimePeriod.start ligger före eller inom sökintervallets start- och slutdatum samt careContactTimePeriod.end saknas. / careContactTimePeriod.end ligger inom eller efter sökintervallets start- och slutdatum samt careContactTimePeriod.start saknas. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Fältet är tvingande om careContactId angivits. / Fältet är tvingande vid begäran på reservnummer. | 0..1 |
| careContactId | string | Begränsar sökningen till den/de vårdkontakter vars id anges. Motsvarar documentId i careContactHeader i svaret. | 0..* |
| Svar |  |  |  |
| careContact | CareContactType | De vårdkontakter som matchar begäran. | 0..* |
| ../careContactHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Vårdkontaktens identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle |  | Ska ej anges | 0..0 |
| ../../documentTime |  | Ska ej anges | 0..0 |
| ../../patientId | PersonIdType | Id för patienten. | 1..1 |
| ../../../id | string | Patientens identifierare. Är identifieraren ett personnummer eller ett samordningsnummer ska denna anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / För sökning på reservnummer där ingen OID finns för att peka ut reservnumret används följande undantagslösning: / type sätts till 1.2.752.129.2.1.2.1 / id sätts till källsystemets HSA-id + det lokala reservnumret. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonalen som ansvarar för vårdkontakten. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. / Regel: Regel 2 | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso- och sjukvårdspersonal som ansvar för vårdkontakten. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonal. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om hälso- och sjukvårdspersonalens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R6]. | 0..1 |
| ../../../../code | string | Befattningskod. / Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. / Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. / Regel: Regel 4 | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. / Regel: Regel 4 | 0..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som den ansvariga hälso- och sjukvårdspersonalen är uppdragstagare på. / Regel: Regel 4 | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdspersonal en är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalcareUnitHSAId* | HSAIdType | HSA-id för vårdenhet. / Regel: Regel 1 | 0..1 |
| ../../../healthcareProfessionalcareGiverHSAId* | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalen är uppdragstagare för. / Regel :Regel 1 | 0..1 |
| ../../legalAuthenticator |  | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. / Regel: Regel 3 | 1..1 |
| ../../nullfied |  | Ska ej anges. | 0..0 |
| ../../nullfiedReason |  | Ska ej anges. | 0..0 |
| ../../careContactId |  | Ska ej anges. | 0..0 |
| ../careContactBody | CareContactBodyType |  | 1..1 |
| ../../careContactCode | CVType | Kod som anger på vilket sätt vårdkontakten är planerad att ske, alternativt skedde. KV Vårdkontakttyp (1.2.752.129.2.2.2.25) ska användas. Se referens [R6]. / Utelämnat värde betyder att värdet är okänt. | 0..1 |
| ../../../code | string | Kod som anger vårdkontakttyp. / Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../codeSystem | string | OID för kodsystem för vårdkontakttypskod. / Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../codeSystemName | string | Namn på kodsystem för vårdkontakttypskod. | 0..1 |
| ../../../codeSystemVersion | string | Version på kodsystem för vårdkontakttypskod. | 0..1 |
| ../../../displayName | string | Vårdkontakttypskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. / Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| ../../../originalText | string | Om vårdkontakttypskod är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i careContactCode anges. | 0..1 |
| ../../careContactReason | string | Text som beskriver orsaken till vårdkontakt som patienten själv eller dess företrädare anger. | 0..1 |
| ../../careContactOrgUnit | OrgUnitType | Den enhet som vårdkontakten utfördes vid eller planeras utföras vid. / Regel: Regel 5 | 0..1 |
| ../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. / Regel: Regel 5 | 0..1 |
| ../../../orgUnitName | string | Namn på organisationsenheten. / Regel: Regel 5 | 0..1 |
| ../../../orgUnitTelecom | string | Telefon till organisationsenheten. | 0..1 |
| ../../../orgUnitEmail | string | Epost till organisationsenheten. | 0..1 |
| ../../../orgUnitAddress | string | Postadress till organisationsenheten. | 0..1 |
| ../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationsenhetens eller funktionens fysiska placering. | 0..1 |
| ../../careContactTimePeriod | TimePeriodType | Tidsintervall för vårdkontakt. Vid besök i öppenvård sätts careContactTimePeriod.start och careContactTimePeriod.end till samma tidpunkt (besökets startidpunkt). | 0..1 |
| ../../../start | TimeStampType | Vårdkontaktens starttidpunkt. Minst ett av fälten start och end måste anges. | 0..1 |
| ../../../end | TimeStampType | Vårdkontaktens sluttidpunkt. Minst ett av fälten start och end måste anges. | 0..1 |
| ../../careContactStatus | CVType | Kod som anger aktuell status för vårdkontakten. / Kodverket är definierat i SNOMED CT-SE med SCTID: 53761000052103 (Snomed CT finns tillgängligt via R11 där man kan se de publicerade koderna som är refererade) | 0..1 |
| ../../../code | string | Kod som anger vårdkontaktstatus. / avbruten vårdkontakt = 53661000052105 / avslutad vårdkontakt = 53671000052101 / inställd vårdkontakt = 53641000052109 / makulerad vårdkontakt = 53691000052102 / patient på väntelista = 53701000052102 / permission från vårdkontakt = 53681000052104 / pågående vårdkontakt = 53651000052107 / tidbokad vårdkontakt = 53631000052103 / Om code anges ska även codeSystem samt displayName anges. | 0..1 |
| ../../../codeSystem | string | Sätts till OID för SNOMED CT SE som är 1.2.752.116.2.1.1 / Om codeSystem anges ska även code samt displayName anges. | 0..1 |
| ../../../codeSystemName | string | Namn på kodsystem för vårdkontaktstatuskod. | 0..1 |
| ../../../codeSystemVersion | string | Version på kodsystem för vårdkontaktstatuskod. | 0..1 |
| ../../../displayName | string | Vårdkontaktstatuskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. / Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| ../../../originalText | string | Om vårdkontaktstatuskod är beskriven i ett lokalt kodverk utan OID (exempelvis i KV Vårdkontaktstatus), eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i careContactCode anges. | 0..1 |
| ../../additionalPatientInformation | AdditionalPatientInformationType | Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning. | 0..1 |
| ../../../dateOfBirth | PartialDateType | Patientens födelsedatum. | 0..1 |
| ../../../../format | DateTypeFormatEnum | Enum-sträng som beskriver formatet på det datum som anges. Tillåtna värden är ”YYYY” (när enbart år anges), ”YYYYMM” (när år och månad anges) och ”YYYYMMDD” (när år, månad och dag anges). | 1..1 |
| ../../../../value | string | Sträng som anger värde på datumet. Måste följa formatet som anges i format. | 1..1 |
| ../../../gender | CVType | Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas. Se referens [R6]. | 0..1 |
| ../../../../code | string | Kod som anger kön. / Om code anges ska även codeSystem samt displayName anges. | 1..1 |
| ../../../../codeSystem | string | OID för kodsystem för kön. / Om codeSystem anges ska även code samt displayName anges. | 1..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för kön. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för kön. | 0..1 |
| ../../../../displayName | string | Könet i klartext. / Om displayName anges ska även code samt codeSystem anges. | 1..1 |
| ../../../../originalText | string | Anges ej | 0..0 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | healthcareProfessionalCareGiverHSAId / healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Används ofta för kontroll av tidsbegränsade spärrar i e-tjänster för sammanhållen journalföring | authorTime | Sammanhållen journalföring |
| Regel 3 | Ska kunna sättas till false för information som inte ska visas vid enskilds direktåtkomst | approvedForPatient | Enskilds direktåtkomst |
| Regel 4 | För kompatibilitet med NPÖ RIV 2.2.0 måste healthcareProfessionalOrgUnit (och i denna orgUnitHSAId och orgUnitName) anges. | healthcareProfessionalOrgUnit / healthcareProfessionalOrgUnit.orgUnitHSAId / healthcareProfessionalOrgUnit.orgUnitName | Kompatibilitet med NPÖ |
| Regel 5 | För kompatibilitet med NPÖ RIV 2.2.0 måste careContactOrgUnit (och i denna orgUnitHSAId och orgUnitName) anges. | careContactOrgUnit / careContactOrgUnit.orgUnitHSAId / careContactOrgUnit.orgUnitName | Kompatibilitet med NPÖ |

#### Icke funktionella krav
Inga övriga icke funktionella krav.

#### SLA-krav
Inga avvikande SLA-krav.

### GetCarePlans
GetCarePlans returnerar vårdplaner som finns dokumenterade för en patient.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer- OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| ../id | string | Id för patient enligt ovan. | 1..1 |
| ../type | string | OID enligt ovan. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där documentTime i svaret ligger inom sökintervallets start- och slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Fältet är tvingande om careContactId angivits. / Fältet är tvingande vid begäran på reservnummer. | 0..1 |
| careContactId | string | Begränsar sökningen till den/de vårdkontakter vars id anges vilket matchar documentId i GetCareContactsResponse/careContact/careContactHeader / Se test-case ”CareContactId Filter” som finns i SOAPui-projektet under test-suite/GetCarePlans | 0..* |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| carePlan | CarePlanType | De vård- och omsorgsplaner som matchar begäran. | 0..* |
| ../carePlanHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet. | 1..1 |
| ../../documentId | string | Vård- och omsorgsplanens identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle |  | Text som innehåller en rubrik som beskriver innehållet i vård- och omsorgsplanen. / För att underlätta för användaren att orientera sig i gränssnittet är det viktigt att ange en deskriptiv text i attributet rubrik. Inga krav finns dock på struktur för detta. / Exempel: / Samordnad vårdplanering Rehabiliteringsplan. | 1..1 |
| ../../documentTime |  | Tidpunkt då vård- och omsorgsplanen upprättats. | 0..1 |
| ../../patientId | PersonIdType | Id för patienten. | 1..1 |
| ../../../id | string | Patientens identifierare. Är identifieraren ett personnummer eller ett samordningsnummer ska denna anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / För sökning på reservnummer där ingen OID finns OID för att peka ut reservnumret används följande undantagslösning: / type sätts till 1.2.752.129.2.1.2.1 / id sätts till källsystemets HSA-id + det lokala reservnumret. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonal som ansvarar för vård- och omsorgsplanen. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. / Regel: Regel 2 | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso- och sjukvårdspersonal som ansvar för vårdplanen. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonal. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om hälso- och sjukvårdspersonalens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R6]. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. / Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. / Regel: Regel 4 | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. / Regel: Regel 4 | 0..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som den ansvariga / hälso- och sjukvårdspersonalen är uppdragstagare på. / Regel: Regel 4 | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdspersonal en är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalcareUnitHSAId | HSAIdType | HSA-id för vårdenhet. / Regel: Regel 1 | 0..1 |
| ../../../healthcareProfessionalcareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalalen är uppdragstagare för. / Regel: Regel 1 | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. / Regel: Regel 3 | 1..1 |
| ../../nullified |  | Ska ej anges | 0..0 |
| ../../nullifiedReason |  | Ska ej anges | 0..0 |
| ../../careContactId | string | Identitetet för den vårdkontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../carePlanBody | CarePlanBodyType |  | 1..1 |
| ../../content* | MultimediaType | Beskrivning av innehållet i vård- och omsorgsplanen, bör innehålla vård- och omsorgsplansstatus och mål. Exempelvis kan detta vara ett pdf- dokument, skannat dokument, eller beskrivet i text. | 0..* |
| ../../../../id |  | N/A | 0..0 |
| ../../../mediaType | MediaTypeEnum | Typ av multimedia (enligt HL7). / Följande format för mediatype kan tillämpas i denna version: / text/plain / text/html / image/png / image/jpeg / image/tiff / application/pdf | 1..1 |
| ../../../value | string | Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges. | 0..1 |
| ../../../reference | string | Referens till extern binär fil i form av en URL. Ett och endast ett av attributen value och reference ska anges. | 0..1 |
| ../../participatingCareUnitHSAId | IIType | En Vård- och omsorgsplan har noll eller flera deltagande enheter. | 0..* |
| ../../typeOfCarePlan / OBS! Detta attribut motsvarar typen typeOfCarePlanEnum i XSD-schemat. | TypeOfCarePlanEnum | Typ av vård- och omsorgsplan, 
"SIP" för Samordnad individuell plan, / "SPLPTLRV" för Samordnad plan enligt LPT eller LRV, / "SPU" för Samordnad plan vid utskrivning, / "VP" för Vårdplan, / "HP" för Habiliteringsplan, / "RP" för Rehabiliteringsplan, / "GP" för Genomförande plan, / "SVP" Standardiserad vårdplan. / Termerna är tagna ifrån Socialstyrelsens termbank. | 0..1 |
| Result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler
R1: Producenter måste följa de generella riktlinjerna för binära bilagor, se referens R10. Inbäddade bilagor får inte överstiga 100KB.

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | healthcareProfessionalCareGiverHSAId / healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Används ofta för kontroll av tidsbegränsade spärrar i e-tjänster för sammanhållen journalföring | authorTime | Sammanhållen journalföring |
| Regel 3 | Ska kunna sättas till false för information som inte ska visas vid enskilds direktåtkomst | approvedForPatient | Enskilds direktåtkomst |
| Regel 4 | För kompatibilitet med NPÖ RIV 2.2.0 måste healthcareProfessionalOrgUnit (och i denna orgUnitHSAId och orgUnitName) anges. | healthcareProfessionalOrgUnit / healthcareProfessionalOrgUnit.orgUnitHSAId / healthcareProfessionalOrgUnit.orgUnitName | Kompatibilitet med NPÖ |

#### Icke funktionella krav
Inga övriga icke funktionella krav.

#### SLA-krav
Inga avvikande SLA-krav.
