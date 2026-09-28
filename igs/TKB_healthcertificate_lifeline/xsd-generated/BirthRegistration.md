| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| FodelseanmalanId | ID |  | 1..1 |
| Dokumentuppgifter | DokumentuppgifterTYPE |  | 1..1 |
| ../Ingivarnamn | string100TYPE |  | 1..1 |
| ../AnmalningsTyp | AnmalningsTyp |  | 1..1 |
| ../AnmalningsId | AnmalningsIdTYPE |  | 1..1 |
| ../Ingivartelefon | string15TYPE |  | 0..1 |
| Arendeuppgifter | ArendeuppgifterTYPE |  | 1..1 |
| ../Moder | PersonTYPE |  | 1..1 |
| ../../Namn | NamnTYPE |  | 0..1 |
| ../../../Fornamn | string100TYPE |  | 0..1 |
| ../../../Mellannamn | string100TYPE |  | 0..1 |
| ../../../Efternamn | string100TYPE |  | 0..1 |
| ../../Fodelsedatum | DatumTYPE |  | 0..1 |
| ../../../FodelseAr | string |  | 1..1 |
| ../../../FodelseManad | string |  | 1..1 |
| ../../../FodelseDag | string |  | 1..1 |
| ../../PersonNummer | PersonNummerTYPE |  | 0..1 |
| ../ModersMake | PersonTYPE |  | 0..1 |
| ../../Namn | NamnTYPE |  | 0..1 |
| ../../../Fornamn | string100TYPE |  | 0..1 |
| ../../../Mellannamn | string100TYPE |  | 0..1 |
| ../../../Efternamn | string100TYPE |  | 0..1 |
| ../../Fodelsedatum | DatumTYPE |  | 0..1 |
| ../../../FodelseAr | string |  | 1..1 |
| ../../../FodelseManad | string |  | 1..1 |
| ../../../FodelseDag | string |  | 1..1 |
| ../../PersonNummer | PersonNummerTYPE |  | 0..1 |
| ../Barn | BarnTYPE |  | 1..1 |
| ../../DatumFodelse | date |  | 1..1 |
| ../../Kon | Kon |  | 0..1 |
| ../../OrdningsNr | OrdningsNr |  | 1..1 |
| ../../AntalBarn | AntalBarn |  | 1..1 |
| ../../FodelseKommun | FodelseKommun |  | 1..1 |
| ../../Levande | Levande |  | 1..1 |
| ../Vistelseadress | AdressTYPE |  | 0..1 |
| ../../AdressRad1 | AdressRadTYPE |  | 1..1 |
| ../../AdressRad2 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad3 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad4 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad5 | AdressRadTYPE |  | 0..1 |
| ../Bostadsadress | AdressTYPE |  | 0..1 |
| ../../AdressRad1 | AdressRadTYPE |  | 1..1 |
| ../../AdressRad2 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad3 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad4 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad5 | AdressRadTYPE |  | 0..1 |
| ../KontaktTelefon | string20TYPE |  | 0..1 |
| ../KontaktTelefon2 | string20TYPE |  | 0..1 |
| ../KontaktTelefon3 | string20TYPE |  | 0..1 |
| ../KontaktTelefon4 | string20TYPE |  | 0..1 |
| ../KontaktTelefon5 | string20TYPE |  | 0..1 |
| **Svar** | | | |
| FodelsesvarId | ID |  | 1..1 |
| AnmalningsId | AnmalningsIdTYPE |  | 1..1 |
| PersonNummer | PersonNummerTYPE | Tilldelat personnummer | 0..1 |
| Meddelande | MeddelandeTYPE | Indikerar orsaken till att personnummer ej tilldelats. | 0..1 |
| ../AnmalanMottagen | AnmalanMottagen | Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen. | 1..1 |
| ../MeddelandeKod | int | Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number | 1..1 |
| ../MeddelandeText | string | Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning | 1..1 |
| result | ResultOfCallType | Holds information about the success of the call. If INFO is set the field infoText should contain more information. If ERROR is set the fields errorId and errorText will contain information about the error. | 0..1 |
| ../resultCode | ResultCodeEnumType |  | 1..1 |
| ../infoText | string |  | 0..1 |
| ../errorId | ErrorIdEnumType |  | 0..1 |
| ../errorText | string |  | 0..1 |
