// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessNotificationRequestFieldDescriptions
* engagementTransaction ^comment = "TKB-fält: `engagementTransaction` (`EngagementTransactionType`, kardinalitet 1..*).

**Modellanteckning:** En eller flera engagemangstransaktioner. Varje transaktion avser en indexpost.
Innehållet ska spegla ursprunglig Update-begäran med tillägg av owner, creationTime
och updateTime."
* engagementTransaction.deleteFlag ^definition = "”true” anger att posten ska tas bort. False anger att posten ska skapas/uppdateras."
* engagementTransaction.deleteFlag ^comment = "TKB-fält: `engagementTransaction.deleteFlag` (`Boolean`, kardinalitet 1..1)."
* engagementTransaction.engagement ^comment = "TKB-fält: `engagementTransaction .engagement` (`EngagementType`, kardinalitet 1..1).

**Modellanteckning:** Engagemangspostens datavärden inklusive systemgenererade fält
(owner, creationTime, updateTime) som skickas vidare från det sändande indexet."
* engagementTransaction.engagement.registeredResidentIdentification ^definition = "Enligt formatregler i meddelandemodell"
* engagementTransaction.engagement.registeredResidentIdentification ^comment = "TKB-fält: `engagementTransaction .engagement.registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1).

**Modellanteckning:** Person- eller samordningsnummer (12 tecken) eller nationellt reservnummer (12 tecken).
Format: CCYYMMDDNNNN eller [0-9]{8}[0-9A-Zptf]{4}."
* engagementTransaction.engagement.serviceDomain ^definition = "Namnrymd för Tjänstedomän

exempel:

urn:riv:clinicalprocess:activity:request"
* engagementTransaction.engagement.serviceDomain ^comment = "TKB-fält: `engagementTransaction .engagement.serviceDomain` (`URN`, kardinalitet 1..1)."
* engagementTransaction.engagement.categorization ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.categorization ^comment = "TKB-fält: `engagementTransaction .engagement.categorization` (`String`, kardinalitet 1..1)."
* engagementTransaction.engagement.logicalAddress ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.logicalAddress ^comment = "TKB-fält: `engagementTransaction .engagement.logicalAddress` (`String`, kardinalitet 1..1).

**Modellanteckning:** Logisk adress för den tjänsteproducent som har information för posten."
* engagementTransaction.engagement.businessObjectInstanceIdentifier ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.businessObjectInstanceIdentifier ^comment = "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för det specifika affärsobjekt som posten avser."
* engagementTransaction.engagement.clinicalProcessInterestId ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.clinicalProcessInterestId ^comment = "TKB-fält: `engagementTransaction .engagement.clinicalProcessInterestId` (`HSA-id`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för kliniskt processintresse.
OBS: I ProcessNotification Request anges typen som HSA-id i TKB, till skillnad från
string i Update Request. Modelleras som Identifier med HSA OID.
System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID)."
* engagementTransaction.engagement.mostRecentContent ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.mostRecentContent ^comment = "TKB-fält: `engagementTransaction .engagement.mostRecentContent` (`TS`, kardinalitet 0..1).

**Modellanteckning:** Tidpunkt för senast relevant innehåll. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
Regler för användning bestäms av den tillämpande tjänstedomänens TKB."
* engagementTransaction.engagement.sourceSystem ^definition = "Källsystemet som innehåller den information som EI-posten pekar ut.

I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen."
* engagementTransaction.engagement.sourceSystem ^comment = "TKB-fält: `engagementTransaction .engagement.sourceSystem` (`HSA-id`, kardinalitet 1..1)."
* engagementTransaction.engagement.creationTime ^definition = "YYYYMMDDhhmmss"
* engagementTransaction.engagement.creationTime ^comment = "TKB-fält: `engagementTransaction .engagement.creationTime` (`TS`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt då indexposten ursprungligen skapades i det sändande indexet.
Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
OBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt
i ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.
Producenten (mottagande index) ska använda värdet från begäran, inte generera ett eget."
* engagementTransaction.engagement.updateTime ^definition = "YYYYMMDDhhmmss"
* engagementTransaction.engagement.updateTime ^comment = "TKB-fält: `engagementTransaction .engagement.updateTime` (`TS`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt då indexposten senast uppdaterades i det sändande indexet.
Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
OBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt
i ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.
Producenten (mottagande index) ska använda värdet från begäran, inte generera ett eget."
* engagementTransaction.engagement.dataController ^definition = "Identitet för den PUA som ansvarar för postens innehåll.

I första hand organisations-nummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)

Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgifts-ansvarig för sin information i engagemangsindex."
* engagementTransaction.engagement.dataController ^comment = "TKB-fält: `engagementTransaction .engagement.dataController` (`String`, kardinalitet 1..1).

**Modellanteckning:** Identitet för den personuppgiftsansvariga organisation (PUA) som ansvarar för postens innehåll.
I första hand organisationsnummer eller HSA-id för PUA.
OBS: Kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet —
ingen entydig FHIR Identifier-typ. Modelleras som string; se öppen fråga."
* engagementTransaction.engagement.owner ^definition = "HSA-id för den organisations vars index tog emot ursprunglig uppdateringsbegäran."
* engagementTransaction.engagement.owner ^comment = "TKB-fält: `engagementTransaction .engagement.owner` (`HSA-id`, kardinalitet 1..1).

**Modellanteckning:** HSA-id för den organisation vars index tog emot ursprunglig uppdateringsbegäran.
OBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt
i ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.
Producenten (mottagande index) ska använda värdet från begäran, inte generera ett eget.
pR4: Om owner är samma som den egna instansen ska ingen uppdatering ske (undvika rundgång).
System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID)."
