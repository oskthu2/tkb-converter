// Genererad från TKB clinicalprocess:logistics:logistics v3.0.13
// Kontrakt: GetCarePlans v2.0 — Request
// Genererad: 2026-03-19

Logical: GetCarePlansRequest
Id: getcareaplans-request
Title: "GetCarePlans — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetCarePlans
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2).
  Representerar GetCarePlansType i GetCarePlansResponder_2.0.xsd.
"""
Characteristics: #can-be-target

* careUnitHSAId 0..* string "Filtrering på PDL-enhet (vårdenhetens HSA-id)"
    """
    Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType.
    Typ HSAIdType (string).
    Kardinalitet: Valfri, lista (0..*).
    """
* patientId 1..1 Identifier "Patientens identifierare"
    """
    Id för patienten. Anges med 12 tecken utan avskiljare.
    system = OID för typ av identifierare:
    - Personnummer: 1.2.752.129.2.1.3.1
    - Samordningsnummer: 1.2.752.129.2.1.3.3
    - Reservnummer: lokalt definierade OID (t.ex. SLL: 1.2.752.97.3.1.3)
    Typ PersonIdType. Kardinalitet: Obligatorisk.
    """
* datePeriod 0..1 BackboneElement "Datumintervall för sökning"
    """
    Begränsar sökningen till det angivna datumintervallet. Returnerar poster där
    documentTime ligger inom sökintervallets start- och slutdatum.
    Typ DatePeriodType. Kardinalitet: Valfri.
    """
* datePeriod.start 1..1 date "Startdatum (YYYYMMDD)"
    """
    Startdatum för sökintervallet. Format ÅÅÅÅMMDD.
    Kardinalitet: Obligatorisk om datePeriod anges.
    """
* datePeriod.end 1..1 date "Slutdatum (YYYYMMDD)"
    """
    Slutdatum för sökintervallet. Format ÅÅÅÅMMDD.
    Kardinalitet: Obligatorisk om datePeriod anges.
    """
* sourceSystemHSAId 0..1 string "Källsystemets HSA-id"
    """
    Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet.
    Värdet måste överensstämma med logicalAddress i anropets SOAP-header.
    Fältet är tvingande om careContactId angivits eller vid begäran på reservnummer.
    Typ HSAIdType (string). Kardinalitet: Valfri (villkorligt obligatorisk).
    """
* careContactId 0..* string "Specifika vårdkontakt-id:n att filtrera på"
    """
    Begränsar sökningen till vård- och omsorgsplaner kopplade till angivna vårdkontakter.
    Matchar documentId i GetCareContacts-svaret.
    Kardinalitet: Valfri, lista (0..*).
    """
