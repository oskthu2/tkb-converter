// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListCertificatesFieldDescriptions
* meta ^definition = "Metadata information"
* meta ^comment = "TKB-fält: `meta` (kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1."
* meta.certificateId ^definition = "Identitet på intyget. Är en GUID."
* meta.certificateId ^comment = "TKB-fält: `meta.certificateId` (`string`, kardinalitet 1..1)."
* meta.certificateType ^definition = "Typ av intyg. Om inget anges returneras alla typer."
* meta.certificateType ^comment = "TKB-fält: `meta.certificateType` (`string`, kardinalitet 1..1)."
* meta.validFrom ^definition = "Startdatum för sjukskrivningsperioden."
* meta.validFrom ^comment = "TKB-fält: `meta.validFrom` (`datum`, kardinalitet 1..1)."
* meta.validTo ^definition = "Slutdatum för sjukskrivningsperioden."
* meta.validTo ^comment = "TKB-fält: `meta.validTo` (`datum`, kardinalitet 1..1)."
* meta.issuerName ^definition = "Namn för Hos-person som utfärdat intyget"
* meta.issuerName ^comment = "TKB-fält: `meta.issuerName` (`string`, kardinalitet 1..1)."
* meta.facilityName ^definition = "Namn på Hos-vårdenhet där intyget utfärdats"
* meta.facilityName ^comment = "TKB-fält: `meta.facilityName` (`string`, kardinalitet 1..1)."
* meta.signDate ^definition = "Datum när intyget signerades"
* meta.signDate ^comment = "TKB-fält: `meta.signDate` (`date`, kardinalitet 1..1)."
* meta.available ^definition = "Anger om intyget är tillgängligt och kan användas."
* meta.available ^comment = "TKB-fält: `meta.available` (`string`, kardinalitet 1..1)."
* meta.status ^definition = "En lista över statustyper för olika mottagare"
* meta.status ^comment = "TKB-fält: `meta.status` (kardinalitet 0..n)."
* meta.status.target ^definition = "Mottagare för en status. Ex FK"
* meta.status.target ^comment = "TKB-fält: `..status.target` (`string`, kardinalitet 1..1)."
* meta.status.type ^definition = "Typ av statusändring för intyget."
* meta.status.type ^comment = "TKB-fält: `..status.type` (`string`, kardinalitet 1..1).

**Modellanteckning:** type Tillåtna värden: UNHANDLED, DELETED, RESTORED, CANCELLED, SENT, RECEIVED, IN_PROGRESS, PROCESSED."
* meta.status.timestamp ^definition = "När statusen sattes för intyget"
* meta.status.timestamp ^comment = "TKB-fält: `..status.timestamp` (`datetime`, kardinalitet 1..1)."
* result ^comment = "TKB-fält: `result` (kardinalitet 0..1)."
* result.resultCode ^definition = "Information om anropet gick bra(OK, ERROR, INFO)"
* result.resultCode ^comment = "TKB-fält: `result.resultCode` (`string`, kardinalitet 1..1)."
* result.infoText ^definition = "Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text."
* result.infoText ^comment = "TKB-fält: `result.infoText` (`string`, kardinalitet 0..1)."
* result.errorId ^definition = "Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)"
* result.errorId ^comment = "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1)."
* result.errorText ^definition = "Text som ytterliggare beskriver felet"
* result.errorText ^comment = "TKB-fält: `result.errorText` (`string`, kardinalitet 0..1)."
