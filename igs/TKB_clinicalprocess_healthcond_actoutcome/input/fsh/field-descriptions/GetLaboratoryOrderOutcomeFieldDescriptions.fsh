// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLaboratoryOrderOutcomeFieldDescriptions
* laboratoryOrderOutcome ^definition = "Ett eller flera laboratoriesvar som matchar begäran."
* laboratoryOrderOutcome ^comment = "TKB-fält: `//*:laboratoryOrderOutcome` (`LaboratoryOrderOutcomeType`, kardinalitet 0..*).

**Modellanteckning:** En labbeställning med tillhörande svar. Kardinalitet: Valfri, lista."
* laboratoryOrderOutcome.header ^definition = "Innehåller information som är gemensam för uppgifter i patientjournalen som tillgängliggörs, exempelvis information om vilken hälso- och sjukvårdspersonal som är angiven som författare av en uppgift samt information om signering."
* laboratoryOrderOutcome.header ^comment = "TKB-fält: `//*:header` (`HeaderType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.accessControlHeader ^definition = "Information som används för kontroll av åtkomst. Tjänstekonsumenten får enbart ta del av uppgifterna i AccessControlHeaderType innan övrig information om uppgift i patientjournal kan bearbetas."
* laboratoryOrderOutcome.header.accessControlHeader ^comment = "TKB-fält: `//*:header/*:accessControlHeader` (`AccessControlHeaderType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.accessControlHeader.accountableCareGiver ^definition = "Id för uppgiftsägande vårdgivare [R15].

I första hand HSA-id, i andra hand organisationsnummer.

Om HSA-id används:

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)

extension sätts till HSA-id

Om organisationsnummer används:

root sätts till OID för organisationsnummer (1.2.752.29.4.3)

extension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer."
* laboratoryOrderOutcome.header.accessControlHeader.accountableCareGiver ^comment = "TKB-fält: `//*:header/*:accessControlHeader/*:accountableCareGiver` (`IIType`, kardinalitet 1..1).

**Regel 2.1:** Fältet krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av tjänstekonsumenter inom sammanhållen journalföring.

**Modellanteckning:** HSA-id för den vårdgivare som är ansvarig för posten. Obligatorisk."
* laboratoryOrderOutcome.header.accessControlHeader.accountableCareUnit ^definition = "HSA-id för vårdenheten [R15] där uppgiften är dokumenterad.

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)

extension sätts till HSA-id"
* laboratoryOrderOutcome.header.accessControlHeader.accountableCareUnit ^comment = "TKB-fält: `//*:header/*:accessControlHeader/*:accountableCareUnit` (`IIType`, kardinalitet 1..1).

**Regel 2.1:** Fältet krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av tjänstekonsumenter inom sammanhållen journalföring.

**Modellanteckning:** HSA-id för den vårdenhet som är ansvarig för posten. Obligatorisk."
* laboratoryOrderOutcome.header.accessControlHeader.patientId ^definition = "Personidentifierare för patienten.

root sätts till OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För andra typer av personidentifierare sätts root till aktuell OID.

extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

Obligatorisk vid nyanslutning"
* laboratoryOrderOutcome.header.accessControlHeader.patientId ^comment = "TKB-fält: `//*:header/*:accessControlHeader/*:patientId` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.accessControlHeader.originalPatientId ^definition = "Personidentifieraren som den tillgängliggjorda uppgiften lagrades under då den skapades. Detta fält anges endast då det skiljer sig från patientId, exempelvis då patienten tidigare erhållit vård som dokumenterats under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer.

root sätts till OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För andra typer av personidentifierare sätts root till aktuell OID.

extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare."
* laboratoryOrderOutcome.header.accessControlHeader.originalPatientId ^comment = "TKB-fält: `//*:header/*:accessControlHeader/*:originalPatientId` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.accessControlHeader.careProcessId ^definition = "Id för den individanpassade vårdprocess som uppgiften journalförts inom ramen för. Består av ett lokalt genererat UUID."
* laboratoryOrderOutcome.header.accessControlHeader.careProcessId ^comment = "TKB-fält: `//*:header/*:accessControlHeader/*:careProcessId` (`UUIDType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.accessControlHeader.blockComparisonTime ^definition = "Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring. Gäller både yttre (mellan vårdgivare) och inre (mellan vårdenheter) spärr.

