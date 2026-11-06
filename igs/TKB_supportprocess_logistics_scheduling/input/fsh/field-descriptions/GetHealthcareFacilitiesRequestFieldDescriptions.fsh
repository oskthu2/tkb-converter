// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHealthcareFacilitiesRequestFieldDescriptions
* originalAppointmentId ^comment = "TKB-fält: `originalAppointmentId` (`uuidType`, kardinalitet 0..1)."
* personId ^definition = "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras."
* personId ^comment = "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1)."
* personId.root ^definition = "Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* personId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* personId.personIdExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** personIdExtension Heter extension i schemat."
* timeTypeCode ^definition = "Tidstyp att söka lediga datum för.

En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop."
* timeTypeCode ^comment = "TKB-fält: `timeTypeCode` (`string`, kardinalitet 0..1)."
* healthcareServiceCode ^definition = "Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop."
* healthcareServiceCode ^comment = "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1)."
