// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestFieldDescriptions
* request ^definition = "Remiss"
* request ^comment = "TKB-fält: `Request` (`RequestType`)."
* request.requestId ^definition = "Remiss id

Remissens identitet. Format: Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE2321000012-0001#987"
* request.requestId ^comment = "TKB-fält: `request.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken"
* request.typeOfRequest ^definition = "Remisstyp

Anger typ av remiss.

I denna version är den giltiga koden ”4” – allmänremiss"
* request.typeOfRequest ^comment = "TKB-fält: `request.typeOfRequest` (`CodeForRequestType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeRequestOutcomeType"
* request.versionTimeStamp ^definition = "Versionstidpunkt

Tidpunkt då versionen skapades.

Denna tidpunkt kan skilja sig från tidpunkten då remissen skickas."
* request.versionTimeStamp ^comment = "TKB-fält: `request.versionTimeStamp` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* request.versionNumber ^definition = "Versionsnummer

Remissens versionsnummer.

Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.

Denna räknas upp vid:

Ändrad remiss

Vidareskickad remiss

Ändrat betalnings-ansvar"
* request.versionNumber ^comment = "TKB-fält: `request.versionNumber` (`VersionNumberType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*"
* request.reasonForVersion ^definition = "Versionsorsak"
* request.reasonForVersion ^comment = "TKB-fält: `request.reasonForVersion` (`ReasonForVersionType`, kardinalitet 1..1)."
* request.reasonForVersion.typeOfReason ^comment = "TKB-fält: `request.reasonForVersion.typeOfReason` (`CodeVersionReason`, kardinalitet 1..1)."
* request.reasonForVersion.typeOfReason.code ^definition = "Anger varför en ny version skapats.

Värden enligt Kv e-remiss versionsorsak, se [R5]. Giltiga värden är:

NR = Ny remiss

AR = Ändrad remiss

VR = Vidareskickad remiss

AB = Ändrat betalningsansvar"
* request.reasonForVersion.typeOfReason.code ^comment = "TKB-fält: `request.reasonForVersion.typeOfReason.code` (`CodeVersionReason_values`, kardinalitet 1..1).

**Modellanteckning:** code (XML-attribut) Tillåtna värden: NR, AR, VR, AB."
* request.careResponsibilityRemains ^definition = "Vårdansvar kvarstår

Anger om remittent vill att vårdansvar ska kvarstå hos remitterande enhet eller om man vill att vårdansvar överförs till remissmottagande enhet.

Två alternativ:

True = Vårdansvar kvarstår

False = Begäran om övertagande av vårdansvar"
* request.careResponsibilityRemains ^comment = "TKB-fält: `request.careResponsibilityRemains` (`Boolean`, kardinalitet 1..1)."
* request.patient ^definition = "Patient"
* request.patient ^comment = "TKB-fält: `request.patient` (`PatientType`, kardinalitet 1..1)."
* request.patient.personId ^definition = "Person id

Patientens identitet"
* request.patient.personId ^comment = "TKB-fält: `request.patient.personId` (`PersonIdType`, kardinalitet 1..1)."
* request.patient.personId.extension ^definition = "Personidentifierare för patienten.

Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken."
* request.patient.personId.extension ^comment = "TKB-fält: `request.patient.personId.extension` (`String`, kardinalitet 1..1).

**Modellanteckning:** extension (XML-attribut)"
* request.patient.personId.root ^definition = "OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas.

För andra typer av personidentifierare sätts root till aktuell OID."
* request.patient.personId.root ^comment = "TKB-fält: `request.patient.personId.root` (`String`, kardinalitet 1..1).

**Modellanteckning:** root (XML-attribut)"
* request.patient.address ^definition = "Tillfällig adress

Observera att adress används endast om tillfällig adress behöver anges, ej folkbokförd adress.

