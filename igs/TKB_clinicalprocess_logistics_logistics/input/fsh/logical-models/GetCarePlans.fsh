// Genererad från TKB clinicalprocess:logistics:logistics v3.0.13
// Kontrakt: GetCarePlans v2.0
// Genererad: 2026-03-19

Logical: GetCarePlans
Id: getcareaplans
Title: "GetCarePlans"
Description: """
  Logisk modell för tjänstekontraktet GetCarePlans
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2).
  Representerar responsens informationsstruktur (GetCarePlansResponseType).
  En lista med CarePlanType returneras, var och en med ett header och ett body.
"""
Characteristics: #can-be-target

// ---- carePlan (0..*) - CarePlanType ----
* carePlan 0..* BackboneElement "Vård- och omsorgsplaner som matchar begäran"
    """
    Lista med vård- och omsorgsplaner för patienten. Varje post innehåller
    header (basinformation) och body (planspecifik information).
    Kardinalitet: Valfri lista (0..*).
    """

// -- carePlanHeader (PatientSummaryHeaderType) --
* carePlan.documentId 1..1 string "Planens identitet, unik inom källsystemet"
    """
    Vård- och omsorgsplanens identitet som är unik inom källsystemet.
    Identifieraren ska vara konsistent och beständig mellan versioner och kontrakt.
    Kardinalitet: Obligatorisk.
    """
* carePlan.sourceSystemHSAId 1..1 string "HSA-id för källsystemet"
    """
    HSA-id för det system som dokumentet är skapat i. Typ HSAIdType (string).
    Kardinalitet: Obligatorisk.
    """
* carePlan.documentTitle 1..1 string "Rubrik för vård- och omsorgsplanen"
    """
    Text som innehåller en rubrik som beskriver innehållet i vård- och omsorgsplanen.
    Exempel: "Samordnad vårdplanering Rehabiliteringsplan".
    Kardinalitet: Obligatorisk.
    """
* carePlan.documentTime 0..1 dateTime "Tidpunkt då planen upprättades"
    """
    Tidpunkt då vård- och omsorgsplanen upprättats. Format YYYYMMDDhhmmss.
    Kardinalitet: Valfri.
    """
* carePlan.patientId 1..1 Identifier "Patientens identifierare"
    """
    Personnummer eller samordningsnummer (12 tecken utan avskiljare).
    system = OID för typ: personnummer (1.2.752.129.2.1.3.1),
    samordningsnummer (1.2.752.129.2.1.3.3), reservnummer (lokalt definierade OID).
    Typ PersonIdType. Kardinalitet: Obligatorisk.
    """
* carePlan.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdspersonal"
    """
    Hälso- och sjukvårdspersonal som ansvarar för vård- och omsorgsplanen.
    Typ HealthcareProfessionalType. Kardinalitet: Obligatorisk.
    """
