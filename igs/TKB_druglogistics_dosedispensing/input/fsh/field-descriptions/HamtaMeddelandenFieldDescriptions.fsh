// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HamtaMeddelandenFieldDescriptions
* resultatkod ^comment = "TKB-fält: `resultatkod` (`ResultatkodEnum`, kardinalitet 1..1).

**Modellanteckning:** resultatkod Tillåtna värden: 1, 2, 3."
* meddelandetext ^comment = "TKB-fält: `meddelandetext` (`string`, kardinalitet 1..1)."
* meddelandeid ^comment = "TKB-fält: `meddelandeid` (`int`, kardinalitet 1..1)."
* Meddelanden ^comment = "TKB-fält: `Meddelanden` (`HamtaMeddelandeninfoResponse`, kardinalitet 0..*)."
* Meddelanden.meddelandeid ^comment = "TKB-fält: `../meddelandeid` (`string`, kardinalitet 1..1)."
* Meddelanden.Patientinformation ^comment = "TKB-fält: `../Patientinformation` (`PatientinfoResponse`, kardinalitet 0..1)."
* Meddelanden.Patientinformation.fornamn ^definition = "Anvandarens fornamn."
* Meddelanden.Patientinformation.fornamn ^comment = "TKB-fält: `../../fornamn` (`string`, kardinalitet 1..1)."
* Meddelanden.Patientinformation.mellannamn ^definition = "Anvandarens mellanamn."
* Meddelanden.Patientinformation.mellannamn ^comment = "TKB-fält: `../../mellannamn` (`string`, kardinalitet 0..1)."
* Meddelanden.Patientinformation.efternamn ^definition = "Anvandarens efternamn."
* Meddelanden.Patientinformation.efternamn ^comment = "TKB-fält: `../../efternamn` (`string`, kardinalitet 1..1)."
* Meddelanden.Patientinformation.identitetstyp ^comment = "TKB-fält: `../../identitetstyp` (`IdentitetstypEnum`, kardinalitet 1..1).

**Modellanteckning:** identitetstyp Tillåtna värden: P, R, S."
* Meddelanden.Patientinformation.personid ^definition = "Anvandarens personid"
* Meddelanden.Patientinformation.personid ^comment = "TKB-fält: `../../personid` (`string`, kardinalitet 1..1)."
* Meddelanden.Patientinformation.lanskod ^definition = "Anvandarens folkbokforda lanskod"
* Meddelanden.Patientinformation.lanskod ^comment = "TKB-fält: `../../lanskod` (`string`, kardinalitet 0..1)."
* Meddelanden.Patientinformation.kommunkod ^definition = "Anvandarens folkbokforda kommunkod"
* Meddelanden.Patientinformation.kommunkod ^comment = "TKB-fält: `../../kommunkod` (`string`, kardinalitet 0..1)."
* Meddelanden.kommunikationsriktning ^comment = "TKB-fält: `../kommunikationsriktning` (`KommunikationsriktningEnum`, kardinalitet 0..1).

**Modellanteckning:** kommunikationsriktning Tillåtna värden: 1, 2."
* Meddelanden.tidigaremeddelandeid ^comment = "TKB-fält: `../tidigaremeddelandeid` (`string`, kardinalitet 0..1)."
* Meddelanden.ordinationsid ^comment = "TKB-fält: `../ordinationsid` (`string`, kardinalitet 0..1)."
* Meddelanden.glnkod ^comment = "TKB-fält: `../glnkod` (`string`, kardinalitet 0..1)."
* Meddelanden.dosapoteknamn ^comment = "TKB-fält: `../dosapoteknamn` (`string`, kardinalitet 0..1)."
* Meddelanden.sandningstidpunkt ^comment = "TKB-fält: `../sandningstidpunkt` (`dateTime`, kardinalitet 1..1)."
* Meddelanden.sandarefornamn ^comment = "TKB-fält: `../sandarefornamn` (`string`, kardinalitet 1..1)."
* Meddelanden.sandareefternamn ^comment = "TKB-fält: `../sandareefternamn` (`string`, kardinalitet 1..1)."
* Meddelanden.sandarehsaid ^comment = "TKB-fält: `../sandarehsaid` (`string`, kardinalitet 0..1)."
* Meddelanden.sandareyrkeskod ^comment = "TKB-fält: `../sandareyrkeskod` (`YrkesKodEnum`, kardinalitet 0..1).

**Modellanteckning:** sandareyrkeskod Tillåtna värden: LK, TL, BM, SJ, RS, TH."
* Meddelanden.sandarearbetsplats ^comment = "TKB-fält: `../sandarearbetsplats` (`string`, kardinalitet 0..1)."
* Meddelanden.rubrik ^comment = "TKB-fält: `../rubrik` (`string`, kardinalitet 0..1)."
* Meddelanden.prioritet ^comment = "TKB-fält: `../prioritet` (`MeddelandePrioritetEnum`, kardinalitet 0..1).

**Modellanteckning:** prioritet Tillåtna värden: L, N, H."
* Meddelanden.meddelandestatus ^comment = "TKB-fält: `../meddelandestatus` (`MeddelandeStatusEnum`, kardinalitet 1..1).

**Modellanteckning:** meddelandestatus Tillåtna värden: L, O, B, BLO, LO, BL."
* Meddelanden.meddelandestatusfornamn ^comment = "TKB-fält: `../meddelandestatusfornamn` (`string`, kardinalitet 1..1)."
* Meddelanden.meddelandestatusefternamn ^comment = "TKB-fält: `../meddelandestatusefternamn` (`string`, kardinalitet 1..1)."
* Meddelanden.meddelandestatusarbetsplats ^comment = "TKB-fält: `../meddelandestatusarbetsplats` (`string`, kardinalitet 1..1)."
* Meddelanden.statustidpunkt ^comment = "TKB-fält: `../statustidpunkt` (`dateTime`, kardinalitet 1..1)."
* Meddelanden.meddelande ^comment = "TKB-fält: `../meddelande` (`string`, kardinalitet 1..1)."
