# Artifacts Summary - itintegration: engagementindex v1.0.9

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [FindContent](StructureDefinition-findcontent.md) | Logisk modell för tjänstekontraktet FindContent (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1). Representerar responsens informationsstruktur — en lista av engagemangsposter som svarar mot sökkriterierna i begäran. Primärt använt av aggregerande tjänster i tjänsteplattformen. |
| [FindContent — Request](StructureDefinition-findcontent-request.md) | Logisk modell för requestparametrar i tjänstekontraktet FindContent (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1). Alla angivna attribut används för exakt matchningsfiltrering av sökresultatet. Åtkomst till FindContent i nationell EI-instans är begränsad till aggregerande tjänster i den nationella aggregeringsplattformen. |
| [ProcessNotification](StructureDefinition-processnotification.md) | Logisk modell för tjänstekontraktet ProcessNotification (RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1). Representerar responsens informationsstruktur — ett statusbesked på att notifieringen mottagits och behandlats.OBS: ProcessNotification har en ovanlig dubbel roll i arkitekturen:* Engagemangsindex agerar PRODUCENT för att TA EMOT notifieringar från andra index.
* Engagemangsindex agerar KONSUMENT för att SKICKA notifieringar till andra index. Fr.o.m. version 1.0.9 agerar nationellt engagemangsindex ENBART som producent (tar emot notifieringar från lokala index). Nationellt EI skickar inte längre ProcessNotification till lokala index eller verksamhetssystem. Undantag: Formulärtjänsten och Tidbokning/Kallelser har tidsbegränsat undantag.
 |
| [ProcessNotification — Request](StructureDefinition-processnotification-request.md) | Logisk modell för requestparametrar i tjänstekontraktet ProcessNotification (RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).Används för konsolidering av indexinformation mellan engagemangsindexinstanser. Innehållet i begäran ska exakt spegla begäran i ursprunglig Update, med tillägg av owner, creationTime och updateTime (som INTE ingår i Update-begäran men är obligatoriska här).OBS: Ovanlig dubbel roll — engagemangsindex kan agera BÅDA producent och konsument för detta kontrakt. Fr.o.m. version 1.0.9 agerar nationellt EI enbart som producent (tar emot notifieringar). Lokala index agerar konsument och skickar till nationellt EI.Regel pR4: Om notifiering mottas där owner är samma som den egna instansen ska ingen uppdatering eller notifiering ske (för att undvika rundgång). |
| [Update](StructureDefinition-update.md) | Logisk modell för tjänstekontraktet Update (RIV-TA urn:riv:itintegration:engagementindex:Update:1). Representerar responsens informationsstruktur — ett statusbesked som anger om uppdateringsoperationen lyckades eller misslyckades.Kontraktet används av källsystem för att skapa, uppdatera och radera indexposter i ett engagemangsindex. |
| [Update — Request](StructureDefinition-update-request.md) | Logisk modell för requestparametrar i tjänstekontraktet Update (RIV-TA urn:riv:itintegration:engagementindex:Update:1). Kontraktet används av källsystem för att skapa, uppdatera och radera indexposter i ett engagemangsindex. Flera engagemangstransaktioner kan paketeras i ett och samma anrop (max 1000 poster i nationell instans).Alla fält i EngagementType-typen ingår i modellen, inklusive fält som sätts av engagemangsindex och INTE ska populeras av konsumenten (creationTime, updateTime, owner). Se respektive fältbeskrivning. |

