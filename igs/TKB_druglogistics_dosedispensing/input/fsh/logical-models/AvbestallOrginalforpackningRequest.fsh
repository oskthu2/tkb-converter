// Elementen genereras ur AvbestallOrginalforpackningResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: AvbestallOrginalforpackning v1.0
// Genererad: 2026-09-26

Logical: AvbestallOrginalforpackningRequest
Id: avbestallorginalforpackning-request
Title: "AvbestallOrginalforpackning — Request"
Description: """
  Logisk modell för begäran i AvbestallOrginalforpackning
  (urn:riv:druglogistics:dosedispensing:AvbestallOrginalforpackningResponder:1, AvbestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* glnkod 1..1 string "glnkod" "glnkod"
* Behorighetsinformation 1..1 Base "BehorighetsinfoRequest" "Behorighetsinformation"
* Behorighetsinformation.fornamn 1..1 string "fornamn" "fornamn"
* Behorighetsinformation.efternamn 1..1 string "efternamn" "efternamn"
* Behorighetsinformation.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* Behorighetsinformation.yrkeskod 0..1 code "yrkeskod" "yrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH."
* Behorighetsinformation.yrkeskod from YrkesKodVS (required)
* Behorighetsinformation.arbetsplatskod 1..1 string "arbetsplatskod" "arbetsplatskod"
* Behorighetsinformation.hsaid 0..1 string "hsaid" "hsaid"
* Behorighetsinformation.personnummer 0..1 string "personnummer" "personnummer"
* Behorighetsinformation.organisationsnummer 0..1 string "organisationsnummer" "organisationsnummer"
* Avbestallningsinfo 1..* Base "AvbestallningsinfoRequest" "Avbestallningsinfo"
* Avbestallningsinfo.Patientinformation 1..1 Base "PatientinfoResponse" "Patientinformation"
* Avbestallningsinfo.Patientinformation.fornamn 1..1 string "Anvandarens fornamn." "Anvandarens fornamn."
* Avbestallningsinfo.Patientinformation.mellannamn 0..1 string "Anvandarens mellanamn." "Anvandarens mellanamn."
* Avbestallningsinfo.Patientinformation.efternamn 1..1 string "Anvandarens efternamn." "Anvandarens efternamn."
* Avbestallningsinfo.Patientinformation.identitetstyp 1..1 code "identitetstyp" "identitetstyp Tillåtna värden: P, R, S."
* Avbestallningsinfo.Patientinformation.identitetstyp from IdentitetstypVS (required)
* Avbestallningsinfo.Patientinformation.personid 1..1 string "Anvandarens personid" "Anvandarens personid"
* Avbestallningsinfo.Patientinformation.lanskod 0..1 string "Anvandarens folkbokforda lanskod" "Anvandarens folkbokforda lanskod"
* Avbestallningsinfo.Patientinformation.kommunkod 0..1 string "Anvandarens folkbokforda kommunkod" "Anvandarens folkbokforda kommunkod"
* Avbestallningsinfo.bestallningsid 1..1 string "bestallningsid" "bestallningsid"
* Avbestallningsinfo.radid 0..1 string "radid" "radid"
* Avbestallningsinfo.NPLpackid 0..1 string "NPLpackid" "NPLpackid"
* Avbestallningsinfo.varunummer 0..1 string "varunummer" "varunummer"
* Avbestallningsinfo.receptid 0..1 string "receptid" "receptid"
* Avbestallningsinfo.ordinationsid 1..1 string "ordinationsid" "ordinationsid"
* Avbestallningsinfo.dosunderlagsversion 0..1 string "dosunderlagsversion" "dosunderlagsversion"
* Avbestallningsinfo.meddelandetillapotek 0..1 string "meddelandetillapotek" "meddelandetillapotek"
* Avbestallningsinfo.onskadleveranstid 0..1 dateTime "onskadleveranstid" "onskadleveranstid"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert AvbestallOrginalforpackningRequestFieldDescriptions
