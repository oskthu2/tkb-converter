// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestFieldDescriptions
* requestId ^definition = "Remiss id

Remissens identitet. Format: Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE2321000012-0001#987"
* requestId ^comment = "TKB-fält: `request.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken"
* typeOfRequest ^definition = "Remisstyp

Anger typ av remiss.

I denna version är den giltiga koden ”4” – allmänremiss"
* typeOfRequest ^comment = "TKB-fält: `request.typeOfRequest` (`CodeForRequestType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeRequestOutcomeType"
* versionTimeStamp ^definition = "Versionstidpunkt

Tidpunkt då versionen skapades.

Denna tidpunkt kan skilja sig från tidpunkten då remissen skickas."
* versionTimeStamp ^comment = "TKB-fält: `request.versionTimeStamp` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* versionNumber ^definition = "Versionsnummer

Remissens versionsnummer.

Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.

Denna räknas upp vid:

Ändrad remiss

Vidareskickad remiss

Ändrat betalnings-ansvar"
* versionNumber ^comment = "TKB-fält: `request.versionNumber` (`VersionNumberType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*"
* reasonForVersion ^definition = "Versionsorsak"
* reasonForVersion ^comment = "TKB-fält: `request.reasonForVersion` (`ReasonForVersionType`, kardinalitet 1..1).

**Modellanteckning:** Anger varför en ny version skapats."
* reasonForVersion.typeOfReason ^comment = "TKB-fält: `request.reasonForVersion.typeOfReason` (`CodeVersionReason`, kardinalitet 1..1).

**Modellanteckning:** Kv e-remiss versionsorsak [R5]: NR, AR, VR, AB. RIV-TA: typeOfReason.code."
* careResponsibilityRemains ^definition = "Vårdansvar kvarstår

Anger om remittent vill att vårdansvar ska kvarstå hos remitterande enhet eller om man vill att vårdansvar överförs till remissmottagande enhet.

Två alternativ:

True = Vårdansvar kvarstår

False = Begäran om övertagande av vårdansvar"
* careResponsibilityRemains ^comment = "TKB-fält: `request.careResponsibilityRemains` (`Boolean`, kardinalitet 1..1)."
* patient ^definition = "Patient"
* patient ^comment = "TKB-fält: `request.patient` (`PatientType`, kardinalitet 1..1).

**Modellanteckning:** Patient (PatientType)."
* patient.personId ^definition = "Person id

Patientens identitet"
* patient.personId ^comment = "TKB-fält: `request.patient.personId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root."
* patient.address ^definition = "Tillfällig adress

Observera att adress används endast om tillfällig adress behöver anges, ej folkbokförd adress.

Adressen är avsedd att användas vid kallelse. Formatet är baserat på Skatteverkets distributionslösning Navet."
* patient.address ^comment = "TKB-fält: `request.patient.address` (`AddressType`, kardinalitet 0..1)."
* patient.address.careOf ^definition = "”Care of”"
* patient.address.careOf ^comment = "TKB-fält: `request.patient.address.careOf` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken

**Modellanteckning:** Maxlängd 35 tecken."
* patient.address.streetName1 ^definition = "Utdelningsadress1"
* patient.address.streetName1 ^comment = "TKB-fält: `request.patient.address.streetName1` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken

**Modellanteckning:** Maxlängd 35 tecken."
* patient.address.streetName2 ^definition = "Utdelningsadress2"
* patient.address.streetName2 ^comment = "TKB-fält: `request.patient.address.streetName2` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken

**Modellanteckning:** Maxlängd 35 tecken."
* patient.address.postalCode ^definition = "Postnummer i formatet ”12345”, dvs fem siffror inga blanksteg."
* patient.address.postalCode ^comment = "TKB-fält: `request.patient.address.postalCode` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 5 tecken"
* patient.address.postalCity ^definition = "Postort"
* patient.address.postalCity ^comment = "TKB-fält: `request.patient.address.postalCity` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 27 tecken

