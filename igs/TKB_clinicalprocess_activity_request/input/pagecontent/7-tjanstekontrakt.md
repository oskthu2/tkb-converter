## Tjänstekontrakt

> I källdokumentet är detta kapitel 6. I denna IG ligger tjänstekontrakten alltid i avsnitt 7.


### ProcessRequest
ProcessRequest används för att skicka remiss från remittent till remissmottagare. I denna version av tjänsten avser remiss en så kallad allmänremiss.
Tjänstekontraktets huvuddomän är "clinicalprocess", som hanterar alla underdomäner som handlar om tjänstekontrakt för att hjälpa till med hantering av den kliniska kärnprocessen.
Underdomänen är "activity:request", som grupperar alla tjänstekontrakt som handlar om att presentera och administrera information om remiss och tillhörande flöden.
Namnrymden för tjänstekontraktet är: urn:riv:clinicalprocess:activity:request

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges med en * i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardi-nalitet | Kodverk/värde-mängd /ev begränsningar |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| Request | RequestType | Remiss |  |  |
| request.requestId | RequestIdType | Remiss id<br/>Remissens identitet. Format: Källsystem-Id(HSA-ID)#lokalt-id<br/>Exempel: SE2321000012-0001#987 | 1..1 | (.*)#(.*)<br/>Maxlängd 256 tecken |
| request.typeOfRequest | CodeForRequestType | Remisstyp<br/>Anger typ av remiss.<br/>I denna version är den giltiga koden ”4” – allmänremiss | 1..1 | codes:codeRequestOutcomeType |
| request.versionTimeStamp | TimeStampType | Versionstidpunkt<br/>Tidpunkt då versionen skapades.<br/>Denna tidpunkt kan skilja sig från tidpunkten då remissen skickas. | 1..1 | ÅÅÅÅMMDDttmmss |
| request.versionNumber | VersionNumberType | Versionsnummer<br/>Remissens versionsnummer.<br/>Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.<br/>Denna räknas upp vid:<br/>Ändrad remiss<br/>Vidareskickad remiss<br/>Ändrat betalnings-ansvar | 1..1 | (0*[1-9]+\|[1-9])\d* |
| request.reasonForVersion | ReasonForVersionType | Versionsorsak | 1..1 |  |
| request.reasonForVersion.typeOfReason | CodeVersionReason |  | 1..1 |  |
| request.reasonForVersion.typeOfReason.code | CodeVersionReason_values | Anger varför en ny version skapats.<br/>Värden enligt Kv e-remiss versionsorsak, se [R5]. Giltiga värden är:<br/>NR = Ny remiss<br/>AR = Ändrad remiss<br/>VR = Vidareskickad remiss<br/>AB = Ändrat betalningsansvar | 1..1 |  |
| request.careResponsibilityRemains | Boolean | Vårdansvar kvarstår<br/>Anger om remittent vill att vårdansvar ska kvarstå hos remitterande enhet eller om man vill att vårdansvar överförs till remissmottagande enhet.<br/>Två alternativ:<br/>True = Vårdansvar kvarstår<br/>False = Begäran om övertagande av vårdansvar | 1..1 |  |
| request.patient | PatientType | Patient | 1..1 |  |
| request.patient.personId | PersonIdType | Person id<br/>Patientens identitet | 1..1 |  |
| request.patient.personId.extension | String | Personidentifierare för patienten.<br/>Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken. | 1..1 |  |
| request.patient.personId.root | String | OID för typ av personidentifierare.<br/>För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.<br/>För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.<br/>För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas.<br/>För andra typer av personidentifierare sätts root till aktuell OID. | 1..1 |  |
| request.patient.address | AddressType | Tillfällig adress<br/>Observera att adress används endast om tillfällig adress behöver anges, ej folkbokförd adress.<br/>Adressen är avsedd att användas vid kallelse. Formatet är baserat på Skatteverkets distributionslösning Navet. | 0..1 |  |
| request.patient.address.careOf | String | ”Care of” | 0..1 | Maxlängd 35 tecken |
| request.patient.address.streetName1 | String | Utdelningsadress1 | 1..1 | Maxlängd 35 tecken |
| request.patient.address.streetName2 | String | Utdelningsadress2 | 0..1 | Maxlängd 35 tecken |
| request.patient.address.postalCode | String | Postnummer i formatet ”12345”, dvs fem siffror inga blanksteg. | 1..1 | Maxlängd 5 tecken |
| request.patient.address.postalCity | String | Postort | 1..1 | Maxlängd 27 tecken |
| request.patient.address.postBox | String | Postbox | 0..1 | Maxlängd 9 tecken |
| request.patient.telecom | TelecomType | Telefon | 0..2 |  |
| request.patient.telecom.typeOfTelecom | CodeForTelecomType | Telefon typ<br/>För att särskilja olika typer av telekomadresser används 2 olika koder ’MC’=Mobil, ’H’=Hemtelefon | 1..1 | codes:codeForTelecomType |
| request.patient.telecom.number | String | Telefonnummer | 1..1 | Maxlängd 200 tecken |
| request.patient.name | String | Namn<br/>Personnamn sammanslaget enligt formatet " Mellannamn Efternamn, Förnamn". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.<br/>Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet. | 0..1 | Maxlängd 216 tecken |
| request.patient.gender | CodeForGenderType | Kön<br/>Anger administrativt kön, dvs. det kön patienten har registrerat hos Skatteverket.<br/>OID för kodsystem: 1.2.752.129.2.2.1.1<br/>Giltiga värden är:<br/>0 = okänt<br/>1 = man<br/>2 = kvinna<br/>9 = ej tillämpligt | 0..1 | codes:codeForGenderType |
| request.patient.dateOfBirth | DateType | Födelsetidpunkt<br/>Anges då patientens identitetstyp är av annan typ än personnummer. | 0..1 | ÅÅÅÅMMDD |
| request.requestOrganisation | FullOrganisationType | Organisatorisk enhet<br/>Information om ursprunglig remitterande organisatorisk enhet. Kan skilja sig från PDL ansvarig enhet vid behov. Det är denna enhet som svaret adresseras till i logisk adress. | 1..1 |  |
| request.requestOrganisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för remitterande enhet. Detta används av remissbesvarare som logisk adress för att adressera svarsmottagare. | 1..1 | Maxlängd 64 tecken |
| request.requestOrganisation.careUnitName | String | Enhet namn<br/>Namn på enhet. | 0..1 | Maxlängd 64 tecken |
| request.requestOrganisation.careUnitTelephone | String | Enhet telefon<br/>Telefon till enhet. | 0..1 |  |
| request.requestOrganisation.careUnitEmail | String | Enhet epost<br/>E-post till enhet. | 0..1 |  |
| request.requestOrganisation.careUnitAddress | String | Adress till enhet. | 0..1 |  |
| request.requestOrganisation.careUnitLocation | String | Enhet plats<br/>Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |  |
| request.author | RequestAuthorType | Remittent<br/>Information avseende den remitterande personen samt den organisation som personen är uppdragstagare på. | 1..1 |  |
| request.author.date | DateType | Remissdatum<br/>Remissdatum när remiss skapades måste anges. Format som ska användas är ÅÅÅÅMMDD | 1..1 | ÅÅÅÅMMDD |
| request.author.healthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonal | 1..1 |  |
| request.author.healthcareProfessional.id | HsaIdType | Personal Id<br/>HSA-id för remitterande hälso- och sjukvårdspersonal. | 0..1 | Maxlängd 64 tecken |
| request.author.healthcareProfessional.name | String | Personal namn<br/>Namn på remitterande hälso- och sjukvårdspersonal.<br/>Valfri formatering. | 1..1 | Maxlängd 64 tecken |
| request.author.typeOfHealthcareProfessional | CVType | Typ av hälso- och sjukvårdspersonal<br/>Kod för yrkestitel från Snomed CT enligt urvalen nedan:<br/>code: se urval_legitimerade_yrken<br/>codeSystem: OID 1.2.752.129.5.1.70<br/>eller<br/>code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade<br/>codeSystem: 1.2.752.129.7.1.5<br/>Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| request.author.healthcareProfessionalOrganisation | OrganisationType | Organisatorisk enhet<br/>remittent | 1..1 |  |
| request.author.healthcareProfessionalOrganisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för vårdenhet (jmf. PDL) som ansvarar för remissen. | 1..1 | Maxlängd 64 tecken |
| request.recipient | RecipientType | Mottagare<br/>Information avseende den remissmottagande organisationen | 1..1 |  |
| request.recipient.organisation | OrganisationType | Organisatorisk enhet<br/>mottagare | 1..1 |  |
| request.recipient.organisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för remissmottagande enhet, till vilken remissen adresseras.<br/>Med remissmottagande enhet avses det som i SOSFS 2004:11 benämns som mottagande enhet. | 1..1 | Maxlängd 64 tecken |
| request.intermediaryParticipant | IntermediaryType | Vidareskickare<br/>Beskriver Hälso-och sjukvårdspersonalen som vidareskickar remissen | 0..* |  |
| request.intermediaryParticipant. healthcareProfessionalOrganisation | OrganisationType | Organisatorisk enhet<br/>vidareskickare | 1..1 |  |
| request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id på den remissmottagande enhet som vidareskickat remissen. | 1..1 | Maxlängd 64 tecken |
| request.intermediaryParticipant.time | TimeStampType | Tidpunkt<br/>Tidpunkt då versionen skapades för vidareskickning.<br/>Denna tidpunkt kan skilja sig från tidpunkten då remissen faktiskt skickas beroende på hur detta implementeras i en lokal remissmodul. | 1..1 | ÅÅÅÅMMDDttmmss |
| request.additionalInformation | AdditionalInformationType | Tilläggsinformation | 0..1 |  |
| request.additionalInformation.desiredRequestRecipient | String | Önskemål om remissmottagare Önskad remissmottagare: enhet, person, yrkesroll, fritext | 0..1 | Maxlängd 200 tecken |
| request.additionalInformation.administrativeInformation | String | Kompletterande administrativ information<br/>Här anges kompletterande administrativ information. Exempelvis kan denna innehålla information om detta är ett akutärende, om patienten är bortrest under en viss tid inom kallelsetiden eller annan information som kan påverka den administrativa processen kring remissen. Här läggs även information om SVF-patient (standardiserade vårdförlopp), datum för välgrundad misstanke samt aktuellt SVF-förlopp. | 0..1 | Maxlängd 8192 tecken |
| request.additionalInformation.interpreterRequirement | String | Kommentar tolkbehov Här beskrivs eventuellt tolkbehov. | 0..1 | Maxlängd 200 tecken |
| request.awarenessInformation | AwarenessInformationType | Uppmärksamhetsinformation<br/>Uppmärksamhetsinformation om patient | 0..1 |  |
| request.awarenessInformation.text | String | Uppmärksamhetstext Uppmärksamhetsinformation av betydelse för denna remiss. Mottagande system bör inte med automatik föra in denna i den egna hanteringen för uppmärksamhetsinformation kring patienten utan endast lagra den i samband med remissen. | 1..1 | Maxlängd 8192 tecken |
| request.questionFormulation | QuestionFormulationType | Frågeställning | 1..1 |  |
| request.questionFormulation.text | String | Frågeställning text<br/>Här anges remissens frågeställning. | 1..1 | Maxlängd 8192 tecken |
| request.questionFormulation.clinicalInformation | ClinicalInformationType | Anamnes<br/>Här anges underbyggande klinisk information (anamnes) för remissfrågeställningen. Dessa underbyggande kliniska data är direkt kopplat till frågeställningen | 0..1 |  |
| request.questionFormulation.clinicalInformation.text | String | Beskrivning<br/>Här anges klinisk informationsbeskrivning | 1..1 | Maxlängd 8192 tecken |
| request.questionFormulation.condition | ConditionType | Kliniskt tillstånd<br/>Anger kliniska tillstånd som använts i uppslag mot stödtjänster.<br/>Används som stöd för att remittent och remissmottagare ska kunna avgöra om remissuppgifterna är kompletta. | 0..* |  |
| request.questionFormulation.condition.text | String | Kliniskt tillstånd beskrivning<br/>Här kan diagnosbeskrivning skrivas in.<br/>Observera att den får endast förekomma om questionFormulation.condition.code inte används. | 0..1 | Maxlängd 8192 tecken |
| request.questionFormulation.condition.code | CVType | Kliniskt tillståndskod Anger kliniska tillståndskoder.<br/>code:  se ICD-10-SE<br/>codeSystem: 1.2.752.116.1.1.1<br/>Observera att kod får endast förekomma om questionFormulation.condition.text inte används.<br/>Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| request.questionFormulation.desiredActivity | ActivityType | Åtgärd<br/>Här anges önskade åtgärder. Dessa åtgärder ska vara direkt kopplade till frågeställningen. | 0..* |  |
| request.questionFormulation. desiredActivity.id | ActivityIdType | Åtgärd id<br/>Unikt id i form av löpnummer för den önskade åtgärden | 0..1 |  |
| request.questionFormulation.desiredActivity.text | String | Åtgärd beskrivning<br/>Observera att text får endast förekomma om questionFormulation.desiredActivity.code inte används. | 0..1 | Maxlängd 8192 tecken |
| request.questionFormulation.desiredActivity.code | ActivityCodeType | Åtgärd typ<br/>Åtgärd enligt kodsystem.<br/>Observera att code får endast förekomma om questionFormulation.desiredActivity.text inte används. | 0..1 |  |
| request.questionFormulation.desiredActivity.code.code | String | Kod enligt det angivna kodsystemet i codeSystem – KVÅ eller Snomed CT | 1..1 |  |
| request.questionFormulation.desiredActivity.code.codeSystem | String | Kodsystem för tolkning av angiven kod.<br/>Obligatoriskt att hantera 1.2.752.116.1.3.2.1.4 = KVÅ<br/>Om remittent använder kodverk som remissmottagande system inte hanterar skall detta resultera i ett fel av typen APPLICATION_ERROR. | 1..1 |  |
| request.paymentCommitment | PaymentCommitmentType | Betalningsförbindelse Betalningsförbindelse beskriver hur remissmottagande vårdgivare ersätts för de begärda tjänsterna av remitterande vårdgivare.<br/>Aktuellt vid ett regionsöverskridande remissflöde. För detaljer i användningen se även SKRs Riksavtal. | 0..1 |  |
| request.paymentCommitment.paymentCommitmentId | PaymentCommitmentIdType | Betalningsförbindelse id Unik identitet på betalningsförbindelsen, requestId#betfor#löpnummer<br/>Exempel: SE2321000012-0001#987#betfor#1 | 0..1 |  |
| request.paymentCommitment.commitmentType | CVType | Betalningsförbindelse-typ avtal<br/>Anger den avtalstyp som finns att välja för betalningsförbindelse<br/>code: se kv_betalningsförbindelse- typ avtal<br/>codeSystem: 1.2.752.129.2.2.2.44<br/>Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |  |
| request.paymentCommitment.commitmentTypeChapter | CVType | Betalningsförbindelse-typ kapitel<br/>Anger kod utifrån riksavtalets kapitel som reglerar betalning.<br/>Obligatoriskt då paymentCommitment.commitmentType = 1<br/>code: kv_ betalningsförbindelsetyp kapitel<br/>codeSystem: 1.2.752.129.5.1.37<br/>Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| request.paymentCommitment.validity | TimeIntervalType | Giltighetstid<br/>Anges enligt ÅÅÅÅMMDD. Antingen start (low) eller slut (high) måste finnas med | 1..1 |  |
| request.paymentCommitment.clinicalResponsibilityDescription | String | Klinisk ansvarsbeskrivning | 0..1 | Maxlängd 8192 tecken |
| request.paymentCommitment.administrativeResponsibilityDescription | String | Administrativ ansvarsbeskrivning | 0..1 | Maxlängd 8192 tecken |
| request.paymentCommitment.validOnlyForOutpatientCare | Boolean | Gäller endast öppenvård Sätts till ”true” om betalningsförbindelsen enbart gäller öppenvård. Annars sätts den till ”false” | 1..1 |  |
| request.paymentCommitment.liableCountyCouncil | CVType | Betalningsansvarig region<br/>Region som ansvarar för betalningen.<br/>Kod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).<br/>code: se kv_län<br/>codeSystem: 1.2.752.129.2.2.1.18<br/>Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 | Inera kodverk kv_län |
| request.paymentCommitment.dateOfApproval | TimeStampType | Datum för godkännande<br/>Tidpunkt för godkännande av denna betalningsförbindelse hos remittenten.<br/>Anges enligt ÅÅÅÅMMDDttmmss med minst precision ÅÅÅÅMMDD | 0..1 |  |
| request.paymentCommitment.issuedInConsultationWith | String | Utfärdad i samråd med<br/>Om betalningsförbindelsen utfärdas i samråd med ekonomisk beslutsfattare antecknas namnet här. Valfri formatering. | 0..1 | Maxlängd 64 tecken |
| request.paymentCommitment.costCenter | String | Kostnadsställe<br/>Remittentens kostnadsställe | 0..1 | Maxlängd 64 tecken |
| request.paymentCommitment.reimbursementInformation | ReimbursementInformationType | Ersättningsinformation<br/>Obligatorisk vid remiss till privat vårdgivare | 0..1 |  |
| request.paymentCommitment.reimbursementInformation.reimbursementType | CVType | Ersättningstyp<br/>Anger källa till ersättning.<br/>code: se kv_betalningsförbindelse ersättningstyp<br/>codeSystem: 1.2.752.129.5.1.36<br/>Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |  |
| request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract | CVType | Ägare av åberopat kontrakt<br/>Ägare (region) av åberopat kontrakt.<br/>Kod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).<br/>code: se kv_län<br/>codeSystem: 1.2.752.129.2.2.1.18<br/>Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 | Inera kodverk kv_län |
| request.paymentCommitment.approvedBy | HealthcareProfessionalType | Godkänns av<br/>Den person hos remittenten som har godkänt betalningsförbindelsen | 0..1 |  |
| request.paymentCommitment.approvedBy.id | HsaIdType | Personal id<br/>HSA-id för person | 0..1 | Maxlängd 64 tecken |
| request.paymentCommitment.approvedBy.name | String | Personal namn | 1..1 | Maxlängd 64 tecken |
| request.attachment | MultimediaType | Bilaga<br/>Möjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten | 0..* |  |
| request.attachment.id | String | Bilaga id<br/>Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.<br/>Format bilaga remiss: requestId#löpnummer = Källsystem-Id(HSA-ID)#lokalt-id#löpnummer<br/>Obligatoriskt för inbäddade bilagor | 0..1 | (.*)#(.*)#(.*)<br/>Maxlängd 256 tecken |
| request.attachment.mediaType | CVType | Multimediatyp<br/>Typ av multimedia, se urval med tillåtna format.<br/>code: se urval_mediatyper_elektronisk_remiss<br/>codeSystem: (1.2.752.129.5.1.59, se nedan)<br/>Under codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.<br/>Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |  |
| request.attachment.value | Base64Binary | Binärdata<br/>Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format.<br/>Obligatoriskt när referens inte används. | 0..1 | Ett meddelande med bilagor får inte vara större än 10MB |
| request.attachment.reference | AnyURI | Referens<br/>Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas.<br/>OBS! Används inte i denna version. | 0..0 |  |
| request.attachment.description | String | Beskrivning<br/>Beskrivning av bilaga, t ex innehåll | 0..1 | Maxlängd 256 tecken |
| request.careProcessId | String | Vårdprocess id<br/>Identifierare som unikt identifierar den individanpassade vårdprocess som denna remiss är en del av. Används för att kunna hålla samman information över aktörsgränser och koppling till patientens hälsoärende. Producentsystemet bör registrera all information som registreras kring patienten kopplat till detta id. | 0..1 |  |
| Svar |  |  |  |  |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |  |
| result.resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |  |
| result.errorCode | ErrorCodeEnum | Sätts endast om level är ERROR, se kapitel 4.3 för mer information. | 0..1 |  |
| result.subCode | String | Standardiserad felkod för ytterligare information om logiskt fel. Se rubrik “4.3.1.1 Logiska fel – tabell Felkoder” | 0..1 |  |
| result.logId | String | Ett unikt log-id som kan användas vid felanmälan för att användas vid felsökning av producent. | 0..1 |  |
| result.message | String | En beskrivande text som kan visas för användaren. | 0..1 |  |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Se även tabell nedan för schematronregler.

