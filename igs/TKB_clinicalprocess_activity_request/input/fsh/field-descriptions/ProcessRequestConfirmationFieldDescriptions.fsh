// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestConfirmationFieldDescriptions
* requestConfirmation ^definition = "Remissbekräftelse"
* requestConfirmation ^comment = "TKB-fält: `requestConfirmation` (`RequestConfirmationType`, kardinalitet 1..1)."
* requestConfirmation.requestId ^definition = "Remiss id

Den ursprungliga remissens remiss-id"
* requestConfirmation.requestId ^comment = "TKB-fält: `requestConfirmation.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken"
* requestConfirmation.requestConfirmationId ^definition = "Remissbekräftelse id

Unik identifierare för remissbekräftelsen.

Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE2321000012-0001#456"
* requestConfirmation.requestConfirmationId ^comment = "TKB-fält: `requestConfirmation.requestConfirmationId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken"
* requestConfirmation.typeOfRequestConfirmation ^definition = "Typ av remissbekräftelse

Anger typ av svar.

Giltiga värden är:

BEK = Bekräftelse

VID = Besked om vidareskickning

KOM = Kompletterings-begäran

AVB = Avbruten remiss

AVV = Avvisad remiss"
* requestConfirmation.typeOfRequestConfirmation ^comment = "TKB-fält: `requestConfirmation.typeOfRequestConfirmation` (`CodeRequestConfirmationType`, kardinalitet 1..1)."
* requestConfirmation.requestVersionNumber ^definition = "Remissversionsnummer

Remissens versionsnummer.

Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.

Denna räknas upp vid:

- Ändrad remiss

- Vidareskickad remiss

- Ändrat betalningsansvar"
* requestConfirmation.requestVersionNumber ^comment = "TKB-fält: `requestConfirmation.requestVersionNumber` (`VersionNumberType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*"
* requestConfirmation.requestConfirmationTime ^definition = "Remissbekräftelse-tidpunkt

Tidpunkt då remissbekräftelsen skapades."
* requestConfirmation.requestConfirmationTime ^comment = "TKB-fält: `requestConfirmation.requestConfirmationTime` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* requestConfirmation.patient ^definition = "Patient"
* requestConfirmation.patient ^comment = "TKB-fält: `requestConfirmation.patient` (`SimplePatientType`, kardinalitet 1..1)."
* requestConfirmation.patient.personId ^definition = "Person id

Patientens identitet"
* requestConfirmation.patient.personId ^comment = "TKB-fält: `requestConfirmation.patient.personId` (`PersonIdType`, kardinalitet 1..1)."
* requestConfirmation.patient.personId.extension ^definition = "Personidentifierare för patienten.

Om identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken."
* requestConfirmation.patient.personId.extension ^comment = "TKB-fält: `requestConfirmation.patient.personId.extension` (`String`, kardinalitet 1..1).

**Modellanteckning:** extension (XML-attribut)"
* requestConfirmation.patient.personId.root ^definition = "OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas.

För andra typer av personidentifierare sätts root till aktuell OID."
* requestConfirmation.patient.personId.root ^comment = "TKB-fält: `requestConfirmation.patient.personId.root` (`String`, kardinalitet 1..1).

**Modellanteckning:** root (XML-attribut)"
* requestConfirmation.patient.name ^definition = "Namn

Alla personnamn skrivs sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.

Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet."
* requestConfirmation.patient.name ^comment = "TKB-fält: `requestConfirmation.patient.name` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken"
* requestConfirmation.confirmingOrganisation ^definition = "Organisatorisk enhet

Den faktiska enhet som skickar bekräftelsemeddelandet. Detta kan skilja sig från den ansvariga vårdenheten enligt PDL."
* requestConfirmation.confirmingOrganisation ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation` (`FullOrganisationType`, kardinalitet 1..1)."
* requestConfirmation.confirmingOrganisation.careUnitId ^definition = "Enhet id

HSA-id för enhet."
* requestConfirmation.confirmingOrganisation.careUnitId ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestConfirmation.confirmingOrganisation.careUnitName ^definition = "Enhet namn

Namn på enhet."
* requestConfirmation.confirmingOrganisation.careUnitName ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitName` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestConfirmation.confirmingOrganisation.careUnitTelephone ^definition = "Enhet telefon

Telefon till enhet."
* requestConfirmation.confirmingOrganisation.careUnitTelephone ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1)."
* requestConfirmation.confirmingOrganisation.careUnitEmail ^definition = "Enhet epost