**Modellanteckning:** Maxlängd 27 tecken."
* patient.address.postBox ^definition = "Postbox"
* patient.address.postBox ^comment = "TKB-fält: `request.patient.address.postBox` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 9 tecken

**Modellanteckning:** Maxlängd 9 tecken."
* patient.telecom ^definition = "Telefon"
* patient.telecom ^comment = "TKB-fält: `request.patient.telecom` (`TelecomType`, kardinalitet 0..2).

**Modellanteckning:** Telefonnummer till patienten."
* patient.telecom.typeOfTelecom ^definition = "Telefon typ

För att särskilja olika typer av telekomadresser används 2 olika koder ’MC’=Mobil, ’H’=Hemtelefon"
* patient.telecom.typeOfTelecom ^comment = "TKB-fält: `request.patient.telecom.typeOfTelecom` (`CodeForTelecomType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeForTelecomType"
* patient.telecom.number ^definition = "Telefonnummer"
* patient.telecom.number ^comment = "TKB-fält: `request.patient.telecom.number` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken

**Modellanteckning:** Maxlängd 200 tecken."
* patient.patientName ^definition = "Namn

Personnamn sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.

Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet."
* patient.patientName ^comment = "TKB-fält: `request.patient.name` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken"
* patient.gender ^definition = "Kön

Anger administrativt kön, dvs. det kön patienten har registrerat hos Skatteverket.

OID för kodsystem: 1.2.752.129.2.2.1.1

Giltiga värden är:

0 = okänt

1 = man

2 = kvinna

9 = ej tillämpligt"
* patient.gender ^comment = "TKB-fält: `request.patient.gender` (`CodeForGenderType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeForGenderType"
* patient.dateOfBirth ^definition = "Födelsetidpunkt

Anges då patientens identitetstyp är av annan typ än personnummer."
* patient.dateOfBirth ^comment = "TKB-fält: `request.patient.dateOfBirth` (`DateType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDD"
* requestOrganisation ^definition = "Organisatorisk enhet

Information om ursprunglig remitterande organisatorisk enhet. Kan skilja sig från PDL ansvarig enhet vid behov. Det är denna enhet som svaret adresseras till i logisk adress."
* requestOrganisation ^comment = "TKB-fält: `request.requestOrganisation` (`FullOrganisationType`, kardinalitet 1..1)."
* requestOrganisation.careUnitId ^definition = "Enhet id

HSA-id för remitterande enhet. Detta används av remissbesvarare som logisk adress för att adressera svarsmottagare."
* requestOrganisation.careUnitId ^comment = "TKB-fält: `request.requestOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* requestOrganisation.careUnitName ^definition = "Enhet namn

Namn på enhet."
* requestOrganisation.careUnitName ^comment = "TKB-fält: `request.requestOrganisation.careUnitName` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** Namn på enhet. Maxlängd 64 tecken."
* requestOrganisation.careUnitTelephone ^definition = "Enhet telefon

Telefon till enhet."
* requestOrganisation.careUnitTelephone ^comment = "TKB-fält: `request.requestOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1)."
* requestOrganisation.careUnitEmail ^definition = "Enhet epost

E-post till enhet."
* requestOrganisation.careUnitEmail ^comment = "TKB-fält: `request.requestOrganisation.careUnitEmail` (`String`, kardinalitet 0..1)."
* requestOrganisation.careUnitAddress ^definition = "Adress till enhet."
* requestOrganisation.careUnitAddress ^comment = "TKB-fält: `request.requestOrganisation.careUnitAddress` (`String`, kardinalitet 0..1)."
* requestOrganisation.careUnitLocation ^definition = "Enhet plats

Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering."
* requestOrganisation.careUnitLocation ^comment = "TKB-fält: `request.requestOrganisation.careUnitLocation` (`String`, kardinalitet 0..1)."
* author ^definition = "Remittent

Information avseende den remitterande personen samt den organisation som personen är uppdragstagare på."
* author ^comment = "TKB-fält: `request.author` (`RequestAuthorType`, kardinalitet 1..1)."
* author.date ^definition = "Remissdatum

