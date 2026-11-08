// Elementen genereras ur HamtaPatientInfoResponder_6.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice:axs v7.0 (ingen TKB finns i källan)
// Kontrakt: HamtaPatientInfo v6.0
// Genererad: 2026-09-26

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

* ^version = "6.0"
* apotek 0..1 Base "ApoteksinformationResponse" "Ev. DOS-apotek som kunden är kopplad till. Om anrop mot underliggande system (FOLK, OR eller EXPO) misslyckas så lämnas fältet tomt."
* apotek.aktorsnamn 0..1 string "Aktörsnamn" "Aktörsnamn"
* apotek.aktorsorgnr 0..1 string "Aktörens organisationsnummer." "Aktörens organisationsnummer."
* apotek.allmantelefon 0..1 string "allmäntelefon" "allmäntelefon"
* apotek.besoksadress 0..1 string "Expeditionsställets besöksadress" "Expeditionsställets besöksadress"
* apotek.eReceptDjur 1..1 boolean "Anger om apoteket finns expedierar erecept för djur" "Anger om apoteket finns expedierar erecept för djur"
* apotek.fax 0..1 string "fax" "fax"
* apotek.glnKod 1..1 string "GLN-kod" "GLN-kod"
* apotek.huvudtypkod 0..1 string "Kod som beskriver huvudverksamheten för expeditionsstället" "Kod som beskriver huvudverksamheten för expeditionsstället"
* apotek.namn 0..1 string "Apotekets Namn" "Apotekets Namn"
* apotek.ort 0..1 string "Expeditionsställets besöksort" "Expeditionsställets besöksort"
* apotek.registrerad 1..1 boolean "Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden." "Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden."
* apotek.slutdatum 0..1 dateTime "Datum för stängning av verksamhet" "Datum för stängning av verksamhet"
* apotek.startdatum 0..1 dateTime "Datum för start av verksamhet" "Datum för start av verksamhet"
* dosproducent 0..1 string "GLN-kod för eventuell dosproducent." "GLN-kod för eventuell dosproducent."
* dosunderlagStatus 0..1 integer "Status om underlaget är godkänt, registrerat eller avregistrerat. 500 = Ej godkänt. 510 = Godkänt. 520 = Avregistrerat." "Status om underlaget är godkänt, registrerat eller avregistrerat. 500 = Ej godkänt. 510 = Godkänt. 520 = Avregistrerat."
* finnsOrdination 0..1 boolean "Markering som anger om det finns aktuella recept för patienten i RDH." "Markering som anger om det finns aktuella recept för patienten i RDH."
* patientInformation 0..1 Base "PatientInformationResponse" "Patientinformation från FOLK."
* patientInformation.lkKod 0..1 string "Län och kommun där personen är folkbokförd. Har formatet LLKK LL - Län, 2 tecken KK - Kommun, 2 tecken" "Län och kommun där personen är folkbokförd. Har formatet LLKK LL - Län, 2 tecken KK - Kommun, 2 tecken"
* patientInformation.omradeskod 0..1 string "Det område där personen är folkbokförd" "Det område där personen är folkbokförd"
* patientInformation.redNamn 0..1 string "Redigerat namn" "Redigerat namn"
* patientInformation.samtycke 1..1 Base "SamtyckeResponse" "samtycke"
* patientInformation.samtycke.dosSamtycke 0..1 boolean "dosSamtycke" "false - Kunden (privatpersonen) samtycker inte till att spara recept på sitt personnummer för dosapotek. true - Kunden (privatpersonen) samtycker till att spara recept på sitt personnummer för dosapotek. Null - kunden (privatpersonen) har inte tillfrågats/tagit ställning. Detta är enbart vid utdata."
* patientInformation.samtycke.dosSamtyckeDatum 0..1 dateTime "Datum för senaste ändring av dos-samtycke" "Datum för senaste ändring av dos-samtycke"
* patientInformation.samtycke.ees 0..1 boolean "ees" "Flagga för registrerat eessamtycke. False - Om kunden sagt nej till att vara med i EES. True - Kunden har samtyckt till att vara med i EES. Null - kunden har inte tillfrågats/tagit ställning."
* patientInformation.samtycke.eesSamtyckeDatum 0..1 dateTime "Datum för senaste ändring av EES-samtycke" "Datum för senaste ändring av EES-samtycke"
* patientInformation.samtycke.hkdb 0..1 boolean "hkdb" "Flagga för registrerat samtycke. I indata är det endast möjligt att ange false och endast om inget värde finns registrerat. Samtycke uppdateras genom att skapa eller ta bort konto i HKDB. False - Om kunden sagt nej till att vara med i HKDB. True - Kunden har samtyckt till att vara med i HKDB. Null - kunden har inte tillfrågats/tagit ställning."
* patientInformation.samtycke.hkdbSamtyckeDatum 0..1 dateTime "Datum för senaste ändring av HKDB-samtycke" "Datum för senaste ändring av HKDB-samtycke"
* patientInformation.samtycke.rr 0..1 boolean "rr" "false - Om kunden inte lämnat samtycke till att spara sina recept i RR. true - Kunden har samtyckt till att vara med i RR. Null - kunden har inte tillfrågats/tagit ställning. Detta är enbart vid utdata."
* patientInformation.samtycke.rrSamtyckeDatum 0..1 dateTime "Datum för senaste ändring av RR-samtycke" "Datum för senaste ändring av RR-samtycke"
* patientInformation.samtycke.rrd 0..1 boolean "rrd" "false - Kunden (privatpersonen) samtycker inte till att spara djurrecept på sitt personnummer i RR för djur. true - Kunden (privatpersonen) samtycker till att spara djurrecept på sitt personnummer i RR för djur. Null - kunden (privatpersonen) har inte tillfrågats/tagit ställning. Detta är enbart vid utdata."
* patientInformation.samtycke.rrdSamtyckeDatum 0..1 dateTime "Datum för senaste ändring av RRD-samtycke" "Datum för senaste ändring av RRD-samtycke"
* patientInformation.statusKod 0..1 string "statusKod" "StatusKod - status på personen i FOLK. Mappat från träffkoder i FOLK. 0=Person finns i FOLK. 1=Person finns ej i FOLK, underliggande system är ej tillgängligt. 2=Person finns ej. 3=Person sekretesskyddad. 4=Person är avliden. 5=Träffkod okänd. 6=Testperson. Vissa av dessa statuskoder innebär att det inte finns någon personinformation i svaret."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaPatientInfoFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* apotek obeys hamtapatientinfo-apotek-oregistrerat

Invariant: hamtapatientinfo-apotek-oregistrerat
Description: "Om apoteket inte finns registrerat i EXPO (registrerad = false) saknar alla fält utom glnKod värden"
Expression: "registrerad = false implies (aktorsnamn.empty() and aktorsorgnr.empty() and allmantelefon.empty() and besoksadress.empty() and fax.empty() and huvudtypkod.empty() and namn.empty() and ort.empty() and slutdatum.empty() and startdatum.empty())"
Severity: #warning
