// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: ProcessLaboratoryReport v1.0
// Genererad: 2026-09-17

Logical: ProcessLaboratoryReport
Id: processlaboratoryreport
Title: "ProcessLaboratoryReport"
Description: """
  Logisk modell för tjänstekontraktet ProcessLaboratoryReport
  (RIV-TA processdevelopment:infections). Representerar responsens
  informationsstruktur — bekräftar registrering av ett laboratoriesvar.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar"
    """
    Beskrivning av fel som uppstått alternativt information om genomförd
    registrering.
    """

Logical: ProcessLaboratoryReportRequest
Id: processlaboratoryreport-request
Title: "ProcessLaboratoryReport — Request"
Description: """
  Logisk modell för requestparametrar i ProcessLaboratoryReport. Registrerar
  ett nytt laboratoriesvar med tillhörande information om patient, beställande
  enhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar
  kan uppdateras genom att ett nytt meddelande med samma svarsid skickas in.
"""
Characteristics: #can-be-target

* logicalAddress 1..1 Identifier "Logisk adress"
    """
    Logisk adress till tjänsteimplementationen. HSA-id för organisationspost
    motsvarande vårdgivare i HSA-trädet.
    """
* reportId 1..1 string "Svars-id"
    """
    RIV-specifikation: Laboratoriesvar.svars-id. HSA-id + Lokalt id (HSA-id
    för den enhet inom vilket aktuellt svars-id är unikt anges före det
    lokala id:t).
    """
* samplingTime 1..1 dateTime "Provtagningstidpunkt" "RIV-specifikation: Provtagning.provtagningstidpunkt."
* careProviderId 1..1 Identifier "Vårdgivare" "HSA-id för aktuell vårdgivare."
* registeringUnitId 1..1 Identifier "Registrerande enhet"
    """
    RIV-specifikation: Laboratoriesvar.har beställande.Enhet.enhets-id.
    """
* microbiologicalFinding 1..* BackboneElement "Mikrobiologiska fynd"
  * observationTime 1..1 dateTime "Observationstidpunkt" "RIV-specifikation: Mikrobiologiskt fynd.observationstidpunkt."
  * agentCode 1..1 code "Agenskod" "RIV-specifikation: Mikrobiologiskt fynd.agenskod."
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