##### Krav för användning
Remittenter som skickar remisser genom att konsumera ProcessRequest förbinder sig att även hantera mottagande av bekräftelse genom att producera ProcessRequestConfirmation samt hantera mottagande av svar genom att producera ProcessRequestOutcome.
Remissmottagare som tar emot remisser genom att producera ProcessRequest förbinder sig att även skicka bekräftelse genom att konsumera ProcessRequestConfirmation samt skicka svar genom att konsumera ProcessRequestOutcome.

##### Regler bilagor
Inera skannar inte bilagor för skadlig kod, detta behöver mottagaren ombesörja själv. Tjänstekonsumenter av ProcessRequest ska följa de generella riktlinjerna för inbäddade binära bilagor, se RIV Tekniska anvisningar Binära bilagor [R7]. 
Se rubriker nedan för undantag från RIV Tekniska anvisningar Binära bilagor som gäller för tjänsten Elektronisk remiss.
Bilagestorlek
Om ett meddelande i ProcessRequest innehåller en inbäddad bilaga får den totala meddelandestorleken inte överstiga 10MB. 
Inbäddade bilagor kodas med base64 i meddelandet. Observera att kodning av filer med Base64 innebär att storleken på strängen som skickas i meddelandet är större än originalfilens storlek. Storleken ökar med ca 1/3 av den ursprungliga filens storlek.
Filformat
De filformat som är tillåtna för inbäddade bilagor är pdf, jpeg, png, html, txt, gif och bmp och finns i urval mediatyper_elektronisk_remiss.

