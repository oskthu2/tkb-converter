# 5 Tjänstedomänens meddelandemodeller

Källa: *Logg – Loggning och uppföljning av åtkomst till patientjournal*, tjänstekontraktsbeskrivning version 2.0.8 (2024-10-24), [TKB_informationsecurity_auditing_log.docx](TKB_informationsecurity_auditing_log.docx).

Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot Nationell Informationsstruktur 2016:1 samt mot schema (XSD) för tjänstekontrakt.

### 5.1 Tjänsteöversikt

Nedanstående tabell visar vilka tjänster som finns definierade.

| Tjänst | Beskrivning |
| :--- | :--- |
| StoreLog | Tar emot en samling loggposter vilka sedan lagras i arkivfiler. |
| GetLogs | Tjänst som returnerar loggposter för följande sökparametrar: vårdgivare, patient, medarbetare |
| GetAccessLogsForPatient | Tjänst som returnerar lista för angiven patient, vilka vårdaktörer som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs. |
| GetInfoLogs | Tjänst som returnerar lista för angiven vårdgivare, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare utifrån angivna sökparametrar |
| GetLogsByOrder | Tjänst som tillsammans med GetFilesForOrderId möjliggör för en vårdgivare att hämta ett urval av sina loggfiler för lokal analys, se kap 3.1.5 |
| GetFilesForOrderId | Se GetLogsByOrder |

### 5.2 Formatregler

#### 5.2.1 Format för tidpunkter

Flera av tjänsterna handlar om att utbyta information om tidpunkter.

Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss.zzz”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss.zzz”. W3C-datatypen dateTime används för att realisera detta.

#### 5.2.2 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).
