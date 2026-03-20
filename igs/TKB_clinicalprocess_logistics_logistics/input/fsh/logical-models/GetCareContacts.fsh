// Genererad från TKB clinicalprocess:logistics:logistics v3.0.13
// Kontrakt: GetCareContacts v3.0
// Genererad: 2026-03-19

Logical: GetCareContacts
Id: getcarecontacts
Title: "GetCareContacts"
Description: """
  Logisk modell för tjänstekontraktet GetCareContacts
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).
  Representerar responsens informationsstruktur (GetCareContactsResponseType).
  En lista med CareContactType returneras, var och en med ett header och ett body.
"""
Characteristics: #can-be-target

// ---- careContact (0..*) - CareContactType ----
* careContact 0..* BackboneElement "Vårdkontakter som matchar begäran"
    """
    Lista med vårdkontakter för patienten. Varje post innehåller header (basinformation)
    och body (kontaktspecifik information).
    Kardinalitet: Valfri lista (0..*).
    """

// -- careContactHeader (PatientSummaryHeaderType) --
* careContact.documentId 1..1 string "Vårdkontaktens identitet, unik inom källsystemet"
    """
    Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett kontrakt
    och mellan olika kontrakt som refererar samma post.
    Kardinalitet: Obligatorisk.
    """
* careContact.sourceSystemHSAId 1..1 string "HSA-id för källsystemet"
    """
    HSA-id för det system som dokumentet är skapat i. Typ HSAIdType (string).
    Kardinalitet: Obligatorisk.
    """
* careContact.patientId 1..1 Identifier "Patientens identifierare"
    """
    Personnummer eller samordningsnummer (12 tecken utan avskiljare).
    system = OID för typ: personnummer (1.2.752.129.2.1.3.1),
    samordningsnummer (1.2.752.129.2.1.3.3), reservnummer (lokalt definierade OID).
    Kardinalitet: Obligatorisk.
    """
* careContact.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdspersonal"
    """
    Hälso- och sjukvårdspersonalen som ansvarar för vårdkontakten.
    Typ HealthcareProfessionalType.
    Kardinalitet: Obligatorisk.
    """
