# 4 Tjänstedomänens krav och regler - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

# 4 Tjänstedomänens krav och regler

**Not: motsvarar källdokumentets kapitel "Generella regler".**

## 4.1 Format på personnummer

Personnummer vid fråga anges på formatet `ÅÅÅÅMMDDNNNN`.

## 4.2 Format för datum

Datum anges alltid på formatet `ÅÅÅÅMMDD`, vilket motsvarar den ISO 8601- och ISO 8824-kompatibla formatbeskrivningen `YYYYMMDD`.

Vissa datumfält i `ResidentType` (t.ex. `Avregistreringsdatum`, `RelationFromdatum`/`RelationTomdatum`, `Utlandsadressdatum`, `Rostrattsdatum`, `Civilstandsdatum`) tillåter enligt XML-schemat **ofullständiga datum** (4–8 tecken, t.ex. enbart år eller år+månad). Dessa kan därför inte modelleras som en strikt FHIR `date`, utan representeras som `string` i den logiska modellen. Se ASSUME-PRM-002.

## 4.3 Format för tidpunkter

Tidpunkter anges alltid på formatet `ÅÅÅÅMMDDttmmss`, vilket motsvarar den ISO 8601- och ISO 8824-kompatibla formatbeskrivningen `YYYYMMDDhhmmss`.

## 4.4 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska anges i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Tjänstekonsumenter och tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk sommartid).

## 4.5 Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten och är inte riktad till slutanvändaren — användaren ser enbart "tekniskt fel", utan detaljinformation. Detaljinformationen riktar sig till systemförvaltaren.

Vid ett logiskt fel i de uppdaterande tjänsterna (relevant för domänens historiska, numera utgångna, `UpdateResident`-kontrakt) levereras en `ResultCode` och `comment`. Syftet med `comment` är att tjänstekonsumenten ska kunna visa upp informationen för invånaren. `ResultCode` kan vara:

| | |
| :--- | :--- |
| `OK` | Transaktionen har utförts enligt uppdraget. |
| `INFO` | Transaktionen har utförts enligt uppdraget, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren. |
| `ERROR` | Transaktionen har INTE kunnat utföras p.g.a. logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. |

**Not: det aktiva kontraktet i denna domän, `LookupResidentForFullProfile`, är en ren fråga-svar-tjänst utan uppdaterande semantik och använder därför inte `ResultCode`/`comment` — detta gäller endast det utgångna `UpdateResident`-kontraktet. Se avsnitt 7.**

## 4.6 Robusthet och prestanda (SLA-krav)

Rekommenderade SLA-krav för `LookupResidentFor<Profile>`-kontrakt. Faktiska värden enligt tjänstebeskrivning för respektive tjänsteproducent.

| | |
| :--- | :--- |
| Svarstid | < 20 ms per post som ingår i svaret + en grundsvarstid på max 100 ms. Svarstiden ska skala utgående från beställarens lastkrav. |
| Tillgänglighet | 24x7, 99,9 % |
| Last | Svarstiden ska skala utgående från beställarens lastkrav. |
| Aktualitet | Veckovis aviseringar från Skatteverket (Navet eller SPAR). |
| Robusthet | Ett anrop är atomärt i betydelsen att en begäran ska fullföljas i sin helhet eller inte alls. Partiella svar kan inte lämnas. |
| Begränsning | Av praktiska skäl finns en begränsning på 1000`personId`per anrop. För att slå upp fler än 1000 poster får tjänstekonsumenten göra upprepade anrop. |

