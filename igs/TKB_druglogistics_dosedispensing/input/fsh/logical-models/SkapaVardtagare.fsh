// Elementen genereras ur SkapaVardtagareResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SkapaVardtagare v1.0
// Genererad: 2026-09-26

Logical: SkapaVardtagare
Id: skapavardtagare
Title: "SkapaVardtagare — Response"
Description: """
  Logisk modell för svaret i SkapaVardtagare
  (urn:riv:druglogistics:dosedispensing:SkapaVardtagareResponder:1, SkapaVardtagareResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* resultatkod 1..1 code "resultatkod" "resultatkod Tillåtna värden: 1, 2, 3."
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Patientinformation 0..1 Base "PatientinfoResponse" "Patientinformation"
* Patientinformation.fornamn 1..1 string "Anvandarens fornamn." "Anvandarens fornamn."
* Patientinformation.mellannamn 0..1 string "Anvandarens mellanamn." "Anvandarens mellanamn."
* Patientinformation.efternamn 1..1 string "Anvandarens efternamn." "Anvandarens efternamn."
* Patientinformation.identitetstyp 1..1 code "identitetstyp" "identitetstyp Tillåtna värden: P, R, S."
* Patientinformation.identitetstyp from IdentitetstypVS (required)
* Patientinformation.personid 1..1 string "Anvandarens personid" "Anvandarens personid"
* Patientinformation.lanskod 0..1 string "Anvandarens folkbokforda lanskod" "Anvandarens folkbokforda lanskod"
* Patientinformation.kommunkod 0..1 string "Anvandarens folkbokforda kommunkod" "Anvandarens folkbokforda kommunkod"
* Produktionsinformation 0..1 Base "ProduktionsinfoResponse" "Produktionsinformation"
* Produktionsinformation.dosaktor 0..1 string "dosaktor" "dosaktor"
* Produktionsinformation.dosapotek 1..1 string "dosapotek" "dosapotek"
* Produktionsinformation.dosapotekid 1..1 string "dosapotekid" "dosapotekid"
* Produktionsinformation.stopptidbestallning 0..1 dateTime "stopptidbestallning" "stopptidbestallning"
* Produktionsinformation.stopptidordination 0..1 dateTime "stopptidordination" "stopptidordination"
* Produktionsinformation.forstadosdag 1..1 dateTime "forstadosdag" "forstadosdag"
* Produktionsinformation.dosvecka 0..1 string "dosvecka" "dosvecka"
* Produktionsinformation.doseringsschema 1..1 Base "DoseringsschemaResponse" "doseringsschema"
* Produktionsinformation.doseringsschema.periodlangd 1..1 integer "periodlangd" "Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag."
* Produktionsinformation.doseringsschema.intagstillfalle 1..* Base "IntagstillfalleResponse" "Beskriver tid och mangd for intag av lakemedel."
* Produktionsinformation.doseringsschema.intagstillfalle.intagstillfalle 1..1 integer "Klockslag nar patienten ska inta medicinering." "Klockslag nar patienten ska inta medicinering."
* Produktionsinformation.doseringsschema.intagstillfalle.intagsmangd 0..1 decimal "Intagsmangd per tillfalle" "Intagsmangd per tillfalle"
* Produktionsinformation.doseringsschema.intagstillfalle.dagIPeriod 1..1 integer "dagIPeriod" "Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3."
* Produktionsinformation.dosmottagareid 0..1 string "dosmottagareid" "dosmottagareid"
* Produktionsinformation.dosmottagarenamn 0..1 string "dosmottagarenamn" "dosmottagarenamn"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SkapaVardtagareFieldDescriptions
