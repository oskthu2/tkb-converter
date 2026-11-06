// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestConfirmationFieldDescriptions
* requestId ^definition = "Remiss id

Den ursprungliga remissens remiss-id"
* requestId ^comment = "TKB-fält: `requestConfirmation.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken

**Modellanteckning:** Den ursprungliga remissens remiss-id. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* requestConfirmationId ^definition = "Remissbekräftelse id

Unik identifierare för remissbekräftelsen.

Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE2321000012-0001#456"
* requestConfirmationId ^comment = "TKB-fält: `requestConfirmation.requestConfirmationId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken

**Modellanteckning:** Unik identifierare för remissbekräftelsen. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* typeOfRequestConfirmation ^definition = "Typ av remissbekräftelse

Anger typ av svar.

Giltiga värden är:

BEK = Bekräftelse

VID = Besked om vidareskickning

KOM = Kompletterings-begäran

AVB = Avbruten remiss

AVV = Avvisad remiss"
* typeOfRequestConfirmation ^comment = "TKB-fält: `requestConfirmation.typeOfRequestConfirmation` (`CodeRequestConfirmationType`, kardinalitet 1..1)."
* requestVersionNumber ^definition = "Remissversionsnummer

Remissens versionsnummer.

Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.

Denna räknas upp vid:

- Ändrad remiss

- Vidareskickad remiss

- Ändrat betalningsansvar"
* requestVersionNumber ^comment = "TKB-fält: `requestConfirmation.requestVersionNumber` (`VersionNumberType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*"
* requestConfirmationTime ^definition = "Remissbekräftelse-tidpunkt

Tidpunkt då remissbekräftelsen skapades."
* requestConfirmationTime ^comment = "TKB-fält: `requestConfirmation.requestConfirmationTime` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* patient ^definition = "Patient"
* patient ^comment = "TKB-fält: `requestConfirmation.patient` (`SimplePatientType`, kardinalitet 1..1).

**Modellanteckning:** Patient (SimplePatientType)."
* patient.personId ^definition = "Person id

Patientens identitet"
* patient.personId ^comment = "TKB-fält: `requestConfirmation.patient.personId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root."
* patient.patientName ^definition = "Namn

Alla personnamn skrivs sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.

Implementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet."
* patient.patientName ^comment = "TKB-fält: `requestConfirmation.patient.name` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken"
* confirmingOrganisation ^definition = "Organisatorisk enhet

Den faktiska enhet som skickar bekräftelsemeddelandet. Detta kan skilja sig från den ansvariga vårdenheten enligt PDL."
* confirmingOrganisation ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation` (`FullOrganisationType`, kardinalitet 1..1)."
* confirmingOrganisation.careUnitId ^definition = "Enhet id

HSA-id för enhet."
* confirmingOrganisation.careUnitId ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* confirmingOrganisation.careUnitName ^definition = "Enhet namn

Namn på enhet."
* confirmingOrganisation.careUnitName ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitName` (`String`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** Namn på enhet. Maxlängd 64 tecken."
* confirmingOrganisation.careUnitTelephone ^definition = "Enhet telefon

Telefon till enhet."
* confirmingOrganisation.careUnitTelephone ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1)."
* confirmingOrganisation.careUnitEmail ^definition = "Enhet epost

E-post till enhet."
* confirmingOrganisation.careUnitEmail ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitEmail` (`String`, kardinalitet 0..1)."
* confirmingOrganisation.careUnitAddress ^definition = "Enhet adress

Adress till enhet."
* confirmingOrganisation.careUnitAddress ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitAddress` (`String`, kardinalitet 0..1)."
* confirmingOrganisation.careUnitLocation ^definition = "Enhet plats

Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering."
* confirmingOrganisation.careUnitLocation ^comment = "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitLocation` (`String`, kardinalitet 0..1)."
* author ^definition = "Remissbesvarare

Remissbekräftande person och organisation"
* author ^comment = "TKB-fält: `requestConfirmation.author` (`AuthorType`, kardinalitet 1..1)."
* author.healthcareProfessional ^definition = "Hälso- och sjukvårdspersonal"
* author.healthcareProfessional ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* author.healthcareProfessional.healthcareProfessionalId ^definition = "Personal id

HSA-id för remissbekräftande personal"
* author.healthcareProfessional.healthcareProfessionalId ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för personen. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.id."
* author.healthcareProfessional.healthcareProfessionalName ^definition = "Personalnamn"
* author.healthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).

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
* author.typeOfHealthcareProfessional ^comment = "TKB-fält: `requestConfirmation.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1)."
* author.healthcareProfessionalOrganisation ^definition = "Organisatorisk enhet

remissbekräftande"
* author.healthcareProfessionalOrganisation ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).

**Modellanteckning:** Enhet (jmf. PDL) som ansvarar för informationen."
* author.healthcareProfessionalOrganisation.careUnitId ^definition = "Enhet id

HSA-id för verksamhet som ansvarar för remissbekräftelsen."
* author.healthcareProfessionalOrganisation.careUnitId ^comment = "TKB-fält: `requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* recipient ^definition = "Mottagare"
* recipient ^comment = "TKB-fält: `requestConfirmation.recipient` (`RecipientType`, kardinalitet 1..1).

**Modellanteckning:** Remitterande enhet som bekräftelsen adresseras till."
* recipient.organisation ^definition = "Organisatorisk enhet

mottagare"
* recipient.organisation ^comment = "TKB-fält: `requestConfirmation.recipient.organisation` (`OrganisationType`, kardinalitet 1..1).

**Modellanteckning:** Mottagande enhet; HSA-id används som logisk adress."
* recipient.organisation.careUnitId ^definition = "Enhet id

HSA-id för remitterande enhet, till vilken remissbekräftelsen adresseras."
* recipient.organisation.careUnitId ^comment = "TKB-fält: `requestConfirmation.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* forwardingRecipient ^definition = "Mottagare vidarebefordran

Obligatorisk att ange när typen på requestConfirmation.typeOfRequestConfirmation är VID (Besked om vidareskickning).

Ska inte anges om typen på requestConfirmation.typeOfRequestConfirmation är annan än VID (Besked om vidareskickning)."
* forwardingRecipient ^comment = "TKB-fält: `requestConfirmation.forwardingRecipient` (`RecipientType`, kardinalitet 0..1)."
* forwardingRecipient.organisation ^definition = "Organisatorisk enhet

ny mottagare"
* forwardingRecipient.organisation ^comment = "TKB-fält: `requestConfirmation.forwardingRecipient.organisation` (`OrganisationType`, kardinalitet 1..1).

**Modellanteckning:** Mottagande enhet; HSA-id används som logisk adress."
* forwardingRecipient.organisation.careUnitId ^definition = "Enhet id

HSA-id för remissmottagande enhet av den vidareskickade remissen."
* forwardingRecipient.organisation.careUnitId ^comment = "TKB-fält: `requestConfirmation.forwardingRecipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken

**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken."
* outcome ^definition = "Bekräftelsemeddelande"
* outcome ^comment = "TKB-fält: `requestConfirmation.outcome` (`RequestReceivedConfirmationOutcomeType`, kardinalitet 1..1).

**Modellanteckning:** Bekräftelsemeddelande (RequestReceivedConfirmationOutcomeType)."
* outcome.outcomeText ^definition = "Svarstext

Meddelande till remissens avsändare."
* outcome.outcomeText ^comment = "TKB-fält: `requestConfirmation.outcome.outcomeText` (`String`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken

**Modellanteckning:** Meddelande till remissens avsändare. Maxlängd 8192 tecken."