* carePlan.accountableHealthcareProfessional.authorTime 1..1 dateTime "Tidpunkt då informationen registrerades"
    """
    Format YYYYMMDDhhmmss. Tidpunkt i lokal svensk tid (CET/CEST).
    Regel 2: Används för kontroll av tidsbegränsade spärrar i sammanhållen journalföring.
    Kardinalitet: Obligatorisk.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 string "HSA-id för ansvarig personal"
    """
    HSA-id för hälso- och sjukvårdspersonal som ansvarar för vårdplanen. Typ HSAIdType.
    Kardinalitet: Valfri.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalName 0..1 string "Namn på ansvarig personal"
    """
    Namn på hälso- och sjukvårdspersonal.
    Kardinalitet: Valfri.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 CodeableConcept "Befattning"
    """
    Information om hälso- och sjukvårdspersonalens befattning. Om möjligt ska
    KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Typ CVType.
    Kardinalitet: Valfri.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet för ansvarig personal"
    """
    Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på.
    Regel 4: orgUnitHSAId och orgUnitName ska anges för kompatibilitet med NPÖ.
    Typ OrgUnitType. Kardinalitet: Valfri.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 string "HSA-id för org.enhet"
    """
    HSA-id för organisationsenhet. Regel 4.
    Kardinalitet: Valfri (se Regel 4 — ska anges vid NPÖ-kompatibilitet).
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 string "Namn på org.enhet"
    """
    Namn på den organisation. Regel 4.
    Kardinalitet: Valfri (se Regel 4).
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 string "Telefon till org.enhet"
    """
    Telefon till organisationsenhet.
    Kardinalitet: Valfri.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 string "E-post till org.enhet"
    """
    Epost till enhet.
    Kardinalitet: Valfri.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 string "Postadress för org.enhet"
    """
    Postadress.
    Kardinalitet: Valfri.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 string "Plats för org.enhet"
    """
    Namn på plats eller ort.
    Kardinalitet: Valfri.
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 string "HSA-id för vårdenhet"
    """
    HSA-id för vårdenhet. Typ HSAIdType.
    Regel 1: Krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL.
    Kardinalitet: Valfri (se Regel 1).
    """
* carePlan.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 string "HSA-id för vårdgivare"
    """
    HSA-id för vårdgivaren. Typ HSAIdType.
    Regel 1: Krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL.
    Kardinalitet: Valfri (se Regel 1).
    """
* carePlan.legalAuthenticator 0..1 BackboneElement "Signeringsinformation"
    """
    Information om vem som signerat informationen i dokumentet.
    Typ LegalAuthenticatorType. Kardinalitet: Valfri.
    """
* carePlan.legalAuthenticator.signatureTime 1..1 dateTime "Tidpunkt för signering"
    """
    Format YYYYMMDDhhmmss.
    Kardinalitet: Obligatorisk om legalAuthenticator anges.
    """
* carePlan.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "HSA-id för signerare"
    """
    HSA-id för person som signerat dokumentet. Typ HSAIdType.
    Kardinalitet: Valfri.
    """
* carePlan.legalAuthenticator.legalAuthenticatorName 0..1 string "Namn på signerare"
    """
    Namnen i klartext för signerande person.
    Kardinalitet: Valfri.
    """
* carePlan.approvedForPatient 1..1 boolean "Informationen godkänd för patient"
    """
    Anger om information får delas till patient (true = godkänd, false = ej godkänd).
    Regel 3: Konsumenter ska filtrera på denna flagga vid enskilds direktåtkomst.
    Kardinalitet: Obligatorisk.
    """
* carePlan.careContactId 0..1 string "Refererad vårdkontakt-id"
    """
    Identitet för den vårdkontakt som föranlett den information som omfattas av dokumentet.
    Identiteten är unik inom källsystemet. Matchar documentId i GetCareContacts.
    Kardinalitet: Valfri.
    """

// -- carePlanBody (CarePlanBodyType) --
* carePlan.content 0..* BackboneElement "Innehåll i vård- och omsorgsplanen"
    """
    Beskrivning av innehållet i vård- och omsorgsplanen, bör innehålla status och mål.
    Producenter måste följa riktlinjerna för binära bilagor (R10).
    Inbäddade bilagor får inte överstiga 100 KB.
    Typ MultimediaType. Kardinalitet: Valfri lista (0..*).
    """
* carePlan.content.mediaType 1..1 code "Mediatyp (MIME-typ)"
    """
    Typ av multimedia enligt HL7. Tillåtna format i denna version:
    text/plain, text/html, image/jpeg, image/png, application/pdf.
    Typ MediaTypeEnum. Kardinalitet: Obligatorisk.
    """
* carePlan.content.value 0..1 base64Binary "Binärdata (base64)"
    """
    Binärdata som representerar objektet. Antingen value eller reference ska anges, ej båda.
    Kardinalitet: Valfri (villkorligt — ett av value/reference obligatoriskt).
    """
* carePlan.content.reference 0..1 url "Referens till extern fil (URL)"
    """
    Referens till extern binär fil i form av en URL.
    Antingen value eller reference ska anges, ej båda.
    Kardinalitet: Valfri (villkorligt — ett av value/reference obligatoriskt).
    """
* carePlan.participatingCareUnitHSAId 0..* Identifier "Deltagande vårdenheters HSA-id"
    """
    En vård- och omsorgsplan har noll eller flera deltagande enheter.
    Typ IIType (root = OID, extension = värde). Kardinalitet: Valfri lista (0..*).
    """
* carePlan.typeOfCarePlan 0..1 CodeableConcept "Typ av vård- och omsorgsplan"
    """
    Typ av vård- och omsorgsplan. Typ TypeOfCarePlanEnum.
    Möjliga värden: SIP, SPLPTLRV, SPU, VP, HP, RP, GP, SVP.
    Kardinalitet: Valfri.
    """
* carePlan.typeOfCarePlan from TypeOfCarePlanVS (required)

// ---- result (ResultType) ----
* result 1..1 BackboneElement "Resultatkod för anropet"
    """
    Innehåller information om begäran gick bra eller ej. Typ ResultType.
    Kardinalitet: Obligatorisk.
    """
* result.resultCode 1..1 code "Resultatkod: OK, INFO eller ERROR"
    """
    Kan endast vara OK, INFO eller ERROR. Typ ResultCodeEnum.
    Kardinalitet: Obligatorisk.
    """
* result.errorCode 0..1 code "Felkod vid ERROR"
    """
    Sätts endast om resultCode är ERROR. Möjliga värden: INVALID_REQUEST.
    Kardinalitet: Valfri.
    """
* result.logId 1..1 string "UUID för felsökning"
    """
    En UUID som kan användas vid felanmälan för felsökning av producent.
    Kardinalitet: Obligatorisk.
    """
* result.subCode 0..1 string "Subkod"
    """
    Inga subkoder är specificerade i denna version.
    Kardinalitet: Valfri.
    """
* result.message 0..1 string "Beskrivande meddelande"
    """
    En beskrivande text som kan visas för användaren. På svenska.
    Kardinalitet: Valfri.
    """
