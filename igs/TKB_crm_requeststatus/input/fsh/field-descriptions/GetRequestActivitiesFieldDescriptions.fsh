// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetRequestActivitiesFieldDescriptions
* requestActivity ^definition = "Remisstatus som matchar begäran"
* requestActivity ^comment = "TKB-fält: `requestActivity` (`RequestActivityType`, kardinalitet 0..*)."
* requestActivity.header ^definition = "Innehåller information som är gemensam för remisstatusen som tillgängliggörs, exempelvis information om vilken hälso- och sjukvårdspersonal som är angiven som författare av en remisstatus samt information om signering."
* requestActivity.header ^comment = "TKB-fält: `../header` (`HeaderType`, kardinalitet 1..1)."
* requestActivity.header.accessControlHeader ^definition = "Information som används för kontroll av åtkomst."
* requestActivity.header.accessControlHeader ^comment = "TKB-fält: `../../accessControlHeader` (`AccessControlHeaderType`, kardinalitet 1..1)."
* requestActivity.header.accessControlHeader.accountableHealthcareProvider ^definition = "Id för uppgiftsägande vårdgivare [R11].

I första hand HSA-id, i andra hand organisationsnummer.

Om HSA-id används:

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)

extension sätts till HSA-id

Om organisationsnummer används:

root sätts till OID för organisationsnummer (1.2.752.29.4.3)

extension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer.

Regel 2.1"
* requestActivity.header.accessControlHeader.accountableHealthcareProvider ^comment = "TKB-fält: `../../../accountableHealthcareProvider` (`IIType`, kardinalitet 1..1)."
* requestActivity.header.accessControlHeader.accountableCareUnit ^definition = "HSA-id för vårdenheten [R11] där uppgiften är dokumenterad.

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)

extension sätts till HSA-id

Regel 2.1"
* requestActivity.header.accessControlHeader.accountableCareUnit ^comment = "TKB-fält: `../../../accountableCareUnit` (`IIType`, kardinalitet 0..1)."
* requestActivity.header.accessControlHeader.originalPatientId ^definition = "Personidentifieraren som den tillgängliggjorda remisstatusen lagrades under då den skapades. Detta fält anges endast då det skiljer sig från patientId, exempelvis då patienten tidigare erhållit vård som dokumenterats under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer.

root sätts till OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För andra typer av personidentifierare sätts root till aktuell OID.

extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare."
* requestActivity.header.accessControlHeader.originalPatientId ^comment = "TKB-fält: `../../../originalPatientId` (`IIType`, kardinalitet 0..1)."
* requestActivity.header.accessControlHeader.careProcessId ^definition = "Id för den individanpassade vårdprocess som remisstatusen journalförts inom ramen för. Består av ett lokalt genererat UUID.

root sätts till UUID

extension anges ej"
* requestActivity.header.accessControlHeader.careProcessId ^comment = "TKB-fält: `../../../careProcessId` (`IIType`, kardinalitet 0..1)."
* requestActivity.header.accessControlHeader.lockTime ^definition = "Ska ej användas!

Regel 2.2"
* requestActivity.header.accessControlHeader.lockTime ^comment = "TKB-fält: `../../../lockTime` (`TimeStampType`, kardinalitet 0..0)."
* requestActivity.header.accessControlHeader.blockComparisonTime ^definition = "Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring. Gäller både yttre (mellan vårdgivare) och inre (mellan vårdenheter) spärr.

Informationsägaren väljer själv en lämplig tidpunkt, t.ex. tidpunkten då remissen först skickades."
* requestActivity.header.accessControlHeader.blockComparisonTime ^comment = "TKB-fält: `../../../blockComparisonTime` (`TimeStampType`, kardinalitet 1..1)."
* requestActivity.header.accessControlHeader.approvedForPatient ^definition = "Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida remisstatusen får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst).

Om remisstatusen beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient.

Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex."
* requestActivity.header.accessControlHeader.approvedForPatient ^comment = "TKB-fält: `../../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* requestActivity.header.sourceSystemId ^definition = "Det källsystem som remisstatusen lagras i.

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)

extension sätts till källsystemets HSA-id"
* requestActivity.header.sourceSystemId ^comment = "TKB-fält: `../../sourceSystemId` (`IIType`, kardinalitet 1..1)."
* requestActivity.header.record ^definition = "Information avseende remisstatusen som tillgängliggörs."
* requestActivity.header.record ^comment = "TKB-fält: `../../record` (`RecordType`, kardinalitet 1..1)."
* requestActivity.header.record.id ^definition = "Identifierare för remisstatus.

Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.

Root sätts till systemHSA-id

Extension sätts till id för remissen"
* requestActivity.header.record.id ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1)."
* requestActivity.header.record.timestamp ^definition = "Den tidpunkt då remisstatusen skapades i tjänsteproducentens källsystem."
* requestActivity.header.record.timestamp ^comment = "TKB-fält: `../../../timestamp` (`TimeStampType`, kardinalitet 1..1)."
* requestActivity.header.author ^definition = "Information avseende dokumentation av remisstatus som tillgängliggörs.

Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses."
* requestActivity.header.author ^comment = "TKB-fält: `../../author` (`AuthorType`, kardinalitet 0..1)."
* requestActivity.header.author.id ^definition = "HSA-id för hälso- och sjukvårdspersonal som dokumenterat remisstatusen som tillgängliggörs.

root sätts till OID för HSA-id (1.2.752.129.2.1.4.1)