Adressen är avsedd att användas vid kallelse. Formatet är baserat på Skatteverkets distributionslösning Navet."
* request.patient.address ^comment = "TKB-fält: `request.patient.address` (`AddressType`, kardinalitet 0..1)."
* request.patient.address.careOf ^definition = "”Care of”"
* request.patient.address.careOf ^comment = "TKB-fält: `request.patient.address.careOf` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken"
* request.patient.address.streetName1 ^definition = "Utdelningsadress1"
* request.patient.address.streetName1 ^comment = "TKB-fält: `request.patient.address.streetName1` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken"
* request.patient.address.streetName2 ^definition = "Utdelningsadress2"
* request.patient.address.streetName2 ^comment = "TKB-fält: `request.patient.address.streetName2` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken"
* request.patient.address.postalCode ^definition = "Postnummer i formatet ”12345”, dvs fem siffror inga blanksteg."
* request.patient.address.postalCode ^comment = "TKB-fält: `request.patient.address.postalCode` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 5 tecken"
* request.patient.address.postalCity ^definition = "Postort"
* request.patient.address.postalCity ^comment = "TKB-fält: `request.patient.address.postalCity` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 27 tecken"
* request.patient.address.postBox ^definition = "Postbox"
* request.patient.address.postBox ^comment = "TKB-fält: `request.patient.address.postBox` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 9 tecken"
* request.patient.telecom ^definition = "Telefon"
* request.patient.telecom ^comment = "TKB-fält: `request.patient.telecom` (`TelecomType`, kardinalitet 0..2)."
* request.patient.telecom.typeOfTelecom ^definition = "Telefon typ

För att särskilja olika typer av telekomadresser används 2 olika koder ’MC’=Mobil, ’H’=Hemtelefon"
* request.patient.telecom.typeOfTelecom ^comment = "TKB-fält: `request.patient.telecom.typeOfTelecom` (`CodeForTelecomType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeForTelecomType"
* request.patient.telecom.number ^definition = "Telefonnummer"
* request.patient.telecom.number ^comment = "TKB-fält: `request.patient.telecom.number` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken"
* request.patient.name ^definition = "Namn

Personnamn sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.

Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet."
* request.patient.name ^comment = "TKB-fält: `request.patient.name` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken"
* request.patient.gender ^definition = "Kön

Anger administrativt kön, dvs. det kön patienten har registrerat hos Skatteverket.

OID för kodsystem: 1.2.752.129.2.2.1.1

Giltiga värden är:

0 = okänt

1 = man

2 = kvinna

9 = ej tillämpligt"
* request.patient.gender ^comment = "TKB-fält: `request.patient.gender` (`CodeForGenderType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeForGenderType"
* request.patient.dateOfBirth ^definition = "Födelsetidpunkt

Anges då patientens identitetstyp är av annan typ än personnummer."
* request.patient.dateOfBirth ^comment = "TKB-fält: `request.patient.dateOfBirth` (`DateType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDD"
* request.requestOrganisation ^definition = "Organisatorisk enhet

Information om ursprunglig remitterande organisatorisk enhet. Kan skilja sig från PDL ansvarig enhet vid behov. Det är denna enhet som svaret adresseras till i logisk adress."
* request.requestOrganisation ^comment = "TKB-fält: `request.requestOrganisation` (`FullOrganisationType`, kardinalitet 1..1)."
* request.requestOrganisation.careUnitId ^definition = "Enhet id

HSA-id för remitterande enhet. Detta används av remissbesvarare som logisk adress för att adressera svarsmottagare."
* request.requestOrganisation.careUnitId ^comment = "TKB-fält: `request.requestOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.requestOrganisation.careUnitName ^definition = "Enhet namn

Namn på enhet."
* request.requestOrganisation.careUnitName ^comment = "TKB-fält: `request.requestOrganisation.careUnitName` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.requestOrganisation.careUnitTelephone ^definition = "Enhet telefon

Telefon till enhet."
* request.requestOrganisation.careUnitTelephone ^comment = "TKB-fält: `request.requestOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1)."
* request.requestOrganisation.careUnitEmail ^definition = "Enhet epost

