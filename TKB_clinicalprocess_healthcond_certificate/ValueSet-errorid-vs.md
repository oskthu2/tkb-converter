# Fel-ID — ValueSet - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fel-ID — ValueSet**

## ValueSet: Fel-ID — ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/errorid-vs | *Version*:4.1-RC1 |
| Active as of 2026-09-09 | *Computable Name*:ErrorIdVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tillåtna felkoder i ResultType.errorId. 

 **References** 

* [CertificateStatusUpdateForCare](StructureDefinition-certificatestatusupdateforcare.md)
* [CreateDraftCertificate](StructureDefinition-createdraftcertificate.md)
* [RegisterCertificate](StructureDefinition-registercertificate.md)
* [RevokeCertificate](StructureDefinition-revokecertificate.md)
* [SendCertificateToRecipient](StructureDefinition-sendcertificatetorecipient.md)
* [SendMessageToCare](StructureDefinition-sendmessagetocare.md)
* [SendMessageToRecipient](StructureDefinition-sendmessagetorecipient.md)
* [SetCertificateStatus](StructureDefinition-setcertificatestatus.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "errorid-vs",
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/errorid-vs",
  "version" : "4.1-RC1",
  "name" : "ErrorIdVS",
  "title" : "Fel-ID — ValueSet",
  "status" : "active",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna felkoder i ResultType.errorId.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/errorid-cs"
    }]
  }
}

```
