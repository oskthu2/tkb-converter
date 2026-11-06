// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UppdateraMeddelandeStatusFieldDescriptions
* resultatkod ^comment = "TKB-fält: `resultatkod` (`ResultatkodEnum`, kardinalitet 1..1)."
* meddelandetext ^comment = "TKB-fält: `meddelandetext` (`string`, kardinalitet 1..1)."
* meddelandeid ^comment = "TKB-fält: `meddelandeid` (`int`, kardinalitet 1..1)."
* Meddelandeninfo ^comment = "TKB-fält: `Meddelandeninfo` (`UppdateraMeddelandestatus`, kardinalitet 0..*)."
* Meddelandeninfo.meddelandeid ^comment = "TKB-fält: `../meddelandeid` (`string`, kardinalitet 1..1)."
* Meddelandeninfo.meddelandestatus ^comment = "TKB-fält: `../meddelandestatus` (`MeddelandeStatusEnum`, kardinalitet 1..1)."
* Meddelandeninfo.statustidpunkt ^comment = "TKB-fält: `../statustidpunkt` (`dateTime`, kardinalitet 1..1)."
