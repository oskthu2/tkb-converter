## Tjänstekontrakt

### GetRequestActivities
Detta kontrakt returnerar en lista med status för en patients remisser. Tjänsten returnerar status/aktivitetsrader för de remisser som finns på det personnummer som är inkluderat i anropet. Tjänsten levererar en rad för varje aktivitet/status som en remiss passerat i remissprocessen.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Beskrivning”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”. Hänvisningar till kodverk finns på webben [R5].

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | IIType | Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret. / root sätts till OID (1.2.752.129.2.1.4.1) för HSA / extension sätts till HSA-id på vårdenhet. | 0..* |
| careGiverHSAId | IIType | Filtrering på vårdgivare vilket motsvarar accountableHealthcareProvider i svaret. / root sätts till OID (1.2.752.129.2.1.4.1) för HSA / extension sätts till HSA-id på vårdgivare. | 0..* |
| patientId | IIType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / root sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. / extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / OBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet. / En tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att samtliga statusrader för en remiss ska returneras där minst en av statusradernas body.eventTime ligger inom sökintervallets start- och slutdatum eller där en av statusradernas body.eventTime ligger före och en annan efter. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / OBS! Datumet gäller för remissen, dvs om någon statusrad faller inom intervallet så ska alla statusrader för denna remiss returneras. | 0..1 |
| sourceSystemHSAId | IIType | Källsystemets id / Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / systemHSAId.root = 1.2.752.129.2.1.4.1 / (HSA-id OID) / Ska anges vid begäran på reservnummer. | 0..1 |
| typeOfRequest | CVType | Remisstyp / Kod som anger vilken typ av remiss som avses. / KV framställantyp / OID: 1.2.752.129.2.2.2.24 / Giltiga värden: / 1 = röntgenremiss / 2 = labbremiss / 4 = allmänremiss / Se [R5]. | 0..* |
| Svar |  |  |  |
| requestActivity | RequestActivityType | Remisstatus som matchar begäran | 0..* |
| ../header | HeaderType | Innehåller information som är gemensam för remisstatusen som tillgängliggörs, exempelvis information om vilken hälso- och sjukvårdspersonal som är angiven som författare av en remisstatus samt information om signering. | 1..1 |
| ../../accessControlHeader | AccessControlHeaderType | Information som används för kontroll av åtkomst. | 1..1 |
| ../../../accountableHealthcareProvider | IIType | Id för uppgiftsägande vårdgivare [R11]. / I första hand HSA-id, i andra hand organisationsnummer. / Om HSA-id används: / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till HSA-id / Om organisationsnummer används: / root sätts till OID för organisationsnummer (1.2.752.29.4.3) / extension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. / Regel 2.1 | 1..1 |
| ../../../accountableCareUnit | IIType | HSA-id för vårdenheten [R11] där uppgiften är dokumenterad. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till HSA-id / Regel 2.1 | 0..1 |
| ../../../originalPatientId | IIType | Personidentifieraren som den tillgängliggjorda remisstatusen lagrades under då den skapades. Detta fält anges endast då det skiljer sig från patientId, exempelvis då patienten tidigare erhållit vård som dokumenterats under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer. / root sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. / extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 0..1 |
| ../../../careProcessId | IIType | Id för den individanpassade vårdprocess som remisstatusen journalförts inom ramen för. Består av ett lokalt genererat UUID. / root sätts till UUID / extension anges ej | 0..1 |
| ../../../lockTime | TimeStampType | Ska ej användas! / Regel 2.2 | 0..0 |
| ../../../blockComparisonTime | TimeStampType | Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring. Gäller både yttre (mellan vårdgivare) och inre (mellan vårdenheter) spärr. / Informationsägaren väljer själv en lämplig tidpunkt, t.ex. tidpunkten då remissen först skickades. | 1..1 |
| ../../../approvedForPatient | boolean | Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida remisstatusen får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst). / Om remisstatusen beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient. / Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex. | 1..1 |
| ../../sourceSystemId | IIType | Det källsystem som remisstatusen lagras i. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till källsystemets HSA-id | 1..1 |
| ../../record | RecordType | Information avseende remisstatusen som tillgängliggörs. | 1..1 |
| ../../../id | IIType | Identifierare för remisstatus. / Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. / Root sätts till systemHSA-id / Extension sätts till id för remissen | 1..1 |
| ../../../timestamp | TimeStampType | Den tidpunkt då remisstatusen skapades i tjänsteproducentens källsystem. | 1..1 |
| ../../author | AuthorType | Information avseende dokumentation av remisstatus som tillgängliggörs. / Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses. | 0..1 |
| ../../../id | IIType | HSA-id för hälso- och sjukvårdspersonal som dokumenterat remisstatusen som tillgängliggörs. / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| ../../../name | string | Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn. | 0..1 |
| ../../../timestamp | TimeStampType | Tidpunkt då remisstatusen dokumenterades eller senast uppdaterades. / I de fall då remisstatusen ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där remisstatusen ursprungligen dokumenterades. | 1..1 |
| ../../../byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. / Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). / Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText. | 0..1 |
| ../../signature | AuthorType | Ej aktuell för remisstatus | 0..0 |
| ../body | RequestActivityBodyType |  | 1..1 |
| ../../statusCode | CVType | Angivelse av vilken status remissen befinner sig i. / Anges med Kv status vårdbegäran [R5] / OID: 1.2.752.129.2.2.2.43 / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter av kontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på kontraktet uppdateras. | 1..1 |
| ../../eventTime | TimeStampType | Händelsetidpunkt / Tidpunkt då en händelse inträffade, dvs när en ändring av remisstatus sker. | 1..1 |
| ../../request | RequestType | Den utfärdade remissen. | 1..1 |
| ../../../id | string | Remiss-id. Unik identifierare av remissen. / Vid kännedom om remittentens id på remissen ska detta anges för att kunna koppla ihop flera status och följa remissens status-information över tid. / I det fall kännedom om remittentens id på remissen saknas ska källsystemets unika id på remissen anges. / I det fall remissens id (sträng) består av flera delar, t.ex. enligt formatet ”källsystem-Id(HSA-ID)#lokalt-id” så ska hela strängen anges. | 1..1 |
| ../../../type | CVType | Remisstyp. Kod och klartext som anger vilken typ av remiss som avses. / Anges med Kv framställantyp [R5] / OID: 1.2.752.129.2.2.2.24 / Giltiga värden: / 1 = röntgenremiss / 2 = labbremiss / 4 = allmänremiss / Exempel: / request.type.codesystem = 1.2.752.129.2.2.2.24 / request.type.code = 4 / request.type.displayName = allmänremiss | 0..1 |
| ../../../medium | CVType | Medium. Kod och klartext som anger medium för remissen. / Anges med Kv Form av framställan [R5] / OID: 1.2.752.129.2.2.2.7 / Giltiga värden: / 3 = skriftligt elektroniskt / 4 = skriftligt papper / Exempel: / medium.codesystem = 1.2.752.129.2.2.2.7 / medium.code = 3 / medium.displayName = skriftligt elektroniskt | 0..1 |
| ../../../author | RequestAuthorType | Remittent / Författare av remissen. | 0..1 |
| ../../../../name | string | Remittentens namn | 1..1 |
| ../../../../organization | OrganizationType | Remitterande enhet | 1..1 |
| ../../../../../id | IIType | Remitterande enhetens id / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| ../../../../../name | string | Remitterande enhetens namn. | 1..1 |
| ../../../receivingOrganization | OrganizationType | Remissmottagande enhet. | 1..1 |
| ../../../../id | IIType | Remissmottagande enhets id / Identitetsbeteckning för den som är angiven mottagare till remissen eller den faktiska mottagaren om detta ändras (om remissen har skickats vidare). / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| ../../../../name | string | Remissmottagande enhetens namn. | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).
Gemensamt för alla övriga regler som valideras med hjälp av schematron är att om fältet inte är obligatoriskt och inte finns med i nyttolasten så kommer regeln inte ge ett fel.

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i getRequestActivities/request | Regler i getRequestActivities/request | Regler i getRequestActivities/request |
| Regler i getRequestActivities /response/header | Regler i getRequestActivities /response/header | Regler i getRequestActivities /response/header |
| 2.1 | ../../../accountableHealthcareProvider / ../../../accountableCareUnit | Fältet krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av tjänstekonsumenter inom sammanhållen journalföring. |
| 2.2 | ../../../lockTime | Detta element skall ej användas. Enligt SOSFS 2016:40 ska det ej längre finnas möjlighet att låsa osignerade journalanteckningar |
| 2.3 [sch] | ../../../accountableHealthcareProvider/root | Anges till något av värdena: / 1.2.752.129.2.1.4.1 / 1.2.752.29.4.3 |
| 2.4 [sch] | ../../../accountableCareUnit/root | Anges till värdet / 1.2.752.129.2.1.4.1 |
| 2.5 [sch] | ../../author/id/root | Anges till värdet / 1.2.752.129.2.1.4.1 |
| 2.6 [sch] | ../../author/byRole/codeSystem | Anges till värdet / 1.2.752.129.2.2.1.4 |
| 2.7 [sch] | ../../record/id | ska vara unikt inom källsystemet |
| Regler i getRequestActivities/response/body | Regler i getRequestActivities/response/body | Regler i getRequestActivities/response/body |
| statusCode [sch] | ../../statusCode | Elementet ska ha något av värdena i KV status vårdbegäran / (OID: 1.2.752.129.2.2.2.43) |
| request.type [sch] | ../../request/type | Elementet ska ha något av värdena i KV framställantyp (OID: 1.2.752.129.2.2.2.24) / Giltiga värden: / 1 = röntgenremiss / 2 = labbremiss / 4 = allmänremiss |
| request.medium [sch] | ../../request/medium | Elementet ska ha något av värdena i KV Form av framställan (OID: 1.2.752.129.2.2.2.7). / Giltiga värden: / 3 = skriftligt elektroniskt / 4 = skriftligt papper |
| request.author [sch] | ../../request/author | Remittent är obligatoriskt då någon av följande koder anges: / body.statusCode.code =1 (Skickad) / body.statusCode.code =7 (Svar mottaget) / body.statusCode.code =11 (Makulerad) |
| Allmänna regler | Allmänna regler | Allmänna regler |
| pattern.CVType [sch] | ../../author/byRole | Om code anges SKA codeSystem samt displayName anges. / codeSystem SKA vara en OID / Om codeSystem anges SKA code OCH displayName anges / Om displayName anges SKA code samt codeSystem anges. / Om originalText anges SKA INTE code, codeSystem eller displayName anges. |
| pattern.IITypeStrict [sch] | ../../../accountableHealthcareProvider / ../../../accountableCareUnit / ../../../originalPatientId / ../../sourceSystemId / ../../../../organization/id / ../../author/id / ../../record/id / ../../../receivingOrganization/id | Extension måste finnas |
| pattern.CvTypeStrict [sch] | ../../statusCode / ../../request/type / ../../request/medium | Code, codeSystem och displayname måste finnas. |
| Verify non-empty elements [sch] | Alla inkluderade element i svaret. | Måste ha ett giltigt värde. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA-krav
Inga avvikande SLA-krav
