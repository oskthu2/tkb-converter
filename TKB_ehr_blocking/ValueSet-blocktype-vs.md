# BlockType — ValueSet - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BlockType — ValueSet**

## ValueSet: BlockType — ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/ValueSet/blocktype-vs | *Version*:3.2.2 |
| Active as of 2026-09-09 | *Computable Name*:BlockTypeVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tillåtna värden för typ av spärr. 

 **References** 

* [GetAllBlocks](StructureDefinition-getallblocks.md)
* [GetAllBlocksForPatient](StructureDefinition-getallblocksforpatient.md)
* [GetBlocks](StructureDefinition-getblocks.md)
* [GetBlocksForPatient](StructureDefinition-getblocksforpatient.md)
* [GetExtendedBlocksForPatient](StructureDefinition-getextendedblockforpatient.md)
* [RegisterBlock — Request](StructureDefinition-registerblock-request.md)
* [RegisterExtendedBlock — Request](StructureDefinition-registerextendedblock-request.md)

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
  "id" : "blocktype-vs",
  "url" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/blocktype-vs",
  "version" : "3.2.2",
  "name" : "BlockTypeVS",
  "title" : "BlockType — ValueSet",
  "status" : "active",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för typ av spärr.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/blocktype-cs"
    }]
  }
}

```
