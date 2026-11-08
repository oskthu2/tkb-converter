// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestOutcomeFieldDescriptions
* requestOutcome ^definition = "Svar

Remissvar"
* requestOutcome ^comment = "TKB-fält: `requestOutcome` (`RequestOutcomeType`)."
* requestOutcome.requestId ^definition = "Remiss id

Den ursprungliga remissens remiss-id"
* requestOutcome.requestId ^comment = "TKB-fält: `requestOutcome.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken"
* requestOutcome.requestOutcomeId ^definition = "Svar id

Id för remissvar, enligt format:

Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE162321000451-0001#456"
* requestOutcome.requestOutcomeId ^comment = "TKB-fält: `requestOutcome.requestOutcomeId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken"
* requestOutcome.typeOfRequestOutcome ^definition = "Svarstyp

Anger typen av remissvar.

Giltiga värden är:

DSV = Delsvar

PSV = Preliminärt svar

SSV= Slutsvar"
* requestOutcome.typeOfRequestOutcome ^comment = "TKB-fält: `requestOutcome.typeOfRequestOutcome` (`CodeRequestOutcomeType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeRequestOutcomeType"
* requestOutcome.requestVersionNumber ^definition = "Remissversionsnummer

Remissens versionsnummer.

Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.

Denna räknas upp vid:

Ändrad remiss

Vidareskickad remiss

Ändrat betalningsansvar"
* requestOutcome.requestVersionNumber ^comment = "TKB-fält: `requestOutcome.requestVersionNumber` (`VersionNumberType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*"
* requestOutcome.requestOutcomeTime ^definition = "Svarstidpunkt

Svarets skapelsetidpunkt.

Den tidpunkt då remissbesvararen skickar svaret."
* requestOutcome.requestOutcomeTime ^comment = "TKB-fält: `requestOutcome.requestOutcomeTime` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* requestOutcome.patient ^definition = "Patient"
* requestOutcome.patient ^comment = "TKB-fält: `requestOutcome.patient` (`SimplePatientType`, kardinalitet 1..1)."
* requestOutcome.patient.personId ^definition = "Person id

Patientens identitet"
* requestOutcome.patient.personId ^comment = "TKB-fält: `requestOutcome.patient.personId` (`PersonIdType`, kardinalitet 1..1)."
* requestOutcome.patient.personId.extension ^definition = "Personidentifierare för patienten.

Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken."
* requestOutcome.patient.personId.extension ^comment = "TKB-fält: `requestOutcome.patient.personId.extension` (`String`, kardinalitet 1..1).

**Modellanteckning:** extension (XML-attribut)"
* requestOutcome.patient.personId.root ^definition = "OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas.

För andra typer av personidentifierare sätts root till aktuell OID."
* requestOutcome.patient.personId.root ^comment = "TKB-fält: `requestOutcome.patient.personId.root` (`String`, kardinalitet 1..1).

**Modellanteckning:** root (XML-attribut)"
* requestOutcome.patient.name ^definition = "Namn

Alla personnamn skrivs sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.

Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet."
* requestOutcome.patient.name ^comment = "TKB-fält: `requestOutcome.patient.name` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken"
* requestOutcome.respondingOrganisation ^definition = "Organisatorisk enhet

Den enhet som har producerat svaret. Detta kan skilja sig från den enhet som remittenten angav som remissmottagande enhet på grund av tekniska eller organisatoriska anledningar. Exempelvis kan det ske en systemintern ”vidareskickning” till en specifik enhet från en central remissmottagning utan att detta notifieras till remittenten."
* requestOutcome.respondingOrganisation ^comment = "TKB-fält: `requestOutcome.respondingOrganisation` (`FullOrganisationType`, kardinalitet 1..1)."
* requestOutcome.respondingOrganisation.careUnitId ^definition = "Enhet id

HSA-id för remissbesvarande enhet."
* requestOutcome.respondingOrganisation.careUnitId ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestOutcome.respondingOrganisation.careUnitName ^definition = "Enhet namn

Namn på enhet."
* requestOutcome.respondingOrganisation.careUnitName ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitName` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestOutcome.respondingOrganisation.careUnitTelephone ^definition = "Enhet telfon

Telefon till enhet."
* requestOutcome.respondingOrganisation.careUnitTelephone ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1)."
* requestOutcome.respondingOrganisation.careUnitEmail ^definition = "Enhet epost

E-post till enhet."
* requestOutcome.respondingOrganisation.careUnitEmail ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitEmail` (`String`, kardinalitet 0..1)."
* requestOutcome.respondingOrganisation.careUnitAddress ^definition = "Enhet adress

