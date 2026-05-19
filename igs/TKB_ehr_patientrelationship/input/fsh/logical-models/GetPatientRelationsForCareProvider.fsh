// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetPatientRelationsForCareProvider v1.0
// Namespace: urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1
// Genererad: 2026-05-19

Logical: GetPatientRelationsForCareProvider
Id: getpatientrelationsforcareprovider
Title: "GetPatientRelationsForCareProvider"
Description: """
  Logisk modell för tjänstekontraktet GetPatientRelationsForCareProvider
  (RIV-TA urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1).
  Representerar responsens informationsstruktur — alla giltiga patientrelationer för en vårdgivare,
  med stöd för paginering via HasMore/MoreOnOrAfter.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Svarskod och eventuellt resultatmeddelande"
* result.resultCode 1..1 code "Svarskod"
* result.resultCode from ResultCodeVS (required)
* result.resultText 1..1 string "Optionellt felmeddelande"

* moreOnOrAfter 1..1 dateTime "Fr.o.m. vilken tidpunkt ytterligare patientrelationer finns att hämta"
  """
  Används iterativt som inparameter CreatedOnOrAfter för nästa anrop.
  Returneras även om inga fler patientrelationer finns.
  """
* hasMore 1..1 boolean "Anger om det finns ytterligare patientrelationer att hämta"

* patientRelations 0..* BackboneElement "Lista med aktiva patientrelationer"
* patientRelations.patientRelationId 1..1 string "Unik UUID-identifierare för patientrelationen (max 36 tecken)"
* patientRelations.patientId 1..1 string "Patientens personnummer eller samordningsnummer (max 12 tecken)"
* patientRelations.careProviderId 1..1 Identifier "Vårdgivare-id (HSA-id)"
* patientRelations.careUnitId 1..1 Identifier "Vårdenhet-id (HSA-id)"
* patientRelations.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* patientRelations.startDate 1..1 dateTime "Startdatum för giltighetstiden"
* patientRelations.endDate 1..1 dateTime "Slutdatum för giltighetstiden"
* patientRelations.ownerId 0..1 string "Optionell systemidentifierare (max 512 tecken)"

* cancelledPatientRelations 0..* BackboneElement "Lista med makulerade och återkallade patientrelationer"
  """
  Returneras bara om getCancelledFlag=true i request.
  """
* cancelledPatientRelations.patientRelationId 1..1 string "Id på den makulerade/återkallade patientrelationen"
* cancelledPatientRelations.cancellationDate 1..1 dateTime "Tidpunkt när makulering eller återkallan utfördes"
