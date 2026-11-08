// Elementen genereras ur AvbestallOrginalforpackningResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: AvbestallOrginalforpackning v1.0
// Genererad: 2026-09-26

Logical: AvbestallOrginalforpackning
Id: avbestallorginalforpackning
Title: "AvbestallOrginalforpackning — Response"
Description: """
  Logisk modell för svaret i AvbestallOrginalforpackning
  (urn:riv:druglogistics:dosedispensing:AvbestallOrginalforpackningResponder:1, AvbestallOrginalforpackningResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* resultatkod 1..1 code "resultatkod" "resultatkod Tillåtna värden: 1, 2, 3."
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Bestallningsrader 0..* Base "BestallningsinfoResponse" "Bestallningsrader"
* Bestallningsrader.bestallningsid 1..1 string "bestallningsid" "bestallningsid"
* Bestallningsrader.radid 0..1 string "radid" "radid"
* Bestallningsrader.Patientinformation 1..1 Base "PatientinfoResponse" "Patientinformation"
* Bestallningsrader.Patientinformation.fornamn 1..1 string "Anvandarens fornamn." "Anvandarens fornamn."
* Bestallningsrader.Patientinformation.mellannamn 0..1 string "Anvandarens mellanamn." "Anvandarens mellanamn."
* Bestallningsrader.Patientinformation.efternamn 1..1 string "Anvandarens efternamn." "Anvandarens efternamn."
* Bestallningsrader.Patientinformation.identitetstyp 1..1 code "identitetstyp" "identitetstyp Tillåtna värden: P, R, S."
* Bestallningsrader.Patientinformation.identitetstyp from IdentitetstypVS (required)
* Bestallningsrader.Patientinformation.personid 1..1 string "Anvandarens personid" "Anvandarens personid"
* Bestallningsrader.Patientinformation.lanskod 0..1 string "Anvandarens folkbokforda lanskod" "Anvandarens folkbokforda lanskod"
* Bestallningsrader.Patientinformation.kommunkod 0..1 string "Anvandarens folkbokforda kommunkod" "Anvandarens folkbokforda kommunkod"
* Bestallningsrader.NPLpackid 0..1 string "NPLpackid" "NPLpackid"
* Bestallningsrader.varunummer 0..1 string "varunummer" "varunummer"
* Bestallningsrader.receptid 0..1 string "receptid" "receptid"
* Bestallningsrader.ordinationsid 1..1 string "ordinationsid" "ordinationsid"
* Bestallningsrader.dosunderlagsversion 0..1 string "dosunderlagsversion" "dosunderlagsversion"
* Bestallningsrader.bestallningsresultat 0..1 integer "bestallningsresultat" "bestallningsresultat"
* Bestallningsrader.bestallningsresultattext 0..1 string "bestallningsresultattext" "bestallningsresultattext"
* Bestallningsrader.bestallningsstatus 1..1 code "bestallningsstatus" "bestallningsstatus Tillåtna värden: 1, 2, 3, 4, 5."
* Bestallningsrader.bestallningsstatus from BestallningsStatusVS (required)
* Bestallningsrader.statustidpunkt 1..1 dateTime "statustidpunkt" "statustidpunkt"
* Bestallningsrader.bestallningstatustext 0..1 string "bestallningstatustext" "bestallningstatustext"
* Bestallningsrader.meddelandefranapotek 0..1 string "meddelandefranapotek" "meddelandefranapotek"
* Bestallningsrader.onskadleveranstid 0..1 dateTime "onskadleveranstid" "onskadleveranstid"
* Bestallningsrader.planeradleveranstid 0..1 dateTime "planeradleveranstid" "planeradleveranstid"
* Bestallningsrader.dosmottagareid 0..1 string "dosmottagareid" "dosmottagareid"
* Bestallningsrader.dosmottagarenamn 0..1 string "dosmottagarenamn" "dosmottagarenamn"
* Bestallningsrader.bestallningstid 0..1 dateTime "bestallningstid" "bestallningstid"
* Bestallningsrader.bestallarefornamn 1..1 string "bestallarefornamn" "bestallarefornamn"
* Bestallningsrader.bestallareefternamn 1..1 string "bestallareefternamn" "bestallareefternamn"
* Bestallningsrader.bestallarearbetsplats 1..1 string "bestallarearbetsplats" "bestallarearbetsplats"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert AvbestallOrginalforpackningFieldDescriptions
