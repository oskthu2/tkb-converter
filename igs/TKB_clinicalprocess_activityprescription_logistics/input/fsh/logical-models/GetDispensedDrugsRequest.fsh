// Elementen genereras ur GetDispensedDrugsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:logistics v1.0.2
// Kontrakt: GetDispensedDrugs v1.0
// Genererad: 2026-09-26

Logical: GetDispensedDrugsRequest
Id: getdispenseddrugs-request
Title: "GetDispensedDrugs — Request"
Description: """
  Logisk modell för requestparametrar i GetDispensedDrugs
  (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:GetDispensedDrugsResponder:1, GetDispensedDrugsType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* patient 1..1 Base "Patient" "Patient vars läkemedelsförteckning skall hämtas."
* patient.patientidentifikation 1..1 Base "Patientidentifikation" "Patientidentifikationen kan innehålla följande typer: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret."
* patient.patientidentifikation.kod 1..1 string "kod" "kod"
* patient.patientidentifikation.kodverk 1..1 string "Identifierng av berört kodverk/klassifikation enligt V-TIM 2.2." "Identifierng av berört kodverk/klassifikation enligt V-TIM 2.2."
* patient.patientidentifikation.kodverk only OID
* anropandeVardpersonal 1..1 Base "Vardpersonal" "Anropande vårdpersonal."
* anropandeVardpersonal.efternamn 1..1 string "efternamn" "efternamn"
* anropandeVardpersonal.fornamn 1..1 string "fornamn" "fornamn"
* anropandeVardpersonal.personHsaId 1..1 string "personHsaId" "personHsaId"
* anropandeVardpersonal.vardenhetHsaId 1..1 string "vardenhetHsaId" "vardenhetHsaId"
* anropandeVardpersonal.vardgivareHsaId 1..1 string "vardgivareHsaId" "vardgivareHsaId"
* forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* identifieradArbetsplats 1..1 Base "ArbetsplatsIdentifikation" "Identifierad arbetsplats."
* identifieradArbetsplats.arbetsplatskod 0..1 string "arbetsplatskod" "arbetsplatskod"
* identifieradArbetsplats.arbetsplats 0..1 Base "Arbetsplats" "Förskrivarens arbetsplats. Obligatorisk om arbetsplatskod inte anges."
* identifieradArbetsplats.arbetsplats.arbetsplatsnamn 1..1 string "arbetsplatsnamn" "arbetsplatsnamn"
* identifieradArbetsplats.arbetsplats.arbetsplatsort 1..1 string "arbetsplatsort" "arbetsplatsort"
* identifieradArbetsplats obeys getdispenseddrugsrequest-choice-1
* atkomsttyp 1..1 code "Treställig kod för typ av åtkomst." "Treställig kod för typ av åtkomst. Tillåtna värden: ENG, SAM, NOD."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetDispensedDrugsRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys getdispenseddrugs-request-forskrivarkod-sam
* identifieradArbetsplats obeys getdispenseddrugs-request-arbetsplats-choice

Invariant: getdispenseddrugsrequest-choice-1
Description: "Exakt ett av arbetsplatskod, arbetsplats ska anges (xs:choice i schemat)."
Expression: "arbetsplatskod.exists() xor arbetsplats.exists()"
Severity: #error

Invariant: getdispenseddrugs-request-arbetsplats-choice
Description: "Exakt ett av arbetsplatskod och arbetsplats ska anges (xs:choice i ArbetsplatsIdentifikation)"
Expression: "arbetsplatskod.exists() xor arbetsplats.exists()"
Severity: #error

Invariant: getdispenseddrugs-request-forskrivarkod-sam
Description: "forskrivarkod är obligatorisk om atkomsttyp = SAM"
Expression: "atkomsttyp = 'SAM' implies forskrivarkod.exists()"
Severity: #error