##### Förändringar vid vidareskickning
När interaktionen används för att vidareskicka en remiss till en annan mottagare ska remissen som vidareskickas vara identiskt med originalremissen i grad av struktur och formatering av text med undantag för:
versions-id (request.versionNumber), som sätts till tidigare versionsnummer + 1
versionstidpunkt (request.versionTimeStamp)
versionsorsak (request.reasonForVersion.typeOfReason)
Utöver detta skall den vidareskickande enheten lägga till en instans av vidareskickande enhet (intermediaryParticipant), tidpunkt då versionen skapades för vidareskickning (intermediaryParticipant.time), samt ändra mottagare (recipient) till mottagaren av den vidareskickade remissen.

##### Förändringar vid komplettering
Interaktionen kan användas för att komplettera en tidigare skickad remiss. Detta kan endast utföras av originalremittenten. Alla fält utom nedanstående kan förändras vid en komplettering:
Remiss-id (request.requestId)
Remiss-typ (request.typeOfRequest)
Remiss-datum (request.author.date)
Remitterande enhet (request.requestOrganisation.careUnitId)
Remissmottagande enhet (request.recipient.organisation.careUnitId)
Person-id (personIdType.extension)
Person-id, typ (request.patient.personId.root)
Organisatorisk-enhet.enhet_id (request.author.healthcareProfessionalOrganisation)

