## Tjänstekontrakt

### GetCareContacts
GetCareContacts returnerar vårdkontakter som finns dokumenterade för en patient.
Meddelandeformatet är kompatibelt med NPÖ RIV Informationsspecifikation 2.2.1, V-MIM ”Vård- och omsorgskontakt”, enligt beskrivning i bilaga MIM_Mappningar_GetCareContacts.xlsx.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Kommentar | Kardi- / nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Begränsning av sökning avseende vårdenheter vilket motsvarar careUnitHSAId i HealthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten.
value sätts till patientens identifierare.
Type sätts till OID för typ av identifierare. Anges med 12 siffror utan avskiljare.
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| timePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, careContactTimePeriod.start och careContactTimePeriod.end i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| .start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| .end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till vårdkontakt som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Fältet är tvingande om careContactId angivits. | 0..1 |
| careContactId | string | Begränsar sökningen till dokument som Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| careContact | CareContactType | De hälso- och sjukvårdskontakter som matchar begäran. | 0..* |
| .careContactHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ..documentId | string | Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ..sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ..patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ...id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ...type | string | type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ..accountableHealthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdsperson som ansvarar för vårdkontakten. Ska anges om tillgänglig. | 0..1 |
| ...authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Regel 2. | 1..1 |
| ...healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso- och sjukvårdsperson som ansvar för vårdkontakten. | 1..1 |
| ...healthcareProfessionalName | string | Namn på hälso- och sjukvårdsperson. Om tillgängligt ska detta anges. | 1..1 |
| ...healthcareProfessionalRoleCode | CVType | Information om hälso- och sjukvårdspersonens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), [R9] | 0..1 |
| ....code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ....codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ....codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ....codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ....displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ....originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| …healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Regel 4. | 1..1 |
| ….orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Regel 4. | 1..1 |
| ….orgUnitName | string | Namnet på den organisation som hälso- och sjukvårdsperson enär uppdragstagare på. Regel 4. | 1..1 |
| ….orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ….orgUnitEmail | string | Epost till enhet | 0..1 |
| ….orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdsperson en är uppdragstagare på | 0..1 |
| ….orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ...healthcareProfessionalcareUnitHSAId | HSAIdType | HSA-id för vårdenhet. Regel 1. | 1..1 |
| ...healthcareProfessionalcareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdsperson en är uppdragstagare för. Regel 1 | 1..1 |
| ..approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. Regel 3. | 1..1 |
| ..nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 0..1 |
| ..nullifiedReason | string | Anger orsak till makulering. | 0..1 |
| .careContactBody | CareContactBodyType |  | 1..1 |
| ..careContactCode | integer | Typ av hälso- och sjukvårdsdokumentation. Tillåtna värden är: / 1 = Besök
2 = Telefon
3 = Vårdtillfälle
4 = Dagsjukvård
5 = Annan / Utelämnat värde betyder att värdet är okänt. | 0..1 |
| ..careContactReason | string | Text som beskriver orsaken till hälso- och sjukvårdskontakt som hälso- och sjukvårdstagaren själv eller dess företrädare anger. | 0..1 |
| ..careContactOrgUnit | OrgUnitType | Den enhet som kontakten utfördes vid | 1..1 |
| ...orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet | 1..1 |
| ...orgUnitName | string | Namn på organisationsenheten | 1..1 |
| ...orgUnitTelecom | string | Telefon till organisationsenheten | 0..1 |
| ...orgUnitEmail | string | Epost till organisationsenheten | 0..1 |
| ...orgUnitAddress | string | Postadress till organisationsenheten | 0..1 |
| ...orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationsenhetens eller funktionens fysiska placering | 0..1 |
| ..careContactTimePeriod | TimePeriodType | För besök sätts sluttidpunken till samma tid som anges som starttidpunkt. / För planerade kontakter sätts ingen sluttidpunkt. / Pågående vårdtillfälle ska anges på samma sätt som en planerad vårdkontakt, dvs med angivet startdatum, men utan slutdatum. | 1..1 |
| …start | TimeStampType | Starttidpunkt | 1..1 |
| …end | TimeStampType | Sluttidpunkt | 0..1 |
| ..careContactStatus | integer | Tillåtna värden är: / 1 = Ej påbörjad / 2 = Inställd / 3 = Pågående / 4 = Avbruten / 5 = Avslutad | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | healthcareProfessionalCareGiverHSAId / healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Används ofta för kontroll av tidsbegränsade spärrar i e-tjänster för sammanhållen journalföring | authorTime | Sammanhållen journalföring |
| Regel 3 | Ska kunna sättas till false för information som inte ska visas vid enskilds direktåtkomst | approvedForPatient | Enskilds direktåtkomst |
| Regel 4 | För kompatibilitet med nationell patientöversikt måste healthcareProfessionalOrgUnit (och i denna orgUnitHSAId och orgUnitName) anges. | healthcareProfessionalOrgUnit / healthcareProfessionalOrgUnit.orgUnitHSAId / healthcareProfessionalOrgUnit.orgUnitName | Kompatibilitet med NPÖ |

#### Icke funktionella krav
Inga övriga icke funktionella krav.SLA-krav

#### SLA-krav
Inga avvikande SLA-krav.
