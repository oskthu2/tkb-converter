// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HamtaOrginalforpackningRequestFieldDescriptions
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
* Bestallningsutval ^comment = "TKB-fält: `Bestallningsutval` (`BestallningsutvalRequest`, kardinalitet 1..1)."
* Bestallningsutval.bestallningsurval ^comment = "TKB-fält: `../bestallningsurval` (`BestallningsurvalEnum`, kardinalitet 1..1).

**Modellanteckning:** bestallningsurval Tillåtna värden: PU, DM, BU, VG."
* Bestallningsutval.bestallningsid ^comment = "TKB-fält: `../bestallningsid` (`string`, kardinalitet 0..1)."
* Bestallningsutval.patientid ^comment = "TKB-fält: `../patientid` (`string`, kardinalitet 0..1)."
* Bestallningsutval.patientidtyp ^comment = "TKB-fält: `../patientidtyp` (`IdentitetstypEnum`, kardinalitet 0..1).

**Modellanteckning:** patientidtyp Tillåtna värden: P, R, S."
* Bestallningsutval.patientfornamn ^comment = "TKB-fält: `../patientfornamn` (`string`, kardinalitet 0..1)."
* Bestallningsutval.patientefternamn ^comment = "TKB-fält: `../patientefternamn` (`string`, kardinalitet 0..1)."
* Bestallningsutval.vardgivarid ^comment = "TKB-fält: `../vardgivarid` (`string`, kardinalitet 0..1)."
* Bestallningsutval.dosmottagareid ^comment = "TKB-fält: `../dosmottagareid` (`string`, kardinalitet 0..*)."
* Bestallningsutval.bestallningsstatus ^comment = "TKB-fält: `../bestallningsstatus` (`BestallningsStatusEnum`, kardinalitet 1..1).

**Modellanteckning:** bestallningsstatus Tillåtna värden: 1, 2, 3, 4, 5."
* Bestallningsutval.frandatum ^comment = "TKB-fält: `../frandatum` (`dateTime`, kardinalitet 1..1)."
* Bestallningsutval.tilldatum ^comment = "TKB-fält: `../tilldatum` (`dateTime`, kardinalitet 1..1)."
