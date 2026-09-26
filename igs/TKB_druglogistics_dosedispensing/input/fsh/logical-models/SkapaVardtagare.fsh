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
* resultatkod 1..1 code "resultatkod" "resultatkod"
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* Patientinformation 0..1 BackboneElement "Patientinformation" "Patientinformation"
  * fornamn 1..1 string "fornamn" "Anvandarens fornamn."
  * mellannamn 0..1 string "mellannamn" "Anvandarens mellanamn."
  * efternamn 1..1 string "efternamn" "Anvandarens efternamn."
  * identitetstyp 1..1 code "identitetstyp" "identitetstyp"
  * identitetstyp from IdentitetstypVS (required)
  * personid 1..1 string "personid" "Anvandarens personid"
  * lanskod 0..1 string "lanskod" "Anvandarens folkbokforda lanskod"
  * kommunkod 0..1 string "kommunkod" "Anvandarens folkbokforda kommunkod"
* Produktionsinformation 0..1 BackboneElement "Produktionsinformation" "Produktionsinformation"
  * dosaktor 0..1 string "dosaktor" "dosaktor"
  * dosapotek 1..1 string "dosapotek" "dosapotek"
  * dosapotekid 1..1 string "dosapotekid" "dosapotekid"
  * stopptidbestallning 0..1 dateTime "stopptidbestallning" "stopptidbestallning"
  * stopptidordination 0..1 dateTime "stopptidordination" "stopptidordination"
  * forstadosdag 1..1 dateTime "forstadosdag" "forstadosdag"
  * dosvecka 0..1 string "dosvecka" "dosvecka"
  * doseringsschema 1..1 BackboneElement "doseringsschema" "doseringsschema"
    * periodlangd 1..1 integer "periodlangd" "Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag."
    * intagstillfalle 1..* BackboneElement "intagstillfalle" "Beskriver tid och mangd for intag av lakemedel."
      * intagstillfalle 1..1 integer "intagstillfalle" "Klockslag nar patienten ska inta medicinering."
      * intagsmangd 0..1 decimal "intagsmangd" "Intagsmangd per tillfalle"
      * dagIPeriod 1..1 integer "dagIPeriod" "Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3."
  * dosmottagareid 0..1 string "dosmottagareid" "dosmottagareid"
  * dosmottagarenamn 0..1 string "dosmottagarenamn" "dosmottagarenamn"
