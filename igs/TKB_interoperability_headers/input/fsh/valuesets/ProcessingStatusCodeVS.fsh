// Genererad från RIV-TA-domänen interoperability:headers v1.1 (schema interoperability_headers_1.1.xsd)
// Domänen saknar TKB-dokument: modellen bygger enbart på XSD:n och dess xs:documentation.
// Genererad: 2026-09-26

ValueSet: ProcessingStatusCodeVS
Id: processingstatuscode-vs
Title: "ProcessingStatusCode — ValueSet"
Description: "Tillåtna värden för ProcessingStatus.processingStatusList.statusCode enligt ProcessingStatusCodeCS."
* ^status = #active
* include codes from system ProcessingStatusCodeCS
