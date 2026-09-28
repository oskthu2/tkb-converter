### AdressTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| AdressRad1 | AdressRadTYPE |  | 1..1 |
| AdressRad2 | AdressRadTYPE |  | 0..1 |
| AdressRad3 | AdressRadTYPE |  | 0..1 |
| AdressRad4 | AdressRadTYPE |  | 0..1 |
| AdressRad5 | AdressRadTYPE |  | 0..1 |

### ArendeuppgifterTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Moder | PersonTYPE |  | 1..1 |
| ModersMake | PersonTYPE |  | 0..1 |
| Barn | BarnTYPE |  | 1..1 |
| Vistelseadress | AdressTYPE |  | 0..1 |
| Bostadsadress | AdressTYPE |  | 0..1 |
| KontaktTelefon | string20TYPE |  | 0..1 |
| KontaktTelefon2 | string20TYPE |  | 0..1 |
| KontaktTelefon3 | string20TYPE |  | 0..1 |
| KontaktTelefon4 | string20TYPE |  | 0..1 |
| KontaktTelefon5 | string20TYPE |  | 0..1 |

### BarnTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| DatumFodelse | date |  | 1..1 |
| Kon | Kon |  | 0..1 |
| OrdningsNr | OrdningsNr |  | 1..1 |
| AntalBarn | AntalBarn |  | 1..1 |
| FodelseKommun | FodelseKommun |  | 1..1 |
| Levande | Levande |  | 1..1 |

### DatumTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| FodelseAr | string |  | 1..1 |
| FodelseManad | string |  | 1..1 |
| FodelseDag | string |  | 1..1 |

### DokumentuppgifterTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Ingivarnamn | string100TYPE |  | 1..1 |
| AnmalningsTyp | AnmalningsTyp |  | 1..1 |
| AnmalningsId | AnmalningsIdTYPE |  | 1..1 |
| Ingivartelefon | string15TYPE |  | 0..1 |

### MeddelandeTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

Information om orsaken till att personnummer ej returneras.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| AnmalanMottagen | AnmalanMottagen | Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen. | 1..1 |
| MeddelandeKod | int | Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number | 1..1 |
| MeddelandeText | string | Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning | 1..1 |

### NamnTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Fornamn | string100TYPE |  | 0..1 |
| Mellannamn | string100TYPE |  | 0..1 |
| Efternamn | string100TYPE |  | 0..1 |

### PersonTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Namn | NamnTYPE |  | 0..1 |
| Fodelsedatum | DatumTYPE |  | 0..1 |
| PersonNummer | PersonNummerTYPE |  | 0..1 |

### ResultOfCallType

Domänschema `HealthCertificateLifelineCommonTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Common`).

Holds information about the success of the call. If INFO is set the field infoText should contain more information. If ERROR is set the fields errorId and errorText will contain information about the error.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnumType |  | 1..1 |
| infoText | string |  | 0..1 |
| errorId | ErrorIdEnumType |  | 0..1 |
| errorText | string |  | 0..1 |
