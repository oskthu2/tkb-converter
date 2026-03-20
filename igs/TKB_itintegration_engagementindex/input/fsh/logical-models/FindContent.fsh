// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: FindContent v1.0
// Genererad: 2026-03-19

Logical: FindContent
Id: findcontent
Title: "FindContent"
Description: """
  Logisk modell för tjänstekontraktet FindContent
  (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).
  Representerar responsens informationsstruktur — en lista av engagemangsposter
  som svarar mot sökkriterierna i begäran.
  Primärt använt av aggregerande tjänster i tjänsteplattformen.
"""
Characteristics: #can-be-target

* engagement 0..* Base "Engagemangspost"
    """
    En post i engagemangsindex som matchar sökkriterierna.
    En tjänstekonsument kan få noll eller flera poster i svaret.
    Kardinalitet: Valfri, lista.
    """

* engagement.registeredResidentIdentification 1..1 string "Personidentitet"
    """
    Person- eller samordningsnummer enligt skatteverkets definition (12 tecken),
    eller nationellt reservnummer enligt Ineras definition (12 tecken).
    Format: CCYYMMDDNNNN (personnummer/samordningsnummer) eller XXYYMMDNNGC (reservidentitet).
    Kardinalitet: Obligatorisk.
    """

* engagement.serviceDomain 1..1 uri "Tjänstedomänens namnrymd (URN)"
    """
    Namnrymd för tjänstedomän i URN-format.
    Exempel: urn:riv:clinicalprocess:activity:request
    Kardinalitet: Obligatorisk.
    """

* engagement.categorization 1..1 string "Kategorisering"
    """
    Kategorisering enligt den tillämpande tjänstedomänens dokumentation.
    Exakt betydelse definieras av respektive tjänstedomän.
    Kardinalitet: Obligatorisk.
    """

* engagement.logicalAddress 1..1 string "Logisk adress"
    """
    Logisk adress för den tjänsteproducent som har information för posten.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    Kardinalitet: Obligatorisk.
    """

* engagement.businessObjectInstanceIdentifier 1..1 string "Affärsobjektets instansidentifierare"
    """
    Identifierare för det specifika affärsobjekt som posten avser.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    Obs: I domain-metadata angiven som engagementTransaction.engagement.businessObjectInstanceIdentifier.
    Kardinalitet: Obligatorisk.
    """

* engagement.clinicalProcessInterestId 0..1 string "Kliniskt processintresse-ID"
    """
    Identifierare för kliniskt processintresse.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    OBS: Möjlig kardinalitetsdiskrepans — i FindContent Request är fältet 0..1,
    men i den generella informationsmodellen (avsnitt 5) kan det vara 1..1.
    Använd 0..1 tills verifiering mot XSD-schema är gjord.
    Kardinalitet: Valfri (se öppen fråga om diskrepans).
    """

* engagement.mostRecentContent 0..1 dateTime "Senast relevant innehållstidpunkt"
    """
    Tidpunkt för senast relevant innehåll. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
    Regler för användning av detta attribut bestäms av den tillämpande tjänstedomänens
    tjänstekontraktsbeskrivning. Från version 1.0.9 tas centrala EI-regler kring
    MostRecentContent bort ur denna TKB.
    Kardinalitet: Valfri.
    """

* engagement.sourceSystem 1..1 Identifier "Källsystem (HSA-id)"
    """
    HSA-id för källsystemet som innehåller den information som EI-posten pekar ut.
    I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren
    som är master för informationen.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
    Kardinalitet: Obligatorisk.
    """

* engagement.creationTime 1..1 dateTime "Tidpunkt för skapande av indexpost"
    """
    Tidpunkt då EI-posten skapades i engagemangsindex. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
    Sätts av engagemangsindex vid mottagning av Update — ska INTE sättas av konsumenten.
    OBS: Fältet saknar explicit fältregel i TKB-tabellen för FindContent Response,
    men finns i XSD-typen EngagementType. Kardinalitet hämtad från informationsmodellen.
    Kardinalitet: Obligatorisk.
    """

* engagement.updateTime 0..1 dateTime "Tidpunkt för senaste uppdatering av indexpost"
    """
    Tidpunkt då EI-posten senast uppdaterades i engagemangsindex. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
    Sätts av engagemangsindex vid mottagning av Update — ska INTE sättas av konsumenten.
    OBS: Fältet saknar explicit fältregel i TKB-tabellen för FindContent Response,
    men finns i XSD-typen EngagementType. Kardinalitet hämtad från informationsmodellen.
    Kardinalitet: Valfri.
    """

* engagement.dataController 1..1 string "Personuppgiftsansvarig organisation"
    """
    Identitet för den personuppgiftsansvariga organisation (PUA) som ansvarar för postens innehåll.
    I första hand organisationsnummer eller HSA-id för PUA, i andra hand en källsystemsintern
    identitet för PUA. Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll
    som personuppgiftsansvarig för sin information i engagemangsindex.
    OBS: Fältet kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet —
    ingen entydig FHIR Identifier-typ. Modelleras som string; se öppen fråga om korrekt typ.
    Kardinalitet: Obligatorisk.
    """

* engagement.owner 1..1 Identifier "Ägande index (HSA-id)"
    """
    HSA-id för den organisation vars index tog emot uppdateringsbegäran.
    Används för att spåra var en indexpost ursprungligen registrerades.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
    Sätts av engagemangsindex — ska INTE sättas av konsumenten.
    Kardinalitet: Obligatorisk.
    """
