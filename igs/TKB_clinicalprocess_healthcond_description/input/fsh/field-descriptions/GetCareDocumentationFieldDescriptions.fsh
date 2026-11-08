// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareDocumentationFieldDescriptions
* careDocumentation ^definition = "De anteckningar som matchar begäran."
* careDocumentation ^comment = "TKB-fält: `careDocumentation` (`CareDocumentationType`, kardinalitet 0..*)."
* careDocumentation.header ^definition = "JoL-header.

Innehåller metainformation som är gemensam för patientjournalinformation, exempelvis uppgift om vilken hälso- och sjukvårdspersonal

som är angiven som författare av informationen och information om signering."
* careDocumentation.header ^comment = "TKB-fält: `../header` (`HeaderType`, kardinalitet 1..1)."
* careDocumentation.header.accessControlHeader ^definition = "Information för kontroll av åtkomst.

Syftet med denna del av headern är att den ska innehålla den information som behövs för konsumentens filtrering av informationen innan den visas upp för slutanvändaren eller på annat vis behandlas vidare, exempelvis för kontroll av spärrar (avseende vårdpersonals åtkomst till information; PDL) eller om informationen får visas för patienten eller inte (verksamhetens rätt till rådrum och menprövning).

En konsument (en konsumerande tjänst/applikation) har inte rätt att ta del av något annat än innehållet i accessControlHeader innan de för ändamålet nödvändiga säkerhetskontrollerna har utförts."
* careDocumentation.header.accessControlHeader ^comment = "TKB-fält: `../../accessControlHeader` (`AccessControlHeaderType`, kardinalitet 1..1)."
* careDocumentation.header.accessControlHeader.accountableHealthcareProvider ^definition = "Id för informationsägande vårdgivare.

I första hand HSAid alternativt i andra hand organisationsnummer.

Om HSA-id används sätts fältet root till oid för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id.

Om organisationsnummer används skall fältet root sättas till OID för organisationsnummer (1.2.752.29.4.3) och fältet extension sättas till organisationsnumret.

Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer.

Se även regel Spärrhantering."
* careDocumentation.header.accessControlHeader.accountableHealthcareProvider ^comment = "TKB-fält: `../../../accountableHealthcareProvider` (`IIType`, kardinalitet 0..1)."
* careDocumentation.header.accessControlHeader.accountableCareUnit ^definition = "Id för informationsägande vårdenhet angivet med HSA-id.

Fältet root sätts OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id.

Fältet används för spärrkontroll och är obligatorisk om uppgiften i patientjournal ska kunna ses via sammanhållen journalföring.

Se även regel Spärrhantering."
* careDocumentation.header.accessControlHeader.accountableCareUnit ^comment = "TKB-fält: `../../../accountableCareUnit` (`IIType`, kardinalitet 0..1)."
* careDocumentation.header.accessControlHeader.patientId ^definition = "Patientens identitetsbeteckning. Den identitetsbeteckning som denna uppgift lagrades under när uppgiften skapades ska om möjligt anges. Exempel på en situation då detta förekommer är exempelvis då patienten tidigare erhållit vård dokumenterat under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer.

Fältet root sätts till OID för kodverket för identifieraren:

1) För personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

2) För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

Fältet extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare."
* careDocumentation.header.accessControlHeader.patientId ^comment = "TKB-fält: `../../../patientId` (`IIType`, kardinalitet 1..1)."
* careDocumentation.header.accessControlHeader.careProcessId ^definition = "Id för den individanpassad vårdprocess som informationen journalförts inom ramen för. Består av ett lokalt genererat UUID.

UUID anges i root och extension lämnas tomt."
* careDocumentation.header.accessControlHeader.careProcessId ^comment = "TKB-fält: `../../../careProcessId` (`IIType`, kardinalitet 0..1)."
* careDocumentation.header.accessControlHeader.blockComparisonTime ^definition = "Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring för kontroll av patientens (ev.) spärrade information, såväl yttre (mellan vårdgivare) som inre (mellan vårdenheter) spärr.

