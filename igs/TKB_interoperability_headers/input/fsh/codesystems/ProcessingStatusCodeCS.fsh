// Genererad från RIV-TA-domänen interoperability:headers v1.1 (schema interoperability_headers_1.1.xsd)
// Domänen saknar TKB-dokument: modellen bygger enbart på XSD:n och dess xs:documentation.
// Genererad: 2026-09-26

CodeSystem: ProcessingStatusCodeCS
Id: processingstatuscode-cs
Title: "ProcessingStatusCode"
Description: "Kodverk StatusCodeEnum enligt interoperability_headers_1.1.xsd (urn:riv:interoperability:headers:1). Beskriver kvaliteten på de uppgifter som en aggregerande tjänst returnerat för en logisk adress."
* ^url = "https://fhir.inera.se/CodeSystem/processingstatuscode-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #DataFromSource "DataFromSource" "Inga uppgifter fanns i cache; aktuella uppgifter hämtades från källsystemet."
* #DataFromCache "DataFromCache" "Aktuella uppgifter returnerades från cache; inget anrop gjordes till källsystemet."
* #DataFromCacheSynchFailed "DataFromCacheSynchFailed" "Nödvändig synkronisering med källsystemet misslyckades; eventuellt inaktuella uppgifter returnerades från cache."
* #NoDataSynchFailed "NoDataSynchFailed" "Inga uppgifter returnerades: inga uppgifter i cache och anropet till källsystemet misslyckades."
