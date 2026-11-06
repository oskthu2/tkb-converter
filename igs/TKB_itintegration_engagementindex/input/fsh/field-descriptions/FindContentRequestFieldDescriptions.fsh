// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: FindContentRequestFieldDescriptions
* registeredResidentIdentification ^definition = "Enligt formatregler i meddelandemodellen"
* registeredResidentIdentification ^comment = "TKB-fält: `registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1).

**Modellanteckning:** Person- eller samordningsnummer enligt skatteverkets definition (12 tecken),
eller nationellt reservnummer enligt Ineras definition (12 tecken).
Format: CCYYMMDDNNNN eller [0-9]{8}[0-9A-Zptf]{4}."
* serviceDomain ^definition = "Namnrymd för Tjänstedomän

exempel:

urn:riv:clinicalprocess:activity:request"
* serviceDomain ^comment = "TKB-fält: `serviceDomain` (`URN`, kardinalitet 1..1)."
* categorization ^definition = "Kodverk enligt tjänstedomänens dokumentation."
* categorization ^comment = "TKB-fält: `categorization` (`String`, kardinalitet 0..1).

**Modellanteckning:** Kodverk enligt den tillämpande tjänstedomänens dokumentation.
Om angivet filtreras svaret till poster med exakt matchning på detta attribut."
* logicalAddress ^definition = "Enligt tjänstedomänens dokumentation."
* logicalAddress ^comment = "TKB-fält: `logicalAddress` (`String`, kardinalitet 0..1).

**Modellanteckning:** Filtrerar svaret till poster med angiven logisk adress.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation."
* businessObjectInstanceIdentifier ^definition = "Enligt tjänstedomänens dokumentation."
* businessObjectInstanceIdentifier ^comment = "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 0..1).

**Modellanteckning:** Filtrerar svaret till poster med angiven affärsobjektidentifierare.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
OBS: I domain-metadata angiven som engagementTransaction.engagement.businessObjectInstanceIdentifier."
* clinicalProcessInterestId ^definition = "Enligt tjänstedomänens dokumentation"
* clinicalProcessInterestId ^comment = "TKB-fält: `clinicalProcessInterestId` (`String`, kardinalitet 0..1).

**Modellanteckning:** Filtrerar svaret till poster med angivet kliniskt processintresse-ID.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
OBS: Möjlig kardinalitetsdiskrepans — i FindContent Request är fältet 0..1,
men i den generella informationsmodellen (avsnitt 5) kan det vara 1..1.
Behöver verifiering mot XSD-schema."
* mostRecentContent ^definition = "YYYYMMDDhhmmss."
* mostRecentContent ^comment = "TKB-fält: `mostRecentContent` (`TS`, kardinalitet 0..1).

**Modellanteckning:** Filtrerar svaret till poster med mostRecentContent >= angivet värde.
Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST)."
* sourceSystem ^definition = "Källsystemet som innehåller den information som EI-posten pekar ut.

I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen."
* sourceSystem ^comment = "TKB-fält: `sourceSystem` (`HSA-id`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för källsystemet. Filtrerar svaret till poster med angivet källsystem.
System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID)."
* dataController ^definition = "Identitet för den PUA som ansvarar för postens innehåll.

I första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)

Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgiftsansvarig för sin information i engagemangsindex."
* dataController ^comment = "TKB-fält: `dataController` (`String`, kardinalitet 0..1).

**Modellanteckning:** Identitet för PUA. Filtrerar svaret till poster med angiven dataController.
OBS: Kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet."
* owner ^definition = "HSA-id för den organisations vars index tog emot uppdateringsbegäran."
* owner ^comment = "TKB-fält: `owner` (`HSA-id`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för den organisation vars index tog emot uppdateringsbegäran.
Filtrerar svaret till poster som registrerats i angivet index.
System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID)."
