// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessNotificationRequestFieldDescriptions
* engagementTransaction ^comment = "TKB-fält: `engagementTransaction` (`EngagementTransactionType`, kardinalitet 1..*)."
* engagementTransaction.deleteFlag ^definition = "”true” anger att posten ska tas bort. False anger att posten ska skapas/uppdateras."
* engagementTransaction.deleteFlag ^comment = "TKB-fält: `engagementTransaction.deleteFlag` (`Boolean`, kardinalitet 1..1)."
* engagementTransaction.engagement ^comment = "TKB-fält: `engagementTransaction .engagement` (`EngagementType`, kardinalitet 1..1)."
* engagementTransaction.engagement.registeredResidentIdentification ^definition = "Enligt formatregler i meddelandemodell"
* engagementTransaction.engagement.registeredResidentIdentification ^comment = "TKB-fält: `engagementTransaction .engagement.registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1)."
* engagementTransaction.engagement.serviceDomain ^definition = "Namnrymd för Tjänstedomän

exempel:

urn:riv:clinicalprocess:activity:request"
* engagementTransaction.engagement.serviceDomain ^comment = "TKB-fält: `engagementTransaction .engagement.serviceDomain` (`URN`, kardinalitet 1..1)."
* engagementTransaction.engagement.categorization ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.categorization ^comment = "TKB-fält: `engagementTransaction .engagement.categorization` (`String`, kardinalitet 1..1)."
* engagementTransaction.engagement.logicalAddress ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.logicalAddress ^comment = "TKB-fält: `engagementTransaction .engagement.logicalAddress` (`String`, kardinalitet 1..1)."
* engagementTransaction.engagement.businessObjectInstanceIdentifier ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.businessObjectInstanceIdentifier ^comment = "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 1..1)."
* engagementTransaction.engagement.clinicalProcessInterestId ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.clinicalProcessInterestId ^comment = "TKB-fält: `engagementTransaction .engagement.clinicalProcessInterestId` (`HSA-id`, kardinalitet 1..1)."
* engagementTransaction.engagement.mostRecentContent ^definition = "Enligt tjänstedomänens dokumentation."
* engagementTransaction.engagement.mostRecentContent ^comment = "TKB-fält: `engagementTransaction .engagement.mostRecentContent` (`TS`, kardinalitet 0..1)."
* engagementTransaction.engagement.sourceSystem ^definition = "Källsystemet som innehåller den information som EI-posten pekar ut.

I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen."
* engagementTransaction.engagement.sourceSystem ^comment = "TKB-fält: `engagementTransaction .engagement.sourceSystem` (`HSA-id`, kardinalitet 1..1)."
* engagementTransaction.engagement.creationTime ^definition = "YYYYMMDDhhmmss"
* engagementTransaction.engagement.creationTime ^comment = "TKB-fält: `engagementTransaction .engagement.creationTime` (`TS`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* engagementTransaction.engagement.updateTime ^definition = "YYYYMMDDhhmmss"
* engagementTransaction.engagement.updateTime ^comment = "TKB-fält: `engagementTransaction .engagement.updateTime` (`TS`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* engagementTransaction.engagement.dataController ^definition = "Identitet för den PUA som ansvarar för postens innehåll.

I första hand organisations-nummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)

Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgifts-ansvarig för sin information i engagemangsindex."
* engagementTransaction.engagement.dataController ^comment = "TKB-fält: `engagementTransaction .engagement.dataController` (`String`, kardinalitet 1..1)."
* engagementTransaction.engagement.owner ^definition = "HSA-id för den organisations vars index tog emot ursprunglig uppdateringsbegäran."
* engagementTransaction.engagement.owner ^comment = "TKB-fält: `engagementTransaction .engagement.owner` (`HSA-id`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