E-post till enhet."
* request.requestOrganisation.careUnitEmail ^comment = "TKB-fält: `request.requestOrganisation.careUnitEmail` (`String`, kardinalitet 0..1)."
* request.requestOrganisation.careUnitAddress ^definition = "Adress till enhet."
* request.requestOrganisation.careUnitAddress ^comment = "TKB-fält: `request.requestOrganisation.careUnitAddress` (`String`, kardinalitet 0..1)."
* request.requestOrganisation.careUnitLocation ^definition = "Enhet plats

Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering."
* request.requestOrganisation.careUnitLocation ^comment = "TKB-fält: `request.requestOrganisation.careUnitLocation` (`String`, kardinalitet 0..1)."
* request.author ^definition = "Remittent

Information avseende den remitterande personen samt den organisation som personen är uppdragstagare på."
* request.author ^comment = "TKB-fält: `request.author` (`RequestAuthorType`, kardinalitet 1..1)."
* request.author.date ^definition = "Remissdatum

Remissdatum när remiss skapades måste anges. Format som ska användas är ÅÅÅÅMMDD"
* request.author.date ^comment = "TKB-fält: `request.author.date` (`DateType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDD"
* request.author.healthcareProfessional ^definition = "Hälso- och sjukvårdspersonal"
* request.author.healthcareProfessional ^comment = "TKB-fält: `request.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* request.author.healthcareProfessional.id ^definition = "Personal Id

HSA-id för remitterande hälso- och sjukvårdspersonal."
* request.author.healthcareProfessional.id ^comment = "TKB-fält: `request.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.author.healthcareProfessional.name ^definition = "Personal namn

Namn på remitterande hälso- och sjukvårdspersonal.

Valfri formatering."
* request.author.healthcareProfessional.name ^comment = "TKB-fält: `request.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.author.typeOfHealthcareProfessional ^definition = "Typ av hälso- och sjukvårdspersonal

Kod för yrkestitel från Snomed CT enligt urvalen nedan:

code: se urval_legitimerade_yrken

codeSystem: OID 1.2.752.129.5.1.70

eller

code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade

codeSystem: 1.2.752.129.7.1.5

Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* request.author.typeOfHealthcareProfessional ^comment = "TKB-fält: `request.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1)."
* request.author.healthcareProfessionalOrganisation ^definition = "Organisatorisk enhet

remittent"
* request.author.healthcareProfessionalOrganisation ^comment = "TKB-fält: `request.author.healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1)."
* request.author.healthcareProfessionalOrganisation.careUnitId ^definition = "Enhet id

HSA-id för vårdenhet (jmf. PDL) som ansvarar för remissen."
* request.author.healthcareProfessionalOrganisation.careUnitId ^comment = "TKB-fält: `request.author.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.recipient ^definition = "Mottagare

Information avseende den remissmottagande organisationen"
* request.recipient ^comment = "TKB-fält: `request.recipient` (`RecipientType`, kardinalitet 1..1)."
* request.recipient.organisation ^definition = "Organisatorisk enhet

mottagare"
* request.recipient.organisation ^comment = "TKB-fält: `request.recipient.organisation` (`OrganisationType`, kardinalitet 1..1)."
* request.recipient.organisation.careUnitId ^definition = "Enhet id

HSA-id för remissmottagande enhet, till vilken remissen adresseras.

Med remissmottagande enhet avses det som i SOSFS 2004:11 benämns som mottagande enhet."
* request.recipient.organisation.careUnitId ^comment = "TKB-fält: `request.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.intermediaryParticipant ^definition = "Vidareskickare

Beskriver Hälso-och sjukvårdspersonalen som vidareskickar remissen"
* request.intermediaryParticipant ^comment = "TKB-fält: `request.intermediaryParticipant` (`IntermediaryType`, kardinalitet 0..*)."
* request.intermediaryParticipant.healthcareProfessionalOrganisation ^definition = "Organisatorisk enhet

vidareskickare"
* request.intermediaryParticipant.healthcareProfessionalOrganisation ^comment = "TKB-fält: `request.intermediaryParticipant. healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1)."
* request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId ^definition = "Enhet id

