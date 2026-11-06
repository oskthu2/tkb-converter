// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SokVardandeEnhetFieldDescriptions
* resultatkod ^comment = "TKB-fält: `resultatkod` (`ResultatkodEnum`, kardinalitet 1..1)."
* meddelandetext ^comment = "TKB-fält: `meddelandetext` (`string`, kardinalitet 1..1)."
* meddelandeid ^comment = "TKB-fält: `meddelandeid` (`int`, kardinalitet 1..1)."
* dosaktor ^comment = "TKB-fält: `dosaktor` (`string`, kardinalitet 1..1)."
* VardandeEnhet ^comment = "TKB-fält: `VardandeEnhet` (`VardandeEnhetResponse`, kardinalitet 0..*)."
* VardandeEnhet.vardandeenhetid ^comment = "TKB-fält: `../vardandeenhetid` (`string`, kardinalitet 1..1)."
* VardandeEnhet.vardandeenhetnamn ^comment = "TKB-fält: `../vardandeenhetnamn` (`string`, kardinalitet 1..1)."
* VardandeEnhet.vardandeenhetpostort ^comment = "TKB-fält: `../vardandeenhetpostort` (`string`, kardinalitet 1..1)."
* VardandeEnhet.glnkod ^comment = "TKB-fält: `../glnkod` (`string`, kardinalitet 1..1)."
