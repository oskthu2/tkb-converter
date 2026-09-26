// Genererad från TKB clinicalprocess:healthcond:rheuma v1.0
// Kontrakt: GetRheumatoidArthritisData v1.0
// Genererad: 2026-09-26

Invariant: getrheumatoidarthritisdata-nullified-reason
Description: "nullifiedReason får bara anges när nullified är true"
Expression: "nullifiedReason.exists() implies nullified = true"
Severity: #error

Logical: GetRheumatoidArthritisData
Id: getrheumatoidarthritisdata
Title: "GetRheumatoidArthritisData — Response"
Description: """
  Logisk modell för svaret i GetRheumatoidArthritisData
  (RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataResponseType).
  Varje förekomst av rheumatoidArthritisData är ett dokument ur Reuma beslutsstödsjournal eller motsvarande system.
"""
Characteristics: #can-be-target
* rheumatoidArthritisData 0..* BackboneElement "Reumatismdata" "Dokument som matchar begäran (RheumatoidArthritisDataType)."
  * rheumatoidArthritisDataHeader 1..1 BackboneElement "Dokumenthuvud" "Basinformation om dokumentet (PatientSummaryHeaderType)."
    * obeys getrheumatoidarthritisdata-nullified-reason
    * documentId 1..1 string "Dokument-id" "Dokumentets identitet, unik inom källsystemet."
    * sourceSystemHSAId 1..1 Identifier "Källsystem" "HSA-id för det system som dokumentet är skapat i (HSA-id för Reuma)."
    * documentTitle 0..0 string "Dokumenttitel" "Används inte i detta kontrakt (TKB anger 0..0; schemat tillåter 0..1)."
    * documentTime 0..0 dateTime "Dokumenttidpunkt" "Används inte i detta kontrakt (TKB anger 0..0; schemat tillåter 0..1)."
    * patientId 1..1 Identifier "Patient-id" "Patientens identifierare. value = id (12 tecken utan avskiljare); system = OID för typ av identifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer) eller lokalt reservnummer, t.ex. SLL 1.2.752.97.3.1.3. RIV-TA: PersonIdType id/type."
    * accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdsperson" "Den person som ansvarar för informationen i dokumentet (författare), HealthcareProfessionalType."
      * authorTime 1..1 dateTime "Tidpunkt" "Tidpunkt då dokumentet skapades eller senast uppdaterades (ÅÅÅÅMMDDttmmss)."
      * healthcareProfessionalHSAId 0..1 Identifier "Författarens HSA-id" "Författarens HSA-id."
      * healthcareProfessionalName 0..1 string "Författarens namn" "Namn på författaren. Anges om tillgängligt."
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Befattning" "Personens befattning, om möjligt enligt KV Befattning (OID 1.2.752.129.2.2.1.4). Antingen kod (med codeSystem och displayName) eller originalText."
      * healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet" "Den organisation som författaren är uppdragstagare vid (OrgUnitType)."
        * orgUnitHSAId 1..1 Identifier "Enhetens HSA-id" "HSA-id för organisationsenhet. TKB anger 0..1, schemat 1..1."
        * orgUnitName 1..1 string "Enhetens namn" "Namnet på organisationen. TKB anger 0..1, schemat 1..1."
        * orgUnitTelecom 0..1 string "Telefon" "Telefon till organisationsenhet."
        * orgUnitEmail 0..1 string "E-post" "E-post till organisationsenhet."
        * orgUnitAddress 0..1 string "Postadress" "Postadress för organisationen."
        * orgUnitLocation 0..1 string "Plats" "Namnet på plats eller ort för organisationens fysiska placering."
      * healthcareProfessionalCareUnitHSAId 0..1 Identifier "PDL-enhet" "HSA-id för PDL-enhet."
      * healthcareProfessionalCareGiverHSAId 0..1 Identifier "Vårdgivare" "HSA-id för vårdgivaren för den enhet som författaren är uppdragstagare vid."
    * legalAuthenticator 0..1 BackboneElement "Signerande person" "Information om vem som signerat dokumentet (LegalAuthenticatorType)."
      * signatureTime 1..1 dateTime "Signeringstidpunkt" "Tidpunkt för signering (ÅÅÅÅMMDDttmmss)."
      * legalAuthenticatorHSAId 0..1 Identifier "Signerandes HSA-id" "HSA-id för person som signerat dokumentet."
      * legalAuthenticatorName 0..1 string "Signerandes namn" "Namn i klartext för signerande person."
    * approvedForPatient 1..1 boolean "Godkänd för patient" "true om informationen får delas till patienten, annars false."
    * careContactId 0..1 string "Vård- och omsorgskontakt" "Identitet för den vård- och omsorgskontakt som föranlett informationen, unik inom källsystemet."
    * nullified 0..1 boolean "Makulerad" "Finns i schemat men inte i TKB-tabellen."
    * nullifiedReason 0..1 string "Makuleringsorsak" "Finns i schemat men inte i TKB-tabellen."
  * rheumatoidArthritisDataBody 1..1 BackboneElement "Dokumentkropp" "Reumatismdata (RheumatoidArthritisBodyType). TKB-tabellen kallar elementet rheumatoidArthritisBody."
    * patientVariables 0..1 BackboneElement "Patientvariabler" "Information från patienten."
      * workability 0..1 string "Arbetsförmåga" "Hur många timmar patienten arbetar i förhållande till anställningens timmar. TKB-tabellen kallar fältet workAbility."
      * globalHealth 0..1 integer "Global hälsa" "Patientens globala hälsa. Värdemängd 0–100."
      * pain 0..1 integer "Smärta" "Patientens uppfattning om sin smärta. Värdemängd 0–100."
      * eq5dIndexValue 0..1 decimal "EQ-5D" "EuroQol-5 Dimension Questionnaire. Värdemängd -0,594–1."
      * healthAssessmentQuestionnaireScore 0..1 decimal "HAQ" "Health Assessment Questionnaire. Värdemängd 0–3."
      * tenderJoints28 0..1 integer "Ömma leder (28)" "Antal ömma leder av 28. Värdemängd 0–28."
      * swollenJoints28 0..1 integer "Svullna leder (28)" "Antal svullna leder av 28. Värdemängd 0–28."
    * physiciansVariables 0..1 BackboneElement "Läkarvariabler" "Information från läkaren."
      * physiciansGlobal 0..1 CodeableConcept "Läkarens globala bedömning" "Motsvarar DoctorsGlobalEnum: none, low, moderate, high, maximal."
      * physiciansGlobal from PhysiciansGlobalVS (preferred)
      * tenderJoints28 0..1 integer "Ömma leder (28)" "Antal ömma leder av 28. Värdemängd 0–28."
      * swollenJoints28 0..1 integer "Svullna leder (28)" "Antal svullna leder av 28. Värdemängd 0–28."
      * diseaseActivityScore28 0..1 decimal "DAS28" "Disease Activity Score 28."
      * diseaseActivityScore28CRP 0..1 decimal "DAS28CRP" "Disease Activity Score 28 CRP."
    * labVariables 0..1 BackboneElement "Labbvärden" "Labbvärden."
      * sedimentationRate 0..1 Quantity "Sänka (SR)" "Sedimentation Rate, enhet mm/h."
      * cReactiveProtein 0..1 Quantity "CRP" "C-reaktivt protein, enhet mg/L."
    * drug 0..* BackboneElement "Läkemedel" "Information om patientens läkemedel (DrugType)."
      * nplId 0..1 Identifier "NPL-id" "Nationellt Produktregister för Läkemedel. system = 1.2.752.129.2.1.5.1."
      * actCode 0..1 CodeableConcept "ATC-kod" "Läkemedlets ATC-kod, codeSystem 1.2.752.129.2.2.3.1.1. Schemat kallar fältet actCode, TKB-tabellen atcCode."
      * drugName 0..1 string "Produktnamn" "Motsvarar kommande läkemedelskontrakts produktnamn. RIV-TA: drug.name."
      * typeOfDrug 0..1 CodeableConcept "Typ av läkemedel" "Motsvarande enum: DMARD, bioprep, NSAID, cortisone."
      * dose 0..1 Quantity "Dos" "Dos, enhet mg."
      * datePeriod 0..1 Period "Insättning och utsättning" "Insättnings- och utsättningsdatum (ÅÅÅÅMMDD)."
      * endCause 0..1 string "Utsättningsorsak" "Motsvarar kommande läkemedelskontrakts utsättningsorsak."
      * interval 0..1 string "Intervall" "Intervall/frekvens för dos."