I detta fält anges provtagningstidpunkt. Om ett svar innehåller analyser utförda på olika prov anges tidpunkt för det senast tagna provet."
* laboratoryOrderOutcome.header.accessControlHeader.blockComparisonTime ^comment = "TKB-fält: `//*:header/*:accessControlHeader/*:blockComparisonTime` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.accessControlHeader.approvedForPatient ^definition = "Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst).

Om uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient.

Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex."
* laboratoryOrderOutcome.header.accessControlHeader.approvedForPatient ^comment = "TKB-fält: `//*:header/*:accessControlHeader/*:approvedForPatient` (`boolean`, kardinalitet 1..1).

**Modellanteckning:** Anger om informationsägaren godkänt att patienten kan ta del av informationen."
* laboratoryOrderOutcome.header.sourceSystemId ^definition = "Det källsystem som uppgiften lagras i.

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)

extension sätts till källsystemets HSA-id"
* laboratoryOrderOutcome.header.sourceSystemId ^comment = "TKB-fält: `//*:header/*:sourceSystemId` (`IIType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.record ^definition = "Information avseende uppgiften som tillgängliggörs."
* laboratoryOrderOutcome.header.record ^comment = "TKB-fält: `//*:header/*:record` (`RecordType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.record.recordId ^definition = "Identifierare för uppgift i patientjournal.

Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.

Motsvarar Laboratoriesvar.id i informationsspecifikationen [R6]"
* laboratoryOrderOutcome.header.record.recordId ^comment = "TKB-fält: `//*:header/*:record/*:id` (`IIType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.record.timestamp ^definition = "Den tidpunkt då uppgiften skapades i tjänsteproducentens källsystem. Denna information ska vara beständig även om tjänsteproducenten migrerat uppgiften från ett källsystem till en annat.

Motsvarar Laboratoriesvar.svarstidpunkt i informationsspecifikationen [R6]"
* laboratoryOrderOutcome.header.record.timestamp ^comment = "TKB-fält: `//*:header/*:record/*:timestamp` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.author ^definition = "Information avseende dokumentation av uppgiften som tillgängliggörs.

Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses."
* laboratoryOrderOutcome.header.author ^comment = "TKB-fält: `//*:header/*:author` (`AuthorType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.author.authorId ^definition = "HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs.

root sätts till OID för HSA-id (1.2.752.129.2.1.4.1)

extension sätts till HSA-id"
* laboratoryOrderOutcome.header.author.authorId ^comment = "TKB-fält: `//*:header/*:author/*:id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.author.name ^definition = "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."
* laboratoryOrderOutcome.header.author.name ^comment = "TKB-fält: `//*:header/*:author/*:name` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.author.timestamp ^definition = "Tidpunkt då uppgiften dokumenterades eller senast uppdaterades.

I de fall då uppgiften ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där uppgiften ursprungligen dokumenterades."
* laboratoryOrderOutcome.header.author.timestamp ^comment = "TKB-fält: `//*:header/*:author/*:timestamp` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.author.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.

Anges med HSAs kodverk Befattning  (OID: 1.2.752.129.2.2.1.4).

Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText."
* laboratoryOrderOutcome.header.author.byRole ^comment = "TKB-fält: `//*:header/*:author/*:byRole` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.author.orgUnit ^definition = "Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."
* laboratoryOrderOutcome.header.author.orgUnit ^comment = "TKB-fält: `//*:header/*:author/*:orgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.author.orgUnit.orgUnitId ^definition = "Id för organisationsenheten där vårdpersonen verkat på uppdrag av. Om tillgängligt skall HSAid anges. Notera att det är den verksamhet där utrustningen använts som avses, inte utrustningens ägare. I de fall HSAid saknas kan ett för källsystemet unikt id användas varvid fältet root sätts till källsystemets HSAid och fältet extions sätts till lokalt id i källsystemet. Om HSAid används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSAid. Om organisationsnummer används skall fältet root sättas till OID för Skatteverkets organisationsnummer (2.5.4.97) och fältet extension sättas till organisationsnumret."
* laboratoryOrderOutcome.header.author.orgUnit.orgUnitId ^comment = "TKB-fält i OrgUnitType: `id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.author.orgUnit.name ^definition = "Namn på organisationsenhet. Om tillgängligt skall detta anges."
* laboratoryOrderOutcome.header.author.orgUnit.name ^comment = "TKB-fält i OrgUnitType: `name` (`string`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.signature ^definition = "Information avseende signering av laboratoriesvaret.

