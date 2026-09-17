// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: ProcessCondition v1.0
// Genererad: 2026-09-17

Logical: ProcessCondition
Id: processcondition
Title: "ProcessCondition"
Description: """
  Logisk modell för tjänstekontraktet ProcessCondition
  (RIV-TA processdevelopment:infections). Representerar responsens
  informationsstruktur — bekräftar registrering av ett bedömt
  hälsorelaterat tillstånd.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar"
    """
    Beskrivning av fel som uppstått alternativt information om genomförd
    registrering.
    """

Logical: ProcessConditionRequest
Id: processcondition-request
Title: "ProcessCondition — Request"
Description: """
  Logisk modell för requestparametrar i ProcessCondition. Registrerar ett
  eller flera nya bedömt hälsorelaterat tillstånd med information om
  patient, organisatorisk enhet och tillstånd. Ett befintligt tillstånd kan
  uppdateras genom att ett nytt meddelande med samma tillståndsid skickas in.
"""
Characteristics: #can-be-target

* logicalAddress 1..1 Identifier "Logisk adress"
    """
    Logisk adress till tjänsteimplementationen. HSA-id för organisationspost
    motsvarande vårdgivare i HSA-trädet.
    """
* conditionTime 1..1 dateTime "Tillståndstid"
    """
    RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillståndstid. Då detta
    anges i elementet start_time och meddelandet omfattar flera tillstånd
    ska det första (i tid mätt) tillståndets tid anges.
    """
* careProviderId 1..1 Identifier "Vårdgivare" "HSA-id för aktuell vårdgivare."
* registeringUnitId 1..1 Identifier "Registrerande enhet" "RIV-specifikation: Bedömt hälsorelaterat tillstånd.bedöms vid.Enhet.enhets-id."
* conditionId 0..1 string "Tillstånds-id"
    """
    RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillstånds-id.
    HSA-id + Lokalt id (HSA-id för den enhet inom vilket aktuellt
    tillstånds-id är unikt anges före det lokala id:t).
    """
* terminologyId 1..1 uri "Kodverksidentifierare"
    """
    Identifierare som anger vilket kodverk aktuell kod tillhör. Möjliga
    värden är OID för Snomed CT och OID för ICD-10-SE.
    """
* conditionCode 1..1 code "Tillståndskod" "RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillståndskod."
* personIdIssuer 1..1 string "Utfärdare av person-id"
    """
    För personnummer och samordningsnummer: "Skatteverket". För lokalt
    reservnummer: "CeHis".
    """
* personIdAssigner 1..1 string "Tilldelare av person-id"
    """
    För personnummer och samordningsnummer: "Folkbokföringen". För lokalt
    reservnummer: HSA-id för den enhet inom vilket aktuellt reservnummer är
    unikt.
    """
* patientId 1..1 Identifier "Patientens person-id"
    """
    RIV-specifikation: Patient.person-id. system = OID för personnummer,
    nationellt reservnummer eller samordningsnummer (se personIdOid),
    value = själva numret.
    """
* personIdOid 1..1 uri "OID för person-id" "OID för personnummer, nationellt reservnummer eller samordningsnummer."
* patientBirthTime 1..1 dateTime "Patientens födelsetidpunkt" "RIV-specifikation: Patient.födelsetidpunkt."
* patientGender 1..1 code "Patientens kön"
    """
    RIV-specifikation: Patient.kön. Kodverk anges externt i
    RIV-specifikation Infektionsverktyget.pdf — inte återgivet i TKB-texten.
    """
