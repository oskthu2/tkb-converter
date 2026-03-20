// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: ProcessNotification v1.0 — Request
// Genererad: 2026-03-19

Logical: ProcessNotificationRequest
Id: processnotification-request
Title: "ProcessNotification — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ProcessNotification
  (RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).

  Används för konsolidering av indexinformation mellan engagemangsindexinstanser.
  Innehållet i begäran ska exakt spegla begäran i ursprunglig Update,
  med tillägg av owner, creationTime och updateTime (som INTE ingår i Update-begäran
  men är obligatoriska här).

  OBS: Ovanlig dubbel roll — engagemangsindex kan agera BÅDA producent och konsument
  för detta kontrakt. Fr.o.m. version 1.0.9 agerar nationellt EI enbart som producent
  (tar emot notifieringar). Lokala index agerar konsument och skickar till nationellt EI.

  Regel pR4: Om notifiering mottas där owner är samma som den egna instansen ska
  ingen uppdatering eller notifiering ske (för att undvika rundgång).
"""
Characteristics: #can-be-target

* engagementTransaction 1..* Base "Engagemangstransaktion"
    """
    En eller flera engagemangstransaktioner. Varje transaktion avser en indexpost.
    Innehållet ska spegla ursprunglig Update-begäran med tillägg av owner, creationTime
    och updateTime.
    Kardinalitet: Obligatorisk, lista (minst en transaktion krävs).
    """

* engagementTransaction.deleteFlag 1..1 boolean "Raderingsflagga"
    """
    Anger om posten ska skapas/uppdateras (false) eller tas bort (true).
    För poster som ska tas bort sätts deleteFlag = true.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement 1..1 Base "Engagemangspost"
    """
    Engagemangspostens datavärden inklusive systemgenererade fält
    (owner, creationTime, updateTime) som skickas vidare från det sändande indexet.
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
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.businessObjectInstanceIdentifier 1..1 string "Affärsobjektets instansidentifierare"
    """
    Identifierare för det specifika affärsobjekt som posten avser.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.clinicalProcessInterestId 1..1 Identifier "Kliniskt processintresse-ID"
    """
    Identifierare för kliniskt processintresse.
    OBS: I ProcessNotification Request anges typen som HSA-id i TKB, till skillnad från
    string i Update Request. Modelleras som Identifier med HSA OID.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
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
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.creationTime 1..1 dateTime "Tidpunkt för skapande av indexpost"
    """
    Tidpunkt då indexposten ursprungligen skapades i det sändande indexet.
    Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
    OBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt
    i ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.
    Producenten (mottagande index) ska använda värdet från begäran, inte generera ett eget.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.updateTime 1..1 dateTime "Tidpunkt för senaste uppdatering"
    """
    Tidpunkt då indexposten senast uppdaterades i det sändande indexet.
    Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).
    OBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt
    i ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.
    Producenten (mottagande index) ska använda värdet från begäran, inte generera ett eget.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.dataController 1..1 string "Personuppgiftsansvarig organisation"
    """
    Identitet för den personuppgiftsansvariga organisation (PUA) som ansvarar för postens innehåll.
    I första hand organisationsnummer eller HSA-id för PUA.
    OBS: Kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet —
    ingen entydig FHIR Identifier-typ. Modelleras som string; se öppen fråga.
    Kardinalitet: Obligatorisk.
    """

* engagementTransaction.engagement.owner 1..1 Identifier "Ägande index (HSA-id)"
    """
    HSA-id för den organisation vars index tog emot ursprunglig uppdateringsbegäran.
    OBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt
    i ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.
    Producenten (mottagande index) ska använda värdet från begäran, inte generera ett eget.
    pR4: Om owner är samma som den egna instansen ska ingen uppdatering ske (undvika rundgång).
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).
    Kardinalitet: Obligatorisk.
    """
