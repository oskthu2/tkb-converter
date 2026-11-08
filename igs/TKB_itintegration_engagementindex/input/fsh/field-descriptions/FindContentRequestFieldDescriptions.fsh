// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: FindContentRequestFieldDescriptions
* registeredResidentIdentification ^definition = "Enligt formatregler i meddelandemodellen"
* registeredResidentIdentification ^comment = "TKB-fält: `registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1)."
* serviceDomain ^definition = "Namnrymd för Tjänstedomän

exempel:

urn:riv:clinicalprocess:activity:request"
* serviceDomain ^comment = "TKB-fält: `serviceDomain` (`URN`, kardinalitet 1..1)."
* categorization ^definition = "Kodverk enligt tjänstedomänens dokumentation."
* categorization ^comment = "TKB-fält: `categorization` (`String`, kardinalitet 0..1)."
* logicalAddress ^definition = "Enligt tjänstedomänens dokumentation."
* logicalAddress ^comment = "TKB-fält: `logicalAddress` (`String`, kardinalitet 0..1)."
* businessObjectInstanceIdentifier ^definition = "Enligt tjänstedomänens dokumentation."
* businessObjectInstanceIdentifier ^comment = "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 0..1)."
* clinicalProcessInterestId ^definition = "Enligt tjänstedomänens dokumentation"
* clinicalProcessInterestId ^comment = "TKB-fält: `clinicalProcessInterestId` (`String`, kardinalitet 0..1)."
* mostRecentContent ^definition = "YYYYMMDDhhmmss."
* mostRecentContent ^comment = "TKB-fält: `mostRecentContent` (`TS`, kardinalitet 0..1)."
* sourceSystem ^definition = "Källsystemet som innehåller den information som EI-posten pekar ut.

I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen."
* sourceSystem ^comment = "TKB-fält: `sourceSystem` (`HSA-id`, kardinalitet 0..1)."
* dataController ^definition = "Identitet för den PUA som ansvarar för postens innehåll.

I första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)

Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgiftsansvarig för sin information i engagemangsindex."
* dataController ^comment = "TKB-fält: `dataController` (`String`, kardinalitet 0..1)."
* owner ^definition = "HSA-id för den organisations vars index tog emot uppdateringsbegäran."
* owner ^comment = "TKB-fält: `owner` (`HSA-id`, kardinalitet 0..1)."
