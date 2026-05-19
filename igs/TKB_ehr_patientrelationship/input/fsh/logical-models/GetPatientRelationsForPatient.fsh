// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetPatientRelationsForPatient v1.0
// Namespace: urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1
// Genererad: 2026-05-19

Logical: GetPatientRelationsForPatient
Id: getpatientrelationsforpatient
Title: "GetPatientRelationsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetPatientRelationsForPatient
  (RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1).
  Representerar responsens informationsstruktur — lista med giltiga patientrelationer för en patient.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Svarskod och eventuellt resultatmeddelande"
  """
  Innehåller resultCode och resultText. Alla koder förutom OK och INFO indikerar att åtgärden ej genomfördes.
  """
* result.resultCode 1..1 code "Svarskod"
* result.resultCode from ResultCodeVS (required)
* result.resultText 1..1 string "Optionellt felmeddelande (tomt om resultCode=OK)"

* patientRelations 0..* BackboneElement "Lista med giltiga patientrelationer för patienten"
  """
  Lista med aktiva patientrelationer. Ogiltiga (utgångna, makulerade, återkallade) returneras ej.
  """
* patientRelations.patientRelationId 1..1 string "Unik UUID-identifierare för patientrelationen (max 36 tecken)"
* patientRelations.patientId 1..1 string "Patientens personnummer eller samordningsnummer (max 12 tecken)"
* patientRelations.careProviderId 1..1 Identifier "Vårdgivare-id (HSA-id, max 32 tecken)"
  """
  HSA-id för den vårdgivare som intyget är kopplat till.
  system = urn:oid:1.2.752.129.2.1.4.1
  """
* patientRelations.careUnitId 1..1 Identifier "Vårdenhet-id (HSA-id, max 32 tecken)"
  """
  HSA-id för den vårdenhet som intyget är kopplat till.
  system = urn:oid:1.2.752.129.2.1.4.1
  """
* patientRelations.employeeId 1..1 Identifier "Medarbetare-id (HSA-id, max 32 tecken)"
  """
  HSA-id för den medarbetare som patientrelationen avser.
  system = urn:oid:1.2.752.129.2.1.4.1
  """
* patientRelations.startDate 1..1 dateTime "Startdatum för patientrelationens giltighetstid"
* patientRelations.endDate 1..1 dateTime "Slutdatum/tidpunkt då giltigheten går ut"
* patientRelations.ownerId 0..1 string "Optionell identifierare för systemet som skapade patientrelationen (max 512 tecken)"
