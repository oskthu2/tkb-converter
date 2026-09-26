| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| ackBrutto | double | Om transaktionen avser föregående period skall alltså ackBrutto innehålla FPbrutto i kronor. Om transaktionen avser kommande period skall ackBrutto innehålla motsvarande KPbrutto. I normalfallet används alltså värdet från IPbrutto användas. ackBrutto och periodStart ersätter termerna IPbrutto från version 10.3.0. | 0..1 |
| bruttobelopp | double | Transaktionens högkostnadsgrundande bruttobelop i kronor och ören. | 1..1 |
| expeditionsId | string | Expeditionens unika id för spårbarhet. | 1..1 |
| ipBrutto | double | Ackumulerat bruttobelopp i högkostnadstrappan för innevarande period i kronor och ören. Används för att verifiera att ingen ny transaktion registrerats för personen efter att högkostnadsfrågan ställts. Skall inte används som indata från och version 10.3.0. Använd periodStart och ackBrutto i stället. | 0..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| kommentar | string | Kommentar till kreditering. | 0..1 |
| periodStart | dateTime | Startdatum för den högkostnadsperiod som transaktionen tillhör. | 0..1 |
| persNr | string | Personnummer som transaktionen ska registreras för. | 1..1 |
| transId | string | Aktörens expeditions-ID. | 1..1 |
| transTid | dateTime | Transaktionstidpunkt. | 1..1 |
| ursprungligtApoteksaktorsExpeditionsId | string | Apoteksaktörens ursprungliga expeditionsid, ska anges vid kreditering | 0..1 |
| ursprungligtExpeditionsId | string | Expeditionens ursprungliga expeditionsid, ska anges vid kreditering | 0..1 |
| ursprungligTransTid | dateTime | Ursprunglig transaktionstidpunkt. Ges vid kreditering. Avser tidpunkten när det ursprungliga köpet gjordes. Används för att avgöra om personen var över eller under 18 år vid köptillfället. Parametern blir obligatorisk i och med att lagen om kostnadsbefrielse för barn under 18 år trätt i kraft. (Refererat element ur RegistreraHkdbTransaktionResponder_1.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1.1.) | 0..1 |
| **Svar** | | | |
| fpBalans | BalansResponse | Nya ackumulerade brutto/netto belopp i kronor och ören för föregånde period. | 0..1 |
| ../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../netto | double | Nettobelopp i kronor och ören | 1..1 |
| ipBalans | BalansResponse | Nya ackumulerade brutto/netto belopp i kronor och ören för innevarande period. | 0..1 |
| ../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../netto | double | Nettobelopp i kronor och ören | 1..1 |
| kpBalans | BalansResponse | Nya ackumulerade brutto/netto belopp i kronor och ören för kommande period. | 0..1 |
| ../brutto | double | Bruttobelopp i kronor och ören | 1..1 |
| ../netto | double | Nettobelopp i kronor och ören | 1..1 |
| resultat | int | Resultat av högkostnadsuppdatering. 1 - Transaktionen accepterad och registrerad. | 1..1 |