HSA-id på den remissmottagande enhet som vidareskickat remissen."
* request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId ^comment = "TKB-fält: `request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.intermediaryParticipant.time ^definition = "Tidpunkt

Tidpunkt då versionen skapades för vidareskickning.

Denna tidpunkt kan skilja sig från tidpunkten då remissen faktiskt skickas beroende på hur detta implementeras i en lokal remissmodul."
* request.intermediaryParticipant.time ^comment = "TKB-fält: `request.intermediaryParticipant.time` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* request.additionalInformation ^definition = "Tilläggsinformation"
* request.additionalInformation ^comment = "TKB-fält: `request.additionalInformation` (`AdditionalInformationType`, kardinalitet 0..1)."
* request.additionalInformation.desiredRequestRecipient ^definition = "Önskemål om remissmottagare Önskad remissmottagare: enhet, person, yrkesroll, fritext"
* request.additionalInformation.desiredRequestRecipient ^comment = "TKB-fält: `request.additionalInformation.desiredRequestRecipient` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken"
* request.additionalInformation.administrativeInformation ^definition = "Kompletterande administrativ information

Här anges kompletterande administrativ information. Exempelvis kan denna innehålla information om detta är ett akutärende, om patienten är bortrest under en viss tid inom kallelsetiden eller annan information som kan påverka den administrativa processen kring remissen. Här läggs även information om SVF-patient (standardiserade vårdförlopp), datum för välgrundad misstanke samt aktuellt SVF-förlopp."
* request.additionalInformation.administrativeInformation ^comment = "TKB-fält: `request.additionalInformation.administrativeInformation` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* request.additionalInformation.interpreterRequirement ^definition = "Kommentar tolkbehov Här beskrivs eventuellt tolkbehov."
* request.additionalInformation.interpreterRequirement ^comment = "TKB-fält: `request.additionalInformation.interpreterRequirement` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken"
* request.awarenessInformation ^definition = "Uppmärksamhetsinformation

Uppmärksamhetsinformation om patient"
* request.awarenessInformation ^comment = "TKB-fält: `request.awarenessInformation` (`AwarenessInformationType`, kardinalitet 0..1)."
* request.awarenessInformation.text ^definition = "Uppmärksamhetstext Uppmärksamhetsinformation av betydelse för denna remiss. Mottagande system bör inte med automatik föra in denna i den egna hanteringen för uppmärksamhetsinformation kring patienten utan endast lagra den i samband med remissen."
* request.awarenessInformation.text ^comment = "TKB-fält: `request.awarenessInformation.text` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* request.questionFormulation ^definition = "Frågeställning"
* request.questionFormulation ^comment = "TKB-fält: `request.questionFormulation` (`QuestionFormulationType`, kardinalitet 1..1)."
* request.questionFormulation.text ^definition = "Frågeställning text

Här anges remissens frågeställning."
* request.questionFormulation.text ^comment = "TKB-fält: `request.questionFormulation.text` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* request.questionFormulation.clinicalInformation ^definition = "Anamnes

Här anges underbyggande klinisk information (anamnes) för remissfrågeställningen. Dessa underbyggande kliniska data är direkt kopplat till frågeställningen"
* request.questionFormulation.clinicalInformation ^comment = "TKB-fält: `request.questionFormulation.clinicalInformation` (`ClinicalInformationType`, kardinalitet 0..1)."
* request.questionFormulation.clinicalInformation.text ^definition = "Beskrivning

Här anges klinisk informationsbeskrivning"
* request.questionFormulation.clinicalInformation.text ^comment = "TKB-fält: `request.questionFormulation.clinicalInformation.text` (`String`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* request.questionFormulation.condition ^definition = "Kliniskt tillstånd

Anger kliniska tillstånd som använts i uppslag mot stödtjänster.

