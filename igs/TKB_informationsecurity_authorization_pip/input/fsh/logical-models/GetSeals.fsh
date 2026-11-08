// Elementen genereras ur GetSealsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.pip v1.0 (Genererat ur domänens XSD (master, commit 729301865b83).; scripts/xsd_to_ig.py)
// Kontrakt: GetSeals v1.0
// Genererad: 2026-09-26

Logical: GetSeals
Id: getseals
Title: "GetSeals — Response"
Description: """
  Logisk modell för svaret i GetSeals
  (urn:riv:informationsecurity:authorization:pip:GetSealsResponder:1, GetSealsResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* seal 0..* Base "SealType" "seal"
* seal.patientId 1..1 IIType "patientId" "patientId"
* seal.timeCreated 1..1 string "timeCreated" "timeCreated"
* seal.timeCreated only TimeStampType
* seal.timeLastUpdated 1..1 string "timeLastUpdated" "timeLastUpdated"
* seal.timeLastUpdated only TimeStampType
* seal.validFrom 0..1 string "validFrom" "validFrom"
* seal.validFrom only DateType
* seal.validTo 0..1 string "validTo" "validTo"
* seal.validTo only DateType
* seal.deactivationDate 0..1 string "deactivationDate" "deactivationDate"
* seal.deactivationDate only DateType
* seal.orgUnitSeal 0..1 Base "OrgUnitSealType" "orgUnitSeal"
* seal.orgUnitSeal.orgUnit 1..1 IIType "orgUnit" "orgUnit"
* seal.orgUnitSeal.sealPeriod 0..1 DatePeriodType "sealPeriod" "sealPeriod"
* seal.careProviderSeal 0..1 Base "CareProviderSealType" "careProviderSeal"
* seal.careProviderSeal.careProviderId 1..1 IIType "careProviderId" "careProviderId"
* seal.careProviderSeal.sealPeriod 0..1 DatePeriodType "sealPeriod" "sealPeriod"
* seal.fullSeal 0..1 Base "FullSealType" "fullSeal"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetSealsFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* seal obeys getseals-seal-updated-after-created
* seal obeys getseals-seal-valid-period
* seal obeys getseals-seal-one-scope
* seal.patientId obeys getseals-patientid-pnr-sam
* seal.orgUnitSeal.orgUnit obeys getseals-orgunit-hsa
* seal.careProviderSeal.careProviderId obeys getseals-careproviderid-hsa

Invariant: getseals-seal-one-scope
Description: "ÖR1–ÖR3: exakt en av fullSeal, careProviderSeal och orgUnitSeal ska anges i en försegling."
Expression: "fullSeal.count() + careProviderSeal.count() + orgUnitSeal.count() = 1"
Severity: #error

Invariant: getseals-seal-valid-period
Description: "ÖR4: validTo får inte vara äldre än validFrom."
Expression: "(validFrom.exists() and validTo.exists()) implies validTo.toDecimal() >= validFrom.toDecimal()"
Severity: #error

Invariant: getseals-seal-updated-after-created
Description: "ÖR5: timeLastUpdated får inte vara äldre än timeCreated."
Expression: "timeLastUpdated.toDecimal() >= timeCreated.toDecimal()"
Severity: #error

Invariant: getseals-patientid-pnr-sam
Description: "ÖR6: patientId root ska vara OID för personnummer eller samordningsnummer, och extension ska ha formatet ÅÅÅÅMMDDNNNN utan bindestreck (testsvitens constraints.xml)."
Expression: "(root = '1.2.752.129.2.1.3.1' or root = '1.2.752.129.2.1.3.3') and iiExtension.matches('^[0-9]{8}[0-9pPtTfF][0-9]{3}$')"
Severity: #error

Invariant: getseals-orgunit-hsa
Description: "root ska vara OID för HSA-id (1.2.752.129.2.1.4.1) enligt testsvitens constraints.xml."
Expression: "root = '1.2.752.129.2.1.4.1'"
Severity: #error

Invariant: getseals-careproviderid-hsa
Description: "root ska vara OID för HSA-id (1.2.752.129.2.1.4.1) enligt testsvitens constraints.xml."
Expression: "root = '1.2.752.129.2.1.4.1'"
Severity: #error
