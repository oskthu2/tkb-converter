// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestOutcomeFieldDescriptions
* requestId ^definition = "Remiss id

Den ursprungliga remissens remiss-id"
* requestId ^comment = "TKB-fält: `requestOutcome.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken

**Modellanteckning:** Den ursprungliga remissens remiss-id. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* requestOutcomeId ^definition = "Svar id

Id för remissvar, enligt format:

Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE162321000451-0001#456"
* requestOutcomeId ^comment = "TKB-fält: `requestOutcome.requestOutcomeId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken

**Modellanteckning:** Id för remissvaret. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* typeOfRequestOutcome ^definition = "Svarstyp

Anger typen av remissvar.

Giltiga värden är:

DSV = Delsvar

PSV = Preliminärt svar

SSV= Slutsvar"
* typeOfRequestOutcome ^comment = "TKB-fält: `requestOutcome.typeOfRequestOutcome` (`CodeRequestOutcomeType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeRequestOutcomeType"
* requestVersionNumber ^definition = "Remissversionsnummer

Remissens versionsnummer.

Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.

Denna räknas upp vid:

Ändrad remiss

Vidareskickad remiss

Ändrat betalningsansvar"
* requestVersionNumber ^comment = "TKB-fält: `requestOutcome.requestVersionNumber` (`VersionNumberType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*"
* requestOutcomeTime ^definition = "Svarstidpunkt

Svarets skapelsetidpunkt.

Den tidpunkt då remissbesvararen skickar svaret."
* requestOutcomeTime ^comment = "TKB-fält: `requestOutcome.requestOutcomeTime` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* patient ^definition = "Patient"
* patient ^comment = "TKB-fält: `requestOutcome.patient` (`SimplePatientType`, kardinalitet 1..1).

**Modellanteckning:** Patient (SimplePatientType)."
* patient.personId ^definition = "Person id

Patientens identitet"
* patient.personId ^comment = "TKB-fält: `requestOutcome.patient.personId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root."
* patient.patientName ^definition = "Namn

Alla personnamn skrivs sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.

Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet."
* patient.patientName ^comment = "TKB-fält: `requestOutcome.patient.name` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken"
* respondingOrganisation ^definition = "Organisatorisk enhet

Den enhet som har producerat svaret. Detta kan skilja sig från den enhet som remittenten angav som remissmottagande enhet på grund av tekniska eller organisatoriska anledningar. Exempelvis kan det ske en systemintern ”vidareskickning” till en specifik enhet från en central remissmottagning utan att detta notifieras till remittenten."
* respondingOrganisation ^comment = "TKB-fält: `requestOutcome.respondingOrganisation` (`FullOrganisationType`, kardinalitet 1..1)."
* respondingOrganisation.careUnitId ^definition = "Enhet id

HSA-id för remissbesvarande enhet."
* respondingOrganisation.careUnitId ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* respondingOrganisation.careUnitName ^definition = "Enhet namn

Namn på enhet."
* respondingOrganisation.careUnitName ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitName` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** Namn på enhet. Maxlängd 64 tecken."
* respondingOrganisation.careUnitTelephone ^definition = "Enhet telfon

Telefon till enhet."
* respondingOrganisation.careUnitTelephone ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1)."
* respondingOrganisation.careUnitEmail ^definition = "Enhet epost

E-post till enhet."
* respondingOrganisation.careUnitEmail ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitEmail` (`String`, kardinalitet 0..1)."
* respondingOrganisation.careUnitAddress ^definition = "Enhet adress

Adress till enhet."
* respondingOrganisation.careUnitAddress ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitAddress` (`String`, kardinalitet 0..1)."
* respondingOrganisation.careUnitLocation ^definition = "Enhet plats

Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering."
* respondingOrganisation.careUnitLocation ^comment = "TKB-fält: `requestOutcome.respondingOrganisation.careUnitLocation` (`String`, kardinalitet 0..1)."
* author ^definition = "Remissbesvarare

Remissbesvarande person och organisation"
* author ^comment = "TKB-fält: `requestOutcome.author` (`AuthorType`, kardinalitet 1..1)."
* author.healthcareProfessional ^definition = "Hälso- och sjukvårdspersonal"
* author.healthcareProfessional ^comment = "TKB-fält: `requestOutcome.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* author.healthcareProfessional.healthcareProfessionalId ^definition = "Personal id

