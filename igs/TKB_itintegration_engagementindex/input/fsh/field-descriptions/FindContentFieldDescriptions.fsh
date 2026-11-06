// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: FindContentFieldDescriptions
* engagement ^comment = "TKB-fält: `engagement` (`EngagementType`, kardinalitet 0..*).

**Modellanteckning:** En post i engagemangsindex som matchar sökkriterierna.
En tjänstekonsument kan få noll eller flera poster i svaret."
* engagement.registeredResidentIdentification ^definition = "Enligt formatregler i meddelandemodell"
* engagement.registeredResidentIdentification ^comment = "TKB-fält: `engagement.registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1).

**Modellanteckning:** Person- eller samordningsnummer enligt skatteverkets definition (12 tecken),
eller nationellt reservnummer enligt Ineras definition (12 tecken).
Format: CCYYMMDDNNNN (personnummer/samordningsnummer) eller XXYYMMDNNGC (reservidentitet)."
* engagement.serviceDomain ^definition = "Namnrymd för Tjänstedomän

exempel:

urn:riv:clinicalprocess:activity:request"
* engagement.serviceDomain ^comment = "TKB-fält: `engagement.serviceDomain` (`URN`, kardinalitet 1..1)."
* engagement.categorization ^definition = "Enligt tjänstedomänens dokumentation."
* engagement.categorization ^comment = "TKB-fält: `engagement.categorization` (`String`, kardinalitet 1..1).

**Modellanteckning:** Kategorisering enligt den tillämpande tjänstedomänens dokumentation.
Exakt betydelse definieras av respektive tjänstedomän."
* engagement.logicalAddress ^definition = "Enligt tjänstedomänens dokumentation."
* engagement.logicalAddress ^comment = "TKB-fält: `engagement.logicalAddress` (`String`, kardinalitet 1..1).

**Modellanteckning:** Logisk adress för den tjänsteproducent som har information för posten.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation."
* engagement.businessObjectInstanceIdentifier ^definition = "Enligt tjänstedomänens dokumentation."
* engagement.businessObjectInstanceIdentifier ^comment = "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för det specifika affärsobjekt som posten avser.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
Obs: I domain-metadata angiven som engagementTransaction.engagement.businessObjectInstanceIdentifier."
* engagement.clinicalProcessInterestId ^definition = "Enligt tjänstedomänens dokumentation."
* engagement.clinicalProcessInterestId ^comment = "TKB-fält: `engagement.clinicalProcessInterestId` (`String`, kardinalitet 0..1).

**Modellanteckning:** Identifierare för kliniskt processintresse.
Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
OBS: Möjlig kardinalitetsdiskrepans — i FindContent Request är fältet 0..1,
men i den generella informationsmodellen (avsnitt 5) kan det vara 1..1.
Använd 0..1 tills verifiering mot XSD-schema är gjord."
* engagement.mostRecentContent ^definition = "YYYYMMDDhhmmss"
* engagement.mostRecentContent ^comment = "TKB-fält: `engagement.mostRecentContent` (`TS`, kardinalitet 0..1).

**Modellanteckning:** Tidpunkt för senast relevant innehåll. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
Regler för användning av detta attribut bestäms av den tillämpande tjänstedomänens
tjänstekontraktsbeskrivning. Från version 1.0.9 tas centrala EI-regler kring
MostRecentContent bort ur denna TKB."
* engagement.sourceSystem ^definition = "Källsystemet som innehåller den information som EI-posten pekar ut.

I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen."
* engagement.sourceSystem ^comment = "TKB-fält: `engagement.sourceSystem` (`HSA-id`, kardinalitet 1..1)."
* engagement.creationTime ^definition = "YYYYMMDDhhmmss"
* engagement.creationTime ^comment = "TKB-fält: `engagement.creationTime` (`TS`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt då EI-posten skapades i engagemangsindex. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
Sätts av engagemangsindex vid mottagning av Update — ska INTE sättas av konsumenten.
OBS: Fältet saknar explicit fältregel i TKB-tabellen för FindContent Response,
men finns i XSD-typen EngagementType. Kardinalitet hämtad från informationsmodellen."
* engagement.updateTime ^definition = "YYYYMMDDhhmmss"
* engagement.updateTime ^comment = "TKB-fält: `engagement.updateTime` (`TS`, kardinalitet 0..1).

**Modellanteckning:** Tidpunkt då EI-posten senast uppdaterades i engagemangsindex. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
Sätts av engagemangsindex vid mottagning av Update — ska INTE sättas av konsumenten.
OBS: Fältet saknar explicit fältregel i TKB-tabellen för FindContent Response,
men finns i XSD-typen EngagementType. Kardinalitet hämtad från informationsmodellen."
* engagement.dataController ^definition = "Identitet för den PUA som ansvarar för postens innehåll.

I första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)

Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgiftsansvarig för sin information i engagemangsindex."
* engagement.dataController ^comment = "TKB-fält: `engagement.dataController` (`String`, kardinalitet 1..1)."
* engagement.owner ^definition = "HSA-id för den organisations vars index tog emot uppdateringsbegäran."
* engagement.owner ^comment = "TKB-fält: `engagement.owner` (`HSA-id`, kardinalitet 1..1).

**Modellanteckning:** HSA-id för den organisation vars index tog emot uppdateringsbegäran.
Används för att spåra var en indexpost ursprungligen registrerades.
System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
Sätts av engagemangsindex — ska INTE sättas av konsumenten."
