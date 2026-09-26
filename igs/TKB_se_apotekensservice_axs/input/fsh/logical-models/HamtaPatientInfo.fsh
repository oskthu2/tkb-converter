// Genererad från XSD för se.apotekensservice:axs v7.0 (ingen TKB finns i källan)
// Kontrakt: HamtaPatientInfo v6.0
// Genererad: 2026-09-26

Invariant: hamtapatientinfo-apotek-oregistrerat
Description: "Om apoteket inte finns registrerat i EXPO (registrerad = false) saknar alla fält utom glnKod värden"
Expression: "registrerad = false implies (aktorsnamn.empty() and aktorsorgnr.empty() and allmantelefon.empty() and besoksadress.empty() and fax.empty() and huvudtypkod.empty() and namn.empty() and ort.empty() and slutdatum.empty() and startdatum.empty())"
Severity: #warning

Logical: HamtaPatientInfo
Id: hamtapatientinfo
Title: "HamtaPatientInfo — Response"
Description: """
  Logisk modell för svaret i HamtaPatientInfo
  (urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoResponseType).
  Svaret samlar information om patienten från eHälsomyndighetens system: eventuellt dosapotek (EXPO),
  dosproducent, dosunderlagets status, om det finns aktuella recept i RDH, samt folkbokförings- och samtyckesinformation (FOLK).
"""
Characteristics: #can-be-target
* apotek 0..1 BackboneElement "Dosapotek" "Ev. DOS-apotek som kunden är kopplad till. Om anrop mot underliggande system (FOLK, OR eller EXPO) misslyckas så lämnas fältet tomt. (se.apotekensservice:axs:4 ApoteksinformationResponse)"
  * obeys hamtapatientinfo-apotek-oregistrerat
  * aktorsnamn 0..1 string "Aktörsnamn" "Aktörsnamn."
  * aktorsorgnr 0..1 string "Aktörens organisationsnummer" "Aktörens organisationsnummer. xs:long i schemat."
  * allmantelefon 0..1 string "Allmäntelefon" "Allmäntelefon."
  * besoksadress 0..1 string "Besöksadress" "Expeditionsställets besöksadress."
  * eReceptDjur 1..1 boolean "E-recept för djur" "Anger om apoteket expedierar e-recept för djur."
  * fax 0..1 string "Fax" "Fax."
  * glnKod 1..1 string "GLN-kod" "Apotekets GLN-kod."
  * huvudtypkod 0..1 string "Huvudtypkod" "Kod som beskriver huvudverksamheten för expeditionsstället."
  * namn 0..1 string "Apotekets namn" "Apotekets namn."
  * ort 0..1 string "Ort" "Expeditionsställets besöksort."
  * registrerad 1..1 boolean "Registrerad i EXPO" "Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden."
  * slutdatum 0..1 dateTime "Slutdatum" "Datum för stängning av verksamhet."
  * startdatum 0..1 dateTime "Startdatum" "Datum för start av verksamhet."
* dosproducent 0..1 string "Dosproducent" "GLN-kod för eventuell dosproducent."
* dosunderlagStatus 0..1 code "Dosunderlagets status" "Status om underlaget är godkänt, registrerat eller avregistrerat: 500 = Ej godkänt, 510 = Godkänt, 520 = Avregistrerat. xs:int i schemat."
* dosunderlagStatus from DosunderlagStatusVS (required)
* finnsOrdination 0..1 boolean "Finns ordination" "Markering som anger om det finns aktuella recept för patienten i RDH."
* patientInformation 0..1 BackboneElement "Patientinformation" "Patientinformation från FOLK. (se.apotekensservice:axs:5 PatientInformationResponse)"
  * lkKod 0..1 string "Län- och kommunkod" "Län och kommun där personen är folkbokförd, formatet LLKK (LL = län, 2 tecken; KK = kommun, 2 tecken)."
  * omradeskod 0..1 string "Områdeskod" "Det område där personen är folkbokförd."
  * redNamn 0..1 string "Redigerat namn" "Redigerat namn."
  * samtycke 1..1 BackboneElement "Samtycke" "Patientens registrerade samtycken (SamtyckeResponse). För varje flagga: true = samtycke lämnat, false = samtycke nekat, saknas = kunden har inte tillfrågats eller tagit ställning."
    * dosSamtycke 0..1 boolean "Dos-samtycke" "Om kunden samtycker till att spara recept på sitt personnummer för dosapotek."
    * dosSamtyckeDatum 0..1 dateTime "Datum dos-samtycke" "Datum för senaste ändring av dos-samtycke."
    * ees 0..1 boolean "EES-samtycke" "Om kunden samtyckt till att vara med i EES."
    * eesSamtyckeDatum 0..1 dateTime "Datum EES-samtycke" "Datum för senaste ändring av EES-samtycke."
    * hkdb 0..1 boolean "HKDB-samtycke" "Om kunden samtyckt till att vara med i HKDB. Samtycket uppdateras genom att skapa eller ta bort konto i HKDB."
    * hkdbSamtyckeDatum 0..1 dateTime "Datum HKDB-samtycke" "Datum för senaste ändring av HKDB-samtycke."
    * rr 0..1 boolean "RR-samtycke" "Om kunden samtyckt till att spara sina recept i RR."
    * rrSamtyckeDatum 0..1 dateTime "Datum RR-samtycke" "Datum för senaste ändring av RR-samtycke."
    * rrd 0..1 boolean "RRD-samtycke" "Om kunden samtycker till att spara djurrecept på sitt personnummer i RR för djur."
    * rrdSamtyckeDatum 0..1 dateTime "Datum RRD-samtycke" "Datum för senaste ändring av RRD-samtycke."
  * statusKod 0..1 code "Statuskod" "Status på personen i FOLK, mappad från träffkoder i FOLK. Vissa statuskoder innebär att det inte finns någon personinformation i svaret."
  * statusKod from FolkStatusKodVS (required)