Remissdatum när remiss skapades måste anges. Format som ska användas är ÅÅÅÅMMDD"
* author.date ^comment = "TKB-fält: `request.author.date` (`DateType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDD

**Modellanteckning:** Datum då remissen skapades (ÅÅÅÅMMDD)."
* author.healthcareProfessional ^definition = "Hälso- och sjukvårdspersonal"
* author.healthcareProfessional ^comment = "TKB-fält: `request.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* author.healthcareProfessional.healthcareProfessionalId ^definition = "Personal Id

HSA-id för remitterande hälso- och sjukvårdspersonal."
* author.healthcareProfessional.healthcareProfessionalId ^comment = "TKB-fält: `request.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för personen. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.id."
* author.healthcareProfessional.healthcareProfessionalName ^definition = "Personal namn

Namn på remitterande hälso- och sjukvårdspersonal.

Valfri formatering."
* author.healthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `request.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).

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
* author.typeOfHealthcareProfessional ^comment = "TKB-fält: `request.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1)."
* author.healthcareProfessionalOrganisation ^definition = "Organisatorisk enhet

remittent"
* author.healthcareProfessionalOrganisation ^comment = "TKB-fält: `request.author.healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).

**Modellanteckning:** Enhet (jmf. PDL) som ansvarar för informationen."
* author.healthcareProfessionalOrganisation.careUnitId ^definition = "Enhet id

HSA-id för vårdenhet (jmf. PDL) som ansvarar för remissen."
* author.healthcareProfessionalOrganisation.careUnitId ^comment = "TKB-fält: `request.author.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* recipient ^definition = "Mottagare

Information avseende den remissmottagande organisationen"
* recipient ^comment = "TKB-fält: `request.recipient` (`RecipientType`, kardinalitet 1..1).

**Modellanteckning:** Remissmottagande organisation."
* recipient.organisation ^definition = "Organisatorisk enhet

mottagare"
* recipient.organisation ^comment = "TKB-fält: `request.recipient.organisation` (`OrganisationType`, kardinalitet 1..1).

**Modellanteckning:** Mottagande enhet; HSA-id används som logisk adress."
* recipient.organisation.careUnitId ^definition = "Enhet id

HSA-id för remissmottagande enhet, till vilken remissen adresseras.

Med remissmottagande enhet avses det som i SOSFS 2004:11 benämns som mottagande enhet."
* recipient.organisation.careUnitId ^comment = "TKB-fält: `request.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* intermediaryParticipant ^definition = "Vidareskickare

Beskriver Hälso-och sjukvårdspersonalen som vidareskickar remissen"
* intermediaryParticipant ^comment = "TKB-fält: `request.intermediaryParticipant` (`IntermediaryType`, kardinalitet 0..*)."
* intermediaryParticipant.healthcareProfessionalOrganisation ^definition = "Organisatorisk enhet

vidareskickare"
* intermediaryParticipant.healthcareProfessionalOrganisation ^comment = "TKB-fält: `request.intermediaryParticipant. healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).

**Modellanteckning:** Remissmottagande enhet som vidareskickat remissen."
* intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId ^definition = "Enhet id

HSA-id på den remissmottagande enhet som vidareskickat remissen."
* intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId ^comment = "TKB-fält: `request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* intermediaryParticipant.time ^definition = "Tidpunkt

Tidpunkt då versionen skapades för vidareskickning.

Denna tidpunkt kan skilja sig från tidpunkten då remissen faktiskt skickas beroende på hur detta implementeras i en lokal remissmodul."
* intermediaryParticipant.time ^comment = "TKB-fält: `request.intermediaryParticipant.time` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* additionalInformation ^definition = "Tilläggsinformation"
* additionalInformation ^comment = "TKB-fält: `request.additionalInformation` (`AdditionalInformationType`, kardinalitet 0..1)."
* additionalInformation.desiredRequestRecipient ^definition = "Önskemål om remissmottagare Önskad remissmottagare: enhet, person, yrkesroll, fritext"
* additionalInformation.desiredRequestRecipient ^comment = "TKB-fält: `request.additionalInformation.desiredRequestRecipient` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken

