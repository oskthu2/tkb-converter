// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaOrginalforpackning v1.0
// Genererad: 2026-09-26

Logical: HamtaOrginalforpackning
Id: hamtaorginalforpackning
Title: "HamtaOrginalforpackning — Response"
Description: """
  Logisk modell för svaret i HamtaOrginalforpackning
  (urn:riv:druglogistics:dosedispensing:HamtaOrginalforpackningResponder:1, HamtaOrginalforpackningResponseType).
"""
Characteristics: #can-be-target
* resultatkod 1..1 code "resultatkod" "resultatkod"
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Bestallningsrader 0..* BackboneElement "Bestallningsrader" "Bestallningsrader"
  * bestallningsid 1..1 string "bestallningsid" "bestallningsid"
  * radid 0..1 string "radid" "radid"
  * Patientinformation 1..1 BackboneElement "Patientinformation" "Patientinformation"
    * fornamn 1..1 string "fornamn" "Anvandarens fornamn."
    * mellannamn 0..1 string "mellannamn" "Anvandarens mellanamn."
    * efternamn 1..1 string "efternamn" "Anvandarens efternamn."
    * identitetstyp 1..1 code "identitetstyp" "identitetstyp"
    * identitetstyp from IdentitetstypVS (required)
    * personid 1..1 string "personid" "Anvandarens personid"
    * lanskod 0..1 string "lanskod" "Anvandarens folkbokforda lanskod"
    * kommunkod 0..1 string "kommunkod" "Anvandarens folkbokforda kommunkod"
  * NPLpackid 0..1 string "NPLpackid" "NPLpackid"
  * varunummer 0..1 string "varunummer" "varunummer"
  * receptid 0..1 string "receptid" "receptid"
  * ordinationsid 1..1 string "ordinationsid" "ordinationsid"
  * dosunderlagsversion 0..1 string "dosunderlagsversion" "dosunderlagsversion"
  * bestallningsresultat 0..1 integer "bestallningsresultat" "bestallningsresultat"
  * bestallningsresultattext 0..1 string "bestallningsresultattext" "bestallningsresultattext"
  * bestallningsstatus 1..1 code "bestallningsstatus" "bestallningsstatus"
  * bestallningsstatus from BestallningsStatusVS (required)
  * statustidpunkt 1..1 dateTime "statustidpunkt" "statustidpunkt"
  * bestallningstatustext 0..1 string "bestallningstatustext" "bestallningstatustext"
  * meddelandefranapotek 0..1 string "meddelandefranapotek" "meddelandefranapotek"
  * onskadleveranstid 0..1 dateTime "onskadleveranstid" "onskadleveranstid"
  * planeradleveranstid 0..1 dateTime "planeradleveranstid" "planeradleveranstid"
  * dosmottagareid 0..1 string "dosmottagareid" "dosmottagareid"
  * dosmottagarenamn 0..1 string "dosmottagarenamn" "dosmottagarenamn"
  * bestallningstid 0..1 dateTime "bestallningstid" "bestallningstid"
  * bestallarefornamn 1..1 string "bestallarefornamn" "bestallarefornamn"
  * bestallareefternamn 1..1 string "bestallareefternamn" "bestallareefternamn"
  * bestallarearbetsplats 1..1 string "bestallarearbetsplats" "bestallarearbetsplats"
