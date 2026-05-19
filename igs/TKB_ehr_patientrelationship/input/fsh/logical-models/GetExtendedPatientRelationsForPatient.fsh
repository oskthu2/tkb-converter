// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetExtendedPatientRelationsForPatient v1.0
// Namespace: urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1
// Genererad: 2026-05-19

Logical: GetExtendedPatientRelationsForPatient
Id: getextendedpatientrelationsforpatient
Title: "GetExtendedPatientRelationsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetExtendedPatientRelationsForPatient
  (RIV-TA urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1).
  Representerar responsens informationsstruktur — patientrelationer med utökad information (registrerings-,
  återkallelse- och makuleringsinformation).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Svarskod och eventuellt resultatmeddelande"
* result.resultCode 1..1 code "Svarskod"
* result.resultCode from ResultCodeVS (required)
* result.resultText 1..1 string "Optionellt felmeddelande"

* extendedPatientRelations 0..* BackboneElement "Lista med patientrelationer i utökat format"
* extendedPatientRelations.patientRelation 1..1 BackboneElement "Grundläggande patientrelationsinformation"
* extendedPatientRelations.patientRelation.patientRelationId 1..1 string "Unik UUID-identifierare (max 36 tecken)"
* extendedPatientRelations.patientRelation.patientId 1..1 string "Personnummer eller samordningsnummer (max 12 tecken)"
* extendedPatientRelations.patientRelation.careProviderId 1..1 Identifier "Vårdgivare-id (HSA-id)"
* extendedPatientRelations.patientRelation.careUnitId 1..1 Identifier "Vårdenhet-id (HSA-id)"
* extendedPatientRelations.patientRelation.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* extendedPatientRelations.patientRelation.startDate 1..1 dateTime "Startdatum för giltighetstiden"
* extendedPatientRelations.patientRelation.endDate 1..1 dateTime "Slutdatum för giltighetstiden"
* extendedPatientRelations.patientRelation.ownerId 0..1 string "Optionell systemidentifierare (max 512 tecken)"

* extendedPatientRelations.registrationInfo 1..1 BackboneElement "Information om registreringen"
  """
  Vem som begärt och registrerat patientrelationen samt tidpunkter för dessa.
  """
* extendedPatientRelations.registrationInfo.requestDate 1..1 dateTime "Tidpunkt då registrering begärdes"
* extendedPatientRelations.registrationInfo.requestedBy 1..1 BackboneElement "Den aktör som begärt registreringen"
* extendedPatientRelations.registrationInfo.requestedBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* extendedPatientRelations.registrationInfo.requestedBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* extendedPatientRelations.registrationInfo.requestedBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* extendedPatientRelations.registrationInfo.registrationDate 1..1 dateTime "Tidpunkt då registrering utfördes"
* extendedPatientRelations.registrationInfo.registeredBy 1..1 BackboneElement "Den aktör som utförde registreringen"
* extendedPatientRelations.registrationInfo.registeredBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* extendedPatientRelations.registrationInfo.registeredBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* extendedPatientRelations.registrationInfo.registeredBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* extendedPatientRelations.registrationInfo.reasonText 0..1 string "Optionell orsak/anledning (max 1024 tecken)"

* extendedPatientRelations.cancellationInfo 0..1 BackboneElement "Information om återkallelse (om patientrelationen är återkallad)"
* extendedPatientRelations.cancellationInfo.requestDate 1..1 dateTime "Tidpunkt då återkallelse begärdes"
* extendedPatientRelations.cancellationInfo.requestedBy 1..1 BackboneElement "Den aktör som begärt återkallelsen"
* extendedPatientRelations.cancellationInfo.requestedBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* extendedPatientRelations.cancellationInfo.requestedBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* extendedPatientRelations.cancellationInfo.requestedBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* extendedPatientRelations.cancellationInfo.registrationDate 1..1 dateTime "Tidpunkt då återkallelsen registrerades"
* extendedPatientRelations.cancellationInfo.registeredBy 1..1 BackboneElement "Den aktör som registrerade återkallelsen"
* extendedPatientRelations.cancellationInfo.registeredBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* extendedPatientRelations.cancellationInfo.registeredBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* extendedPatientRelations.cancellationInfo.registeredBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* extendedPatientRelations.cancellationInfo.reasonText 0..1 string "Optionell anledning till återkallelse (max 1024 tecken)"

* extendedPatientRelations.deletionInfo 0..1 BackboneElement "Information om makulering (om patientrelationen är makulerad)"
* extendedPatientRelations.deletionInfo.requestDate 1..1 dateTime "Tidpunkt då makulering begärdes"
* extendedPatientRelations.deletionInfo.requestedBy 1..1 BackboneElement "Den aktör som begärt makuleringen"
* extendedPatientRelations.deletionInfo.requestedBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* extendedPatientRelations.deletionInfo.requestedBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* extendedPatientRelations.deletionInfo.requestedBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* extendedPatientRelations.deletionInfo.registrationDate 1..1 dateTime "Tidpunkt då makuleringen registrerades"
* extendedPatientRelations.deletionInfo.registeredBy 1..1 BackboneElement "Den aktör som utförde makuleringen"
* extendedPatientRelations.deletionInfo.registeredBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* extendedPatientRelations.deletionInfo.registeredBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* extendedPatientRelations.deletionInfo.registeredBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* extendedPatientRelations.deletionInfo.reasonText 0..1 string "Optionell anledning till makulering (max 1024 tecken)"
