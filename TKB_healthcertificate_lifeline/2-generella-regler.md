# 2 Generella regler - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* **2 Generella regler**

## 2 Generella regler

# 2 Generella regler

Källa: **Tjänstekontraktsbeskrivning Elektronisk Födelseanmälan**, utgåva PA1 (2012-04-13), [Tjanstekontrakt_Healthcertificate_Lifeline_Beskrivning.doc](Tjanstekontrakt_Healthcertificate_Lifeline_Beskrivning.doc).

### 2.1 Format på Personnummer

Personnummer vid fråga anges på formatet ÅÅÅÅMMDDNNNN

### 2.2 Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.

Användaren kommer enbart att se ”tekniskt fel - inte detaljinformation. Den riktar sig till systemförvaltaren.

Vid ett logiskt fel i de uppdaterande tjänsterna levereras en ResultCode och comment. Syftet med comment är att tjänstekonsumenten av tjänsten ska kunna visa upp informationen för invånaren.

ResultCode kan vara:

* OK transaktionen har utförts enligt uppdraget.
* INFO transaktionen har utförts enligt uppdraget, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren.
* ERROR transaktionen har INTE kunnat utföras p.g.a. logiskt fel. Det finns ett meddelande som konsumenten måste visa upp.

