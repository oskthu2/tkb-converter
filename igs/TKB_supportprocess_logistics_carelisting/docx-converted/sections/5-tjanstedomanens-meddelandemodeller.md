## Tjänstedomänens meddelandemodeller
Tjänstedomänens meddelandemodeller som tjänstekontrakten bygger på finns beskrivna under respektive tjänstekontrakts detaljerade beskrivning (se kapitel 6). För beskrivning av begreppsmodell och informationsmodell se [R3].
Mappning av informationsklass gentemot schema

| Klass.attribut
(enligt Informationsmodell i [R3]) | Mappning mot Schema |
| :--- | :--- |
| Listningsbar mottagning | HealthcareFacilityType |
| Invånares listning på listningsbar mottagning | ListingHealthcareFacilityType |
| Läkarkontakt på listningsbar mottagning | HealthcarePersonnelType |

### Formatregler

#### Format för datum
Datum anges alltid på formatet ”ÅÅÅÅ’-’MM’-’DD”, vilket motsvarar W3C rekommendationen (datatypen xs:date). Se https://www.w3.org/TR/xmlschema-2 för mer detaljerad beskrivning.

#### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅ’-’MM’-’DD’T’tt’:’mm’:’ss ”, vilket motsvarar W3C rekommendationen (datatypen xs:dateTime). Se https://www.w3.org/TR/xmlschema-2 för mer detaljerad beskrivning.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format på personidentitet
Endast svenskt personnummer på formatet ÅÅÅÅMMDDNNNN är tillåtet.