**Modellanteckning:** Enhet, person, yrkesroll eller fritext. Maxlängd 200 tecken."
* additionalInformation.administrativeInformation ^definition = "Kompletterande administrativ information

Här anges kompletterande administrativ information. Exempelvis kan denna innehålla information om detta är ett akutärende, om patienten är bortrest under en viss tid inom kallelsetiden eller annan information som kan påverka den administrativa processen kring remissen. Här läggs även information om SVF-patient (standardiserade vårdförlopp), datum för välgrundad misstanke samt aktuellt SVF-förlopp."
* additionalInformation.administrativeInformation ^comment = "TKB-fält: `request.additionalInformation.administrativeInformation` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* additionalInformation.interpreterRequirement ^definition = "Kommentar tolkbehov Här beskrivs eventuellt tolkbehov."
* additionalInformation.interpreterRequirement ^comment = "TKB-fält: `request.additionalInformation.interpreterRequirement` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken

**Modellanteckning:** Maxlängd 200 tecken."
* awarenessInformation ^definition = "Uppmärksamhetsinformation

Uppmärksamhetsinformation om patient"
* awarenessInformation ^comment = "TKB-fält: `request.awarenessInformation` (`AwarenessInformationType`, kardinalitet 0..1)."
* awarenessInformation.awarenessText ^definition = "Uppmärksamhetstext Uppmärksamhetsinformation av betydelse för denna remiss. Mottagande system bör inte med automatik föra in denna i den egna hanteringen för uppmärksamhetsinformation kring patienten utan endast lagra den i samband med remissen."
* awarenessInformation.awarenessText ^comment = "TKB-fält: `request.awarenessInformation.text` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Av betydelse för denna remiss; mottagande system bör inte automatiskt föra in den i egen uppmärksamhetshantering. Maxlängd 8192 tecken. RIV-TA: awarenessInformation.text."
* questionFormulation ^definition = "Frågeställning"
* questionFormulation ^comment = "TKB-fält: `request.questionFormulation` (`QuestionFormulationType`, kardinalitet 1..1).

**Modellanteckning:** Remissens frågeställning."
* questionFormulation.questionText ^definition = "Frågeställning text

Här anges remissens frågeställning."
* questionFormulation.questionText ^comment = "TKB-fält: `request.questionFormulation.text` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Maxlängd 8192 tecken. RIV-TA: questionFormulation.text."
* questionFormulation.clinicalInformation ^definition = "Anamnes

Här anges underbyggande klinisk information (anamnes) för remissfrågeställningen. Dessa underbyggande kliniska data är direkt kopplat till frågeställningen"
* questionFormulation.clinicalInformation ^comment = "TKB-fält: `request.questionFormulation.clinicalInformation` (`ClinicalInformationType`, kardinalitet 0..1)."
* questionFormulation.clinicalInformation.clinicalInformationText ^definition = "Beskrivning

Här anges klinisk informationsbeskrivning"
* questionFormulation.clinicalInformation.clinicalInformationText ^comment = "TKB-fält: `request.questionFormulation.clinicalInformation.text` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Maxlängd 8192 tecken. RIV-TA: clinicalInformation.text."
* questionFormulation.condition ^definition = "Kliniskt tillstånd

Anger kliniska tillstånd som använts i uppslag mot stödtjänster.

Används som stöd för att remittent och remissmottagare ska kunna avgöra om remissuppgifterna är kompletta."
* questionFormulation.condition ^comment = "TKB-fält: `request.questionFormulation.condition` (`ConditionType`, kardinalitet 0..*).

**Modellanteckning:** Kliniskt tillstånd (ConditionType). Antingen text eller kod, inte båda."
* questionFormulation.condition.conditionText ^definition = "Kliniskt tillstånd beskrivning

Här kan diagnosbeskrivning skrivas in.