Adress till enhet."
* requestOutcome.respondingOrganisation.careUnitAddress ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitAddress` (`String`, kardinalitet 0..1)."
* requestOutcome.respondingOrganisation.careUnitLocation ^definition = "Enhet plats

Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering."
* requestOutcome.respondingOrganisation.careUnitLocation ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitLocation` (`String`, kardinalitet 0..1)."
* requestOutcome.author ^definition = "Remissbesvarare

Remissbesvarande person och organisation"
* requestOutcome.author ^comment = "TKB-fält: `requestOutcome.author` (`AuthorType`, kardinalitet 1..1)."
* requestOutcome.author.healthcareProfessional ^definition = "Hälso- och sjukvårdspersonal"
* requestOutcome.author.healthcareProfessional ^comment = "TKB-fält: `requestOutcome.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* requestOutcome.author.healthcareProfessional.id ^definition = "Personal id

HSA-id för remissbesvarare"
* requestOutcome.author.healthcareProfessional.id ^comment = "TKB-fält: `requestOutcome.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestOutcome.author.healthcareProfessional.name ^definition = "Personal namn

Namn på remissbesvarare"
* requestOutcome.author.healthcareProfessional.name ^comment = "TKB-fält: `requestOutcome.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestOutcome.author.typeOfHealthcareProfessional ^definition = "Typ av hälso- och sjukvårdspersonal

Kod för yrkestitel från Snomed CT enligt urvalen nedan:

code: se urval_legitimerade_yrken

codeSystem: OID 1.2.752.129.5.1.70

eller

code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade

codeSystem: 1.2.752.129.7.1.5

Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* requestOutcome.author.typeOfHealthcareProfessional ^comment = "TKB-fält: `requestOutcome.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1)."
* requestOutcome.recipient ^definition = "Mottagare"
* requestOutcome.recipient ^comment = "TKB-fält: `requestOutcome.recipient` (`RecipientType`, kardinalitet 1..1)."
* requestOutcome.recipient.organisation ^definition = "Organisatorisk enhet

Mottagare"
* requestOutcome.recipient.organisation ^comment = "TKB-fält: `requestOutcome.recipient.organisation` (`OrganisationType`, kardinalitet 1..1)."
* requestOutcome.recipient.organisation.careUnitId ^definition = "Enhet id

HSA-id för remissvarsmottagande enhet, till vilken remissvaret adresseras."
* requestOutcome.recipient.organisation.careUnitId ^comment = "TKB-fält: `requestOutcome.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestOutcome.outcome ^definition = "Kliniskt innehåll

Remissvar"
* requestOutcome.outcome ^comment = "TKB-fält: `requestOutcome.outcome` (`OutcomeType`, kardinalitet 1..1)."
* requestOutcome.outcome.outcomeText ^definition = "Klinisk svarstext

Remissvarstexten"
* requestOutcome.outcome.outcomeText ^comment = "TKB-fält: `requestOutcome.outcome.outcomeText` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 65000 tecken"
* requestOutcome.outcome.condition ^definition = "Kliniskt tillstånd

Dessa kliniska data är direkt kopplat till svaret, t.ex. funna diagnoser."
* requestOutcome.outcome.condition ^comment = "TKB-fält: `requestOutcome.outcome.condition` (`ConditionType`, kardinalitet 0..*)."
* requestOutcome.outcome.condition.text ^definition = "Klinisk tillståndsbeskrivning

Beskrivningen av det kliniska tillståndet i de fall en kod saknas.

Texten ska endast beskriva ett kliniskt tillstånd. Ska fler tillstånd beskrivas hanteras det i olika requestOutcome.outcome.condition.

Observera att antingen måste denna eller outcome.condition.code finnas."
* requestOutcome.outcome.condition.text ^comment = "TKB-fält: `requestOutcome.outcome.condition.text` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* requestOutcome.outcome.condition.code ^definition = "Kliniskt tillståndskod Anger kliniska tillståndskoder.

code:  se ICD-10-SE

codeSystem: 1.2.752.116.1.1.1

Observera att antingen måste denna eller outcome.condition.text finnas med

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* requestOutcome.outcome.condition.code ^comment = "TKB-fält: `requestOutcome.outcome.condition.code` (`CVType`, kardinalitet 0..1)."
* requestOutcome.outcome.accomplishedActivity ^definition = "Åtgärd

