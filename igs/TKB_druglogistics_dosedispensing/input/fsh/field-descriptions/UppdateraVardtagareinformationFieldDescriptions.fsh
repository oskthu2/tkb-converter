// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UppdateraVardtagareinformationFieldDescriptions
* resultatkod ^comment = "TKB-fält: `resultatkod` (`ResultatkodEnum`, kardinalitet 1..1).

**Modellanteckning:** resultatkod Tillåtna värden: 1, 2, 3."
* meddelandetext ^comment = "TKB-fält: `meddelandetext` (`string`, kardinalitet 1..1)."
* meddelandeid ^comment = "TKB-fält: `meddelandeid` (`int`, kardinalitet 1..1)."
* Patientinformation ^comment = "TKB-fält: `Patientinformation` (`PatientinfoResponse`, kardinalitet 0..1)."
* Patientinformation.fornamn ^definition = "Anvandarens fornamn."
* Patientinformation.fornamn ^comment = "TKB-fält: `../fornamn` (`string`, kardinalitet 1..1)."
* Patientinformation.mellannamn ^definition = "Anvandarens mellanamn."
* Patientinformation.mellannamn ^comment = "TKB-fält: `../mellannamn` (`string`, kardinalitet 0..1)."
* Patientinformation.efternamn ^definition = "Anvandarens efternamn."
* Patientinformation.efternamn ^comment = "TKB-fält: `../efternamn` (`string`, kardinalitet 1..1)."
* Patientinformation.identitetstyp ^comment = "TKB-fält: `../identitetstyp` (`IdentitetstypEnum`, kardinalitet 1..1).

**Modellanteckning:** identitetstyp Tillåtna värden: P, R, S."
* Patientinformation.personid ^definition = "Anvandarens personid"
* Patientinformation.personid ^comment = "TKB-fält: `../personid` (`string`, kardinalitet 1..1)."
* Patientinformation.lanskod ^definition = "Anvandarens folkbokforda lanskod"
* Patientinformation.lanskod ^comment = "TKB-fält: `../lanskod` (`string`, kardinalitet 0..1)."
* Patientinformation.kommunkod ^definition = "Anvandarens folkbokforda kommunkod"
* Patientinformation.kommunkod ^comment = "TKB-fält: `../kommunkod` (`string`, kardinalitet 0..1)."
