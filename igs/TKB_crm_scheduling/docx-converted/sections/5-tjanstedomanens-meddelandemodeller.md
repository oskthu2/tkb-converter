## Tjänstedomänens meddelandemodeller
Tjänstekontrakten i denna domän är process-stödjande, för att stödja en invånares ny-, om- och avbokning av ett vårdbesök. Tjänstekontrakten är således tänkta att kunna kombineras beroende på flöde. Respektive tjänstekontrakts meddelandemodell beskrivs var för sig längre ner i dokumentet.

### V-MIM
tjänstekontraktens struktur, datatyp, kardinalitet och de benämningar som används. För en mer verksamhetsnära modell, se domänens  [R3].

### Formatregler

#### Format för datum
Några av tjänsterna inom tidbokning handlar om att söka efter information baserat på datum.
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tidpunkter
Flera av tjänsterna inom tidbokning handlar om att utbyta information om tidpunkter. Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för HSA-id
HSA-id är ett objekts unika identifierare i HSA katalogen. Inom tidbokning används HSA-id både för att identifiera vårdenheter och individer. HSA-id ska alltid anges komplett d.v.s. med id för organisation och id för objekt.
Kortfattad beskrivning av HSA-id strukturen:
SE<identifierare för utfärdande organisation>-<identifierare för objektet>
Exempel: SE2321000016-1hz5
Anslutande parter ska kunna hantera HSA-id skiftlägesokänsligt i såväl konsument som producent.
Exempel:
SE2321000016-1hz5 och SE2321000016-1HZ5 ska tolkas som samma HSA-id.