Observera att den får endast förekomma om questionFormulation.condition.code inte används."
* questionFormulation.condition.conditionText ^comment = "TKB-fält: `request.questionFormulation.condition.text` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Diagnosbeskrivning i fritext. Maxlängd 8192 tecken. RIV-TA: condition.text."
* questionFormulation.condition.conditionCode ^definition = "Kliniskt tillståndskod Anger kliniska tillståndskoder.

code:  se ICD-10-SE

codeSystem: 1.2.752.116.1.1.1

Observera att kod får endast förekomma om questionFormulation.condition.text inte används.

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* questionFormulation.condition.conditionCode ^comment = "TKB-fält: `request.questionFormulation.condition.code` (`CVType`, kardinalitet 0..1)."
* questionFormulation.desiredActivity ^definition = "Åtgärd

Här anges önskade åtgärder. Dessa åtgärder ska vara direkt kopplade till frågeställningen."
* questionFormulation.desiredActivity ^comment = "TKB-fält: `request.questionFormulation.desiredActivity` (`ActivityType`, kardinalitet 0..*).

**Modellanteckning:** Önskad åtgärd (ActivityType). Antingen text eller kod, inte båda."
* questionFormulation.desiredActivity.activityId ^definition = "Åtgärd id

Unikt id i form av löpnummer för den önskade åtgärden"
* questionFormulation.desiredActivity.activityId ^comment = "TKB-fält: `request.questionFormulation. desiredActivity.id` (`ActivityIdType`, kardinalitet 0..1)."
* questionFormulation.desiredActivity.activityText ^definition = "Åtgärd beskrivning

Observera att text får endast förekomma om questionFormulation.desiredActivity.code inte används."
* questionFormulation.desiredActivity.activityText ^comment = "TKB-fält: `request.questionFormulation.desiredActivity.text` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Fritext. Maxlängd 8192 tecken. RIV-TA: text."
* questionFormulation.desiredActivity.activityCode ^definition = "Åtgärd typ

Åtgärd enligt kodsystem.

Observera att code får endast förekomma om questionFormulation.desiredActivity.text inte används."
* questionFormulation.desiredActivity.activityCode ^comment = "TKB-fält: `request.questionFormulation.desiredActivity.code` (`ActivityCodeType`, kardinalitet 0..1).

**Modellanteckning:** Åtgärd enligt kodsystem: KVÅ (1.2.752.116.1.3.2.1.4, obligatoriskt att hantera) eller Snomed CT. Okänt kodverk ger APPLICATION_ERROR. RIV-TA: code.code/codeSystem."
* paymentCommitment ^definition = "Betalningsförbindelse Betalningsförbindelse beskriver hur remissmottagande vårdgivare ersätts för de begärda tjänsterna av remitterande vårdgivare.

Aktuellt vid ett regionsöverskridande remissflöde. För detaljer i användningen se även SKRs Riksavtal."
* paymentCommitment ^comment = "TKB-fält: `request.paymentCommitment` (`PaymentCommitmentType`, kardinalitet 0..1)."
* paymentCommitment.paymentCommitmentId ^definition = "Betalningsförbindelse id Unik identitet på betalningsförbindelsen, requestId#betfor#löpnummer

Exempel: SE2321000012-0001#987#betfor#1"
* paymentCommitment.paymentCommitmentId ^comment = "TKB-fält: `request.paymentCommitment.paymentCommitmentId` (`PaymentCommitmentIdType`, kardinalitet 0..1)."
* paymentCommitment.commitmentType ^definition = "Betalningsförbindelse-typ avtal

Anger den avtalstyp som finns att välja för betalningsförbindelse

code: se kv_betalningsförbindelse- typ avtal

codeSystem: 1.2.752.129.2.2.2.44

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* paymentCommitment.commitmentType ^comment = "TKB-fält: `request.paymentCommitment.commitmentType` (`CVType`, kardinalitet 1..1)."
* paymentCommitment.commitmentTypeChapter ^definition = "Betalningsförbindelse-typ kapitel

