# ProcessClaimSpecification — Request - financial: billing: claim v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessClaimSpecification — Request**

## Logical Model: ProcessClaimSpecification — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/processclaimspecification-request | *Version*:1.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:ProcessClaimSpecificationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ProcessClaimSpecification (urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.financial-billing-claim|current/StructureDefinition/StructureDefinition-processclaimspecification-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processclaimspecification-request.csv), [Excel](StructureDefinition-processclaimspecification-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processclaimspecification-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/processclaimspecification-request",
  "version" : "1.1.0",
  "name" : "ProcessClaimSpecificationRequest",
  "title" : "ProcessClaimSpecification — Request",
  "status" : "draft",
  "date" : "2026-09-28T08:57:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i ProcessClaimSpecification\n(urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/processclaimspecification-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processclaimspecification-request",
      "path" : "processclaimspecification-request",
      "short" : "ProcessClaimSpecification — Request",
      "definition" : "Logisk modell för begäran i ProcessClaimSpecification\n(urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "processclaimspecification-request.logicalAddress",
      "path" : "processclaimspecification-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the receiving county council",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification",
      "path" : "processclaimspecification-request.claimSpecification",
      "short" : "claimSpecification",
      "definition" : "claimSpecification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.processClaimSpecificationId",
      "path" : "processclaimspecification-request.claimSpecification.processClaimSpecificationId",
      "short" : "processClaimSpecificationId",
      "definition" : "processClaimSpecificationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.issueDate",
      "path" : "processclaimspecification-request.claimSpecification.issueDate",
      "short" : "issueDate",
      "definition" : "issueDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.issueTime",
      "path" : "processclaimspecification-request.claimSpecification.issueTime",
      "short" : "issueTime",
      "definition" : "issueTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.typeOfInvoice",
      "path" : "processclaimspecification-request.claimSpecification.typeOfInvoice",
      "short" : "typeOfInvoice",
      "definition" : "typeOfInvoice",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.invoiceId",
      "path" : "processclaimspecification-request.claimSpecification.invoiceId",
      "short" : "invoiceId",
      "definition" : "invoiceId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.invoiceDateOfIssue",
      "path" : "processclaimspecification-request.claimSpecification.invoiceDateOfIssue",
      "short" : "invoiceDateOfIssue",
      "definition" : "invoiceDateOfIssue",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.referenceToInvoice",
      "path" : "processclaimspecification-request.claimSpecification.referenceToInvoice",
      "short" : "referenceToInvoice",
      "definition" : "referenceToInvoice",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.referenceToProcessClaimSpecificationId",
      "path" : "processclaimspecification-request.claimSpecification.referenceToProcessClaimSpecificationId",
      "short" : "referenceToProcessClaimSpecificationId",
      "definition" : "referenceToProcessClaimSpecificationId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount",
      "short" : "payableAmount",
      "definition" : "payableAmount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount.amount",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount.currency",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.payableAmount.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.payableAmount.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.supplierParty",
      "path" : "processclaimspecification-request.claimSpecification.supplierParty",
      "short" : "supplierParty",
      "definition" : "supplierParty",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.supplierParty.identification",
      "path" : "processclaimspecification-request.claimSpecification.supplierParty.identification",
      "short" : "identification",
      "definition" : "identification",
      "min" : 1,
      "max" : "2",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.supplierParty.identification.root",
      "path" : "processclaimspecification-request.claimSpecification.supplierParty.identification.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.supplierParty.identification.iiExtension",
      "path" : "processclaimspecification-request.claimSpecification.supplierParty.identification.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.supplierParty.sellerContact",
      "path" : "processclaimspecification-request.claimSpecification.supplierParty.sellerContact",
      "short" : "sellerContact",
      "definition" : "sellerContact",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.supplierParty.sellerContact.contactName",
      "path" : "processclaimspecification-request.claimSpecification.supplierParty.sellerContact.contactName",
      "short" : "contactName",
      "definition" : "contactName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.supplierParty.sellerContact.telephone",
      "path" : "processclaimspecification-request.claimSpecification.supplierParty.sellerContact.telephone",
      "short" : "telephone",
      "definition" : "telephone",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.supplierParty.sellerContact.electronicMail",
      "path" : "processclaimspecification-request.claimSpecification.supplierParty.sellerContact.electronicMail",
      "short" : "electronicMail",
      "definition" : "electronicMail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.customerParty",
      "path" : "processclaimspecification-request.claimSpecification.customerParty",
      "short" : "customerParty",
      "definition" : "customerParty",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.customerParty.identification",
      "path" : "processclaimspecification-request.claimSpecification.customerParty.identification",
      "short" : "identification",
      "definition" : "identification",
      "min" : 1,
      "max" : "2",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.customerParty.identification.root",
      "path" : "processclaimspecification-request.claimSpecification.customerParty.identification.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.customerParty.identification.iiExtension",
      "path" : "processclaimspecification-request.claimSpecification.customerParty.identification.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.customerParty.buyerContact",
      "path" : "processclaimspecification-request.claimSpecification.customerParty.buyerContact",
      "short" : "buyerContact",
      "definition" : "buyerContact",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.customerParty.buyerContact.contactName",
      "path" : "processclaimspecification-request.claimSpecification.customerParty.buyerContact.contactName",
      "short" : "contactName",
      "definition" : "contactName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.customerParty.buyerContact.telephone",
      "path" : "processclaimspecification-request.claimSpecification.customerParty.buyerContact.telephone",
      "short" : "telephone",
      "definition" : "telephone",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.customerParty.buyerContact.electronicMail",
      "path" : "processclaimspecification-request.claimSpecification.customerParty.buyerContact.electronicMail",
      "short" : "electronicMail",
      "definition" : "electronicMail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine",
      "short" : "healthCareServicesSpecificationLine",
      "definition" : "healthCareServicesSpecificationLine",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation",
      "short" : "patientInformation",
      "definition" : "patientInformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity",
      "short" : "patientIdentity",
      "definition" : "patientIdentity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity.root",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity.iiExtension",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation",
      "short" : "patientOtherInformation",
      "definition" : "patientOtherInformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county",
      "short" : "county",
      "definition" : "county",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality",
      "short" : "municipality",
      "definition" : "municipality",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber",
      "short" : "listingLocalAuthoritiesNumber",
      "definition" : "listingLocalAuthoritiesNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber.root",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber.iiExtension",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.LMACardNumber",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.LMACardNumber",
      "short" : "LMACardNumber",
      "definition" : "LMACardNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender",
      "short" : "gender",
      "definition" : "gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.EUCardNumber",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.EUCardNumber",
      "short" : "EUCardNumber",
      "definition" : "EUCardNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed",
      "short" : "healthcarePerformed",
      "definition" : "healthcarePerformed",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.lineId",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.lineId",
      "short" : "lineId",
      "definition" : "lineId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.careContactId",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.careContactId",
      "short" : "careContactId",
      "definition" : "careContactId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.referenceToLineId",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.referenceToLineId",
      "short" : "referenceToLineId",
      "definition" : "referenceToLineId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.reasonForCredit",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.reasonForCredit",
      "short" : "reasonForCredit",
      "definition" : "reasonForCredit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment",
      "short" : "paymentCommitment",
      "definition" : "paymentCommitment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.remittanceNumber",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.remittanceNumber",
      "short" : "remittanceNumber",
      "definition" : "remittanceNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.paymentCommitmentNumber",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.paymentCommitmentNumber",
      "short" : "paymentCommitmentNumber",
      "definition" : "paymentCommitmentNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfAgreement",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfAgreement",
      "short" : "typeOfAgreement",
      "definition" : "typeOfAgreement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfChapter",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfChapter",
      "short" : "typeOfChapter",
      "definition" : "typeOfChapter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.agreementInRiksavtalet",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.agreementInRiksavtalet",
      "short" : "agreementInRiksavtalet",
      "definition" : "agreementInRiksavtalet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfReimbursement",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfReimbursement",
      "short" : "typeOfReimbursement",
      "definition" : "typeOfReimbursement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory",
      "short" : "healthcareCategory",
      "definition" : "healthcareCategory",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare",
      "short" : "typeOfCare",
      "definition" : "typeOfCare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.publicCare",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.publicCare",
      "short" : "publicCare",
      "definition" : "publicCare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.plannedHealthcare",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.plannedHealthcare",
      "short" : "plannedHealthcare",
      "definition" : "plannedHealthcare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfVisit",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfVisit",
      "short" : "typeOfVisit",
      "definition" : "typeOfVisit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan",
      "short" : "timespan",
      "definition" : "timespan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime",
      "short" : "healthcareVisitDateTime",
      "definition" : "healthcareVisitDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime.careVisitDate",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime.careVisitDate",
      "short" : "careVisitDate",
      "definition" : "careVisitDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime.careVisitTime",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime.careVisitTime",
      "short" : "careVisitTime",
      "definition" : "careVisitTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime",
      "short" : "healthcareDischargeDateTime",
      "definition" : "healthcareDischargeDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime.careDischargeDate",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime.careDischargeDate",
      "short" : "careDischargeDate",
      "definition" : "careDischargeDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime.careDischargeTime",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime.careDischargeTime",
      "short" : "careDischargeTime",
      "definition" : "careDischargeTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod",
      "short" : "invoicePeriod",
      "definition" : "invoicePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod.start",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod.end",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays",
      "short" : "numberOfDays",
      "definition" : "numberOfDays",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays.onLeave",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays.onLeave",
      "short" : "onLeave",
      "definition" : "onLeave",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays.inCare",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays.inCare",
      "short" : "inCare",
      "definition" : "inCare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit",
      "short" : "healthcareUnit",
      "definition" : "healthcareUnit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId.root",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId.iiExtension",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitName",
      "short" : "careUnitName",
      "definition" : "careUnitName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.professionCodeForHealthcare",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.professionCodeForHealthcare",
      "short" : "professionCodeForHealthcare",
      "definition" : "professionCodeForHealthcare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization",
      "short" : "categorization",
      "definition" : "categorization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.productCategory",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.productCategory",
      "short" : "productCategory",
      "definition" : "productCategory",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.priceList",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.priceList",
      "short" : "priceList",
      "definition" : "priceList",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost",
      "short" : "DRGCost",
      "definition" : "DRGCost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode",
      "short" : "DRGCode",
      "definition" : "DRGCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice",
      "short" : "DRGPrice",
      "definition" : "DRGPrice",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime",
      "short" : "extendedAllowanceCareTime",
      "definition" : "extendedAllowanceCareTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost",
      "short" : "extendedAllowanceCost",
      "definition" : "extendedAllowanceCost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare",
      "short" : "patientSpecificCare",
      "definition" : "patientSpecificCare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareCode",
      "short" : "patientSpecificCareCode",
      "definition" : "patientSpecificCareCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareCodeName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareCodeName",
      "short" : "patientSpecificCareCodeName",
      "definition" : "patientSpecificCareCodeName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.numberOfPatientSpecificCare",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.numberOfPatientSpecificCare",
      "short" : "numberOfPatientSpecificCare",
      "definition" : "numberOfPatientSpecificCare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice",
      "short" : "patientSpecificCarePrice",
      "definition" : "patientSpecificCarePrice",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount",
      "short" : "patientSpecificCareTotalAmount",
      "definition" : "patientSpecificCareTotalAmount",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails",
      "short" : "invoicedAmountDetails",
      "definition" : "invoicedAmountDetails",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount",
      "short" : "patientCareInvoiceGrossAmount",
      "definition" : "patientCareInvoiceGrossAmount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount",
      "short" : "patientCareInvoiceNetAmount",
      "definition" : "patientCareInvoiceNetAmount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance",
      "short" : "patientCareAllowance",
      "definition" : "patientCareAllowance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount",
      "short" : "patientCareDiscount",
      "definition" : "patientCareDiscount",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge",
      "short" : "patientCareCharge",
      "definition" : "patientCareCharge",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee",
      "short" : "outPatientCareFee",
      "definition" : "outPatientCareFee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid",
      "short" : "outPatientCareFeePaid",
      "definition" : "outPatientCareFeePaid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientFeeReducedCategory",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientFeeReducedCategory",
      "short" : "patientFeeReducedCategory",
      "definition" : "patientFeeReducedCategory",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientFreePassCauseIndicator",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientFreePassCauseIndicator",
      "short" : "patientFreePassCauseIndicator",
      "definition" : "patientFreePassCauseIndicator",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee",
      "short" : "inpatientCareFee",
      "definition" : "inpatientCareFee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.amount",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.amount",
      "short" : "amount",
      "definition" : "amount",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity",
      "short" : "activity",
      "definition" : "activity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.medicalFieldCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.medicalFieldCode",
      "short" : "medicalFieldCode",
      "definition" : "medicalFieldCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification",
      "short" : "businessClassification",
      "definition" : "businessClassification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.careLevel",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.careLevel",
      "short" : "careLevel",
      "definition" : "careLevel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis",
      "short" : "diagnosis",
      "definition" : "diagnosis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis",
      "short" : "inpatientCareDiagnosis",
      "definition" : "inpatientCareDiagnosis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis",
      "short" : "mainDiagnosis",
      "definition" : "mainDiagnosis",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode",
      "short" : "diagnosisCode",
      "definition" : "diagnosisCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis",
      "short" : "biDiagnosis",
      "definition" : "biDiagnosis",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode",
      "short" : "diagnosisCode",
      "definition" : "diagnosisCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis",
      "short" : "outpatientCareDiagnosis",
      "definition" : "outpatientCareDiagnosis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis",
      "short" : "mainDiagnosis",
      "definition" : "mainDiagnosis",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode",
      "short" : "diagnosisCode",
      "definition" : "diagnosisCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis",
      "short" : "biDiagnosis",
      "definition" : "biDiagnosis",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode",
      "short" : "diagnosisCode",
      "definition" : "diagnosisCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment",
      "short" : "treatment",
      "definition" : "treatment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment",
      "short" : "typeOfTreatment",
      "definition" : "typeOfTreatment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC",
      "short" : "ATC",
      "definition" : "ATC",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.cvCode",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystem",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystemName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystemVersion",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.displayName",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.originalText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified",
      "short" : "unspecified",
      "definition" : "unspecified",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified.unspecifiedText",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified.unspecifiedText",
      "short" : "unspecifiedText",
      "definition" : "unspecifiedText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified.unspecifiedType",
      "path" : "processclaimspecification-request.claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified.unspecifiedType",
      "short" : "unspecifiedType",
      "definition" : "unspecifiedType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
