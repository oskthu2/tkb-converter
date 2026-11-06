// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: HamtaApoteksInfoFieldDescriptions
* apoteksinformationLista ^definition = "Lista innehållande ett eller flera Apoteksinformation."
* apoteksinformationLista ^comment = "TKB-fält: `apoteksinformationLista` (`ApoteksinformationResponse`, kardinalitet 1..*)."
* apoteksinformationLista.aktorsnamn ^definition = "Officiellt namn för aktör"
* apoteksinformationLista.aktorsnamn ^comment = "TKB-fält: `../aktorsnamn` (`string`, kardinalitet 0..1)."
* apoteksinformationLista.aktorsorgnr ^definition = "Aktörens organisationsnummer."
* apoteksinformationLista.aktorsorgnr ^comment = "TKB-fält: `../aktorsorgnr` (`long`, kardinalitet 0..1).

**Modellanteckning:** Aktörens organisationsnummer. (xs:long i schemat.)"
* apoteksinformationLista.allmantelefon ^definition = "Telefonnummer för allmänheten"
* apoteksinformationLista.allmantelefon ^comment = "TKB-fält: `../allmantelefon` (`string`, kardinalitet 0..1)."
* apoteksinformationLista.besoksadress ^definition = "Expeditionsställets besöksadress"
* apoteksinformationLista.besoksadress ^comment = "TKB-fält: `../besoksadress` (`string`, kardinalitet 0..1)."
* apoteksinformationLista.eReceptDjur ^definition = "Markering gällande om apoteket kan expediera elektroniska djurrecept."
* apoteksinformationLista.eReceptDjur ^comment = "TKB-fält: `../eReceptDjur` (`boolean`, kardinalitet 1..1)."
* apoteksinformationLista.fax ^definition = "Expeditionsställets faxnummer"
* apoteksinformationLista.fax ^comment = "TKB-fält: `../fax` (`string`, kardinalitet 0..1)."
* apoteksinformationLista.glnKod ^definition = "Expeditionsställets GLN-kod"
* apoteksinformationLista.glnKod ^comment = "TKB-fält: `../glnKod` (`string`, kardinalitet 1..1)."
* apoteksinformationLista.huvudtypkod ^definition = "Kod som beskriver huvudverksamheten för expeditionsstället"
* apoteksinformationLista.huvudtypkod ^comment = "TKB-fält: `../huvudtypkod` (`string`, kardinalitet 0..1)."
* apoteksinformationLista.namn ^definition = "Expeditionsställets officiella namn"
* apoteksinformationLista.namn ^comment = "TKB-fält: `../namn` (`string`, kardinalitet 0..1)."
* apoteksinformationLista.ort ^definition = "Expeditionsställets besöksort"
* apoteksinformationLista.ort ^comment = "TKB-fält: `../ort` (`string`, kardinalitet 0..1)."
* apoteksinformationLista.slutdatum ^definition = "Datum för stängning av verksamhet"
* apoteksinformationLista.slutdatum ^comment = "TKB-fält: `../slutdatum` (`dateTime`, kardinalitet 0..1)."
* apoteksinformationLista.startdatum ^definition = "Datum för start av verksamhet"
* apoteksinformationLista.startdatum ^comment = "TKB-fält: `../startdatum` (`dateTime`, kardinalitet 1..1)."
