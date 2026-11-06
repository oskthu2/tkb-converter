# 5 Tjänstedomänens meddelandemodeller - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* **5 Tjänstedomänens meddelandemodeller**

## 5 Tjänstedomänens meddelandemodeller

# 5 Tjänstedomänens meddelandemodeller

Källa: **Samtycke**, tjänstekontraktsbeskrivning version 2.0.4 (tagg 2.0.4, 2025-12-09), [TKB_informationsecurity_authorization_consent.docx](TKB_informationsecurity_authorization_consent.docx).

Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot Nationell Informationsstruktur 2016:1 samt mot schema (XSD) för tjänstekontrakt.

### 5.1 Information hanterad i tjänsterna

Tjänsterna inom domänen hanterar intyg gällande viss patient/brukare för direktåtkomst till patientens/brukarens information från andra vård-/omsorgsgivare enligt Lagen om sammanhållen vård- och omsorgsdokumentation.

Intyget avser primärt patientens/brukarens aktiva medgivande - patientens/brukarens samtycke - vilket ges till enskild vård- och omsorgspersonal på en enhet, alternativt till all personal som har uppdrag för enheten.

I en nödsituation där patienten/brukaren av någon anledning inte kan ge ett aktivt samtycke, men vård- och omsorgspersonal bedömer att behov av uppgifterna finns för nödvändig vård av patienten/brukaren, kan istället registreras intyg om nödsituation.

Intyget har en giltighetstid och det finns även tjänster för att avsluta respektive makulera (vid felregistrering) intygen.

Det går även att registrera patientens/brukarens företrädare som en informativ uppgift i intyget.

Nedan används termen "samtyckesintyg" vilket ska ses i det bredare perspektivet enligt ovan.

Tjänstekontrakten hanterar

dels grundläggande samtyckesinformation.

Denna information är nödvändig för samverkan mellan system och nyttjas för samtyckeskontroll.

dels utökad samtyckesinformation (extended).

Utökningarna är kringinformation som tex när och vem som registrerade samtycket. Denna är inte nödvändig för samtyckeskontrollen, men kan användas när samtyckesinformation hanteras och visas upp.

### 5.2 Formatregler

#### 5.2.1 Format för Datum

Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

#### 5.2.2 Format för tidpunkter

Flera av tjänsterna handlar om att utbyta information om tidpunkter.

Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss”. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

#### 5.2.3 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### 5.3 Termer och begrepp

| | |
| :--- | :--- |
| Giltigt samtyckesintyg | Med ett giltigt samtyckesintyg avses ett samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents) |
| Ogiltigt samtyckesintyg | Med ett ogiltigt samtyckesintyg avses ett samtyckesintyg som är makulerat eller utgånget. |
| Makulerat samtyckesintyg | Med ett makulerat samtyckesintyg avses ett samtyckesintyg som har blivit återkallat p g a felaktig registrering. |
| Avslutat samtyckesintyg | Med ett avslutat samtyckesintyg avses ett samtyckesintyg som på patientens/brukarens begäran har blivit avslutat. |
| Utgånget samtyckesintyg | Med ett utgånget samtyckesintyg avses ett samtyckesintyg där giltigt t o m har passerats. |

