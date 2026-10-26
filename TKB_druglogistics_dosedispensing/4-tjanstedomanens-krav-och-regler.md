# 4 Tjänstedomänens krav och regler - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

## Tjänstedomänens krav och regler

**SAKNAS I KÄLLDOKUMENT.** Det finns ingen TKB. Avsnittet återger den del av dokumentet [Pascal – Objekt och felhantering](Objekt_och_felhantering.pdf) (version 1.5, 2012-03-21) som gäller för alla tjänstekontrakt i domänen (mekanisk konvertering från PDF; vid tveksamhet gäller PDF:en). Objekten och uppräkningarna i samma dokument finns i [avsnitt 6](6-gemensamma-informationskomponenter.md).

### Dokumenthistorik

| | | | |
| :--- | :--- | :--- | :--- |
| 1.4 | 2011-11-29 | Jan Rozenbeek | Tidigare godkänd version |
| 1.5 | 2012-03-21 | Ronny Nordgren | Ändrat fältlängd på HSAId från 20 till 64 i Objekt-Behörighetsinformation samt Infört dokumenthistorik |

### Objekt och felhantering

Denna specifikation beskriver generella objekt och definitioner samt felhantering i gränssnittet mellan vårdsystem och dosapotek .

### Felhantering

Varje anrop innehåller behörighetsinformation, vilken endast behöver logggas på mottagande sida. Ingen validering behöver göras på informationen endast loggning. Detta för spåra och felsöka. Som resultat av varje anrop returneras en generell kod som indikerar om anropet lyckats eller misslyckats, alternativ innehåller varningar. Utöver detta returneras ett meddelandeidentitet och tillhörande meddelandetext. Meddelandetexterna är inte avsett för att visas för användare.

| | | | |
| :--- | :--- | :--- | :--- |
| Resultatkod | Resultat av anrop (1=Information, 2=varning eller 3=fel) | Enum | 1..1 |
| Meddelandetext | Information | 80 | 1..1 |
| Meddelandeid | Identitet kopplad till meddelandetext | integer | 1..1 |

Om flera resultatrader returneras som t.ex. vid avbeställ originalförpackning, innehåller dessa rader information om avbeställningen lyckats eller misslyckats samt beställningsstatus (avbeställd, expedierad).

### Utökningar

Begärande- och svarstyperna har utökningspunkter (`xs:any`). Utökningspunkterna är inte med i de logiska modellerna.

### SOAP-fel

WSDL-filerna definierar inga SOAP-fel (wsdl:fault). Resultatet av ett anrop anges i stället med fälten `resultatkod`, `meddelandetext` och `meddelandeid` i svaret, enligt ovan.

