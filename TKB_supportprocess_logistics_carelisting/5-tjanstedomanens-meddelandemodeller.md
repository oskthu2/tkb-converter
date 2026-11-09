# 5 Tjänstedomänens meddelandemodeller - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* **5 Tjänstedomänens meddelandemodeller**

## 5 Tjänstedomänens meddelandemodeller

# 5 Tjänstedomänens meddelandemodeller

Källa: **Tjänstekontraktsbeskrivning, Listning**, version 2.1 (2025-06-13), [TKB_supportprocess_logistics_carelisting.docx](TKB_supportprocess_logistics_carelisting.docx).

Tjänstedomänens meddelandemodeller som tjänstekontrakten bygger på finns beskrivna under respektive tjänstekontrakts detaljerade beskrivning (se kapitel 6). För beskrivning av begreppsmodell och informationsmodell se [R3].

Mappning av informationsklass gentemot schema

| | |
| :--- | :--- |
| Listningsbar mottagning | HealthcareFacilityType |
| Invånares listning på listningsbar mottagning | ListingHealthcareFacilityType |
| Läkarkontakt på listningsbar mottagning | HealthcarePersonnelType |

### 5.1 Formatregler

#### 5.1.1 Format för datum

Datum anges alltid på formatet ”ÅÅÅÅ’-’MM’-’DD”, vilket motsvarar W3C rekommendationen (datatypen xs:date). Se https://www.w3.org/TR/xmlschema-2 för mer detaljerad beskrivning.

#### 5.1.2 Format för tidpunkter

Tidpunkter anges alltid på formatet ”ÅÅÅÅ’-’MM’-’DD’T’tt’:’mm’:’ss ”, vilket motsvarar W3C rekommendationen (datatypen xs:dateTime). Se https://www.w3.org/TR/xmlschema-2 för mer detaljerad beskrivning.

#### 5.1.3 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### 5.1.4 Format på personidentitet

Endast svenskt personnummer på formatet ÅÅÅÅMMDDNNNN är tillåtet.