Laboratoriesvaret signeras av en medicinskt ansvarig hälso- och sjukvårdspersonal på den ansvariga enheten.

Den ansvariga enheten kan vara den remissmottagande enheten eller den utförande enheten (exempelvis vid patientnära analyser)."
* laboratoryOrderOutcome.header.signature ^comment = "TKB-fält: `//*:header/*:signature` (`AuthorType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.signature.signatureId ^definition = "HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs.

root sätts till OID för HSA-id (1.2.752.129.2.1.4.1)

extension sätts till HSA-id"
* laboratoryOrderOutcome.header.signature.signatureId ^comment = "TKB-fält: `//*:header/*:signature/*:id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.signature.name ^definition = "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."
* laboratoryOrderOutcome.header.signature.name ^comment = "TKB-fält: `//*:header/*:signature/*:name` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.header.signature.timestamp ^definition = "Tidpunkt då uppgiften signerades."
* laboratoryOrderOutcome.header.signature.timestamp ^comment = "TKB-fält: `//*:header/*:signature/*:timestamp` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.header.signature.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid signeringstidpunkten.

Anges med HSAs kodverk Befattning  (OID: 1.2.752.129.2.2.1.4).

Om kod inte är tillgänglig anges befattning i klartext i datatypens attribut originalText."
* laboratoryOrderOutcome.header.signature.byRole ^comment = "TKB-fält: `//*:header/*:signature/*:byRole` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body ^definition = "Information om laboratoriesvaret."
* laboratoryOrderOutcome.body ^comment = "TKB-fält: `//*:body` (`LaboratoryOrderOutcomeBodyType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.identifier ^definition = "Angivelse av identitetsbeteckning för laboratoriesvaret."
* laboratoryOrderOutcome.body.identifier ^comment = "TKB-fält: `//*:body/*:identifier` (`IIType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.laboratoryIdentifier ^definition = "Angivelse av identitetsbeteckning för laboratoriets arbetsorder.

Benämns även som LID."
* laboratoryOrderOutcome.body.laboratoryIdentifier ^comment = "TKB-fält: `//*:body/*:laboratoryIdentifier` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.type ^definition = "Kod för status av laboratoriesvar. Använd FHIR value set Diagnostic Report Status. Giltiga koder är final, partial eller preliminary. Se kodverket för beskrivning av respektive kod.

code:  En av koderna final, partial eller preliminary

codeSystem:  2.16.840.1.113883.4.642.3.235

displayName: Klartext motsvarande den använda koden."
* laboratoryOrderOutcome.body.type ^comment = "TKB-fält: `//*:body/*:type` (`CVType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.text ^definition = "Angivelse av utlåtande eller kommentar som gäller hela laboratoriesvaret."
* laboratoryOrderOutcome.body.text ^comment = "TKB-fält: `//*:body/*:text` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral ^definition = "Den remiss som ligger till grund för svaret."
* laboratoryOrderOutcome.body.referral ^comment = "TKB-fält: `//*:body/*:referral` (`ReferralType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.identifier ^definition = "Angivelse av identitetsbeteckning för remissen.

root: logisk adress

extension: remissens id, även kallad RID"
* laboratoryOrderOutcome.body.referral.identifier ^comment = "TKB-fält: `//*:body/*:referral/*:identifier` (`IIType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.referral.timestamp ^definition = "Tidsangivelse för när remiss skapats."
* laboratoryOrderOutcome.body.referral.timestamp ^comment = "TKB-fält: `//*:body/*:referral/*:timestamp` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.referral.version ^definition = "Version av remiss."
* laboratoryOrderOutcome.body.referral.version ^comment = "TKB-fält: `//*:body/*:referral/*:version` (`int`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.question ^definition = "Remissens frågeställning."
* laboratoryOrderOutcome.body.referral.question ^comment = "TKB-fält: `//*:body/*:referral/*:question` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.requestedCareService ^definition = "Kod för efterfrågad tjänst från utbudskatalog.

Det finns inget kodverk eller urval utpekat för detta attribut. Regel 3.4

Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation."
* laboratoryOrderOutcome.body.referral.requestedCareService ^comment = "TKB-fält: `//*:body/*:referral/*:requestedCareService` (`CVType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.body.referral.requester ^definition = "Hälso- och sjukvårdspersonal som skrivit remiss."
* laboratoryOrderOutcome.body.referral.requester ^comment = "TKB-fält: `//*:body/*:referral/*:requester` (`ActorType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.requester.requesterId ^definition = "HSA-id för hälso- och sjukvårdspersonal.

