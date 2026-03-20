// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: FindContent v1.0 — Request
// Genererad: 2026-03-19

Logical: FindContentRequest
Id: findcontent-request
Title: "FindContent — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet FindContent
  (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).
  Alla angivna attribut används för exakt matchningsfiltrering av sökresultatet.
  Åtkomst till FindContent i nationell EI-instans är begränsad till aggregerande
  tjänster i den nationella aggregeringsplattformen.
"""
Characteristics: #can-be-target

* registeredResidentIdentification 1..1 string "Personidentitet (sökkriterium)"
    """
    Person- eller samordningsnummer enligt skatteverkets definition (12 tecken),
    eller nationellt reservnummer enligt Ineras definition (12 tecken).
    Format: CCYYMMDDNNNN eller [0-9]{8}[0-9A-Zptf]{4}.
    Kardinalitet: Obligatorisk.
    """

* serviceDomain 1..1 uri "Tjänstedomänens namnrymd (sökkriterium)"
    """
    Namnrymd för tjänstedomän i URN-format.
    Exempel: urn:riv:clinicalprocess:activity:request
    Kardinalitet: Obligatorisk.
    """

* categorization 0..1 string "Kategorisering (sökkriterium)"
    """
    Kodverk enligt den tillämpande tjänstedomänens dokumentation.
    Om angivet filtreras svaret till poster med exakt matchning på detta attribut.
    Kardinalitet: Valfri.
    """

* logicalAddress 0..1 string "Logisk adress (sökkriterium)"
    """
    Filtrerar svaret till poster med angiven logisk adress.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    Kardinalitet: Valfri.
    """

* businessObjectInstanceIdentifier 0..1 string "Affärsobjektets instansidentifierare (sökkriterium)"
    """
    Filtrerar svaret till poster med angiven affärsobjektidentifierare.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    OBS: I domain-metadata angiven som engagementTransaction.engagement.businessObjectInstanceIdentifier.
    Kardinalitet: Valfri.
    """

* clinicalProcessInterestId 0..1 string "Kliniskt processintresse-ID (sökkriterium)"
    """
    Filtrerar svaret till poster med angivet kliniskt processintresse-ID.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    OBS: Möjlig kardinalitetsdiskrepans — i FindContent Request är fältet 0..1,
    men i den generella informationsmodellen (avsnitt 5) kan det vara 1..1.
    Behöver verifiering mot XSD-schema.
    Kardinalitet: Valfri (se öppen fråga om diskrepans).
    """

* mostRecentContent 0..1 dateTime "Senast relevant innehållstidpunkt (sökkriterium)"
    """
    Filtrerar svaret till poster med mostRecentContent >= angivet värde.
    Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
    Kardinalitet: Valfri.
    """

* sourceSystem 0..1 Identifier "Källsystem (sökkriterium)"
    """
    HSA-id för källsystemet. Filtrerar svaret till poster med angivet källsystem.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
    Kardinalitet: Valfri.
    """

* dataController 0..1 string "Personuppgiftsansvarig organisation (sökkriterium)"
    """
    Identitet för PUA. Filtrerar svaret till poster med angiven dataController.
    OBS: Kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet.
    Kardinalitet: Valfri.
    """

* owner 0..1 Identifier "Ägande index (sökkriterium)"
    """
    HSA-id för den organisation vars index tog emot uppdateringsbegäran.
    Filtrerar svaret till poster som registrerats i angivet index.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
    Kardinalitet: Valfri.
    """