* careContact.accountableHealthcareProfessional.authorTime 1..1 dateTime "Tidpunkt då informationen registrerades"
    """
    Format YYYYMMDDhhmmss. Tidpunkt i lokal svensk tid (CET/CEST).
    Regel 2: Används för kontroll av tidsbegränsade spärrar i sammanhållen journalföring.
    Kardinalitet: Obligatorisk.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 string "HSA-id för ansvarig personal"
    """
    HSA-id för hälso- och sjukvårdspersonal som ansvarar för vårdkontakten. Typ HSAIdType.
    Kardinalitet: Valfri.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalName 0..1 string "Namn på ansvarig personal"
    """
    Namn på hälso- och sjukvårdspersonal.
    Kardinalitet: Valfri.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 CodeableConcept "Befattning"
    """
    Information om hälso- och sjukvårdspersonalens befattning. Om möjligt ska
    KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Typ CVType.
    Kardinalitet: Valfri.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet för ansvarig personal"
    """
    Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på.
    Regel 4: orgUnitHSAId och orgUnitName ska anges för kompatibilitet med NPÖ.
    Typ OrgUnitType. Kardinalitet: Valfri.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 string "HSA-id för org.enhet"
    """
    HSA-id för organisationsenhet. Regel 4.
    Kardinalitet: Valfri (se Regel 4 — ska anges vid NPÖ-kompatibilitet).
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 string "Namn på org.enhet"
    """
    Namn på den organisation som den ansvariga personalen är uppdragstagare på. Regel 4.
    Kardinalitet: Valfri (se Regel 4).
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 string "Telefon till org.enhet"
    """
    Telefon till organisationsenheten.
    Kardinalitet: Valfri.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 string "E-post till org.enhet"
    """
    Epost till enhet.
    Kardinalitet: Valfri.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 string "Postadress för org.enhet"
    """
    Postadress för organisationsenheten.
    Kardinalitet: Valfri.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 string "Plats för org.enhet"
    """
    Namn på plats eller ort för organisationens fysiska placering.
    Kardinalitet: Valfri.
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 string "HSA-id för vårdenhet"
    """
    HSA-id för vårdenhet. Typ HSAIdType.
    Regel 1: Krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL.
    Kardinalitet: Valfri (se Regel 1).
    """
* careContact.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 string "HSA-id för vårdgivare"
    """
    HSA-id för vårdgivaren. Typ HSAIdType.
    Regel 1: Krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL.
    Kardinalitet: Valfri (se Regel 1).
    """
* careContact.approvedForPatient 1..1 boolean "Informationen godkänd för patient"
    """
    Anger om information får delas till patient (true = godkänd, false = ej godkänd).
    Regel 3: Konsumenter ska filtrera på denna flagga vid enskilds direktåtkomst.
    Kardinalitet: Obligatorisk.
    """

// -- careContactBody (CareContactBodyType) --
* careContact.careContactCode 0..1 CodeableConcept "Typ av vårdkontakt"
    """
    Kod som anger på vilket sätt vårdkontakten är planerad att ske, alternativt skedde.
    KV Vårdkontakttyp (OID 1.2.752.129.2.2.2.x). Typ CVType.
    Kardinalitet: Valfri.
    """
* careContact.careContactReason 0..1 string "Orsak till vårdkontakt"
    """
    Text som beskriver orsaken till vårdkontakt som patienten själv eller dess företrädare anger.
    Kardinalitet: Valfri.
    """
* careContact.careContactOrgUnit 0..1 BackboneElement "Enhet för vårdkontakten"
    """
    Den enhet som vårdkontakten utfördes vid eller planeras utföras vid.
    Regel 5: orgUnitHSAId och orgUnitName ska anges för kompatibilitet med NPÖ.
    Typ OrgUnitType. Kardinalitet: Valfri.
    """
* careContact.careContactOrgUnit.orgUnitHSAId 0..1 string "HSA-id för kontaktenhet"
    """
    HSA-id för organisationsenheten för kontakten. Regel 5.
    Kardinalitet: Valfri (se Regel 5).
    """
* careContact.careContactOrgUnit.orgUnitName 0..1 string "Namn på kontaktenhet"
    """
    Namn på organisationsenheten. Regel 5.
    Kardinalitet: Valfri (se Regel 5).
    """
* careContact.careContactOrgUnit.orgUnitTelecom 0..1 string "Telefon till kontaktenhet"
    """
    Telefon till organisationsenheten.
    Kardinalitet: Valfri.
    """
* careContact.careContactOrgUnit.orgUnitEmail 0..1 string "E-post till kontaktenhet"
    """
    Epost till organisationsenheten.
    Kardinalitet: Valfri.
    """
* careContact.careContactOrgUnit.orgUnitAddress 0..1 string "Adress till kontaktenhet"
    """
    Postadress till organisationsenheten.
    Kardinalitet: Valfri.
    """
* careContact.careContactOrgUnit.orgUnitLocation 0..1 string "Plats för kontaktenhet"
    """
    Plats/ort för organisationsenheten.
    Kardinalitet: Valfri.
    """
* careContact.careContactTimePeriod 0..1 BackboneElement "Tidsintervall för vårdkontakten"
    """
    Tidsintervall för vårdkontakt. Minst ett av fälten start och end måste anges.
    Vid besök i öppenvård sätts start och end till tidpunkt för besöket.
    Typ TimePeriodType. Kardinalitet: Valfri.
    """
* careContact.careContactTimePeriod.start 0..1 dateTime "Starttidpunkt för vårdkontakten"
    """
    Vårdkontaktens starttidpunkt. Format YYYYMMDDhhmmss.
    Minst ett av fälten start och end måste anges.
    Kardinalitet: Valfri (minst ett av start/end obligatoriskt).
    """
* careContact.careContactTimePeriod.end 0..1 dateTime "Sluttidpunkt för vårdkontakten"
    """
    Vårdkontaktens sluttidpunkt. Format YYYYMMDDhhmmss.
    Minst ett av fälten start och end måste anges.
    Kardinalitet: Valfri (minst ett av start/end obligatoriskt).
    """
* careContact.careContactStatus 0..1 CodeableConcept "Status för vårdkontakten"
    """
    Kod som anger aktuell status för vårdkontakten.
    Kodverket är definierat i SNOMED CT-SE, SCTID: 53761000052103.
    OID för SNOMED CT SE: 1.2.752.116.2.1.1.
    Typ CVType. Kardinalitet: Valfri.
    """
* careContact.additionalPatientInformation 0..1 BackboneElement "Ytterligare patientinformation"
    """
    Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning.
    Typ AdditionalPatientInformationType. Kardinalitet: Valfri.
    """
* careContact.additionalPatientInformation.dateOfBirth 0..1 date "Patientens födelsedatum"
    """
    Patientens födelsedatum. Partiellt datum (år, år+månad, eller fullständigt).
    Format: YYYY, YYYYMM eller YYYYMMDD.
    Kardinalitet: Valfri.
    """
* careContact.additionalPatientInformation.gender 0..1 CodeableConcept "Patientens kön"
    """
    Patientens kön. KV Kön (OID 1.2.752.129.2.2.1.1) bör användas. Typ CVType.
    Kardinalitet: Valfri.
    """

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