E-post till enhet."
* requestConfirmation.confirmingOrganisation.careUnitEmail ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitEmail` (`String`, kardinalitet 0..1)."
* requestConfirmation.confirmingOrganisation.careUnitAddress ^definition = "Enhet adress

Adress till enhet."
* requestConfirmation.confirmingOrganisation.careUnitAddress ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitAddress` (`String`, kardinalitet 0..1)."
* requestConfirmation.confirmingOrganisation.careUnitLocation ^definition = "Enhet plats

Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering."
* requestConfirmation.confirmingOrganisation.careUnitLocation ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitLocation` (`String`, kardinalitet 0..1)."
* requestConfirmation.author ^definition = "Remissbesvarare

Remissbekräftande person och organisation"
* requestConfirmation.author ^comment = "TKB-fält: `requestConfirmation.author` (`AuthorType`, kardinalitet 1..1)."
* requestConfirmation.author.healthcareProfessional ^definition = "Hälso- och sjukvårdspersonal"
* requestConfirmation.author.healthcareProfessional ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* requestConfirmation.author.healthcareProfessional.id ^definition = "Personal id

HSA-id för remissbekräftande personal"
* requestConfirmation.author.healthcareProfessional.id ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestConfirmation.author.healthcareProfessional.name ^definition = "Personalnamn"
* requestConfirmation.author.healthcareProfessional.name ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestConfirmation.author.typeOfHealthcareProfessional ^definition = "Typ av hälso- och sjukvårdspersonal

Kod för yrkestitel från Snomed CT enligt urvalen nedan:

code: se urval_legitimerade_yrken

codeSystem: OID 1.2.752.129.5.1.70

eller

code: se yrken_i_halso-_och_sjukvarden_ej_legitimerade

codeSystem: 1.2.752.129.7.1.5

Urvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* requestConfirmation.author.typeOfHealthcareProfessional ^comment = "TKB-fält: `requestConfirmation.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1)."
* requestConfirmation.author.healthcareProfessionalOrganisation ^definition = "Organisatorisk enhet

remissbekräftande"
* requestConfirmation.author.healthcareProfessionalOrganisation ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1)."
* requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId ^definition = "Enhet id

HSA-id för verksamhet som ansvarar för remissbekräftelsen."
* requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestConfirmation.recipient ^definition = "Mottagare"
* requestConfirmation.recipient ^comment = "TKB-fält: `requestConfirmation.recipient` (`RecipientType`, kardinalitet 1..1)."
* requestConfirmation.recipient.organisation ^definition = "Organisatorisk enhet

mottagare"
* requestConfirmation.recipient.organisation ^comment = "TKB-fält: `requestConfirmation.recipient.organisation` (`OrganisationType`, kardinalitet 1..1)."
* requestConfirmation.recipient.organisation.careUnitId ^definition = "Enhet id

HSA-id för remitterande enhet, till vilken remissbekräftelsen adresseras."
* requestConfirmation.recipient.organisation.careUnitId ^comment = "TKB-fält: `requestConfirmation.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestConfirmation.forwardingRecipient ^definition = "Mottagare vidarebefordran

Obligatorisk att ange när typen på requestConfirmation.typeOfRequestConfirmation är VID (Besked om vidareskickning).

Ska inte anges om typen på requestConfirmation.typeOfRequestConfirmation är annan än VID (Besked om vidareskickning)."
* requestConfirmation.forwardingRecipient ^comment = "TKB-fält: `requestConfirmation.forwardingRecipient` (`RecipientType`, kardinalitet 0..1)."
* requestConfirmation.forwardingRecipient.organisation ^definition = "Organisatorisk enhet

ny mottagare"
* requestConfirmation.forwardingRecipient.organisation ^comment = "TKB-fält: `requestConfirmation.forwardingRecipient.organisation` (`OrganisationType`, kardinalitet 1..1)."
* requestConfirmation.forwardingRecipient.organisation.careUnitId ^definition = "Enhet id

HSA-id för remissmottagande enhet av den vidareskickade remissen."
* requestConfirmation.forwardingRecipient.organisation.careUnitId ^comment = "TKB-fält: `requestConfirmation.forwardingRecipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken"
* requestConfirmation.outcome ^definition = "Bekräftelsemeddelande"
* requestConfirmation.outcome ^comment = "TKB-fält: `requestConfirmation.outcome` (`RequestReceivedConfirmationOutcomeType`, kardinalitet 1..1)."
* requestConfirmation.outcome.outcomeText ^definition = "Svarstext

Meddelande till remissens avsändare."
* requestConfirmation.outcome.outcomeText ^comment = "TKB-fält: `requestConfirmation.outcome.outcomeText` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken"
