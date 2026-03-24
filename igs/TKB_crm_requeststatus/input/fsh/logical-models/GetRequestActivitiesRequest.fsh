// Genererad från TKB crm:requeststatus v2.0.1
// Kontrakt: GetRequestActivities v2.0
// Genererad: 2026-03-24

Logical: GetRequestActivitiesRequest
Id: getrequestactivities-request
Title: "GetRequestActivities — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetRequestActivities
  (RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2).
"""
Characteristics: #can-be-target

* careUnitHSAId 0..* Identifier "Filtrering på vårdenhet"
  """
  Begränsar sökning till angiven vårdenhet (accountableCareUnit i svaret).
  root = 1.2.752.129.2.1.4.1 (HSA OID), extension = HSA-id på vårdenhet.
  """

* careGiverHSAId 0..* Identifier "Filtrering på vårdgivare"
  """
  Begränsar sökning till angiven vårdgivare (accountableHealthcareProvider i svaret).
  root = 1.2.752.129.2.1.4.1 (HSA OID), extension = HSA-id på vårdgivare.
  """

* patientId 1..1 Identifier "Patientens personidentifierare"
  """
  Obligatorisk. Begränsar sökning till angiven personidentifierare.
  Producenten ska returnera alla uppgifter kopplade till patienten, inkl. under andra id:n.
  root = OID för typ av personidentifierare:
    - Personnummer: 1.2.752.129.2.1.3.1
    - Samordningsnummer: 1.2.752.129.2.1.3.3
    - Övriga: aktuell OID
  extension = patientens identifierare (12 tecken utan avskiljare).
  OBS: Lokal reservidentitet kräver systemadressering — kan ej användas med EI/aggregerande tjänster.
  """

* datePeriod 0..1 Period "Söktidsperiod"
  """
  Begränsar sökning till angivet datumintervall.
  Samtliga statusrader för en remiss returneras om minst en statusrad (body.eventTime) faller
  inom intervallet, eller om statusrader spänner över hela intervallet.
  OBS: Datumintervall (inte tidsstämplat) — tidpunkter konverteras till datum vid jämförelse.
  """

* sourceSystemHSAId 0..1 Identifier "Källsystem-id"
  """
  Begränsar sökning till angivet källsystem.
  Värdet måste överensstämma med logicalAddress i SOAP-headern.
  Aggregerande tjänster används ej när detta fält anges.
  Ska anges vid begäran på reservnummer.
  root = 1.2.752.129.2.1.4.1, extension = källsystemets HSA-id.
  """

* typeOfRequest 0..* CodeableConcept "Remisstyp"
  """
  Filtrering på remisstyp (Kv framställantyp, OID: 1.2.752.129.2.2.2.24).
  1 = röntgenremiss, 2 = labbremiss, 4 = allmänremiss.
  """
* typeOfRequest from KvFramstallantypVS (required)
