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
* periodSlut 1..1 dateTime "periodSlut" "Datum för periodens slut. 366 dagar efter periodstart eller 367 dagar efter periodstart vid skottår."
* transaktionsLista 0..* BackboneElement "transaktionsLista" "Lista med de senaste transaktionerna för personens högkostnadskonto. Defaultvärde för antalet returnerade transaktioner är fem, men detta är valbart. Listan är tom om inga transaktioner existerar eller om personen inte är registrerad i högkostnadstrappan."
  * anvandare 1..1 string "anvandare" "Användare som registrerat transaktionen."
  * apoteksNamn 0..1 string "apoteksNamn" "Apotek som registrerat transaktionen. Visas ej vid sekretesskydd."
  * apoteksOrt 0..1 string "apoteksOrt" "Ort för apotek som registrerat transaktionen. Visas ej vid sekretesskydd."
  * expeditionsId 1..1 string "expeditionsId" "Unikt expeditionsID."
  * flags 1..1 string "flags" "Ett flaggfält som anger vilken information som uppdaterats i transaktionen. Detta fält används enbart internt."
  * inBrutto 1..1 string "inBrutto" "Ingående brutto före transaktionen (xs:long i schemat.)"
  * inEgenavgift 1..1 string "inEgenavgift" "Ingående högkostnadssaldo vid transaktionen (xs:long i schemat.)"
  * kommentar 0..1 string "kommentar" "Eventuell kommentar från korrigeringstransaktion"
  * orgAktorId 0..1 string "orgAktorId" "GLN-kod för apotek som registrerat transaktionen. Visas ej vid sekretesskydd."
  * persNr 1..1 string "persNr" "Personnummer för den som transaktionen gäller."
  * sign 1..1 string "sign" "Typ av trans: +,-,ABC, ... Detta fält används enbart internt."
  * transId 1..1 string "transId" "Aktörens expeditions-ID / verifikationsnr."
  * transPeriod 1..1 BackboneElement "transPeriod" "Transaktionens högkostnadsuppgifter."
    * balans 1..1 BackboneElement "balans" "Ackumulerad balans"
      * brutto 1..1 decimal "brutto" "Bruttobelopp i kronor och ören"
      * netto 1..1 decimal "netto" "Nettobelopp i kronor och ören"
    * start 0..1 dateTime "start" "Periodens startdatum."
  * transTid 1..1 dateTime "transTid" "Transaktionstidpunkt."
  * transaktionBehandlades 1..1 dateTime "transaktionBehandlades" "Tidpunkt då transaktionen behandlades av HKDB"
