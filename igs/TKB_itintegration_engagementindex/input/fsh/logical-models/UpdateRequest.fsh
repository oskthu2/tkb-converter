// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: Update v1.0 — Request
// Genererad: 2026-03-19

Logical: UpdateRequest
Id: update-request
Title: "Update — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet Update
  (RIV-TA urn:riv:itintegration:engagementindex:Update:1).
  Kontraktet används av källsystem för att skapa, uppdatera och radera
  indexposter i ett engagemangsindex. Flera engagemangstransaktioner
  kan paketeras i ett och samma anrop (max 1000 poster i nationell instans).

  Alla fält i EngagementType-typen ingår i modellen, inklusive fält som
  sätts av engagemangsindex och INTE ska populeras av konsumenten
  (creationTime, updateTime, owner). Se respektive fältbeskrivning.
"""
Characteristics: #can-be-target

* engagementTransaction 1..* Base "Engagemangstransaktion"
    """
    En eller flera engagemangstransaktioner. Varje transaktion avser en indexpost.
    Alla poster i en begäran måste vara sinsemellan unika avseende postens unikhetsnyckel.
    Om duplikat hittas returneras ResultCode ERROR.
    Kardinalitet: Obligatorisk, lista (minst en transaktion krävs).
    """

* engagementTransaction.deleteFlag 1..1 boolean "Raderingsflagga"
    """
    Anger om posten ska skapas/uppdateras (false) eller tas bort (true).
    true: Posten med samma unikhetsnyckel raderas.
    false: Posten skapas om den inte finns, eller uppdateras om den redan finns.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement 1..1 Base "Engagemangspost"
    """
    Engagemangspostens datavärden. Unikhet bestäms av en kombination av
    registeredResidentIdentification, serviceDomain, categorization,
    logicalAddress och businessObjectInstanceIdentifier.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.registeredResidentIdentification 1..1 string "Personidentitet"
    """
    Person- eller samordningsnummer (12 tecken) eller nationellt reservnummer (12 tecken).
    Format: CCYYMMDDNNNN eller [0-9]{8}[0-9A-Zptf]{4}.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.serviceDomain 1..1 uri "Tjänstedomänens namnrymd (URN)"
    """
    Namnrymd för tjänstedomän i URN-format.
    Exempel: urn:riv:clinicalprocess:activity:request
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.categorization 1..1 string "Kategorisering"
    """
    Kategorisering enligt den tillämpande tjänstedomänens dokumentation.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.logicalAddress 1..1 string "Logisk adress"
    """
    Logisk adress för den tjänsteproducent som har information för posten.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.businessObjectInstanceIdentifier 1..1 string "Affärsobjektets instansidentifierare"
    """
    Identifierare för det specifika affärsobjekt som posten avser.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.clinicalProcessInterestId 1..1 string "Kliniskt processintresse-ID"
    """
    Identifierare för kliniskt processintresse.
    Exakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.mostRecentContent 0..1 dateTime "Senast relevant innehållstidpunkt"
    """
    Tidpunkt för senast relevant innehåll. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
    Regler för användning bestäms av den tillämpande tjänstedomänens TKB.
    Kardinalitet: Valfri.
    """

* engagementTransaction.engagement.sourceSystem 1..1 Identifier "Källsystem (HSA-id)"
    """
    HSA-id för källsystemet som innehåller den information som EI-posten pekar ut.
    I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren
    som är master för informationen.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.dataController 1..1 string "Personuppgiftsansvarig organisation"
    """
    Identitet för den personuppgiftsansvariga organisation (PUA) som ansvarar för postens innehåll.
    I första hand organisationsnummer eller HSA-id för PUA, i andra hand en källsystemsintern
    identitet för PUA som möjliggör för PUA att fullgöra sin roll som personuppgiftsansvarig.
    OBS: Kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet —
    ingen entydig FHIR Identifier-typ. Modelleras som string; se öppen fråga om korrekt typ.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.creationTime 0..1 dateTime "Skapandetidpunkt (sätts av EI)"
    """
    Tidpunkt då engagemangsposten skapades i engagemangsindexet.
    KONSUMENTEN SKA INTE SÄTTA DETTA FÄLT — det sätts automatiskt av engagemangsindex
    vid mottagning av Update-anropet. Om fältet populeras av konsumenten ignoreras värdet.
    Kardinalitet: Valfri (från konsumentperspektiv; alltid populerad i lagrat engagemang).
    """

* engagementTransaction.engagement.updateTime 0..1 dateTime "Uppdateringstidpunkt (sätts av EI)"
    """
    Tidpunkt då engagemangsposten senast uppdaterades i engagemangsindexet.
    KONSUMENTEN SKA INTE SÄTTA DETTA FÄLT — det sätts automatiskt av engagemangsindex
    vid mottagning av Update-anropet. Om fältet populeras av konsumenten ignoreras värdet.
    Kardinalitet: Valfri (från konsumentperspektiv; alltid populerad i lagrat engagemang).
    """

* engagementTransaction.engagement.owner 0..1 string "Ägare (sätts av EI)"
    """
    Identitet för den engagemangsindexinstans som äger posten (logisk adress för EI-instansen).
    KONSUMENTEN SKA INTE SÄTTA DETTA FÄLT — det sätts automatiskt av engagemangsindex
    vid mottagning av Update-anropet. Om fältet populeras av konsumenten ignoreras värdet.
    Kardinalitet: Valfri (från konsumentperspektiv; alltid populerad i lagrat engagemang).
    """
