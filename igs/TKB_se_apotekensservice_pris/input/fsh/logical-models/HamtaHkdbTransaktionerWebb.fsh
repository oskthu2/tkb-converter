// Elementen genereras ur HamtaHkdbTransaktionerWebbResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaHkdbTransaktionerWebb v1.0
// Genererad: 2026-09-26

Logical: HamtaHkdbTransaktionerWebb
Id: hamtahkdbtransaktionerwebb
Title: "HamtaHkdbTransaktionerWebb — Response"
Description: """
  Logisk modell för svaret i HamtaHkdbTransaktionerWebb
  (urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerWebbResponder:1, HamtaHkdbTransaktionerWebbResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* periodSlut 1..1 dateTime "Datum för periodens slut. 366 dagar efter periodstart eller 367 dagar efter periodstart vid skottår." "Datum för periodens slut. 366 dagar efter periodstart eller 367 dagar efter periodstart vid skottår."
* transaktionsLista 0..* Base "TransaktionResponse" "Lista med de senaste transaktionerna för personens högkostnadskonto. Defaultvärde för antalet returnerade transaktioner är fem, men detta är valbart. Listan är tom om inga transaktioner existerar eller om personen inte är registrerad i högkostnadstrappan."
* transaktionsLista.anvandare 1..1 string "Användare som registrerat transaktionen." "Användare som registrerat transaktionen."
* transaktionsLista.apoteksNamn 0..1 string "Apotek som registrerat transaktionen. Visas ej vid sekretesskydd." "Apotek som registrerat transaktionen. Visas ej vid sekretesskydd."
* transaktionsLista.apoteksOrt 0..1 string "Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd." "Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd."
* transaktionsLista.expeditionsId 1..1 string "Unikt expeditionsID." "Unikt expeditionsID."
* transaktionsLista.flags 1..1 string "Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt." "Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt."
* transaktionsLista.inBrutto 1..1 string "Ingående brutto före transaktionen" "Ingående brutto före transaktionen"
* transaktionsLista.inEgenavgift 1..1 string "Ingående högkostnadssaldo vid transaktionen" "Ingående högkostnadssaldo vid transaktionen"
* transaktionsLista.kommentar 0..1 string "Eventuell kommentar från korrigeringstransaktion" "Eventuell kommentar från korrigeringstransaktion"
* transaktionsLista.orgAktorId 0..1 string "GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd." "GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd."
* transaktionsLista.persNr 1..1 string "Personnummer för den som transaktionen gäller." "Personnummer för den som transaktionen gäller."
* transaktionsLista.sign 1..1 string "Typ av trans: +,-,ABC, ... Detta fält används enbart internt." "Typ av trans: +,-,ABC, ... Detta fält används enbart internt."
* transaktionsLista.transId 1..1 string "Aktörens expeditions-ID / verifikationsnr." "Aktörens expeditions-ID / verifikationsnr."
* transaktionsLista.transPeriod 1..1 Base "PeriodResponse" "Transaktionens högkostnadsuppgifter."
* transaktionsLista.transPeriod.balans 1..1 Base "BalansResponse" "Ackumulerad balans"
* transaktionsLista.transPeriod.balans.brutto 1..1 decimal "Bruttobelopp i kronor och ören" "Bruttobelopp i kronor och ören"
* transaktionsLista.transPeriod.balans.netto 1..1 decimal "Nettobelopp i kronor och ören" "Nettobelopp i kronor och ören"
* transaktionsLista.transPeriod.start 0..1 dateTime "Periodens startdatum." "Periodens startdatum."
* transaktionsLista.transTid 1..1 dateTime "Transaktionstidpunkt." "Transaktionstidpunkt."
* transaktionsLista.transaktionBehandlades 1..1 dateTime "Tidpunkt då transaktionen behandlades av HKDB" "Tidpunkt då transaktionen behandlades av HKDB"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaHkdbTransaktionerWebbFieldDescriptions