root sätts till OID för HSA-id (1.2.752.129.2.1.4.1)

extension sätts till HSA-id"
* laboratoryOrderOutcome.body.referral.requester.requesterId ^comment = "TKB-fält: `//*:body/*:referral/*:requester/*:id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.requester.name ^definition = "Namn på hälso- och sjukvårdspersonal"
* laboratoryOrderOutcome.body.referral.requester.name ^comment = "TKB-fält: `//*:body/*:referral/*:requester/*:name` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.requester.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning. Om möjligt skall kod från HSA:s kodverk Befattning (OID: 1.2.752.129.2.2.1.4) [R3] användas för att ange personens befattning så som den var angiven i HSA-katalogen vid tidpunkten. Om kod inte är tillgänglig anges befattning i klartext i CV-typens attribut originalText."
* laboratoryOrderOutcome.body.referral.requester.byRole ^comment = "TKB-fält: `//*:body/*:referral/*:requester/*:byRole` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.requester.orgUnit ^definition = "Den organisation som remittenten är uppdragstagare på. För detta fält är det obligatoriskt att ange både orgUnitType.id samt orgUnitType.name."
* laboratoryOrderOutcome.body.referral.requester.orgUnit ^comment = "TKB-fält: `//*:body/*:referral/*:requester/*:orgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.requester.orgUnit.orgUnitId ^definition = "Id för organisationsenheten där vårdpersonen verkat på uppdrag av. Om tillgängligt skall HSAid anges. Notera att det är den verksamhet där utrustningen använts som avses, inte utrustningens ägare. I de fall HSAid saknas kan ett för källsystemet unikt id användas varvid fältet root sätts till källsystemets HSAid och fältet extions sätts till lokalt id i källsystemet. Om HSAid används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSAid. Om organisationsnummer används skall fältet root sättas till OID för Skatteverkets organisationsnummer (2.5.4.97) och fältet extension sättas till organisationsnumret."
* laboratoryOrderOutcome.body.referral.requester.orgUnit.orgUnitId ^comment = "TKB-fält i OrgUnitType: `id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.requester.orgUnit.name ^definition = "Namn på organisationsenhet. Om tillgängligt skall detta anges."
* laboratoryOrderOutcome.body.referral.requester.orgUnit.name ^comment = "TKB-fält i OrgUnitType: `name` (`string`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.referral.referralInformation ^definition = "Ytterligare information från beställaren."
* laboratoryOrderOutcome.body.referral.referralInformation ^comment = "TKB-fält: `//*:body/*:referral/*:referralInformation` (`ReferralInformationType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.referral.referralInformation.referralComment ^definition = "Kommentar på beställningen av laboratorieundersökningen."
* laboratoryOrderOutcome.body.referral.referralInformation.referralComment ^comment = "TKB-fält: `//*:body/*:referral/*:referralInformation/*:referralComment` (`String`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses ^definition = "Grupperar ett antal analyser som utförs på ett eller flera prov från samma provgivare och som man väljer att betrakta som en enhet. Detta är en möjlighet för ett laboratorium att för ett givet svar kommentera en egen vald mängd analyser med en gemensam gruppkommentar. En grupp som endast innehåller en enda analys utan angivelse av name eller code ska tolkas som att analysen inte är grupperad. Det är inte tillåtet att ha en grupp med flera analyser utan att ange attributet name eller code."
* laboratoryOrderOutcome.body.groupOfAnalyses ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses` (`GroupOfAnalysesType`, kardinalitet 0..*).

**Regel 3.1:** Om en groupOfAnalyses innehåller fler än en analysis måste attributet name eller code vara angivet.

**Modellanteckning:** En grupp av relaterade analyser (t.ex. ett analyspaket). Kardinalitet: Valfri, lista."
* laboratoryOrderOutcome.body.groupOfAnalyses.name ^definition = "Namn eller benämning för hela analysgruppen.

Obligatorisk om attributet comment anges."
* laboratoryOrderOutcome.body.groupOfAnalyses.name ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:name` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.comment ^definition = "Kommentar för hela analysgruppen. Om en kommentar anges ska även attributet name anges."
* laboratoryOrderOutcome.body.groupOfAnalyses.comment ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:comment` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.code ^definition = "Listkoder (NPU) som fungerar som en rubrik-kod för de ingående analyserna.

code.code: Kod från “Urval analyskoder laboratoriemedicin” (se [R16])

code.codeSystem: 1.2.752.108.1

Regel 3.5

Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation."
* laboratoryOrderOutcome.body.groupOfAnalyses.code ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:code` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis ^definition = "Utförd analys."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis` (`AnalysisType`, kardinalitet 1..*)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.identifier ^definition = "Id för utförd analys."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.identifier ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:identifier` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.timestamp ^definition = "Den tidpunkt då analysen utfördes."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.timestamp ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:timestamp` (`TimeStampType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.code ^definition = "Kod (NPU) för den analys som utförts.

