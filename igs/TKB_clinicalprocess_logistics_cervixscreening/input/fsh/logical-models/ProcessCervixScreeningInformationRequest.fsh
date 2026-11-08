// Elementen genereras ur ProcessCervixScreeningInformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för clinicalprocess.logistics.cervixscreening v1.0_RC4 (Genererad ur scheman i riv.clinicalprocess.logistics.cervixscreening, tagg 1.0_RC4; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: ProcessCervixScreeningInformation v1.0
// Genererad: 2026-09-26

Logical: ProcessCervixScreeningInformationRequest
Id: processcervixscreeninginformation-request
Title: "ProcessCervixScreeningInformation — Request"
Description: """
  Logisk modell för begäran i ProcessCervixScreeningInformation
  (urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* cervixScreeningInformation 1..1 Base "CervixScreeningInformationType" "cervixScreeningInformation"
* cervixScreeningInformation.subjectOfCare 1..1 Base "PersonType" "subjectOfCare"
* cervixScreeningInformation.subjectOfCare.personId 1..1 IIType "personId" "personId"
* cervixScreeningInformation.sendingRegion 1..1 Base "RegionType" "sendingRegion"
* cervixScreeningInformation.sendingRegion.region 1..1 Base "OrganisationType" "region"
* cervixScreeningInformation.sendingRegion.region.id 1..1 IIType "id" "id"
* cervixScreeningInformation.sendingRegion.region.name 1..1 string "name" "name"
* cervixScreeningInformation.sendingRegion.careGiver 0..1 Base "OrganisationType" "careGiver"
* cervixScreeningInformation.sendingRegion.careGiver.id 1..1 IIType "id" "id"
* cervixScreeningInformation.sendingRegion.careGiver.name 1..1 string "name" "name"
* cervixScreeningInformation.sendingRegion.careUnit 0..1 Base "OrganisationType" "careUnit"
* cervixScreeningInformation.sendingRegion.careUnit.id 1..1 IIType "id" "id"
* cervixScreeningInformation.sendingRegion.careUnit.name 1..1 string "name" "name"
* cervixScreeningInformation.exclusion 0..1 Base "ExclusionType" "exclusion"
* cervixScreeningInformation.exclusion.reason 1..1 CVType "reason" "reason"
* cervixScreeningInformation.exclusion.registeredAt 1..1 string "registeredAt" "registeredAt"
* cervixScreeningInformation.exclusion.registeredAt only DateType
* cervixScreeningInformation.exclusion.originalRegion 1..1 Base "RegionType" "originalRegion"
* cervixScreeningInformation.exclusion.originalRegion.region 1..1 Base "OrganisationType" "region"
* cervixScreeningInformation.exclusion.originalRegion.region.id 1..1 IIType "id" "id"
* cervixScreeningInformation.exclusion.originalRegion.region.name 1..1 string "name" "name"
* cervixScreeningInformation.exclusion.originalRegion.careGiver 0..1 Base "OrganisationType" "careGiver"
* cervixScreeningInformation.exclusion.originalRegion.careGiver.id 1..1 IIType "id" "id"
* cervixScreeningInformation.exclusion.originalRegion.careGiver.name 1..1 string "name" "name"
* cervixScreeningInformation.exclusion.originalRegion.careUnit 0..1 Base "OrganisationType" "careUnit"
* cervixScreeningInformation.exclusion.originalRegion.careUnit.id 1..1 IIType "id" "id"
* cervixScreeningInformation.exclusion.originalRegion.careUnit.name 1..1 string "name" "name"
* cervixScreeningInformation.followUpGroups 0..* Base "FollowUpGroupType" "followUpGroups"
* cervixScreeningInformation.followUpGroups.type 1..1 CVType "type" "type"
* cervixScreeningInformation.followUpGroups.inclusionDate 1..1 string "inclusionDate" "inclusionDate"
* cervixScreeningInformation.followUpGroups.inclusionDate only DateType
* cervixScreeningInformation.followUpGroups.originalRegion 1..1 Base "RegionType" "originalRegion"
* cervixScreeningInformation.followUpGroups.originalRegion.region 1..1 Base "OrganisationType" "region"
* cervixScreeningInformation.followUpGroups.originalRegion.region.id 1..1 IIType "id" "id"
* cervixScreeningInformation.followUpGroups.originalRegion.region.name 1..1 string "name" "name"
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver 0..1 Base "OrganisationType" "careGiver"
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver.id 1..1 IIType "id" "id"
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver.name 1..1 string "name" "name"
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit 0..1 Base "OrganisationType" "careUnit"
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit.id 1..1 IIType "id" "id"
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit.name 1..1 string "name" "name"
* cervixScreeningInformation.plannedInvitation 0..1 Base "PlannedInvitationType" "plannedInvitation"
* cervixScreeningInformation.plannedInvitation.date 1..1 string "date" "date"
* cervixScreeningInformation.plannedInvitation.date only DateType
* cervixScreeningInformation.plannedInvitation.reason 0..1 string "reason" "reason"
* cervixScreeningInformation.specimen 0..1 Base "SpecimenType" "specimen"
* cervixScreeningInformation.specimen.specimenDate 1..1 string "specimenDate" "specimenDate"
* cervixScreeningInformation.specimen.specimenDate only DateType
* cervixScreeningInformation.specimen.originalRegion 1..1 Base "RegionType" "originalRegion"
* cervixScreeningInformation.specimen.originalRegion.region 1..1 Base "OrganisationType" "region"
* cervixScreeningInformation.specimen.originalRegion.region.id 1..1 IIType "id" "id"
* cervixScreeningInformation.specimen.originalRegion.region.name 1..1 string "name" "name"
* cervixScreeningInformation.specimen.originalRegion.careGiver 0..1 Base "OrganisationType" "careGiver"
* cervixScreeningInformation.specimen.originalRegion.careGiver.id 1..1 IIType "id" "id"
* cervixScreeningInformation.specimen.originalRegion.careGiver.name 1..1 string "name" "name"
* cervixScreeningInformation.specimen.originalRegion.careUnit 0..1 Base "OrganisationType" "careUnit"
* cervixScreeningInformation.specimen.originalRegion.careUnit.id 1..1 IIType "id" "id"
* cervixScreeningInformation.specimen.originalRegion.careUnit.name 1..1 string "name" "name"
* cervixScreeningInformation.specimen.HPVstatusList 0..* Base "HPVstatusType" "HPVstatusList"
* cervixScreeningInformation.specimen.HPVstatusList.value 1..1 CVType "value" "value"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessCervixScreeningInformationRequestFieldDescriptions