##### Schematronregler
Regler markerade med [sch] återfinns i schematronfil (constraints).

| ID | Element | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Verify max length requestId [sch] | requestId | Maxlängd 256 tecken |
| Verify typeOfRequest [sch] | typeOfRequest | Giltigt värde: 4 |
| Verify typeOfReason [sch] | typeOfReason | Giltiga värden: NR, AR, VR, AB |
| Verify personId [sch] | personId | root är '1.2.752.129.2.1.3.1' eller '1.2.752.129.2.1.3.3' |
| Verify postalCode [sch] | postalCode | Exakt längd 5 tecken |
| Verify typeOfTelecom [sch] | typeOfTelecom | Giltiga värden: H, MC |
| Verify gender [sch] | gender | Giltiga värden: 0, 1, 2, 9 |
| Verify condition [sch] | condition | Enbart ange code eller text, inte båda |
| Verify desiredActivity [sch] | desiredActivity | Enbart ange code eller text, inte båda |
| Verify commitmentType [sch] | commitmentType | codeSystem: 1.2.752.129.2.2.2.44 |
| Verify paymentCommitment [sch] | paymentCommitment | Om commitmentType = 1 så måste commitmentTypeChapter anges |
| Verify commitmentTypeChapter [sch] | commitmentTypeChapter | codeSystem: 1.2.752.129.5.1.37 |
| Verify liableCountyCouncil [sch] | liableCountyCouncil | Giltig kod från 01 till 25<br/>codeSystem: 1.2.752.129.2.2.1.18 |
| Verify reimbursmentType code [sch] | reimbursementType | codeSystem: 1.2.752.129.5.1.36 |
| Verify ownerOfInvokedContract [sch] | ownerOfInvokedContract | Giltig kod från 01 till 25<br/>codeSystem: 1.2.752.129.2.2.1.18 |
| Verify attachment [sch] | attachment | Inbäddade bilagor ska ha id och value (refererade bilagor används inte i denna version) |
| Verify mediaType [sch] | mediaType | Endast tillåtna filformat |
| Verify intermediaryParticipant [sch] | request | Om reasonForVersion = VR så måste intermediaryParticipant anges |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element i meddelandet. | Tomma värden får inte anges. |

##### Icke funktionella krav
Här skall de verksamhatskrav som gäller för aktuellt tjänstekontrakt beskrivas.

###### SLA-krav
Se tjänstedomänens SLA-krav.