Svaret kan redovisa noll till många utförda åtgärder"
* requestOutcome.outcome.accomplishedActivity ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity` (`ActivityType`, kardinalitet 0..*)."
* requestOutcome.outcome.accomplishedActivity.id ^definition = "Åtgärd id

Unikt id som är sammansatt av requestId + accomplishedActivity + löpnummer med # som skiljer respektive del.

Exempel.

requestId = SE2321000012-0001#987

id = SE2321000012-0001#987#accomplishedActivity#0

och nästa id blir

accomplishedActivity.id = SE2321000012-0001#987# accomplishedActivity#1"
* requestOutcome.outcome.accomplishedActivity.id ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity.id` (`ActivityIdType`, kardinalitet 0..1)."
* requestOutcome.outcome.accomplishedActivity.text ^definition = "Åtgärd beskrivning

Här ska åtgärdsbeskrivningen in om systemet inte kan använda en kod.

Texten ska endast beskriva en utförd åtgärd. Ska fler åtgärder beskrivas hanteras det i olika requestOutcome.outcome.accomplishedActivity.

Observera att text får endast förekomma om accomplishedActivity.code inte används."
* requestOutcome.outcome.accomplishedActivity.text ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity.text` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* requestOutcome.outcome.accomplishedActivity.code ^definition = "Åtgärd typ

Åtgärd enligt kodsystem.

Observera att code får endast förekomma om accomplishedActivity.text inte används."
* requestOutcome.outcome.accomplishedActivity.code ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity.code` (`ActivityCodeType`, kardinalitet 0..1)."
* requestOutcome.outcome.accomplishedActivity.code.code ^definition = "Kod enligt det angivet kodsystemet – KVÅ eller Snomed CT"
* requestOutcome.outcome.accomplishedActivity.code.code ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity.code.code` (`String`, kardinalitet 1..1).

**Modellanteckning:** code (XML-attribut)"
* requestOutcome.outcome.accomplishedActivity.code.codeSystem ^definition = "Kodsystem för tolkning av angiven kod.

Obligatoriskt att hantera

1.2.752.116.1.3.2.1.4 = KVÅ

Om remittent använder kodverk som remissmottagande system inte hanterar skall detta resultera i ett fel av typen APPLICATION_ERROR."
* requestOutcome.outcome.accomplishedActivity.code.codeSystem ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity.code.codeSystem` (`String`, kardinalitet 1..1).

**Modellanteckning:** codeSystem (XML-attribut) Tillåtna värden: 1.2.752.116.1.3.2.1.4, 1.2.752.116.2.1.1."
* requestOutcome.attachment ^definition = "Bilaga

Möjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten"
* requestOutcome.attachment ^comment = "TKB-fält: `requestOutcome.attachment` (`MultimediaType`, kardinalitet 0..*)."
* requestOutcome.attachment.id ^definition = "Bilaga id

Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.

Format remissvar: requestOutcomeId#löpnummer =Källsystem-Id(HSA-ID)#lokalt-id#löpnummer

Obligatoriskt för inbäddade bilagor"
* requestOutcome.attachment.id ^comment = "TKB-fält: `requestOutcome.attachment.id` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)#(.*)

Maxlängd 256 tecken"
* requestOutcome.attachment.mediaType ^definition = "Multimediatyp

Typ av multimedia, se urval med tillåtna format.

code: se urval_mediatyper_elektronisk_remiss

codeSystem: (1.2.752.129.5.1.59, se nedan)

Under codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.

Urvalet kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* requestOutcome.attachment.mediaType ^comment = "TKB-fält: `requestOutcome.attachment.mediaType` (`CVType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** urval_mediatyper_elektronisk_

remiss"
* requestOutcome.attachment.value ^definition = "Binärdata

Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format. Obligatoriskt när referens inte används."
* requestOutcome.attachment.value ^comment = "TKB-fält: `requestOutcome.attachment.value` (`Base64Binary`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Ett meddelande med bilagor får inte vara större än 10MB"
* requestOutcome.attachment.reference ^definition = "Referens

Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. OBS! Används inte i denna version."
* requestOutcome.attachment.reference ^comment = "TKB-fält: `requestOutcome.attachment.reference` (`AnyURI`, kardinalitet 0..0)."
* requestOutcome.attachment.description ^definition = "Beskrivning

Beskrivning av bilaga, t ex innehåll"
* requestOutcome.attachment.description ^comment = "TKB-fält: `requestOutcome.attachment.description` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 256 tecken"
* originalRequest ^definition = "Originalremissen

Detta fält skall endast vara ifyllt i de fall då remissen skickas till annan mottagare än originalremittenten. Detta flöde finns idag inte beskrivet i de nationella specifikationerna. OriginalRequest får endast vara ifylld om den faktiska implementationen kan garantera att strukturen är identisk från det som mottogs från original remittenten."
* originalRequest ^comment = "TKB-fält: `requestOutcome .originalRequest` (`RequestType`, kardinalitet 0..1)."
