# 7 Tjänstekontrakt - interoperability: headers — Gemensamma huvudelement v1.1.0

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Domänen `interoperability:headers` innehåller **inga tjänstekontrakt**. Repot innehåller ingen WSDL och inga responder-scheman, bara det delade domänschemat. Elementen `Actor` och `ProcessingStatus` används i stället av andra domäners tjänstekontrakt. De beskrivs i [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.md).

### Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [interoperability_headers_1.1.xsd](interoperability_headers_1.1.xsd) | Domänschema (delat), version 1.1 |
| [interoperability_headers_1.0.xsd](interoperability_headers_1.0.xsd) | Domänschema (delat), version 1.0 |

### FHIR-artefakter

* **Logisk modell:** [StructureDefinition/actor](StructureDefinition-actor.md)
* **Logisk modell:** [StructureDefinition/processingstatus](StructureDefinition-processingstatus.md)
* **Kodsystem:** [CodeSystem/actortype-cs](CodeSystem-actortype-cs.md)
* **ValueSet:** [ValueSet/actortype-vs](ValueSet-actortype-vs.md)
* **Kodsystem:** [CodeSystem/processingstatuscode-cs](CodeSystem-processingstatuscode-cs.md)
* **ValueSet:** [ValueSet/processingstatuscode-vs](ValueSet-processingstatuscode-vs.md)
* **Kodsystem:** [CodeSystem/causingagent-cs](CodeSystem-causingagent-cs.md)
* **ValueSet:** [ValueSet/causingagent-vs](ValueSet-causingagent-vs.md)