#### Annan information om kontraktet

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [ProcessRequestInteraction_2.2_RIVTABP21.wsdl](ProcessRequestInteraction_2.2_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ProcessRequestResponder_2.2.xsd](ProcessRequestResponder_2.2.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_activity_request_2.2.xsd](clinicalprocess_activity_request_2.2.xsd) | Domänschema (delat) |
| [codes_2.2.xsd](codes_2.2.xsd) | Kodverk (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |
| [ProcessRequest_constraints.xml](ProcessRequest_constraints.xml) | Schematronregler (testsvit) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning. Kontraktet skickar information (push), så den logiska modellen beskriver begäran; svaret är enbart ett resultat.

* **Logisk modell (begäran):** [StructureDefinition/processrequest](StructureDefinition-processrequest.html)
* **Logisk modell (svar):** [StructureDefinition/process-result](StructureDefinition-process-result.html)

### ProcessRequestConfirmation
Tjänsten används av remissinvolverade parter för att kommunicera information kring en remiss. Exempel på detta är:
en remissmottagare har bedömt remissen och går vidare i handläggningen av ärendet
remissmottagaren begär komplettering av en redan skickad remiss
information om att en remiss har vidareskickats till en annan mottagning
information om att en remiss avvisats
information om att en remiss avbrutits
Tjänstekontraktets huvuddomän är "clinicalprocess", som hanterar alla underdomäner som handlar om tjänstekontrakt för att hjälpa till med hantering av den kliniska kärnprocessen.
Underdomänen är "activity:request", som grupperar alla tjänstekontrakt som handlar om att presentera och administrera information om remiss och tillhörande flöden.
Namnrymden för tjänstekontraktet är: urn:riv:clinicalprocess:activity:request

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges med en * i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardi-nalitet | Kodverk/värde-mängd /ev begränsningar |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| requestConfirmation | RequestConfirmationType | Remissbekräftelse | 1..1 |  |
| requestConfirmation.requestId | RequestIdType | Remiss id<br/>Den ursprungliga remissens remiss-id | 1..1 | (.*)#(.*)<br/>Maxlängd 256 tecken |
| requestConfirmation.requestConfirmationId | RequestIdType | Remissbekräftelse id<br/>Unik identifierare för remissbekräftelsen.<br/>Källsystem-Id(HSA-ID)#lokalt-id<br/>Exempel: SE2321000012-0001#456 | 1..1 | (.*)#(.*)<br/>Maxlängd 256 tecken |
| requestConfirmation.typeOfRequestConfirmation | CodeRequestConfirmationType | Typ av remissbekräftelse<br/>Anger typ av svar.<br/>Giltiga värden är:<br/>BEK = Bekräftelse<br/>VID = Besked om vidareskickning<br/>KOM = Kompletterings-begäran<br/>AVB = Avbruten remiss<br/>AVV = Avvisad remiss | 1..1 |  |
| requestConfirmation.requestVersionNumber | VersionNumberType | Remissversionsnummer<br/>Remissens versionsnummer.<br/>Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.<br/>Denna räknas upp vid:<br/>- Ändrad remiss<br/>- Vidareskickad remiss<br/>- Ändrat betalningsansvar | 1..1 | (0*[1-9]+\|[1-9])\d* |
| requestConfirmation.requestConfirmationTime | TimeStampType | Remissbekräftelse-tidpunkt<br/>Tidpunkt då remissbekräftelsen skapades. | 1..1 | ÅÅÅÅMMDDttmmss |
| requestConfirmation.confirmingOrganisation | FullOrganisationType | Organisatorisk enhet<br/>Den faktiska enhet som skickar bekräftelsemeddelandet. Detta kan skilja sig från den ansvariga vårdenheten enligt PDL. | 1..1 |  |
| requestConfirmation.confirmingOrganisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för enhet. | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.confirmingOrganisation.careUnitName | String | Enhet namn<br/>Namn på enhet. | 0..1 | Maxlängd 64 tecken |
| requestConfirmation.confirmingOrganisation.careUnitTelephone | String | Enhet telefon<br/>Telefon till enhet. | 0..1 |  |
| requestConfirmation.confirmingOrganisation.careUnitEmail | String | Enhet epost<br/>E-post till enhet. | 0..1 |  |
| requestConfirmation.confirmingOrganisation.careUnitAddress | String | Enhet adress<br/>Adress till enhet. | 0..1 |  |
| requestConfirmation.confirmingOrganisation.careUnitLocation | String | Enhet plats<br/>Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |  |
| requestConfirmation.patient | SimplePatientType | Patient | 1..1 |  |
| requestConfirmation.patient.personId | PersonIdType | Person id<br/>Patientens identitet | 1..1 |  |
| requestConfirmation.patient.personId.extension | String | Personidentifierare för patienten.<br/>Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken. | 1..1 |  |
| requestConfirmation.patient.personId.root | String | OID för typ av personidentifierare.<br/>För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.<br/>För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.<br/>För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas.<br/>För andra typer av personidentifierare sätts root till aktuell OID. | 1..1 |  |
| requestConfirmation.patient.name | String | Namn<br/>Alla personnamn skrivs sammanslaget enligt formatet " Mellannamn Efternamn, Förnamn". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.<br/>Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet. | 0..1 | Maxlängd 216 tecken |
| requestConfirmation.author | AuthorType | Remissbesvarare<br/>Remissbekräftande person och organisation | 1..1 |  |
| requestConfirmation.author.healthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonal | 1..1 |  |
| requestConfirmation.author.healthcareProfessional.id | HsaIdType | Personal id<br/>HSA-id för remissbekräftande personal | 0..1 | Maxlängd 64 tecken |
| requestConfirmation.author.healthcareProfessional.name | String | Personalnamn | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.author.typeOfHealthcareProfessional | CVType | Typ av hälso- och sjukvårdspersonal<br/>Kod för yrkestitel från Snomed CT enligt urvalen nedan:<br/>code: se urval_legitimerade_yrken<br/>codeSystem: OID 1.2.752.129.5.1.70<br/>eller<br/>code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade<br/>codeSystem: 1.2.752.129.7.1.5<br/>Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| requestConfirmation.author.healthcareProfessionalOrganisation | OrganisationType | Organisatorisk enhet<br/>remissbekräftande | 1..1 |  |
| requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för verksamhet som ansvarar för remissbekräftelsen. | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.recipient | RecipientType | Mottagare | 1..1 |  |
| requestConfirmation.recipient.organisation | OrganisationType | Organisatorisk enhet<br/>mottagare | 1..1 |  |
| requestConfirmation.recipient.organisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för remitterande enhet, till vilken remissbekräftelsen adresseras. | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.forwardingRecipient | RecipientType | Mottagare vidarebefordran<br/>Obligatorisk att ange när typen på requestConfirmation.typeOfRequestConfirmation är VID (Besked om vidareskickning).<br/>Ska inte anges om typen på requestConfirmation.typeOfRequestConfirmation är annan än VID (Besked om vidareskickning). | 0..1 |  |
| requestConfirmation.forwardingRecipient.organisation | OrganisationType | Organisatorisk enhet<br/>ny mottagare | 1..1 |  |
| requestConfirmation.forwardingRecipient.organisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för remissmottagande enhet av den vidareskickade remissen. | 1..1 | Maxlängd 64 tecken |
| requestConfirmation.outcome | RequestReceivedConfirmationOutcomeType | Bekräftelsemeddelande | 1..1 |  |
| requestConfirmation.outcome.outcomeText | String | Svarstext<br/>Meddelande till remissens avsändare. | 1..1 | Maxlängd 8192 tecken |
| Svar |  |  |  |  |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |  |
| result.resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |  |
| result.errorCode | ErrorCodeEnum | Sätts endast om level är ERROR, se kapitel 4.3 för mer information. | 0..1 |  |
| result.subCode | String | Standardiserad felkod för ytterligare information om logiskt fel. Se rubrik “4.3.1.1 Logiska fel - tabell felkoder” | 0..1 |  |
| result.logId | String | Ett unikt log-id som kan användas vid felanmälan för att användas vid felsökning av producent. | 0..1 |  |
| result.message | String | En beskrivande text som kan visas för användaren. | 0..1 |  |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Fält requestVersionNumber – Version vid vidareskickning
Om en remissmottagare väljer att vidareskicka en remiss skall versionsnumret räknas upp med ett. Detta är det enda tillfället då någon annan än originalremittenten kan ändra versionsnummer. Den vidareskickande enheten skall i samband med vidareskickat skicka en bekräftelse (VID) tillbaka till remittenten med requestConfirmation.requestVersionNumber satt till det nya versionsnumret och en förklarande text till varför remissen skickats vidare.

##### Schematronregler
Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Verify typeOfRequestConfirmation [sch] | typeOfRequestConfirmation | Giltiga värden: BEK, VID, KOM, AVB, AVV |
| Verify personId [sch] | personId | root är '1.2.752.129.2.1.3.1' eller '1.2.752.129.2.1.3.3' |
| Verify max length requestId [sch] | requestId | Maxlängd 256 tecken |
| Verify forwardingRecipient [sch] | requestConfirmation | Om typeOfRequestConfirmation = VID så måste forwardingRecipient anges, annars ska den inte anges. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element i meddelandet. | Tomma värden får inte anges. |

##### Icke funktionella krav
Här skall de verksamhatskrav som gäller för aktuellt tjänstekontrakt beskrivas.

###### SLA-krav
Se tjänstedomänens SLA-krav.

#### Annan information om kontraktet

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [ProcessRequestConfirmationInteraction_2.2_RIVTABP21.wsdl](ProcessRequestConfirmationInteraction_2.2_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ProcessRequestConfirmationResponder_2.2.xsd](ProcessRequestConfirmationResponder_2.2.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_activity_request_2.2.xsd](clinicalprocess_activity_request_2.2.xsd) | Domänschema (delat) |
| [codes_2.2.xsd](codes_2.2.xsd) | Kodverk (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |
| [ProcessRequestConfirmation_constraints.xml](ProcessRequestConfirmation_constraints.xml) | Schematronregler (testsvit) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning. Kontraktet skickar information (push), så den logiska modellen beskriver begäran; svaret är enbart ett resultat.

* **Logisk modell (begäran):** [StructureDefinition/processrequestconfirmation](StructureDefinition-processrequestconfirmation.html)
* **Logisk modell (svar):** [StructureDefinition/process-result](StructureDefinition-process-result.html)

### ProcessRequestOutcome
Tjänsten används för att kommunicera det kliniska resultatet av en undersökning gjord med anledning av en skickad remiss, dvs själva det kliniska remissvaret.
Tjänstekontraktets huvuddomän är "clinicalprocess", som hanterar alla underdomäner som handlar om tjänstekontrakt för att hjälpa till med hantering av den kliniska kärnprocessen.
Underdomänen är "activity:request", som grupperar alla tjänstekontrakt som handlar om att presentera och administrera information om remiss och tillhörande flöden.
Namnrymden för tjänstekontraktet är: urn:riv:clinicalprocess:activity:request

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges med en * i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardi-nalitet | Kodverk/värde-mängd /ev begränsningar |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| requestOutcome | RequestOutcomeType | Svar<br/>Remissvar |  |  |
| requestOutcome.requestId | RequestIdType | Remiss id<br/>Den ursprungliga remissens remiss-id | 1..1 | (.*)#(.*)<br/>Maxlängd 256 tecken |
| requestOutcome.requestOutcomeId | RequestIdType | Svar id<br/>Id för remissvar, enligt format:<br/>Källsystem-Id(HSA-ID)#lokalt-id<br/>Exempel: SE162321000451-0001#456 | 1..1 | (.*)#(.*)<br/>Maxlängd 256 tecken |
| requestOutcome.typeOfRequestOutcome | CodeRequestOutcomeType | Svarstyp<br/>Anger typen av remissvar.<br/>Giltiga värden är:<br/>DSV = Delsvar<br/>PSV = Preliminärt svar<br/>SSV= Slutsvar | 1..1 | codes:codeRequestOutcomeType |
| requestOutcome.requestVersionNumber | VersionNumberType | Remissversionsnummer<br/>Remissens versionsnummer.<br/>Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.<br/>Denna räknas upp vid:<br/>Ändrad remiss<br/>Vidareskickad remiss<br/>Ändrat betalningsansvar | 1..1 | (0*[1-9]+\|[1-9])\d* |
| requestOutcome.patient | SimplePatientType | Patient | 1..1 |  |
| requestOutcome.patient.personId | PersonIdType | Person id<br/>Patientens identitet | 1..1 |  |
| requestOutcome.patient.personId.extension | String | Personidentifierare för patienten.<br/>Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken. | 1..1 |  |
| requestOutcome.patient.personId.root | String | OID för typ av personidentifierare.<br/>För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.<br/>För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.<br/>För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas.<br/>För andra typer av personidentifierare sätts root till aktuell OID. | 1..1 |  |
| requestOutcome.patient.name | String | Namn<br/>Alla personnamn skrivs sammanslaget enligt formatet " Mellannamn Efternamn, Förnamn". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.<br/>Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet. | 0..1 | Maxlängd 216 tecken |
| requestOutcome.requestOutcomeTime | TimeStampType | Svarstidpunkt<br/>Svarets skapelsetidpunkt.<br/>Den tidpunkt då remissbesvararen skickar svaret. | 1..1 | ÅÅÅÅMMDDttmmss |
| requestOutcome.respondingOrganisation | FullOrganisationType | Organisatorisk enhet<br/>Den enhet som har producerat svaret. Detta kan skilja sig från den enhet som remittenten angav som remissmottagande enhet på grund av tekniska eller organisatoriska anledningar. Exempelvis kan det ske en systemintern ”vidareskickning” till en specifik enhet från en central remissmottagning utan att detta notifieras till remittenten. | 1..1 |  |
| requestOutcome.respondingOrganisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för remissbesvarande enhet. | 1..1 | Maxlängd 64 tecken |
| requestOutcome.respondingOrganisation.careUnitName | String | Enhet namn<br/>Namn på enhet. | 0..1 | Maxlängd 64 tecken |
| requestOutcome.respondingOrganisation.careUnitTelephone | String | Enhet telfon<br/>Telefon till enhet. | 0..1 |  |
| requestOutcome.respondingOrganisation.careUnitEmail | String | Enhet epost<br/>E-post till enhet. | 0..1 |  |
| requestOutcome.respondingOrganisation.careUnitAddress | String | Enhet adress<br/>Adress till enhet. | 0..1 |  |
| requestOutcome.respondingOrganisation.careUnitLocation | String | Enhet plats<br/>Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |  |
| requestOutcome.author | AuthorType | Remissbesvarare<br/>Remissbesvarande person och organisation | 1..1 |  |
| requestOutcome.author.healthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonal | 1..1 |  |
| requestOutcome.author.healthcareProfessional.id | HsaIdType | Personal id<br/>HSA-id för remissbesvarare | 0..1 | Maxlängd 64 tecken |
| requestOutcome.author.healthcareProfessional.name | String | Personal namn<br/>Namn på remissbesvarare | 1..1 | Maxlängd 64 tecken |
| requestOutcome.author.typeOfHealthcareProfessional | CVType | Typ av hälso- och sjukvårdspersonal<br/>Kod för yrkestitel från Snomed CT enligt urvalen nedan:<br/>code: se urval_legitimerade_yrken<br/>codeSystem: OID 1.2.752.129.5.1.70<br/>eller<br/>code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade<br/>codeSystem: 1.2.752.129.7.1.5<br/>Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| requestOutcome.author.healthcareProfessional.Organisation | OrganisationType | Organisatorisk enhet<br/>Remissbesvarare | 1..1 |  |
| requestOutcome.author.healthcareProfessional.Organisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för vårdenhet (jmf. PDL) som ansvarar för remissvaret. | 1..1 | Maxlängd 64 tecken |
| requestOutcome.recipient | RecipientType | Mottagare | 1..1 |  |
| requestOutcome.recipient.organisation | OrganisationType | Organisatorisk enhet<br/>Mottagare | 1..1 |  |
| requestOutcome.recipient.organisation.careUnitId | HsaIdType | Enhet id<br/>HSA-id för remissvarsmottagande enhet, till vilken remissvaret adresseras. | 1..1 | Maxlängd 64 tecken |
| requestOutcome.outcome | OutcomeType | Kliniskt innehåll<br/>Remissvar | 1..1 |  |
| requestOutcome.outcome.outcomeText | String | Klinisk svarstext<br/>Remissvarstexten | 1..1 | Maxlängd 65000 tecken |
| requestOutcome.outcome.condition | ConditionType | Kliniskt tillstånd<br/>Dessa kliniska data är direkt kopplat till svaret, t.ex. funna diagnoser. | 0..* |  |
| requestOutcome.outcome.condition.code | CVType | Kliniskt tillståndskod Anger kliniska tillståndskoder.<br/>code:  se ICD-10-SE<br/>codeSystem: 1.2.752.116.1.1.1<br/>Observera att antingen måste denna eller outcome.condition.text finnas med<br/>Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..1 |  |
| requestOutcome.outcome.condition.text | String | Klinisk tillståndsbeskrivning<br/>Beskrivningen av det kliniska tillståndet i de fall en kod saknas.<br/>Texten ska endast beskriva ett kliniskt tillstånd. Ska fler tillstånd beskrivas hanteras det i olika requestOutcome.outcome.condition.<br/>Observera att antingen måste denna eller outcome.condition.code finnas. | 0..1 | Maxlängd 8192 tecken |
| requestOutcome.outcome.accomplishedActivity | ActivityType | Åtgärd<br/>Svaret kan redovisa noll till många utförda åtgärder | 0..* |  |
| requestOutcome.outcome.accomplishedActivity.id | ActivityIdType | Åtgärd id<br/>Unikt id som är sammansatt av requestId + accomplishedActivity + löpnummer med # som skiljer respektive del.<br/>Exempel.<br/>requestId = SE2321000012-0001#987<br/>id = SE2321000012-0001#987#accomplishedActivity#0<br/>och nästa id blir<br/>accomplishedActivity.id = SE2321000012-0001#987# accomplishedActivity#1 | 0..1 |  |
| requestOutcome.outcome.accomplishedActivity.text | String | Åtgärd beskrivning<br/>Här ska åtgärdsbeskrivningen in om systemet inte kan använda en kod.<br/>Texten ska endast beskriva en utförd åtgärd. Ska fler åtgärder beskrivas hanteras det i olika requestOutcome.outcome.accomplishedActivity.<br/>Observera att text får endast förekomma om accomplishedActivity.code inte används. | 0..1 | Maxlängd 8192 tecken |
| requestOutcome.outcome.accomplishedActivity.code | ActivityCodeType | Åtgärd typ<br/>Åtgärd enligt kodsystem.<br/>Observera att code får endast förekomma om accomplishedActivity.text inte används. | 0..1 |  |
| requestOutcome.outcome.accomplishedActivity.code.code | String | Kod enligt det angivet kodsystemet – KVÅ eller Snomed CT | 1..1 |  |
| requestOutcome.outcome.accomplishedActivity.code.codeSystem | String | Kodsystem för tolkning av angiven kod.<br/>Obligatoriskt att hantera<br/>1.2.752.116.1.3.2.1.4 = KVÅ<br/>Om remittent använder kodverk som remissmottagande system inte hanterar skall detta resultera i ett fel av typen APPLICATION_ERROR. | 1..1 |  |
| requestOutcome .originalRequest | RequestType | Originalremissen<br/>Detta fält skall endast vara ifyllt i de fall då remissen skickas till annan mottagare än originalremittenten. Detta flöde finns idag inte beskrivet i de nationella specifikationerna. OriginalRequest får endast vara ifylld om den faktiska implementationen kan garantera att strukturen är identisk från det som mottogs från original remittenten. | 0..1 |  |
| requestOutcome.attachment | MultimediaType | Bilaga<br/>Möjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten | 0..* |  |
| requestOutcome.attachment.id | String | Bilaga id<br/>Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.<br/>Format remissvar: requestOutcomeId#löpnummer =Källsystem-Id(HSA-ID)#lokalt-id#löpnummer<br/>Obligatoriskt för inbäddade bilagor | 0..1 | (.*)#(.*)#(.*)<br/>Maxlängd 256 tecken |
| requestOutcome.attachment.mediaType | CVType | Multimediatyp<br/>Typ av multimedia, se urval med tillåtna format.<br/>code: se urval_mediatyper_elektronisk_remiss<br/>codeSystem: (1.2.752.129.5.1.59, se nedan)<br/>Under codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.<br/>Urvalet kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 | urval_mediatyper_elektronisk_<br/>remiss |
| requestOutcome.attachment.value | Base64Binary | Binärdata<br/>Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format. Obligatoriskt när referens inte används. | 0..1 | Ett meddelande med bilagor får inte vara större än 10MB |
| requestOutcome.attachment.reference | AnyURI | Referens<br/>Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. OBS! Används inte i denna version. | 0..0 |  |
| requestOutcome.attachment.description | String | Beskrivning<br/>Beskrivning av bilaga, t ex innehåll | 0..1 | Maxlängd 256 tecken |
| Svar |  |  |  |  |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |  |
| result.resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |  |
| result.errorCode | ErrorCodeEnum | Sätts endast om level är ERROR, se kapitel 4.3 för mer information. | 0..1 |  |
| result.subCode | String | Standardiserad felkod för ytterligare information om logiskt fel. Se rubrik “4.3.1.1 Logiska fel - tabell felkoder” | 0..1 |  |
| result.logId | String | Ett unikt log-id som kan användas vid felanmälan för att användas vid felsökning av producent. | 0..1 |  |
| result.message | String | En beskrivande text som kan visas för användaren. | 0..1 |  |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Regler bilagor
Inera skannar inte bilagor för skadlig kod, detta behöver mottagaren ombesörja själv. Tjänstekonsumenter av ProcessRequestOutcome ska följa de generella riktlinjerna för inbäddade binära bilagor, se RIV Tekniska anvisningar Binära bilagor [R7]. 
Se rubriker nedan för undantag från RIV Tekniska anvisningar Binära bilagor som gäller för tjänsten Elektronisk remiss.
Bilagestorlek
Om ett meddelande i ProcessRequestOutcome innehåller en inbäddad bilaga får den totala meddelandestorleken inte överstiga 10MB.
Inbäddade bilagor kodas med base64 i meddelandet. Observera att kodning av filer med Base64 innebär att storleken på strängen som skickas i meddelandet är större än originalfilens storlek. Storleken ökar med ca 1/3 av den ursprungliga filens storlek.
Filformat
De filformat som är tillåtna för inbäddade bilagor är pdf, jpeg, png, html, txt, gif och bmp och finns i urvalet urval_mediatyper_elektronisk_remiss.

##### Schematronregler
Regler markerade med [sch] återfinns i schematronfilen (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Verify max length requestId [sch] | requestId | Maxlängd 256 tecken |
| Verify typeOfRequestOutcome [sch] | typeOfRequestOutcome | Giltiga värden: DSV, PSV, SSV |
| Verify personId [sch] | personId | root är '1.2.752.129.2.1.3.1' eller '1.2.752.129.2.1.3.3' |
| Verify condition [sch] | condition | Enbart ange code eller text, inte båda |
| Verify accomplishedActivity [sch] | accomplishedActivity | Enbart ange code eller text, inte båda |
| Verify attachment [sch] | attachment | Inbäddade bilagor ska ha id och value (refererade bilagor används inte i denna version) |
| Verify mediaType [sch] | mediaType | Endast tillåtna filtyper |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element i meddelandet. | Tomma värden får inte anges. |

##### Icke funktionella krav
Här skall de verksamhatskrav som gäller för aktuellt tjänstekontrakt beskrivas.

###### SLA-krav
Se tjänstedomänens SLA-krav.

#### Annan information om kontraktet

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [ProcessRequestOutcomeInteraction_2.2_RIVTABP21.wsdl](ProcessRequestOutcomeInteraction_2.2_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ProcessRequestOutcomeResponder_2.2.xsd](ProcessRequestOutcomeResponder_2.2.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_activity_request_2.2.xsd](clinicalprocess_activity_request_2.2.xsd) | Domänschema (delat) |
| [codes_2.2.xsd](codes_2.2.xsd) | Kodverk (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |
| [ProcessRequestOutcome_constraints.xml](ProcessRequestOutcome_constraints.xml) | Schematronregler (testsvit) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning. Kontraktet skickar information (push), så den logiska modellen beskriver begäran; svaret är enbart ett resultat.

* **Logisk modell (begäran):** [StructureDefinition/processrequestoutcome](StructureDefinition-processrequestoutcome.html)
* **Logisk modell (svar):** [StructureDefinition/process-result](StructureDefinition-process-result.html)

### Gemensamma dokument för domänen

| Fil | Typ |
|-----|-----|
| [TKB_clinicalprocess_activity_request.docx](TKB_clinicalprocess_activity_request.docx) | Tjänstekontraktsbeskrivning (källdokument) |
| [AB_clinicalprocess_activity_request.docx](AB_clinicalprocess_activity_request.docx) | Arkitekturella beslut [R1] |
| [IS_clinicalprocess_activity_request.docx](IS_clinicalprocess_activity_request.docx) | Informationsspecifikation [R5] |
| [SjD_ElektroniskRemiss_Remittent.docx](SjD_ElektroniskRemiss_Remittent.docx) | Självdeklaration, remittent |
| [SjD_ElektroniskRemiss_Remissmottagare.docx](SjD_ElektroniskRemiss_Remissmottagare.docx) | Självdeklaration, remissmottagare |
