// Genererad från RIV-TA-domänen interoperability:headers v1.1 (schema interoperability_headers_1.1.xsd)
// Domänen saknar TKB-dokument: modellen bygger enbart på XSD:n och dess xs:documentation.
// Genererad: 2026-09-26

Invariant: processingstatus-statuscode-consistency
Description: "statusCode ska stämma med isResponseFromCache och isResponseInSynch enligt tabellen i ProcessingStatus-dokumentationen"
Expression: "(statusCode = 'DataFromSource' implies (isResponseFromCache = false and isResponseInSynch = true)) and (statusCode = 'DataFromCache' implies (isResponseFromCache = true and isResponseInSynch = true)) and (statusCode = 'DataFromCacheSynchFailed' implies (isResponseFromCache = true and isResponseInSynch = false)) and (statusCode = 'NoDataSynchFailed' implies (isResponseFromCache = false and isResponseInSynch = false))"
Severity: #error

Invariant: processingstatus-unsuccessful-only-when-not-in-synch
Description: "lastUnsuccessfulSynch och lastUnsuccessfulSynchError anges bara när isResponseInSynch är false"
Expression: "isResponseInSynch = true implies (lastUnsuccessfulSynch.empty() and lastUnsuccessfulSynchError.empty())"
Severity: #error

Logical: ProcessingStatus
Id: processingstatus
Title: "ProcessingStatus"
Description: """
  Logisk modell för det gemensamma huvudelementet ProcessingStatus
  (RIV-TA urn:riv:interoperability:headers:1, element ProcessingStatus av typen ProcessingStatusType).
  Används av aggregerande tjänster för att rapportera tillbaka till konsumenten hur giltiga de returnerade
  uppgifterna är, med en statuspost per logisk adress (källsystem).
"""
Characteristics: #can-be-target

* processingStatusList 0..* BackboneElement "Statuspost per logisk adress"
    """
    XSD: ProcessingStatusList (ProcessingStatusRecordType), 0..unbounded.
    En post per källsystem (logisk adress) som den aggregerande tjänsten har hämtat eller försökt hämta uppgifter från.
    """
  * obeys processingstatus-statuscode-consistency
  * obeys processingstatus-unsuccessful-only-when-not-in-synch
  * logicalAddress 1..1 string "Logisk adress för källsystemet"
      """
      Logisk adress till det källsystem som statusposten gäller.
      """
  * statusCode 1..1 code "Statuskod för de returnerade uppgifterna"
      """
      XSD: statusCode (StatusCodeEnum). Anger kvaliteten på de uppgifter som returnerats från denna logiska adress.
      """
  * statusCode from ProcessingStatusCodeVS (required)
  * isResponseFromCache 1..1 boolean "Svaret kommer från cache"
      """
      true om svaret för denna logiska adress kommer från cachen, antingen direkt utan anrop till källsystemet
      eller efter ett misslyckat anrop till källsystemet under denna bearbetning.
      false om källsystemet anropades under bearbetningen och returnerade aktuella uppgifter, eller om inga
      uppgifter kunde returneras, varken från cache eller källsystem.
      """
  * isResponseInSynch 1..1 boolean "Svaret är aktuellt"
      """
      true om svaret är aktuellt: antingen var uppgifterna i cachen redan aktuella, eller så lyckades anropet
      till källsystemet under denna bearbetning.
      false om anropet till källsystemet misslyckades; se lastUnsuccessfulSynchError för felinformation.
      """
  * lastSuccessfulSynch 0..1 string "Senaste lyckade synkronisering"
      """
      XSD: xs:string, obligatorisk (minOccurs=1). Modellerad som 0..1 eftersom statustabellen anger värdet
      som tomt vid NoDataSynchFailed (se ASSUME-IH-002). Tidsstämpel för det senaste lyckade anropet från den
      aggregerande tjänsten till källsystemet, om något.
      Typen är string i schemat trots att innehållet är en tidsstämpel (se ASSUME-IH-001).
      """
  * lastUnsuccessfulSynch 0..1 string "Senaste misslyckade synkronisering"
      """
      Anges bara om isResponseInSynch är false. Tidsstämpel för det senaste misslyckade anropet från den
      aggregerande tjänsten till källsystemet. XSD-typ xs:string (se ASSUME-IH-001).
      """
  * lastUnsuccessfulSynchError 0..1 BackboneElement "Fel vid senaste misslyckade synkronisering"
      """
      XSD: LastUnsuccessfulSynchErrorType. Anges bara om isResponseInSynch är false.
      Beskriver felet som uppstod vid anropet till källsystemet under denna bearbetning.
      """
    * causingAgent 1..1 code "Felande komponent"
    * causingAgent from CausingAgentVS (required)
    * errorCode 1..1 string "Felkod"
        """
        XSD: code. Beskriver felet med en kod som är meningsfull för causingAgent.
        Omdöpt från code enligt konventionen för reserverade namn.
        """
    * errorText 1..1 string "Felmeddelande"
        """
        XSD: text. Beskriver felet i fritext. Omdöpt från text enligt konventionen för reserverade namn.
        """