code.code: Kod från “Urval analyskoder laboratoriemedicin” (se [R16])

code.codeSystem: 1.2.752.108.1

Regel 3.5

Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.code ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:code` (`CVType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.method ^definition = "Kod (SNOMED-CT-SE) för den typ av tillvägagångssätt för utförandet av analysen som avses.

code.code: Kod från Urval analysmetod laboratoriemedicin (OID 1.2.752.129.5.1.18) (se [R10])

code.codeSystem:  1.2.752.116.2.1.1

Regel 3.5

Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.method ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:method` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.status ^definition = "Kod (SNOMED-CT-SE) för analysens status.

code.code: Kod från Urval analysstatus laboratoriemedicin (OID 1.2.752.129.5.1.6) (se [R10])

code.codeSystem:  1.2.752.116.2.1.1

Regel 3.5

Om status utelämnas ska detta tolkas som att analysen är slutförd. Fritextalternativ kan ej anges i datatypens attribut originalText."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.status ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:status` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.comment ^definition = "Kommentar för enskild analys, exempelvis att svaret inte får användas för biobanksinfo."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.comment ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:comment` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.accredited ^definition = "Om analysen är ackrediterad sätts fältet till true.

Om analysen inte är ackrediterad sätts fältet till false.

Om analysens ackrediteringsstatus är okänd utelämnas elementet."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.accredited ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:accredited` (`boolean`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen ^definition = "Information om ett prov."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen` (`SpecimenType`, kardinalitet 0..*).

**Regel 3.2:** I schematypen analysis är specimen optional, men detta gäller bara relaterade analyser (som ärver specimeninformation från den översta analysen i en hierarki)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.identifier ^definition = "Identitetsbeteckning för ett prov."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.identifier ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:identifier` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.material ^definition = "Kod (SNOMED-CT-SE) för typ av provmaterial.

Koden för provmaterial kan även innefatta information om provtagningsmetod.

code: Kod från Urval provtyp laboratoriemedicin (OID 1.2.752.129.5.1.13) (se [R10])

codeSystem: 1.2.752.116.2.1.1

Regel 3.5

Om kodad representation av provmaterialtyp från nationellt urval saknas kan datatypens attribut originalText användas för en fritextrepresentation."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.material ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:material` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.timestamp ^definition = "Angivelse av den tidpunkt då provet är taget."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.timestamp ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:timestamp` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.anatomicalLocation ^definition = "Kod (SNOMED-CT-SE) som anger var provet är taget.

Exempel: höger arm, vänster njure.

code: Kod från Urval anatomisk lokalisation laboratoriemedicin (OID 1.2.752.129.5.1.7) (se [R10])

codeSystem: 1.2.752.116.2.1.1

Regel 3.5

Om kodad representation av lokalisation från nationellt urval saknas används endast CV-attributet originalText för att ange textuellt alternativ."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.anatomicalLocation ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:anatomicalLocation` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.comment ^definition = "Angivelse av kommentar om enskilt prov."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.comment ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:comment` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity ^definition = "Håller information om aktiviteter relaterade till hantering av provet.

Inkluderar även t.ex. aktiviteter i samband med transport, frysning, förvaring, bearbetning och delning i sekundärprov."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:activity` (`SpecimenRelatedActivityType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.code ^definition = "Kod (SNOMED-CT-SE) för provrelaterad aktivitet.

code: Kod från  SNOMED-CT-SE

codeSystem: 1.2.752.116.2.1.1

Det finns inget urval utpekat för detta attribut. Regel 3.4"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.code ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:activity/*:code` (`CVType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.time ^definition = "Angivelse av tidpunkt eller tidsintervall då den provrelaterade aktiviteten utfördes.

Om tidpunkt anges sätts start- och sluttid till samma tidpunkt."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.time ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:activity/*:time` (`TimePeriodType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.method ^definition = "Kod (SNOMED-CT-SE) för metod för provrelaterad aktivitet.

code:  Kod från  SNOMED-CT-SE

codeSystem: 1.2.752.116.2.1.1

Det finns inget urval utpekat för detta attribut. Regel 3.4"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.method ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:activity/*:method` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container ^definition = "Information om den eller de provbehållare som provet förvaras i."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container` (`SpecimenContainerType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.identifier ^definition = "Identitetsbeteckning för en provbehållare."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.identifier ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container/*:identifier` (`IIType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.type ^definition = "Kod (SNOMED-CT-SE) för typ av provbehållare.

code: Kod från Urval provbehållare laboratoriemedicin (OID 1.2.752.129.5.1.12) (se [R10])

codeSystem: 1.2.752.116.2.1.1

Regel 3.5

Om kod saknas anges typ av provbehållare i orginalText

Om typ av provbehållartyp är okänd anges ”ospecificerad” i attributet originalText"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.type ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container/*:type` (`CVType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device ^definition = "Information om den utrustning som använts för att utföra analysen."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:device` (`DeviceType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device.identifier ^definition = "Identitetsbeteckningen för en analysutrustning."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device.identifier ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:device/*:identifier` (`IIType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result ^definition = "Klassen LaboratoryAnalysisResultType håller information om resultat av den utförda analysen.

Detta resultat kan exempelvis bestå av ett mätvärde inom laboratoriedisciplinen kemi, ett fynd av en viss bakterieart eller en textuell beskrivning av analysresultatet. Utöver detta kan en kommentar avseende analysresultatet anges separat."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result` (`LaboratoryAnalysisResultType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.type ^definition = "Kod för typ av laboratorieanalysresultat.

code: Enligt urval från tillämpningsanvisning

codeSystem: 1.2.752.108.1 (om NPU-kod) eller 1.2.752.116.2.1.1 (om Snomed CT)"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.type ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:type` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value ^definition = "Angivelse av utfall av den utförda analysen angiven med en och endast en av datatyperna (se kapitel 5 för beskrivning av respektive datatyp):

PQType – mätbart värde

PQIntervalType - intervall av mätbart värde

String – textuellt svar

CVType – kodat värde"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:value` (`AnyValueType`, kardinalitet 1..1).

**Regel 3.3:** Om enhet till provsvar ej finns anges unit som tom sträng.

**Modellanteckning:** ASSUME-001: AnyValueType kan innehålla PQ, string, boolean eller kodad typ.
Modellerad som string i avvaktan på mappningsverifiering. Se QUESTIONS.md."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.comment ^definition = "Angivelse av kommentar som rör laboratorieanalysresultatet."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.comment ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:comment` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.interpretation ^definition = "Kod (SNOMED-CT-SE) för en tolkning av laboratorieanalysresultatet.

code:  Kod från Urval tolkning resultat laboratoriemedicin (OID 1.2.752.129.5.1.14) (se [R10])

codeSystem: 1.2.752.116.2.1.1

En sådan tolkning kan vara att analysresultatet ligger utanför aktuellt referensintervall, vilket även benämns som patologisk markör.

Regel 3.5

Om kod ej kan anges används CV-typens attribut originalText som fritextalternativ."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.interpretation ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:interpretation` (`CVType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference ^definition = "Information om vilket referensintervall eller referensvärde som gäller för ett resultat."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference` (`ReferenceType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.interval ^definition = "Angivelse av referensintervall som numeriskt värde av mätvärden. Ett referensvärde anges genom att antingen ange ett intervall från det lägre värdet till det högre värdet som sätts till referensvärdet, alternativt från referensvärde som start på intervallet utan angivelse av intervallets slut för att ange att normalvärde ligger över referensvärdet."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.interval ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference/*:interval` (`PQIntervalType`, kardinalitet 0..1).

**Regel 3.3:** Om enhet till provsvar ej finns anges unit som tom sträng."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.description ^definition = "Textuell beskrivning av referensintervall.

Ett och endast ett av attributen interval och description ska anges."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.description ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference/*:description` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.population ^definition = "Angivelse av den referenspopulation som ligger till grund för angivet referensintervall."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.population ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference/*:population` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.comment ^definition = "Angivelse av kommentar för det angivna referensintervallet."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.comment ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference/*:comment` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature ^definition = "Information avseende signering av en enskild analys.

Analysen signeras av hälso- och sjukvårdspersonal på den remissvarsmottagande enheten när den förs in i patientjournalen."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature` (`SignatureType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.recipientSignatureId ^definition = "Root sätts till OID för HSA (1.2.752.129.2.1.4.1)

Extension sätts till HSA-id för hälso- och sjukvårdspersonal"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.recipientSignatureId ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.name ^definition = "Namn på hälso- och sjukvårdspersonal."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.name ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:name` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.timestamp ^definition = "Tidpunkt för signering."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.timestamp ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:timestamp` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.

Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4).

Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.byRole ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:byRole` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature ^definition = "Information avseende signering av en enskild analys.

Analysen signeras av den hälso- och sjukvårdspersonal som utför analysen."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature` (`SignatureType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.performerSignatureId ^definition = "Root sätts till OID för HSA (1.2.752.129.2.1.4.1)

Extension sätts till HSA-id för hälso- och sjukvårdspersonal"
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.performerSignatureId ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.name ^definition = "Namn på hälso- och sjukvårdspersonal."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.name ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:name` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.timestamp ^definition = "Tidpunkt då signering genomfördes."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.timestamp ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:timestamp` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.

Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4).

Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.byRole ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:byRole` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.related ^definition = "Relaterade analyser, till exempel mikrobiologiska odlingssvar där resistensbestämning görs på fynd."
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.related ^comment = "TKB-fält: `//*:body/*:groupOfAnalyses/*:analysis/*:result/*:related` (`AnalysisType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.body.recipientUnit ^definition = "Mottagande enhet."
* laboratoryOrderOutcome.body.recipientUnit ^comment = "TKB-fält: `//*:body/*:recipientUnit` (`OrgUnitType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.recipientUnit.recipientUnitId ^definition = "Identitet för mottagande enhet."
* laboratoryOrderOutcome.body.recipientUnit.recipientUnitId ^comment = "TKB-fält: `//*:body/*:recipientUnit/*:id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.recipientUnit.name ^definition = "Namn på mottagande enhet."
* laboratoryOrderOutcome.body.recipientUnit.name ^comment = "TKB-fält: `//*:body/*:recipientUnit/*:name` (`string`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.recipientSignature ^definition = "Information avseende signering av laboratoriesvaret.

Laboratoriesvaret signeras av hälso- och sjukvårdspersonal på den remissvarsmottagande enheten när det förs in i patientjournalen."
* laboratoryOrderOutcome.body.recipientSignature ^comment = "TKB-fält: `//*:body/*:recipientSignature` (`SignatureType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.recipientSignature.recipientSignatureId ^definition = "Root sätts till OID för HSA (1.2.752.129.2.1.4.1)

Extension sätts till HSA-id för hälso- och sjukvårdspersonal"
* laboratoryOrderOutcome.body.recipientSignature.recipientSignatureId ^comment = "TKB-fält: `//*:body/*:recipientSignature/*:id` (`IIType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.recipientSignature.name ^definition = "Namn på hälso- och sjukvårdspersonal"
* laboratoryOrderOutcome.body.recipientSignature.name ^comment = "TKB-fält: `//*:body/*:recipientSignature/*:name` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.recipientSignature.timestamp ^definition = "Tidpunkt för signering."
* laboratoryOrderOutcome.body.recipientSignature.timestamp ^comment = "TKB-fält: `//*:body/*:recipientSignature/*:timestamp` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.body.recipientSignature.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.

Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4).

Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText."
* laboratoryOrderOutcome.body.recipientSignature.byRole ^comment = "TKB-fält: `//*:body/*:recipientSignature/*:byRole` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.contactInformation ^definition = "Information om var eller till vem vården kan vända sig vid frågor om laboratoriesvaret."
* laboratoryOrderOutcome.body.contactInformation ^comment = "TKB-fält: `//*:body/*:contactInformation` (`ContactInformationType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.body.contactInformation.text ^definition = "Textuell beskrivning av kontaktinformation.

Det kan t.ex. vara telefonnummer och öppettider till en kundtjänst, ett namn på en kontaktperson."
* laboratoryOrderOutcome.body.contactInformation.text ^comment = "TKB-fält: `//*:body/*:contactInformation/*:text` (`string`, kardinalitet 1..1)."
