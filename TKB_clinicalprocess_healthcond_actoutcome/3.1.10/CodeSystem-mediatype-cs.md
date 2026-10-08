# MediaType - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MediaType**

## CodeSystem: MediaType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/mediatype | *Version*:3.1.10 |
| Active as of 2026-10-08 | *Computable Name*:MediaTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av multimedia, MIME-typ (MediaTypeEnum). Används i GetReferralOutcome och GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MediaType — ValueSet](ValueSet-mediatype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mediatype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/mediatype",
  "version" : "3.1.10",
  "name" : "MediaTypeCS",
  "title" : "MediaType",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av multimedia, MIME-typ (MediaTypeEnum). Används i GetReferralOutcome och GetImagingOutcome. Koder enligt clinicalprocess_healthcond_actoutcome_enum_3.1.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 21,
  "concept" : [{
    "code" : "application/dicom",
    "display" : "application/dicom"
  },
  {
    "code" : "application/msword",
    "display" : "application/msword"
  },
  {
    "code" : "application/pdf",
    "display" : "application/pdf"
  },
  {
    "code" : "audio/basic",
    "display" : "audio/basic"
  },
  {
    "code" : "audio/k32adpcm",
    "display" : "audio/k32adpcm"
  },
  {
    "code" : "audio/mpeg",
    "display" : "audio/mpeg"
  },
  {
    "code" : "image/g3fax",
    "display" : "image/g3fax"
  },
  {
    "code" : "image/gif",
    "display" : "image/gif"
  },
  {
    "code" : "image/jpeg",
    "display" : "image/jpeg"
  },
  {
    "code" : "image/png",
    "display" : "image/png"
  },
  {
    "code" : "image/tiff",
    "display" : "image/tiff"
  },
  {
    "code" : "model/vrml",
    "display" : "model/vrml"
  },
  {
    "code" : "multipart/x-hl7-cda-level1",
    "display" : "multipart/x-hl7-cda-level1"
  },
  {
    "code" : "text/html",
    "display" : "text/html"
  },
  {
    "code" : "text/plain",
    "display" : "text/plain"
  },
  {
    "code" : "text/rtf",
    "display" : "text/rtf"
  },
  {
    "code" : "text/sgml",
    "display" : "text/sgml"
  },
  {
    "code" : "text/x-hl7-ft",
    "display" : "text/x-hl7-ft"
  },
  {
    "code" : "text/xml",
    "display" : "text/xml"
  },
  {
    "code" : "video/mpeg",
    "display" : "video/mpeg"
  },
  {
    "code" : "video/x-avi",
    "display" : "video/x-avi"
  }]
}

```