Används som stöd för att remittent och remissmottagare ska kunna avgöra om remissuppgifterna är kompletta."
* request.questionFormulation.condition ^comment = "TKB-fält: `request.questionFormulation.condition` (`ConditionType`, kardinalitet 0..*)."
* request.questionFormulation.condition.text ^definition = "Kliniskt tillstånd beskrivning

Här kan diagnosbeskrivning skrivas in.

Observera att den får endast förekomma om questionFormulation.condition.code inte används."
* request.questionFormulation.condition.text ^comment = "TKB-fält: `request.questionFormulation.condition.text` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* request.questionFormulation.condition.code ^definition = "Kliniskt tillståndskod Anger kliniska tillståndskoder.

code:  se ICD-10-SE

codeSystem: 1.2.752.116.1.1.1

Observera att kod får endast förekomma om questionFormulation.condition.text inte används.

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* request.questionFormulation.condition.code ^comment = "TKB-fält: `request.questionFormulation.condition.code` (`CVType`, kardinalitet 0..1)."
* request.questionFormulation.desiredActivity ^definition = "Åtgärd

Här anges önskade åtgärder. Dessa åtgärder ska vara direkt kopplade till frågeställningen."
* request.questionFormulation.desiredActivity ^comment = "TKB-fält: `request.questionFormulation.desiredActivity` (`ActivityType`, kardinalitet 0..*)."
* request.questionFormulation.desiredActivity.id ^definition = "Åtgärd id

Unikt id i form av löpnummer för den önskade åtgärden"
* request.questionFormulation.desiredActivity.id ^comment = "TKB-fält: `request.questionFormulation. desiredActivity.id` (`ActivityIdType`, kardinalitet 0..1)."
* request.questionFormulation.desiredActivity.text ^definition = "Åtgärd beskrivning

Observera att text får endast förekomma om questionFormulation.desiredActivity.code inte används."
* request.questionFormulation.desiredActivity.text ^comment = "TKB-fält: `request.questionFormulation.desiredActivity.text` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* request.questionFormulation.desiredActivity.code ^definition = "Åtgärd typ

Åtgärd enligt kodsystem.

Observera att code får endast förekomma om questionFormulation.desiredActivity.text inte används."
* request.questionFormulation.desiredActivity.code ^comment = "TKB-fält: `request.questionFormulation.desiredActivity.code` (`ActivityCodeType`, kardinalitet 0..1)."
* request.questionFormulation.desiredActivity.code.code ^definition = "Kod enligt det angivna kodsystemet i codeSystem – KVÅ eller Snomed CT"
* request.questionFormulation.desiredActivity.code.code ^comment = "TKB-fält: `request.questionFormulation.desiredActivity.code.code` (`String`, kardinalitet 1..1).

**Modellanteckning:** code (XML-attribut)"
* request.questionFormulation.desiredActivity.code.codeSystem ^definition = "Kodsystem för tolkning av angiven kod.

Obligatoriskt att hantera 1.2.752.116.1.3.2.1.4 = KVÅ

Om remittent använder kodverk som remissmottagande system inte hanterar skall detta resultera i ett fel av typen APPLICATION_ERROR."
* request.questionFormulation.desiredActivity.code.codeSystem ^comment = "TKB-fält: `request.questionFormulation.desiredActivity.code.codeSystem` (`String`, kardinalitet 1..1).

**Modellanteckning:** codeSystem (XML-attribut) Tillåtna värden: 1.2.752.116.1.3.2.1.4, 1.2.752.116.2.1.1."
* request.paymentCommitment ^definition = "Betalningsförbindelse Betalningsförbindelse beskriver hur remissmottagande vårdgivare ersätts för de begärda tjänsterna av remitterande vårdgivare.

Aktuellt vid ett regionsöverskridande remissflöde. För detaljer i användningen se även SKRs Riksavtal."
* request.paymentCommitment ^comment = "TKB-fält: `request.paymentCommitment` (`PaymentCommitmentType`, kardinalitet 0..1)."
* request.paymentCommitment.paymentCommitmentId ^definition = "Betalningsförbindelse id Unik identitet på betalningsförbindelsen, requestId#betfor#löpnummer

