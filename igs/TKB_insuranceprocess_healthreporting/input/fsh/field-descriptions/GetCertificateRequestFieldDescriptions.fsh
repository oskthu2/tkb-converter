// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCertificateRequestFieldDescriptions
* certificateId ^definition = "Identitet på intyget. Är en GUID."
* certificateId ^comment = "TKB-fält: `certificateId` (`string`, kardinalitet O).

**Modellanteckning:** ASSUME: Tabellen anger 'O' (Obligatorisk?) men det är oklart om båda fälten eller ett av dem krävs.
Se QUESTIONS.md BLOCK-HR-001."
* nationalIdentityNumber ^definition = "Patientens personnummer eller samordningsnummer"
* nationalIdentityNumber ^comment = "TKB-fält: `nationalIdentityNumber` (`string`, kardinalitet O)."
