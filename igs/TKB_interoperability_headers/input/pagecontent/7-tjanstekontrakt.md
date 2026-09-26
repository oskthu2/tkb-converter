# 7 Tjänstekontrakt

Domänen `interoperability:headers` innehåller **inga tjänstekontrakt**. Repot innehåller ingen WSDL och inga responder-scheman, bara det delade domänschemat. Elementen `Actor` och `ProcessingStatus` används i stället av andra domäners tjänstekontrakt. De beskrivs i [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html).

### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [interoperability_headers_1.1.xsd](interoperability_headers_1.1.xsd) | Domänschema (delat), version 1.1 |
| [interoperability_headers_1.0.xsd](interoperability_headers_1.0.xsd) | Domänschema (delat), version 1.0 |

### FHIR-artefakter

* **Logisk modell:** [StructureDefinition/actor](StructureDefinition-actor.html)
* **Logisk modell:** [StructureDefinition/processingstatus](StructureDefinition-processingstatus.html)
* **Kodsystem:** [CodeSystem/actortype-cs](CodeSystem-actortype-cs.html)
* **ValueSet:** [ValueSet/actortype-vs](ValueSet-actortype-vs.html)
* **Kodsystem:** [CodeSystem/processingstatuscode-cs](CodeSystem-processingstatuscode-cs.html)
* **ValueSet:** [ValueSet/processingstatuscode-vs](ValueSet-processingstatuscode-vs.html)
* **Kodsystem:** [CodeSystem/causingagent-cs](CodeSystem-causingagent-cs.html)
* **ValueSet:** [ValueSet/causingagent-vs](ValueSet-causingagent-vs.html)