HSA-id för remissbesvarare"
* author.healthcareProfessional.healthcareProfessionalId ^comment = "TKB-fält: `requestOutcome.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för personen. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.id."
* author.healthcareProfessional.healthcareProfessionalName ^definition = "Personal namn

Namn på remissbesvarare"
* author.healthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `requestOutcome.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** Namn, valfri formatering. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.name."
* author.typeOfHealthcareProfessional ^definition = "Typ av hälso- och sjukvårdspersonal

Kod för yrkestitel från Snomed CT enligt urvalen nedan:

code: se urval_legitimerade_yrken

codeSystem: OID 1.2.752.129.5.1.70

eller

code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade

codeSystem: 1.2.752.129.7.1.5

Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* author.typeOfHealthcareProfessional ^comment = "TKB-fält: `requestOutcome.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1)."
* recipient ^definition = "Mottagare"
* recipient ^comment = "TKB-fält: `requestOutcome.recipient` (`RecipientType`, kardinalitet 1..1).

**Modellanteckning:** Remissvarsmottagande enhet som svaret adresseras till."
* recipient.organisation ^definition = "Organisatorisk enhet

Mottagare"
* recipient.organisation ^comment = "TKB-fält: `requestOutcome.recipient.organisation` (`OrganisationType`, kardinalitet 1..1).

**Modellanteckning:** Mottagande enhet; HSA-id används som logisk adress."
* recipient.organisation.careUnitId ^definition = "Enhet id

HSA-id för vårdenhet (jmf. PDL) som ansvarar för remissvaret."
* recipient.organisation.careUnitId ^comment = "TKB-fält: `requestOutcome.author.healthcareProfessional.Organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* outcome ^definition = "Kliniskt innehåll

Remissvar"
* outcome ^comment = "TKB-fält: `requestOutcome.outcome` (`OutcomeType`, kardinalitet 1..1).

**Modellanteckning:** Remissvarets kliniska innehåll (OutcomeType)."
* outcome.outcomeText ^definition = "Klinisk svarstext

Remissvarstexten"
* outcome.outcomeText ^comment = "TKB-fält: `requestOutcome.outcome.outcomeText` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 65000 tecken

**Modellanteckning:** Remissvarets text. Maxlängd 8192 tecken."
* outcome.condition ^definition = "Kliniskt tillstånd

Dessa kliniska data är direkt kopplat till svaret, t.ex. funna diagnoser."
* outcome.condition ^comment = "TKB-fält: `requestOutcome.outcome.condition` (`ConditionType`, kardinalitet 0..*).

**Modellanteckning:** Kliniskt tillstånd (ConditionType). Antingen text eller kod, inte båda."
* outcome.condition.conditionText ^definition = "Klinisk tillståndsbeskrivning

Beskrivningen av det kliniska tillståndet i de fall en kod saknas.

Texten ska endast beskriva ett kliniskt tillstånd. Ska fler tillstånd beskrivas hanteras det i olika requestOutcome.outcome.condition.

Observera att antingen måste denna eller outcome.condition.code finnas."
* outcome.condition.conditionText ^comment = "TKB-fält: `requestOutcome.outcome.condition.text` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Diagnosbeskrivning i fritext. Maxlängd 8192 tecken. RIV-TA: condition.text."
* outcome.condition.conditionCode ^definition = "Kliniskt tillståndskod Anger kliniska tillståndskoder.

code:  se ICD-10-SE

codeSystem: 1.2.752.116.1.1.1

Observera att antingen måste denna eller outcome.condition.text finnas med

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* outcome.condition.conditionCode ^comment = "TKB-fält: `requestOutcome.outcome.condition.code` (`CVType`, kardinalitet 0..1)."
* outcome.accomplishedActivity ^definition = "Åtgärd

Svaret kan redovisa noll till många utförda åtgärder"
* outcome.accomplishedActivity ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity` (`ActivityType`, kardinalitet 0..*).

**Modellanteckning:** Utförd åtgärd (ActivityType). Antingen text eller kod, inte båda."
* outcome.accomplishedActivity.activityId ^definition = "Åtgärd id

Unikt id som är sammansatt av requestId + accomplishedActivity + löpnummer med # som skiljer respektive del.

Exempel.

requestId = SE2321000012-0001#987

id = SE2321000012-0001#987#accomplishedActivity#0

och nästa id blir

accomplishedActivity.id = SE2321000012-0001#987# accomplishedActivity#1"
* outcome.accomplishedActivity.activityId ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity.id` (`ActivityIdType`, kardinalitet 0..1).

