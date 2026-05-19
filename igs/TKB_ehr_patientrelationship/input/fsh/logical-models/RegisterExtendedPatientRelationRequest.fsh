// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: RegisterExtendedPatientRelation v1.0 — Request
// Genererad: 2026-05-19

Logical: RegisterExtendedPatientRelationRequest
Id: registerextendedpatientrelation-request
Title: "RegisterExtendedPatientRelation — Request"
Description: "Logisk modell för requestparametrar i RegisterExtendedPatientRelation."
Characteristics: #can-be-target

* patientRelationId 1..1 string "Unik, global UUID-identifierare för intyget (max 36 tecken)"
  """
  Tjänstekonsumenten ansvarar för att generera id:et.
  """
* patientId 1..1 string "Patientens personnummer alternativt samordningsnummer (max 12 tecken)"
* careProviderId 1..1 Identifier "Id på den vårdgivare som intyget gäller för (HSA-id)"
* careUnitId 1..1 Identifier "Id på den vårdenhet som intyget gäller för (HSA-id)"
* employeeId 1..1 Identifier "Medarbetare-id för den medarbetare som patientrelationen gäller för (HSA-id)"
* startDate 0..1 dateTime "Valfritt startdatum för intygets giltighetstid"
  """
  Om angivet gäller intyget fr.o.m denna tidpunkt, annars gäller patientrelationen fr.o.m registreringstidpunkten.
  """
* endDate 1..1 dateTime "Tidpunkt då giltigheten går ut för patientrelationen"

* registrationAction 1..1 BackboneElement "Information om begäran och registrering av patientrelationen"
* registrationAction.requestDate 1..1 dateTime "Tidpunkt då registrering begärdes"
* registrationAction.requestedBy 1..1 BackboneElement "Den aktör som begärt registreringen"
* registrationAction.requestedBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* registrationAction.requestedBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* registrationAction.requestedBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* registrationAction.registrationDate 1..1 dateTime "Tidpunkt då registreringen utfördes"
* registrationAction.registeredBy 1..1 BackboneElement "Den aktör som registrerade patientrelationen"
* registrationAction.registeredBy.employeeId 1..1 Identifier "Medarbetare-id (HSA-id)"
* registrationAction.registeredBy.assignmentId 0..1 Identifier "Optionellt uppdragid (HSA-id)"
* registrationAction.registeredBy.assignmentName 0..1 string "Optionellt uppdragsnamn (max 256 tecken)"
* registrationAction.reasonText 0..1 string "Optionell orsak/anledning till registreringen (max 1024 tecken)"
