// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SkapaVardtagareFieldDescriptions
* resultatkod ^comment = "TKB-fält: `resultatkod` (`ResultatkodEnum`, kardinalitet 1..1).

**Modellanteckning:** resultatkod Tillåtna värden: 1, 2, 3."
* meddelandetext ^comment = "TKB-fält: `meddelandetext` (`string`, kardinalitet 1..1)."
* meddelandeid ^comment = "TKB-fält: `meddelandeid` (`int`, kardinalitet 1..1)."
* Patientinformation ^definition = "Patientinformation, se ref [1]"
* Patientinformation ^comment = "TKB-fält: `Patientinf ormation` (kardinalitet 0..1).

**Attribut:** Patientidentitet

**Värdemängd:** Valideras"
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
* Produktionsinformation ^definition = "Information om stopptider, grundschema mm, se ref [1]"
* Produktionsinformation ^comment = "TKB-fält: `Produktio nsinforma tion` (kardinalitet 0..1).

**Attribut:** Produktionsinformation

**Värdemängd:** Valideras"
* Produktionsinformation.dosaktor ^comment = "TKB-fält: `../dosaktor` (`string`, kardinalitet 0..1)."
* Produktionsinformation.dosapotek ^comment = "TKB-fält: `../dosapotek` (`string`, kardinalitet 1..1)."
* Produktionsinformation.dosapotekid ^comment = "TKB-fält: `../dosapotekid` (`string`, kardinalitet 1..1)."
* Produktionsinformation.stopptidbestallning ^comment = "TKB-fält: `../stopptidbestallning` (`dateTime`, kardinalitet 0..1)."
* Produktionsinformation.stopptidordination ^comment = "TKB-fält: `../stopptidordination` (`dateTime`, kardinalitet 0..1)."
* Produktionsinformation.forstadosdag ^comment = "TKB-fält: `../forstadosdag` (`dateTime`, kardinalitet 1..1)."
* Produktionsinformation.dosvecka ^comment = "TKB-fält: `../dosvecka` (`string`, kardinalitet 0..1)."
* Produktionsinformation.doseringsschema ^comment = "TKB-fält: `../doseringsschema` (`DoseringsschemaResponse`, kardinalitet 1..1)."
* Produktionsinformation.doseringsschema.periodlangd ^definition = "Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag."
* Produktionsinformation.doseringsschema.periodlangd ^comment = "TKB-fält: `../../periodlangd` (`int`, kardinalitet 1..1)."
* Produktionsinformation.doseringsschema.intagstillfalle ^definition = "Beskriver tid och mangd for intag av lakemedel."
* Produktionsinformation.doseringsschema.intagstillfalle ^comment = "TKB-fält: `../../intagstillfalle` (`IntagstillfalleResponse`, kardinalitet 1..*)."
* Produktionsinformation.doseringsschema.intagstillfalle.intagstillfalle ^definition = "Klockslag nar patienten ska inta medicinering."
* Produktionsinformation.doseringsschema.intagstillfalle.intagstillfalle ^comment = "TKB-fält: `../../../intagstillfalle` (`int`, kardinalitet 1..1)."
* Produktionsinformation.doseringsschema.intagstillfalle.intagsmangd ^definition = "Intagsmangd per tillfalle"
* Produktionsinformation.doseringsschema.intagstillfalle.intagsmangd ^comment = "TKB-fält: `../../../intagsmangd` (`double`, kardinalitet 0..1)."
* Produktionsinformation.doseringsschema.intagstillfalle.dagIPeriod ^definition = "Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3."
* Produktionsinformation.doseringsschema.intagstillfalle.dagIPeriod ^comment = "TKB-fält: `../../../dagIPeriod` (`int`, kardinalitet 1..1)."
* Produktionsinformation.dosmottagareid ^comment = "TKB-fält: `../dosmottagareid` (`string`, kardinalitet 0..1)."
* Produktionsinformation.dosmottagarenamn ^comment = "TKB-fält: `../dosmottagarenamn` (`string`, kardinalitet 0..1)."