extension sätts till HSA-id"
* requestActivity.header.author.id ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..1)."
* requestActivity.header.author.name ^definition = "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."
* requestActivity.header.author.name ^comment = "TKB-fält: `../../../name` (`string`, kardinalitet 0..1)."
* requestActivity.header.author.timestamp ^definition = "Tidpunkt då remisstatusen dokumenterades eller senast uppdaterades.

I de fall då remisstatusen ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där remisstatusen ursprungligen dokumenterades."
* requestActivity.header.author.timestamp ^comment = "TKB-fält: `../../../timestamp` (`TimeStampType`, kardinalitet 1..1)."
* requestActivity.header.author.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.

Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4).

Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText."
* requestActivity.header.author.byRole ^comment = "TKB-fält: `../../../byRole` (`CVType`, kardinalitet 0..1)."
* requestActivity.body ^comment = "TKB-fält: `../body` (`RequestActivityBodyType`, kardinalitet 1..1)."
* requestActivity.body.statusCode ^definition = "Angivelse av vilken status remissen befinner sig i.

Anges med Kv status vårdbegäran [R5]

OID: 1.2.752.129.2.2.2.43

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter av kontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på kontraktet uppdateras."
* requestActivity.body.statusCode ^comment = "TKB-fält: `../../statusCode` (`CVType`, kardinalitet 1..1)."
* requestActivity.body.eventTime ^definition = "Händelsetidpunkt

Tidpunkt då en händelse inträffade, dvs när en ändring av remisstatus sker."
* requestActivity.body.eventTime ^comment = "TKB-fält: `../../eventTime` (`TimeStampType`, kardinalitet 1..1)."
* requestActivity.body.request ^definition = "Den utfärdade remissen."
* requestActivity.body.request ^comment = "TKB-fält: `../../request` (`RequestType`, kardinalitet 1..1)."
* requestActivity.body.request.id ^definition = "Remiss-id. Unik identifierare av remissen.

Vid kännedom om remittentens id på remissen ska detta anges för att kunna koppla ihop flera status och följa remissens status-information över tid.

I det fall kännedom om remittentens id på remissen saknas ska källsystemets unika id på remissen anges.

I det fall remissens id (sträng) består av flera delar, t.ex. enligt formatet \"källsystem-Id(HSA-ID)#lokalt-id\" så ska hela strängen anges."
* requestActivity.body.request.id ^comment = "TKB-fält: `../../../id` (`string`, kardinalitet 1..1)."
* requestActivity.body.request.type ^definition = "Remisstyp. Kod och klartext som anger vilken typ av remiss som avses.

Anges med Kv framställantyp [R5]

OID: 1.2.752.129.2.2.2.24

Giltiga värden:

1 = röntgenremiss

2 = labbremiss

4 = allmänremiss

Exempel:

request.type.codesystem = 1.2.752.129.2.2.2.24

request.type.code = 4

request.type.displayName = allmänremiss"
* requestActivity.body.request.type ^comment = "TKB-fält: `../../../type` (`CVType`, kardinalitet 0..1)."
* requestActivity.body.request.medium ^definition = "Medium. Kod och klartext som anger medium för remissen.

Anges med Kv Form av framställan [R5]

OID: 1.2.752.129.2.2.2.7

Giltiga värden:

3 = skriftligt elektroniskt

4 = skriftligt papper

Exempel:

medium.codesystem = 1.2.752.129.2.2.2.7

medium.code = 3

medium.displayName = skriftligt elektroniskt"
* requestActivity.body.request.medium ^comment = "TKB-fält: `../../../medium` (`CVType`, kardinalitet 0..1)."
* requestActivity.body.request.author ^definition = "Remittent

Författare av remissen."
* requestActivity.body.request.author ^comment = "TKB-fält: `../../../author` (`RequestAuthorType`, kardinalitet 0..1)."
* requestActivity.body.request.author.name ^definition = "Remittentens namn"
* requestActivity.body.request.author.name ^comment = "TKB-fält: `../../../../name` (`string`, kardinalitet 1..1)."
* requestActivity.body.request.author.organization ^definition = "Remitterande enhet"
* requestActivity.body.request.author.organization ^comment = "TKB-fält: `../../../../organization` (`OrganizationType`, kardinalitet 1..1)."
* requestActivity.body.request.author.organization.id ^definition = "Remitterande enhetens id

root sätts till OID för HSA-id (1.2.752.129.2.1.4.1)

extension sätts till HSA-id"
* requestActivity.body.request.author.organization.id ^comment = "TKB-fält: `../../../../../id` (`IIType`, kardinalitet 0..1)."
* requestActivity.body.request.author.organization.name ^definition = "Remitterande enhetens namn."
* requestActivity.body.request.author.organization.name ^comment = "TKB-fält: `../../../../../name` (`string`, kardinalitet 1..1)."
* requestActivity.body.request.receivingOrganization ^definition = "Remissmottagande enhet."
* requestActivity.body.request.receivingOrganization ^comment = "TKB-fält: `../../../receivingOrganization` (`OrganizationType`, kardinalitet 1..1)."
* requestActivity.body.request.receivingOrganization.id ^definition = "Remissmottagande enhets id

Identitetsbeteckning för den som är angiven mottagare till remissen eller den faktiska mottagaren om detta ändras (om remissen har skickats vidare).

root sätts till OID för HSA-id (1.2.752.129.2.1.4.1)

extension sätts till HSA-id"
* requestActivity.body.request.receivingOrganization.id ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 0..1)."
* requestActivity.body.request.receivingOrganization.name ^definition = "Remissmottagande enhetens namn."
* requestActivity.body.request.receivingOrganization.name ^comment = "TKB-fält: `../../../../name` (`string`, kardinalitet 1..1)."