Exempel: SE2321000012-0001#987#betfor#1"
* request.paymentCommitment.paymentCommitmentId ^comment = "TKB-fält: `request.paymentCommitment.paymentCommitmentId` (`PaymentCommitmentIdType`, kardinalitet 0..1)."
* request.paymentCommitment.commitmentType ^definition = "Betalningsförbindelse-typ avtal

Anger den avtalstyp som finns att välja för betalningsförbindelse

code: se kv_betalningsförbindelse- typ avtal

codeSystem: 1.2.752.129.2.2.2.44

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* request.paymentCommitment.commitmentType ^comment = "TKB-fält: `request.paymentCommitment.commitmentType` (`CVType`, kardinalitet 1..1)."
* request.paymentCommitment.commitmentTypeChapter ^definition = "Betalningsförbindelse-typ kapitel

Anger kod utifrån riksavtalets kapitel som reglerar betalning.

Obligatoriskt då paymentCommitment.commitmentType = 1

code: kv_ betalningsförbindelsetyp kapitel

codeSystem: 1.2.752.129.5.1.37

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* request.paymentCommitment.commitmentTypeChapter ^comment = "TKB-fält: `request.paymentCommitment.commitmentTypeChapter` (`CVType`, kardinalitet 0..1)."
* request.paymentCommitment.validity ^definition = "Giltighetstid

Anges enligt ÅÅÅÅMMDD. Antingen start (low) eller slut (high) måste finnas med"
* request.paymentCommitment.validity ^comment = "TKB-fält: `request.paymentCommitment.validity` (`TimeIntervalType`, kardinalitet 1..1)."
* request.paymentCommitment.clinicalResponsibilityDescription ^definition = "Klinisk ansvarsbeskrivning"
* request.paymentCommitment.clinicalResponsibilityDescription ^comment = "TKB-fält: `request.paymentCommitment.clinicalResponsibilityDescription` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* request.paymentCommitment.administrativeResponsibilityDescription ^definition = "Administrativ ansvarsbeskrivning"
* request.paymentCommitment.administrativeResponsibilityDescription ^comment = "TKB-fält: `request.paymentCommitment.administrativeResponsibilityDescription` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
* request.paymentCommitment.validOnlyForOutpatientCare ^definition = "Gäller endast öppenvård Sätts till ”true” om betalningsförbindelsen enbart gäller öppenvård. Annars sätts den till ”false”"
* request.paymentCommitment.validOnlyForOutpatientCare ^comment = "TKB-fält: `request.paymentCommitment.validOnlyForOutpatientCare` (`Boolean`, kardinalitet 1..1)."
* request.paymentCommitment.liableCountyCouncil ^definition = "Betalningsansvarig region

Region som ansvarar för betalningen.

Kod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).

code: se kv_län

codeSystem: 1.2.752.129.2.2.1.18

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* request.paymentCommitment.liableCountyCouncil ^comment = "TKB-fält: `request.paymentCommitment.liableCountyCouncil` (`CVType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Inera kodverk kv_län"
* request.paymentCommitment.dateOfApproval ^definition = "Datum för godkännande

Tidpunkt för godkännande av denna betalningsförbindelse hos remittenten.

Anges enligt ÅÅÅÅMMDDttmmss med minst precision ÅÅÅÅMMDD"
* request.paymentCommitment.dateOfApproval ^comment = "TKB-fält: `request.paymentCommitment.dateOfApproval` (`TimeStampType`, kardinalitet 0..1)."
* request.paymentCommitment.issuedInConsultationWith ^definition = "Utfärdad i samråd med

Om betalningsförbindelsen utfärdas i samråd med ekonomisk beslutsfattare antecknas namnet här. Valfri formatering."
* request.paymentCommitment.issuedInConsultationWith ^comment = "TKB-fält: `request.paymentCommitment.issuedInConsultationWith` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.paymentCommitment.costCenter ^definition = "Kostnadsställe