Anger kod utifrån riksavtalets kapitel som reglerar betalning.

Obligatoriskt då paymentCommitment.commitmentType = 1

code: kv_ betalningsförbindelsetyp kapitel

codeSystem: 1.2.752.129.5.1.37

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* paymentCommitment.commitmentTypeChapter ^comment = "TKB-fält: `request.paymentCommitment.commitmentTypeChapter` (`CVType`, kardinalitet 0..1)."
* paymentCommitment.validity ^definition = "Giltighetstid

Anges enligt ÅÅÅÅMMDD. Antingen start (low) eller slut (high) måste finnas med"
* paymentCommitment.validity ^comment = "TKB-fält: `request.paymentCommitment.validity` (`TimeIntervalType`, kardinalitet 1..1)."
* paymentCommitment.clinicalResponsibilityDescription ^definition = "Klinisk ansvarsbeskrivning"
* paymentCommitment.clinicalResponsibilityDescription ^comment = "TKB-fält: `request.paymentCommitment.clinicalResponsibilityDescription` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Maxlängd 8192 tecken."
* paymentCommitment.administrativeResponsibilityDescription ^definition = "Administrativ ansvarsbeskrivning"
* paymentCommitment.administrativeResponsibilityDescription ^comment = "TKB-fält: `request.paymentCommitment.administrativeResponsibilityDescription` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Maxlängd 8192 tecken."
* paymentCommitment.validOnlyForOutpatientCare ^definition = "Gäller endast öppenvård Sätts till ”true” om betalningsförbindelsen enbart gäller öppenvård. Annars sätts den till ”false”"
* paymentCommitment.validOnlyForOutpatientCare ^comment = "TKB-fält: `request.paymentCommitment.validOnlyForOutpatientCare` (`Boolean`, kardinalitet 1..1)."
* paymentCommitment.liableCountyCouncil ^definition = "Betalningsansvarig region

Region som ansvarar för betalningen.

Kod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).

code: se kv_län

codeSystem: 1.2.752.129.2.2.1.18

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* paymentCommitment.liableCountyCouncil ^comment = "TKB-fält: `request.paymentCommitment.liableCountyCouncil` (`CVType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Inera kodverk kv_län"
* paymentCommitment.dateOfApproval ^definition = "Datum för godkännande

Tidpunkt för godkännande av denna betalningsförbindelse hos remittenten.

Anges enligt ÅÅÅÅMMDDttmmss med minst precision ÅÅÅÅMMDD"
* paymentCommitment.dateOfApproval ^comment = "TKB-fält: `request.paymentCommitment.dateOfApproval` (`TimeStampType`, kardinalitet 0..1)."
* paymentCommitment.issuedInConsultationWith ^definition = "Utfärdad i samråd med

Om betalningsförbindelsen utfärdas i samråd med ekonomisk beslutsfattare antecknas namnet här. Valfri formatering."
* paymentCommitment.issuedInConsultationWith ^comment = "TKB-fält: `request.paymentCommitment.issuedInConsultationWith` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** Namn på ekonomisk beslutsfattare. Maxlängd 64 tecken."
* paymentCommitment.costCenter ^definition = "Kostnadsställe

Remittentens kostnadsställe"
* paymentCommitment.costCenter ^comment = "TKB-fält: `request.paymentCommitment.costCenter` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** Remittentens kostnadsställe. Maxlängd 64 tecken."
* paymentCommitment.reimbursementInformation ^definition = "Ersättningsinformation

Obligatorisk vid remiss till privat vårdgivare"
* paymentCommitment.reimbursementInformation ^comment = "TKB-fält: `request.paymentCommitment.reimbursementInformation` (`ReimbursementInformationType`, kardinalitet 0..1)."
* paymentCommitment.reimbursementInformation.reimbursementType ^definition = "Ersättningstyp

Anger källa till ersättning.

code: se kv_betalningsförbindelse ersättningstyp

