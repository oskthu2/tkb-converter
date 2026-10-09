// Genererad från TKB clinicalprocess:activityprescription:actoutcome 1.0 (Bitbucket-tagg 1.0.2)
// Kontrakt: GetVaccinationHistory v1.0
// Källa: GetVaccinationHistoryResponder_1.0.xsd och clinicalprocess_activityprescription_actoutcome_1.0.xsd
// Genererad: 2026-10-08
// Elementnamn, ordning och kardinalitet följer XML-schemat; beskrivningar kommer från TKB:ns fältregler (avsnitt 7.6).

Invariant: getvaccinationhistory-nullifiedreason
Description: "nullifiedReason får endast anges i kombination med att nullified = true"
Expression: "nullifiedReason.exists() implies nullified = true"
Severity: #error

Invariant: getvaccinationhistory-actor-hsaid-or-name
Description: "ActorType: minst ett av hsaid och personName ska anges"
Expression: "hsaid.exists() or personName.exists()"
Severity: #error

Logical: GetVaccinationHistory
Id: getvaccinationhistory
Title: "GetVaccinationHistory"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetVaccinationHistory 1.0
  (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1).
  Tjänsten returnerar strukturerad eller ostrukturerad information om patientens vaccinationer.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* vaccinationMedicalRecord 0..* BackboneElement "En strukturerad vaccinationsjournal (VaccinationMedicalRecordType)"
  * vaccinationMedicalRecordHeader 1..1 BackboneElement "Basinformation om dokumentet (PatientSummaryHeaderType)"
    * documentId 1..1 string "Dokumentets identitet som är unik inom källsystemet"
    * sourceSystemHSAId 1..1 Identifier "HSA-id för det system som dokumentet är skapat i"
    * documentTitle 0..1 string "Titel som beskriver den information som sänds i dokumentet"
    * documentTime 0..1 instant "Händelsetidpunkt (vaccinationstidpunkt dokumentet gäller)"
      """
      TimeStampType, formatet ÅÅÅÅMMDDttmmss utan tidszon (svensk tid, CET/CEST).
      """
    * patientId 1..1 Identifier "Identifierare för patient (PersonIdType)"
      """
      value (id) sätts till patientens identifierare, 12 tecken utan avskiljare.
      system (type) sätts till OID för typ av identifierare: personnummer 1.2.752.129.2.1.3.1,
      samordningsnummer 1.2.752.129.2.1.3.3, reservnummer lokalt definierat (t.ex. SLL 1.2.752.97.3.1.3).
      """
    * accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdsperson (HealthcareProfessionalType)"
      * authorTime 1..1 instant "Tidpunkt då dokumentet skapades (senast uppdaterat)"
      * healthcareProfessionalHSAId 0..1 Identifier "Hälso- och sjukvårdspersonens HSA-id"
        """
        Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39: om HSA-id inte finns tillgängligt kan Orgnr + lokalt id anges.
        """
      * healthcareProfessionalName 0..1 string "Namn på hälso- och sjukvårdspersonen"
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Befattning (CVType)"
        """
        Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas.
        CVType: code, codeSystem, codeSystemName, codeSystemVersion, displayName, originalText.
        Om originalText anges ska inget annat värde anges.
        """
      * healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisation som personen är uppdragstagare på (OrgUnitType)"
        * orgUnitHSAid 0..1 Identifier "HSA-id för organisationsenhet"
        * orgUnitName 0..1 string "Namn på organisationsenhet"
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
        * orgUnitEmail 0..1 string "Epost till enhet"
        * orgUnitAddress 0..1 string "Postadress till organisationsenhet"
        * orgUnitLocation 0..1 string "Plats eller ort för organisationens fysiska placering"
      * healthcareProfessionalCareUnitHSAId 0..1 Identifier "HSA-id för vårdenhet"
      * healthcareProfessionalCareGiverHSAId 0..1 Identifier "HSA-id för vårdgivaren"
    * legalAuthenticator 0..1 BackboneElement "Information om vem som signerat dokumentet (LegalAuthenticatorType)"
      * signatureTime 1..1 instant "Tidpunkt för signering"
      * legalAuthenticatorHSAid 0..1 Identifier "HSA-id för person som signerat dokumentet"
      * legalAuthenticatorName 0..1 string "Namnet i klartext för signerande person"
    * approvedForPatient 1..1 boolean "Anger om information får delas till patient"
    * careContactId 0..1 string "Identitet för den vård- och omsorgskontakt som föranlett dokumentet"
    * nullified 0..1 boolean "Anger om dokumentet makulerats i källsystemet"
      """
      TKB:ns fältregler anger 1..1, XML-schemat 0..1. Modellen följer schemat (se QUESTIONS).
      """
    * nullifiedReason 0..1 boolean "Anger orsak till makulering"
      """
      TKB:ns fältregler anger typen string, XML-schemat xs:boolean. Modellen följer schemat (se QUESTIONS).
      Får endast anges i kombination med att nullified = true.
      """
    * obeys getvaccinationhistory-nullifiedreason
  * vaccinationMedicalRecordBody 1..1 BackboneElement "Vaccinationsjournalens innehåll (VaccinationMedicalRecordBodyType)"
    * registrationRecord 1..1 BackboneElement "Information som registreras vid eller relaterat till vaccinationstillfället"
      * careGiverOrg 1..1 BackboneElement "Information om juridisk vårdgivare (OrgUnitType)"
        * orgUnitHSAid 0..1 Identifier "HSA-id för organisationsenhet"
        * orgUnitName 0..1 string "Namn på organisationsenhet"
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
        * orgUnitEmail 0..1 string "Epost till organisationsenhet"
        * orgUnitAddress 0..1 string "Postadress till organisationsenhet"
        * orgUnitLocation 0..1 string "Plats eller ort för fysisk placering"
      * careGiverContact 0..1 BackboneElement "Kontaktperson hos juridiskt ansvarig vårdgivare (ActorType)"
        * hsaid 0..1 Identifier "HSA-id för personen"
        * personName 0..1 string "Namn på personen"
        * personEmail 0..1 string "Epostadress till personen"
        * personTelecom 0..1 string "Telefon till personen"
        * personAddress 0..1 string "Adress till personen"
        * obeys getvaccinationhistory-actor-hsaid-or-name
      * sourceSystemName 1..1 string "Klartextnamn på källsystemet"
      * sourceSystemProductName 0..1 string "Klartextnamn på källsystemets produktnamn"
      * sourceSystemProductVersion 0..1 string "Klartextnamn på källsystemets produktversion"
      * sourceSystemContact 1..1 BackboneElement "Kontaktuppgifter till källsystemsansvarig (ActorType)"
        * hsaid 0..1 Identifier "HSA-id för personen"
        * personName 0..1 string "Namn på personen"
        * personEmail 0..1 string "Epostadress till personen"
        * personTelecom 0..1 string "Telefon till personen"
        * personAddress 0..1 string "Adress till personen"
        * obeys getvaccinationhistory-actor-hsaid-or-name
      * careUnitSmiId 0..1 string "Utförande vårdenhetens registreringsId hos SMI"
      * date 1..1 date "Datum då vaccination(er) gavs (DateType, ÅÅÅÅMMDD)"
      * patientPostalCode 0..1 string "Postnummer för patientens senast kända bostadsadress"
      * vaccinationUnstructuredNote 0..1 string "Läsbar fritextsammanfattning"
        """
        Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade informationen.
        Kan formateras enligt HL7NarrativeBlock. Om endast ostrukturerad vaccinationsinformation finns kan kontraktet
        produceras utan administrationRecord.
        """
      * riskCategory 0..* CodeableConcept "Patientens riskgruppstillhörighet vid vaccinationstillfället (CVType)"
      * patientAdverseEffect 0..* CodeableConcept "Reaktioner vid vaccinationstillfället, ej specifik vaccination (CVType)"
    * administrationRecord 0..* BackboneElement "Utförd(a) vaccination(er) vid tillfället (AdministrationRecordType)"
      """
      Ordinerad men av någon anledning ej given vaccination kan inkluderas.
      """
      * vaccinationProgramName 0..1 CodeableConcept "Vaccinationsprogram (CVType)"
      * prescriberOrg 0..1 BackboneElement "Var vaccinationen ordinerats/förskrivits (OrgUnitType)"
        * orgUnitHSAid 0..1 Identifier "HSA-id för organisationsenhet"
        * orgUnitName 0..1 string "Namn på organisationsenhet"
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
        * orgUnitEmail 0..1 string "Epost till organisationsenhet"
        * orgUnitAddress 0..1 string "Postadress till organisationsenhet"
        * orgUnitLocation 0..1 string "Plats eller ort för fysisk placering"
      * prescriberPerson 0..1 BackboneElement "Vem som ordinerat/förskrivit vaccinationen (ActorType)"
        * hsaid 0..1 Identifier "HSA-id för personen"
        * personName 0..1 string "Namn på personen"
        * personEmail 0..1 string "Epostadress till personen"
        * personTelecom 0..1 string "Telefon till personen"
        * personAddress 0..1 string "Adress till personen"
        * obeys getvaccinationhistory-actor-hsaid-or-name
      * performerOrg 0..1 BackboneElement "Vårdenhet som utfört vaccinationen (OrgUnitType)"
        * orgUnitHSAid 0..1 Identifier "HSA-id för organisationsenhet"
        * orgUnitName 0..1 string "Namn på organisationsenhet"
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
        * orgUnitEmail 0..1 string "Epost till organisationsenhet"
        * orgUnitAddress 0..1 string "Postadress till organisationsenhet"
        * orgUnitLocation 0..1 string "Plats eller ort för fysisk placering"
      * performer 0..1 BackboneElement "Vem som utfört (administrerat) vaccineringen (ActorType)"
        * hsaid 0..1 Identifier "HSA-id för personen"
        * personName 0..1 string "Namn på personen"
        * personEmail 0..1 string "Epostadress till personen"
        * personTelecom 0..1 string "Telefon till personen"
        * personAddress 0..1 string "Adress till personen"
        * obeys getvaccinationhistory-actor-hsaid-or-name
      * anatomicalSite 0..1 CodeableConcept "Var på kroppen vaccinet givits (CVType)"
      * route 0..1 CodeableConcept "Hur vaccinet givits, administrationsväg (CVType)"
      * dosage 0..1 BackboneElement "Mängd vaccin som givits (DosageType)"
        * quantity 0..1 Quantity "Mängd preparat som givits (PQType: value + unit enligt UCUM)"
        * displayName 1..1 string "Fritextbeskrivning av preparat och mängd, t.ex. ”Twinrix 1 ml, 1 av 3”"
      * isDoseComplete 0..1 boolean "True om vaccineringen räknas som hel dos"
      * doseOrdinalNumber 0..1 integer "Ordningsnummer för delvaccinationen (1, 2, 3 …)"
      * numberOfPrescribedDoses 0..1 integer "Antal delvaccinationer för full dos"
      * sourceDescription 0..1 string "Källa för efterregistrerad vaccinering"
      * commentPrescription 0..1 string "Fritext, t.ex. instruktioner i ordinationen"
      * commentAdministration 0..1 string "Fritext, kommentarer vid vaccineringen"
      * patientAdverseEffect 0..* CodeableConcept "Reaktioner hänförbara till den specifika administreringen (CVType)"
      * vaccineType 0..1 CodeableConcept "Givet vaccin (CVType)"
      * vaccineName 0..1 CodeableConcept "Givet vaccins produktnamn, t.ex. NPL-id (CVType)"
      * vaccineBatchId 0..1 string "Batchnummer för vaccinets tillverkning"
      * vaccineManufacturer 0..1 string "Namn på tillverkaren av vaccinet"
      * vaccineTargetDisease 0..* CodeableConcept "Sjukdom(ar) vaccinet skyddar emot (CVType)"
      * vaccinationUniqueReference 0..1 Identifier "Unik referens till källsystemets vaccinationsinformation (IIType)"
        """
        IIType: root (1..1) mappas till system, extension (0..1) till value. Om identiteten i källsystemet är globalt
        unik (t.ex. UUID) kan den anges i root; annars anges källsystemets HSA-id i root och källsystemets lokala id
        för vaccinationen i extension.
        """
