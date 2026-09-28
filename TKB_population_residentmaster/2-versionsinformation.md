# 2 Versionsinformation - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* **2 Versionsinformation**

## 2 Versionsinformation

# 2 Versionsinformation

**Not: källdokumentet saknar ett separat, fristående versionsinformations-kapitel i den fasta 7-avsnittsmallens mening — versionshistorik anges istället som en titelsidetabell samt i "1.2 Förändrade tjänstekontrakt" (se avsnitt 1). Innehållet återges här samlat.**

## Revisionshistorik (titelsida)

| | |
| :--- | :--- |
| PA1 | Tidig arbetsversion |
| 1.0 | Första fastställda version |
| 1.1 | Namnrymdsutökning av`ResidentType`(`urn:riv:population:residentmaster:1.1`) — tillägg av bl.a.`Relationer`,`Utlandsadress`,`Civilstand`,`Fodelse`,`Invandring`,`HanvisningsPersonNr`,`SCB_Nyckelkod` |
| 1.2 | Ytterligare namnrymdsutökning (`urn:riv:population:residentmaster:1.2`) — tillägg av`Distriktskod`enligt Skatteverkets förändringar avseende församling/distriktskod |

## Kompatibilitet mellan versioner

Se tabellen i avsnitt 1.2 ("Förändrade tjänstekontrakt"). Sammanfattningsvis: en konsument byggd mot 1.0 är kompatibel med en producent på 1.1, men inte tvärtom (en 1.1-konsument som förväntar sig utökade fält är inte kompatibel med en 1.0-producent). 1.1- och 1.2-konsumenter/producenter är ömsesidigt kompatibla i båda riktningar, eftersom 1.2 endast lade till ett valfritt fält (`Distriktskod`).

// SAKNAS I KÄLLDOKUMENT — en fullständig, fristående versionstabell per tjänstekontrakt (i den form andra TKB:er i denna migrering normalt har den) saknas; ovanstående är en sammanställning av vad som framgår i titelsidan och avsnitt 1.2.