Tidpunkten ska i så hög grad som möjligt överensstämma med den tidpunkt som ur patientens synvinkel är den mest naturliga. Detta är vanligtvis tidpunkten för patientens vårdkontakt som låg till grund för dokumentationen."
* careDocumentation.header.accessControlHeader.blockComparisonTime ^comment = "TKB-fält: `../../../blockComparisonTime` (`TimeStampType`, kardinalitet 1..1)."
* careDocumentation.header.accessControlHeader.approvedForPatient ^definition = "Ansvarig vårdpersonals beslut, alternativt baserat på verksamhetens policy och regler (men-/sekretessprövning), huruvida informationen får delas till patient för ändamålet Patients åtkomst (Individens direktåtkomst).

Om information beslutas delas sätts värdet i sådant fall till true, i annat fall till false. False innebär att informationen inte får delas till patient.

Notera att flaggans värde kan, för samma information, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient.

I sådana fall skall källsystemet uppdatera engagemangsindex för att konsumenter skall kunna bli notifierade därom."
* careDocumentation.header.accessControlHeader.approvedForPatient ^comment = "TKB-fält: `../../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* careDocumentation.header.sourceSystemId ^definition = "Det källsystem som informationen lagras i.

Fältet root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till källsystemets HSA-id."
* careDocumentation.header.sourceSystemId ^comment = "TKB-fält: `../../sourceSystemId` (`IIType`, kardinalitet 1..1)."
* careDocumentation.header.record ^definition = "Uppgift i patientjournal

Metainformation avseende den dokumenterade informationen."
* careDocumentation.header.record ^comment = "TKB-fält: `../../record` (`RecordType`, kardinalitet 1..1)."
* careDocumentation.header.record.id ^definition = "Unik och beständig identifierare för uppgift i patientjournal.

För att vara konsistent och beständig med tidigare majorversioner ska tjänsteproducenter av tidigare majorversioner av GetCareDocumentation endast ange root på samma sätt som documentId i tidigare majorversioner.

Extension utelämnas. Denna hantering krävs för att tjänstekonsumenten ska kunna filtrera bort dubbletter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.

Se även regel Verify unique recordId."
* careDocumentation.header.record.id ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1)."
* careDocumentation.header.record.timestamp ^definition = "Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten."
* careDocumentation.header.record.timestamp ^comment = "TKB-fält: `../../../timestamp` (`TimeStampType`, kardinalitet 1..1)."
* careDocumentation.header.author ^definition = "Hälso- och sjukvårdspersonal som ansvarar för information i patientjournal. Notera att den som registrerar informationen från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte är författare."
* careDocumentation.header.author ^comment = "TKB-fält: `../../author` (`AuthorType`, kardinalitet 0..1)."
* careDocumentation.header.author.id ^definition = "HSA-id för hälso- och sjukvårdspersonal.

Fältet root sätts till oid för HSA-id (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id."
* careDocumentation.header.author.id ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..1)."
* careDocumentation.header.author.name ^definition = "Namn på hälso- och sjukvårdspersonal."
* careDocumentation.header.author.name ^comment = "TKB-fält: `../../../name` (`string`, kardinalitet 0..1)."
* careDocumentation.header.author.timestamp ^definition = "Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges."
* careDocumentation.header.author.timestamp ^comment = "TKB-fält: `../../../timestamp` (`TimeStampType`, kardinalitet 1..1)."
* careDocumentation.header.author.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning vid författandet av informationen. Om möjligt skall kod från kodverket KV Befattning användas för att ange personens befattning så som den var angiven i HSA-katalogen vid tidpunkten. Om kod inte är tillgänglig anges befattning i klartext i CV-typens attribut originalText."
* careDocumentation.header.author.byRole ^comment = "TKB-fält: `../../../byRole` (`CVType`, kardinalitet 0..1)."
* careDocumentation.header.author.orgUnit ^definition = "Den organisation som författaren är uppdragstagare på."
* careDocumentation.header.author.orgUnit ^comment = "TKB-fält: `../../../orgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* careDocumentation.header.signature ^definition = "Signeringsinformation"
* careDocumentation.header.signature ^comment = "TKB-fält: `../../signature` (`SignatureType`, kardinalitet 0..1)."
* careDocumentation.header.signature.id ^definition = "HSA-id för hälso- och sjukvårdspersonal som signerat uppgift i patientjournal.

