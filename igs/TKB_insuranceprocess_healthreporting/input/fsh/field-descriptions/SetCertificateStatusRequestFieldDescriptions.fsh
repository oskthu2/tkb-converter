// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SetCertificateStatusRequestFieldDescriptions
* certificateId ^definition = "Patientens personnummer eller samordningsnummer"
* certificateId ^comment = "TKB-fält: `certificateId` (`string`, kardinalitet 1..1).

**Modellanteckning:** ASSUME: Tabellrubriken är förväxlad med nationalIdentityNumber i källdokumentet.
Tolkat som att certificateId = intygets GUID-identitet.
Se QUESTIONS.md BLOCK-HR-002."
* nationalIdentityNumber ^definition = "Tidpunkt då meddelandet skickades från vården"
* nationalIdentityNumber ^comment = "TKB-fält: `nationalIdentityNumber` (`datumtid`, kardinalitet 1..1)."
* target ^definition = "Mottagare för en status. Ex FK"
* target ^comment = "TKB-fält: `target` (`string`, kardinalitet 1..1)."
* certificateStatus ^definition = "Typ av statusändring för intyget."
* certificateStatus ^comment = "TKB-fält: `status` (`string`, kardinalitet 1..1)."
* timestamp ^definition = "När anropet sattes för intyget"
* timestamp ^comment = "TKB-fält: `timestamp` (`datetime`, kardinalitet 0..1)."
