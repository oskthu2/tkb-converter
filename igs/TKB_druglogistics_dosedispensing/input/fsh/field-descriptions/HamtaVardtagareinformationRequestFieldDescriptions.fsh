// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HamtaVardtagareinformationRequestFieldDescriptions
* glnkod ^comment = "TKB-fält: `glnkod` (`string`, kardinalitet 1..1)."
* Behorighetsinformation ^comment = "TKB-fält: `Behorighetsinformation` (`BehorighetsinfoRequest`, kardinalitet 1..1)."
* Behorighetsinformation.fornamn ^comment = "TKB-fält: `../fornamn` (`string`, kardinalitet 1..1)."
* Behorighetsinformation.efternamn ^comment = "TKB-fält: `../efternamn` (`string`, kardinalitet 1..1)."
* Behorighetsinformation.forskrivarkod ^comment = "TKB-fält: `../forskrivarkod` (`string`, kardinalitet 0..1)."
* Behorighetsinformation.yrkeskod ^comment = "TKB-fält: `../yrkeskod` (`YrkesKodEnum`, kardinalitet 0..1).

**Modellanteckning:** yrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH."
* Behorighetsinformation.arbetsplatskod ^comment = "TKB-fält: `../arbetsplatskod` (`string`, kardinalitet 1..1)."
* Behorighetsinformation.hsaid ^comment = "TKB-fält: `../hsaid` (`string`, kardinalitet 0..1)."
* Behorighetsinformation.personnummer ^comment = "TKB-fält: `../personnummer` (`string`, kardinalitet 0..1)."
* Behorighetsinformation.organisationsnummer ^comment = "TKB-fält: `../organisationsnummer` (`string`, kardinalitet 0..1)."
* identitetstyp ^comment = "TKB-fält: `identitetstyp` (`IdentitetstypEnum`, kardinalitet 1..1).

**Modellanteckning:** identitetstyp Tillåtna värden: P, R, S."
* personid ^comment = "TKB-fält: `personid` (`string`, kardinalitet 1..1)."
