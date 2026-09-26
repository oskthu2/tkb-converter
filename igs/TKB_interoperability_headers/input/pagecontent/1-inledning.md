# 1 Inledning

> **SAKNAS I KÄLLDOKUMENT — kontrollera manuellt.** Det finns ingen publicerad TKB för domänen `interoperability:headers`. Länken "Senaste TKB" i domänens README på Bitbucket är tom. Texten nedan är sammanställd från schemat och repots historik, inte hämtad ur ett TKB-dokument (se BLOCK-IH-001 i QUESTIONS.md).

Domänen `interoperability:headers` definierar gemensamma XML-element i namnrymden `urn:riv:interoperability:headers:1`. Elementen är tänkta att återanvändas av andra RIV-TA-tjänstedomäner, antingen som huvudelement i anropet eller som tillägg i svaret, och är inte knutna till något eget tjänstekontrakt.

Schemat innehåller två element:

- **`Actor`** identifierar den aktör som ett anrop görs för räkning av. Aktören kan vara invånaren själv (`subject_of_care`) eller ett ombud för invånaren (`subject_of_care_agent`).
- **`ProcessingStatus`** används av aggregerande tjänster för att rapportera tillbaka till konsumenten hur giltiga de returnerade uppgifterna är, med en statuspost per logisk adress (källsystem). Elementet lades till i september 2012 i samband med införandet av aggregerande tjänster.

Båda komplexa typerna avslutas med en öppen utökningspunkt (`xs:any namespace="##other"`) så att senare versioner kan lägga till element i andra namnrymder utan att bryta bakåtkompatibiliteten. Utökningspunkterna har ingen motsvarighet i de logiska FHIR-modellerna.

## Källfiler

| Fil | Typ |
|-----|-----|
| [interoperability_headers_1.1.xsd](interoperability_headers_1.1.xsd) | Domänschema, version 1.1 (gällande) |
| [interoperability_headers_1.0.xsd](interoperability_headers_1.0.xsd) | Domänschema, version 1.0 (tagg `TD_HEADERS_1_0_R`, endast `Actor`) |
