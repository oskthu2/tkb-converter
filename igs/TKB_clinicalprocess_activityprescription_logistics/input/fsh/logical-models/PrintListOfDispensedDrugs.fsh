// Elementen genereras ur PrintListOfDispensedDrugsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:logistics v1.0.2
// Kontrakt: PrintListOfDispensedDrugs v1.0
// Genererad: 2026-09-26

Logical: PrintListOfDispensedDrugs
Id: printlistofdispenseddrugs
Title: "PrintListOfDispensedDrugs"
Description: """
  Logisk modell för tjänstekontraktet PrintListOfDispensedDrugs
  (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1).
  Representerar responsens informationsstruktur: en PDF-rapport med patientens läkemedelsförteckning.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* patientinformation 0..1 Base "Patientinformation" "Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som Avliden så returneras ej pdf."
* patientinformation.patientidentifikation 0..1 Base "Patientidentifikation" "Patientidentifikationen kan enbart innehålla följande typ: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret."
* patientinformation.patientidentifikation.kod 1..1 string "kod" "kod"
* patientinformation.patientidentifikation.kodverk 1..1 string "Identifierng av berört kodverk/klassifikation enligt V-TIM 2.2." "Identifierng av berört kodverk/klassifikation enligt V-TIM 2.2."
* patientinformation.patientidentifikation.kodverk only OID
* patientinformation.fornamn 0..1 string "fornamn" "fornamn"
* patientinformation.efternamn 0..1 string "efternamn" "efternamn"
* patientinformation.redigeratNamn 1..1 string "redigeratNamn" "redigeratNamn"
* patientinformation.harRedigeratNamnForkortats 1..1 boolean "Anger om redigeratNamn har förkortats." "Anger om redigeratNamn har förkortats."
* patientinformation.avliden 1..1 boolean "Anger om patienten är avliden. Sant om personen är markerad som avliden, annars falskt." "Anger om patienten är avliden. Sant om personen är markerad som avliden, annars falskt."
* pdf 0..1 base64Binary "Utdrag från läkemedelsförteckningen som PDF." "Utdrag från läkemedelsförteckningen som PDF."
* resultCode 1..1 code "Resultatkod för anropet." "Resultatkod för anropet. Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert PrintListOfDispensedDrugsFieldDescriptions