codeSystem: 1.2.752.129.5.1.36

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* paymentCommitment.reimbursementInformation.reimbursementType ^comment = "TKB-fält: `request.paymentCommitment.reimbursementInformation.reimbursementType` (`CVType`, kardinalitet 1..1)."
* paymentCommitment.reimbursementInformation.ownerOfInvokedContract ^definition = "Ägare av åberopat kontrakt

Ägare (region) av åberopat kontrakt.

Kod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).

code: se kv_län

codeSystem: 1.2.752.129.2.2.1.18

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* paymentCommitment.reimbursementInformation.ownerOfInvokedContract ^comment = "TKB-fält: `request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract` (`CVType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Inera kodverk kv_län"
* paymentCommitment.approvedBy ^definition = "Godkänns av

Den person hos remittenten som har godkänt betalningsförbindelsen"
* paymentCommitment.approvedBy ^comment = "TKB-fält: `request.paymentCommitment.approvedBy` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* paymentCommitment.approvedBy.healthcareProfessionalId ^definition = "Personal id

HSA-id för person"
* paymentCommitment.approvedBy.healthcareProfessionalId ^comment = "TKB-fält: `request.paymentCommitment.approvedBy.id` (`HsaIdType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för person. RIV-TA: approvedBy.id."
* paymentCommitment.approvedBy.healthcareProfessionalName ^definition = "Personal namn"
* paymentCommitment.approvedBy.healthcareProfessionalName ^comment = "TKB-fält: `request.paymentCommitment.approvedBy.name` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** Maxlängd 64 tecken. RIV-TA: approvedBy.name."
* attachment ^definition = "Bilaga

Möjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten"
* attachment ^comment = "TKB-fält: `request.attachment` (`MultimediaType`, kardinalitet 0..*).

**Modellanteckning:** Bilaga (MultimediaType) i något av de tillåtna formaten. Totala meddelandestorleken får inte överstiga 10 MB."
* attachment.attachmentId ^definition = "Bilaga id

Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.

Format bilaga remiss: requestId#löpnummer = Källsystem-Id(HSA-ID)#lokalt-id#löpnummer

Obligatoriskt för inbäddade bilagor"
* attachment.attachmentId ^comment = "TKB-fält: `request.attachment.id` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)#(.*)

Maxlängd 256 tecken"
* attachment.mediaType ^definition = "Multimediatyp

Typ av multimedia, se urval med tillåtna format.

code: se urval_mediatyper_elektronisk_remiss

codeSystem: (1.2.752.129.5.1.59, se nedan)

Under codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* attachment.mediaType ^comment = "TKB-fält: `request.attachment.mediaType` (`CVType`, kardinalitet 1..1).

**Modellanteckning:** Filformat enligt urval_mediatyper_elektronisk_remiss (codeSystem 1.2.752.129.5.1.59): pdf, jpeg, png, html, txt, gif, bmp."
* attachment.attachmentValue ^definition = "Binärdata

Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format.

Obligatoriskt när referens inte används."
* attachment.attachmentValue ^comment = "TKB-fält: `request.attachment.value` (`Base64Binary`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Ett meddelande med bilagor får inte vara större än 10MB"
* attachment.reference ^definition = "Referens

Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas.

OBS! Används inte i denna version."
* attachment.reference ^comment = "TKB-fält: `request.attachment.reference` (`AnyURI`, kardinalitet 0..0)."
* attachment.description ^definition = "Beskrivning

Beskrivning av bilaga, t ex innehåll"
* attachment.description ^comment = "TKB-fält: `request.attachment.description` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 256 tecken

**Modellanteckning:** Beskrivning av bilaga. Maxlängd 256 tecken."
* careProcessId ^definition = "Vårdprocess id

Identifierare som unikt identifierar den individanpassade vårdprocess som denna remiss är en del av. Används för att kunna hålla samman information över aktörsgränser och koppling till patientens hälsoärende. Producentsystemet bör registrera all information som registreras kring patienten kopplat till detta id."
* careProcessId ^comment = "TKB-fält: `request.careProcessId` (`String`, kardinalitet 0..1)."
