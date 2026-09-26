# Artifacts Summary - crm: requeststatus v2.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetRequestActivities](StructureDefinition-getrequestactivities.md) | Logisk modell för tjänstekontraktet GetRequestActivities (RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2). Representerar responsens informationsstruktur — en lista med statusrader för en patients remisser. |
| [GetRequestActivities — Request](StructureDefinition-getrequestactivities-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetRequestActivities (RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Kv Form av framställan — ValueSet](ValueSet-kvformavframstallan-vs.md) | Tillåtna värden för medium för remiss/framställan (request.medium) enligt Kv Form av framställan (OID: 1.2.752.129.2.2.2.7). |
| [Kv framställantyp — ValueSet](ValueSet-kvframstallantyp-vs.md) | Tillåtna värden för remisstyp (typeOfRequest, request.type) enligt Kv framställantyp (OID: 1.2.752.129.2.2.2.24). |
| [Kv status vårdbegäran — ValueSet](ValueSet-kvstatusvardbegaran-vs.md) | Tillåtna värden för remisstatus (statusCode) enligt Kv status vårdbegäran (OID: 1.2.752.129.2.2.2.43). Kodverket kan utökas utan versionsuppdatering. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Kv Form av framställan](CodeSystem-kvformavframstallan-cs.md) | Kodverk Kv Form av framställan — anger medium/form för en remiss/framställan. OID: 1.2.752.129.2.2.2.7. |
| [Kv framställantyp](CodeSystem-kvframstallantyp-cs.md) | Kodverk Kv framställantyp — anger typ av remiss/framställan. OID: 1.2.752.129.2.2.2.24. |
| [Kv status vårdbegäran](CodeSystem-kvstatusvardbegaran-cs.md) | Kodverk Kv status vårdbegäran — anger status för en remiss/vårdbegäran. OID: 1.2.752.129.2.2.2.43. Kodverket kan komma att kompletteras utan versionsuppdatering av tjänstekontraktet. Konsumenter MÅSTE vara förberedda på nya koder. |