Fältet root sätts till oid för HSA-id (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id."
* careDocumentation.header.signature.id ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..1)."
* careDocumentation.header.signature.name ^definition = "Namn på hälso- och sjukvårdspersonal som signerat uppgift i patientjournal."
* careDocumentation.header.signature.name ^comment = "TKB-fält: `../../../name` (`String`, kardinalitet 0..1)."
* careDocumentation.header.signature.timestamp ^definition = "Anger tidpunkten för signering av uppgift i patientjournal."
* careDocumentation.header.signature.timestamp ^comment = "TKB-fält: `../../../timestamp` (`TimeStampType`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* careDocumentation.header.signature.byRole ^definition = "Information om hälso- och sjukvårdspersonalens befattning vid författandet av informationen. Om möjligt skall KV Befattning användas för att ange personens befattning så som den var angiven i HSA-katalogen vid tidpunkten.  Om kod inte är tillgänglig anges befattning i klartext i CV-typens attribut originalText."
* careDocumentation.header.signature.byRole ^comment = "TKB-fält: `../../../byRole` (`CVType`, kardinalitet 0..1)."
* careDocumentation.body ^definition = "Journalanteckning"
* careDocumentation.body ^comment = "TKB-fält: `../body` (`CareDocumentationBodyType`, kardinalitet 1..1)."
* careDocumentation.body.clinicalDocumentNoteCode ^definition = "Typ av anteckning. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11).

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter av kontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* careDocumentation.body.clinicalDocumentNoteCode ^comment = "TKB-fält: `../../clinicalDocumentNoteCode` (`CVType`, kardinalitet 1..1)."
* careDocumentation.body.clinicalDocumentNoteTitle ^definition = "Titel på anteckningen."
* careDocumentation.body.clinicalDocumentNoteTitle ^comment = "TKB-fält: `../../clinicalDocumentNoteTitle` (`string`, kardinalitet 0..1)."
* careDocumentation.body.clinicalDocumentNoteText ^definition = "Journalanteckningens innehåll i text.

Texten kan antingen skickas som vanlig text eller formaterat enligt DocBook-standarden, se 7.1.3.

Se även regel careDocumentationBody."
* careDocumentation.body.clinicalDocumentNoteText ^comment = "TKB-fält: `../../clinicalDocumentNoteText` (`string`, kardinalitet 0..1)."
* careDocumentation.body.multimediaEntry ^definition = "Journalanteckningens innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till objektet.

Vid användning av multimediaEntry kompletteras reglerna i tjänstekontraktsbeskrivningen med en Interaktionsöverenskommelse som ytterligare beskriver integrationen.

Se även regel careDocumentationBody samt regel Binära bilagor."
* careDocumentation.body.multimediaEntry ^comment = "TKB-fält: `../../multimediaEntry` (`MultimediaType`, kardinalitet 0..1)."
* careDocumentation.body.multimediaEntry.mediaType ^definition = "Typ av multimedia.

Se interaktionsöverenskommelse för beskrivning av typer som hanteras."
* careDocumentation.body.multimediaEntry.mediaType ^comment = "TKB-fält: `../../../mediaType` (`string`, kardinalitet 1..1)."
* careDocumentation.body.multimediaEntry.value ^definition = "Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges.

