// Elementen genereras ur BestallOrginalforpackningResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: BestallOrginalforpackning v1.0
// Genererad: 2026-09-26

Logical: BestallOrginalforpackningRequest
Id: bestallorginalforpackning-request
Title: "BestallOrginalforpackning — Request"
Description: """
  Logisk modell för begäran i BestallOrginalforpackning
  (urn:riv:druglogistics:dosedispensing:BestallOrginalforpackningResponder:1, BestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL.
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
* Bestallningsinfo 1..* Base "BestallningsinfoRequest" "Bestallningsinfo"
* Bestallningsinfo.Patientinformation 1..1 Base "PatientinfoResponse" "Patientinformation"
* Bestallningsinfo.Patientinformation.fornamn 1..1 string "Anvandarens fornamn." "Anvandarens fornamn."
* Bestallningsinfo.Patientinformation.mellannamn 0..1 string "Anvandarens mellanamn." "Anvandarens mellanamn."
* Bestallningsinfo.Patientinformation.efternamn 1..1 string "Anvandarens efternamn." "Anvandarens efternamn."
* Bestallningsinfo.Patientinformation.identitetstyp 1..1 code "identitetstyp" "identitetstyp Tillåtna värden: P, R, S."
* Bestallningsinfo.Patientinformation.identitetstyp from IdentitetstypVS (required)
* Bestallningsinfo.Patientinformation.personid 1..1 string "Anvandarens personid" "Anvandarens personid"
* Bestallningsinfo.Patientinformation.lanskod 0..1 string "Anvandarens folkbokforda lanskod" "Anvandarens folkbokforda lanskod"
* Bestallningsinfo.Patientinformation.kommunkod 0..1 string "Anvandarens folkbokforda kommunkod" "Anvandarens folkbokforda kommunkod"
* Bestallningsinfo.bestallningsid 1..1 string "bestallningsid" "bestallningsid"
* Bestallningsinfo.radid 0..1 string "radid" "radid"
* Bestallningsinfo.NPLpackid 0..1 string "NPLpackid" "NPLpackid"
* Bestallningsinfo.varunummer 0..1 string "varunummer" "varunummer"
* Bestallningsinfo.receptid 0..1 string "receptid" "receptid"
* Bestallningsinfo.ordinationsid 1..1 string "ordinationsid" "ordinationsid"
* Bestallningsinfo.dosunderlagsversion 0..1 string "dosunderlagsversion" "dosunderlagsversion"
* Bestallningsinfo.antalforpackningar 0..1 string "antalforpackningar" "antalforpackningar"
* Bestallningsinfo.akutbestallning 0..1 boolean "akutbestallning" "akutbestallning"
* Bestallningsinfo.maxveckodos 0..1 string "maxveckodos" "maxveckodos"
* Bestallningsinfo.maxdygnsdos 0..1 string "maxdygnsdos" "maxdygnsdos"
* Bestallningsinfo.dosmottagareid 0..1 string "dosmottagareid" "dosmottagareid"
* Bestallningsinfo.dosmottagarenamn 0..1 string "dosmottagarenamn" "dosmottagarenamn"
* Bestallningsinfo.meddelandetillapotek 0..1 string "meddelandetillapotek" "meddelandetillapotek"
* Bestallningsinfo.onskadleveransdatum 1..1 dateTime "onskadleveransdatum" "onskadleveransdatum"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert BestallOrginalforpackningRequestFieldDescriptions