Remittentens kostnadsställe"
* request.paymentCommitment.costCenter ^comment = "TKB-fält: `request.paymentCommitment.costCenter` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.paymentCommitment.reimbursementInformation ^definition = "Ersättningsinformation

Obligatorisk vid remiss till privat vårdgivare"
* request.paymentCommitment.reimbursementInformation ^comment = "TKB-fält: `request.paymentCommitment.reimbursementInformation` (`ReimbursementInformationType`, kardinalitet 0..1)."
* request.paymentCommitment.reimbursementInformation.reimbursementType ^definition = "Ersättningstyp

Anger källa till ersättning.

code: se kv_betalningsförbindelse ersättningstyp

codeSystem: 1.2.752.129.5.1.36

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* request.paymentCommitment.reimbursementInformation.reimbursementType ^comment = "TKB-fält: `request.paymentCommitment.reimbursementInformation.reimbursementType` (`CVType`, kardinalitet 1..1)."
* request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract ^definition = "Ägare av åberopat kontrakt

Ägare (region) av åberopat kontrakt.

Kod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).

code: se kv_län

codeSystem: 1.2.752.129.2.2.1.18

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract ^comment = "TKB-fält: `request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract` (`CVType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Inera kodverk kv_län"
* request.paymentCommitment.approvedBy ^definition = "Godkänns av

Den person hos remittenten som har godkänt betalningsförbindelsen"
* request.paymentCommitment.approvedBy ^comment = "TKB-fält: `request.paymentCommitment.approvedBy` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* request.paymentCommitment.approvedBy.id ^definition = "Personal id

HSA-id för person"
* request.paymentCommitment.approvedBy.id ^comment = "TKB-fält: `request.paymentCommitment.approvedBy.id` (`HsaIdType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.paymentCommitment.approvedBy.name ^definition = "Personal namn"
* request.paymentCommitment.approvedBy.name ^comment = "TKB-fält: `request.paymentCommitment.approvedBy.name` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* request.attachment ^definition = "Bilaga

Möjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten"
* request.attachment ^comment = "TKB-fält: `request.attachment` (`MultimediaType`, kardinalitet 0..*)."
* request.attachment.id ^definition = "Bilaga id

Identitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.

Format bilaga remiss: requestId#löpnummer = Källsystem-Id(HSA-ID)#lokalt-id#löpnummer

Obligatoriskt för inbäddade bilagor"
* request.attachment.id ^comment = "TKB-fält: `request.attachment.id` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)#(.*)

Maxlängd 256 tecken"
* request.attachment.mediaType ^definition = "Multimediatyp

Typ av multimedia, se urval med tillåtna format.

code: se urval_mediatyper_elektronisk_remiss

codeSystem: (1.2.752.129.5.1.59, se nedan)

Under codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.

Kodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* request.attachment.mediaType ^comment = "TKB-fält: `request.attachment.mediaType` (`CVType`, kardinalitet 1..1)."
* request.attachment.value ^definition = "Binärdata

Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format.

Obligatoriskt när referens inte används."
* request.attachment.value ^comment = "TKB-fält: `request.attachment.value` (`Base64Binary`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Ett meddelande med bilagor får inte vara större än 10MB"
* request.attachment.reference ^definition = "Referens

Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas.

OBS! Används inte i denna version."
* request.attachment.reference ^comment = "TKB-fält: `request.attachment.reference` (`AnyURI`, kardinalitet 0..0)."
* request.attachment.description ^definition = "Beskrivning

Beskrivning av bilaga, t ex innehåll"
* request.attachment.description ^comment = "TKB-fält: `request.attachment.description` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 256 tecken"
* request.careProcessId ^definition = "Vårdprocess id

Identifierare som unikt identifierar den individanpassade vårdprocess som denna remiss är en del av. Används för att kunna hålla samman information över aktörsgränser och koppling till patientens hälsoärende. Producentsystemet bör registrera all information som registreras kring patienten kopplat till detta id."
* request.careProcessId ^comment = "TKB-fält: `request.careProcessId` (`String`, kardinalitet 0..1)."
