// Elementen genereras ur PrintListOfDispensedDrugsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:logistics v1.0.2
// Kontrakt: PrintListOfDispensedDrugs v1.0
// Genererad: 2026-09-26

Logical: PrintListOfDispensedDrugsRequest
Id: printlistofdispenseddrugs-request
Title: "PrintListOfDispensedDrugs — Request"
Description: """
  Logisk modell för requestparametrar i PrintListOfDispensedDrugs
  (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1, PrintListOfDispensedDrugsType).
  Anropande system ska ha anropat GetDispensedDrugs innan denna tjänst anropas.
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
* identifieradArbetsplats obeys printlistofdispenseddrugsrequest-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert PrintListOfDispensedDrugsRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* identifieradArbetsplats obeys printlistofdispenseddrugs-request-arbetsplats-choice

Invariant: printlistofdispenseddrugsrequest-choice-1
Description: "Exakt ett av arbetsplatskod, arbetsplats ska anges (xs:choice i schemat)."
Expression: "arbetsplatskod.exists() xor arbetsplats.exists()"
Severity: #error

Invariant: printlistofdispenseddrugs-request-arbetsplats-choice
Description: "Exakt ett av arbetsplatskod och arbetsplats ska anges (xs:choice i ArbetsplatsIdentifikation)"
Expression: "arbetsplatskod.exists() xor arbetsplats.exists()"
Severity: #error
