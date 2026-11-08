// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHealthcareFacilitiesRequestFieldDescriptions
* originalAppointmentId ^comment = "TKB-fält: `originalAppointmentId` (`uuidType`, kardinalitet 0..1)."
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1)."
* timeTypeCode ^definition = "Tidstyp att söka lediga datum för.

En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop."
* timeTypeCode ^comment = "TKB-fält: `timeTypeCode` (`string`, kardinalitet 0..1)."
* healthcareServiceCode ^definition = "Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop."
* healthcareServiceCode ^comment = "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1)."