Se även regel multimediaEntry."
* careDocumentation.body.multimediaEntry.value ^comment = "TKB-fält: `../../../value` (`base64Binary`, kardinalitet 0..1)."
* careDocumentation.body.multimediaEntry.reference ^definition = "Referens till extern binär fil i form av en URL om interaktionsöverenskommelsen tillåter detta. Ett och endast ett av attributen value och reference ska anges.

Se interaktionsöverenskommelse för ytterligare beskrivning.

Se även regel multimediaEntry."
* careDocumentation.body.multimediaEntry.reference ^comment = "TKB-fält: `../../../reference` (`anyURI`, kardinalitet 0..1)."
* careDocumentation.body.dissentingOpinion ^definition = "Om patienten eller någon för denna ansvarig person (exempelvis vårdnadshavare) har lämnat en avvikande mening till journalanteckningen."
* careDocumentation.body.dissentingOpinion ^comment = "TKB-fält: `../../dissentingOpinion` (`DissentingOpinionType`, kardinalitet 0..*)."
* careDocumentation.body.dissentingOpinion.opinionId ^definition = "En universellt unik identifierare för den avvikande meningen. Identifieraren ska vara beständig, i betydelsen att upprepade frågemeddelanden ger samma värde i svarsmeddelanden som rör samma journalnotat."
* careDocumentation.body.dissentingOpinion.opinionId ^comment = "TKB-fält: `../../../opinionId` (`IIType`, kardinalitet 0..1)."
* careDocumentation.body.dissentingOpinion.authorTime ^definition = "Tidpunkten då den avvikande meningen författades."
* careDocumentation.body.dissentingOpinion.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* careDocumentation.body.dissentingOpinion.opinion ^definition = "Text som innehåller den avvikande meningen."
* careDocumentation.body.dissentingOpinion.opinion ^comment = "TKB-fält: `../../../opinion` (`string`, kardinalitet 1..1)."
* careDocumentation.body.dissentingOpinion.personId ^definition = "Id för författaren av den avvikande meningen."
* careDocumentation.body.dissentingOpinion.personId ^comment = "TKB-fält: `../../../personId` (`IIType`, kardinalitet 1..1)."
* careDocumentation.body.dissentingOpinion.personName ^definition = "Namnet på författaren av den avvikande meningen."
* careDocumentation.body.dissentingOpinion.personName ^comment = "TKB-fält: `../../../personName` (`string`, kardinalitet 1..1)."
* hasMore ^definition = "Anges av tjänsteproducent när det finns ytterligare information att hämta.

Not: Vid svar från tjänsteproducent är kardinaliteten 0..1.

Se även regel Partiell datahämtning."
* hasMore ^comment = "TKB-fält: `hasMore` (`HasMoreType`, kardinalitet 0..*)."
* hasMore.logicalAddress ^definition = "Den logiska adressen till tjänsteproducenten som genererar svaret och har mer information."
* hasMore.logicalAddress ^comment = "TKB-fält: `../logicalAddress` (`string`, kardinalitet 1..1)."
* hasMore.reference ^definition = "En unik identifierare som tjänstekonsumenten anger i nästa anrop för att hämta mer data. Om det då finns ytterligare mer information hos tjänsteproducenten ska en ny, unik identifierare levereras.

Tjänsteproducenten avgör hur referensen byggs upp.

Exempel: Base64({ ”queryHash” : ”7114efbb6a761fb1a2d6dae55b5612e1\", ”lastReturnedId” : 7685824}) = eyDigJ1xdWVyeUhhc2jigJ0gOiDigJ03MTE0ZWZiYjZhNzYxZmIxYTJkNmRhZTU1YjU2MTJlMSIsIOKAnWxhc3RSZXR1cm5lZElk4oCdIDogNzY4NTgyNH0=

Re även regel Referensens giltighetstid."
* hasMore.reference ^comment = "TKB-fält: `../reference` (`string`, kardinalitet 1..1)."
* result ^definition = "Innehåller information om det gick bra eller ej att besvara förfrågan.

Se avsnitt 7.1.7 för beskrivning av hantering vid logiska fel."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