**Modellanteckning:** Unikt id i form av löpnummer för åtgärden. RIV-TA: id."
* outcome.accomplishedActivity.activityText ^definition = "Åtgärd beskrivning

Här ska åtgärdsbeskrivningen in om systemet inte kan använda en kod.

Texten ska endast beskriva en utförd åtgärd. Ska fler åtgärder beskrivas hanteras det i olika requestOutcome.outcome.accomplishedActivity.

Observera att text får endast förekomma om accomplishedActivity.code inte används."
* outcome.accomplishedActivity.activityText ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity.text` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Fritext. Maxlängd 8192 tecken. RIV-TA: text."
* outcome.accomplishedActivity.activityCode ^definition = "Åtgärd typ

Åtgärd enligt kodsystem.

Observera att code får endast förekomma om accomplishedActivity.text inte används."
* outcome.accomplishedActivity.activityCode ^comment = "TKB-fält: `requestOutcome.outcome.accomplishedActivity.code` (`ActivityCodeType`, kardinalitet 0..1).

**Modellanteckning:** Åtgärd enligt kodsystem: KVÅ (1.2.752.116.1.3.2.1.4, obligatoriskt att hantera) eller Snomed CT. Okänt kodverk ger APPLICATION_ERROR. RIV-TA: code.code/codeSystem."
* attachment ^definition = "Bilaga

Möjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten"
* attachment ^comment = "TKB-fält: `requestOutcome.attachment` (`MultimediaType`, kardinalitet 0..*).

**Modellanteckning:** Bilaga (MultimediaType) i något av de tillåtna formaten. Totala meddelandestorleken får inte överstiga 10 MB."
* attachment.attachmentId ^definition = "Bilaga id

Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.

Format remissvar: requestOutcomeId#löpnummer =Källsystem-Id(HSA-ID)#lokalt-id#löpnummer

Obligatoriskt för inbäddade bilagor"
* attachment.attachmentId ^comment = "TKB-fält: `requestOutcome.attachment.id` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)#(.*)

Maxlängd 256 tecken"
* attachment.mediaType ^definition = "Multimediatyp

Typ av multimedia, se urval med tillåtna format.

code: se urval_mediatyper_elektronisk_remiss

codeSystem: (1.2.752.129.5.1.59, se nedan)

Under codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.

Urvalet kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* attachment.mediaType ^comment = "TKB-fält: `requestOutcome.attachment.mediaType` (`CVType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** urval_mediatyper_elektronisk_

remiss

**Modellanteckning:** Filformat enligt urval_mediatyper_elektronisk_remiss (codeSystem 1.2.752.129.5.1.59): pdf, jpeg, png, html, txt, gif, bmp."
* attachment.attachmentValue ^definition = "Binärdata

Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format. Obligatoriskt när referens inte används."
* attachment.attachmentValue ^comment = "TKB-fält: `requestOutcome.attachment.value` (`Base64Binary`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Ett meddelande med bilagor får inte vara större än 10MB"
* attachment.reference ^definition = "Referens

Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. OBS! Används inte i denna version."
* attachment.reference ^comment = "TKB-fält: `requestOutcome.attachment.reference` (`AnyURI`, kardinalitet 0..0)."
* attachment.description ^definition = "Beskrivning

Beskrivning av bilaga, t ex innehåll"
* attachment.description ^comment = "TKB-fält: `requestOutcome.attachment.description` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 256 tecken

**Modellanteckning:** Beskrivning av bilaga. Maxlängd 256 tecken."
* originalRequest ^definition = "Originalremissen

Detta fält skall endast vara ifyllt i de fall då remissen skickas till annan mottagare än originalremittenten. Detta flöde finns idag inte beskrivet i de nationella specifikationerna. OriginalRequest får endast vara ifylld om den faktiska implementationen kan garantera att strukturen är identisk från det som mottogs från original remittenten."
* originalRequest ^comment = "TKB-fält: `requestOutcome .originalRequest` (`RequestType`, kardinalitet 0..1).

**Modellanteckning:** Den ursprungliga remissen (RequestType), på nivå med requestOutcome i ProcessRequestOutcomeType."
