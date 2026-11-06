// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UpdateRequestFieldDescriptions
* engagementTransaction ^comment = "TKB-fält: `engagementTransaction` (`EngagementTransactionType`, kardinalitet 1..*).

**Modellanteckning:** En eller flera engagemangstransaktioner. Varje transaktion avser en indexpost.
Alla poster i en begäran måste vara sinsemellan unika avseende postens unikhetsnyckel.
Om duplikat hittas returneras ResultCode ERROR."
* engagementTransaction.deleteFlag ^definition = "True anger att posten ska tas bort. False anger att posten ska skapas/uppdateras."
* engagementTransaction.deleteFlag ^comment = "TKB-fält: `engagementTransaction.deleteFlag` (`Boolean`, kardinalitet 1..1).

**Modellanteckning:** Anger om posten ska skapas/uppdateras (false) eller tas bort (true).
true: Posten med samma unikhetsnyckel raderas.
false: Posten skapas om den inte finns, eller uppdateras om den redan finns."
* engagementTransaction.engagement ^comment = "TKB-fält: `engagementTransaction .engagement` (`EngagementType`, kardinalitet 1..1).

**Modellanteckning:** Engagemangspostens datavärden. Unikhet bestäms av en kombination av
registeredResidentIdentification, serviceDomain, categorization,
logicalAddress och businessObjectInstanceIdentifier."
* engagementTransaction.engagement.registeredResidentIdentification ^definition = "Enligt formatregler i meddelandemodellen"
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

**Modellanteckning:** Logisk adress för den tjänsteproducent som har information för posten.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation."
* engagementTransaction.engagement.businessObjectInstanceIdentifier ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.businessObjectInstanceIdentifier ^comment = "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för det specifika affärsobjekt som posten avser.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation."
* engagementTransaction.engagement.clinicalProcessInterestId ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.clinicalProcessInterestId ^comment = "TKB-fält: `engagementTransaction .engagement.clinicalProcess InterestId` (`String`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för kliniskt processintresse.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation."
* engagementTransaction.engagement.mostRecentContent ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.mostRecentContent ^comment = "TKB-fält: `engagementTransaction .engagement.mostRecentContent` (`TS`, kardinalitet 0..1).

**Modellanteckning:** Tidpunkt för senast relevant innehåll. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
Regler för användning bestäms av den tillämpande tjänstedomänens TKB."
* engagementTransaction.engagement.sourceSystem ^definition = "Källsystemet som innehåller den information som EI-posten pekar ut.

I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen."
* engagementTransaction.engagement.sourceSystem ^comment = "TKB-fält: `engagementTransaction .engagement.sourceSystem` (`HSA-id`, kardinalitet 1..1)."
* engagementTransaction.engagement.dataController ^definition = "Identitet för den PUA som ansvarar för postens innehåll.

I första hand organisations-nummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)

Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgifts-ansvarig för sin information i engagemangsindex."
* engagementTransaction.engagement.dataController ^comment = "TKB-fält: `engagementTransaction .engagement.dataController` (`String`, kardinalitet 1..1).

**Modellanteckning:** Identitet för den personuppgiftsansvariga organisation (PUA) som ansvarar för postens innehåll.
I första hand organisationsnummer eller HSA-id för PUA, i andra hand en källsystemsintern
identitet för PUA som möjliggör för PUA att fullgöra sin roll som personuppgiftsansvarig.
OBS: Kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet —
ingen entydig FHIR Identifier-typ. Modelleras som string; se öppen fråga om korrekt typ."
