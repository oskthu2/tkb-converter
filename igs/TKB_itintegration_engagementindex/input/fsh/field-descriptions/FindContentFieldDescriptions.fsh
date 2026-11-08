// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: FindContentFieldDescriptions
* engagement ^comment = "TKB-fält: `engagement` (`EngagementType`, kardinalitet 0..*)."
* engagement.registeredResidentIdentification ^definition = "Enligt formatregler i meddelandemodell"
* engagement.registeredResidentIdentification ^comment = "TKB-fält: `engagement.registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1)."
* engagement.serviceDomain ^definition = "Namnrymd för Tjänstedomän

exempel:

urn:riv:clinicalprocess:activity:request"
* engagement.serviceDomain ^comment = "TKB-fält: `engagement.serviceDomain` (`URN`, kardinalitet 1..1)."
* engagement.categorization ^definition = "Enligt tjänstedomänens dokumentation."
* engagement.categorization ^comment = "TKB-fält: `engagement.categorization` (`String`, kardinalitet 1..1)."
* engagement.logicalAddress ^definition = "Enligt tjänstedomänens dokumentation."
* engagement.logicalAddress ^comment = "TKB-fält: `engagement.logicalAddress` (`String`, kardinalitet 1..1)."
* engagement.businessObjectInstanceIdentifier ^definition = "Enligt tjänstedomänens dokumentation."
* engagement.businessObjectInstanceIdentifier ^comment = "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 1..1)."
* engagement.clinicalProcessInterestId ^definition = "Enligt tjänstedomänens dokumentation."
* engagement.clinicalProcessInterestId ^comment = "TKB-fält: `engagement.clinicalProcessInterestId` (`String`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* engagement.mostRecentContent ^definition = "YYYYMMDDhhmmss"
* engagement.mostRecentContent ^comment = "TKB-fält: `engagement.mostRecentContent` (`TS`, kardinalitet 0..1)."
* engagement.sourceSystem ^definition = "Källsystemet som innehåller den information som EI-posten pekar ut.

I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen."
* engagement.sourceSystem ^comment = "TKB-fält: `engagement.sourceSystem` (`HSA-id`, kardinalitet 1..1)."
* engagement.creationTime ^definition = "YYYYMMDDhhmmss"
* engagement.creationTime ^comment = "TKB-fält: `engagement.creationTime` (`TS`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* engagement.updateTime ^definition = "YYYYMMDDhhmmss"
* engagement.updateTime ^comment = "TKB-fält: `engagement.updateTime` (`TS`, kardinalitet 0..1)."
* engagement.dataController ^definition = "Identitet för den PUA som ansvarar för postens innehåll.

I första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)

Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgiftsansvarig för sin information i engagemangsindex."
* engagement.dataController ^comment = "TKB-fält: `engagement.dataController` (`String`, kardinalitet 1..1)."
* engagement.owner ^definition = "HSA-id för den organisations vars index tog emot uppdateringsbegäran."
* engagement.owner ^comment = "TKB-fält: `engagement.owner` (`HSA-id`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
