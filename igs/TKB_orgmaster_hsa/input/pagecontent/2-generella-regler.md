# 2 Generella regler

Källa: *Tjänstekontrakt Organisationsinformation (orgmaster:hsa)*, RevB (2012-11-27), [Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx](Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx).

### 2.1 Format för datum

Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

### 2.2 Format för tidpunkter

Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDttmmss”.

### 2.3 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### 2.4 Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode, resultText.
Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa upp informationen för användaren.
resultCode kan vara:
OK 
Transaktionen har utförts enligt uppdraget i frågemeddelandet.
INFO
Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart).
ERROR
Transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel.
