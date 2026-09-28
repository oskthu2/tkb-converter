# 8 Datatyper - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* **8 Datatyper**

## 8 Datatyper

# 8 Datatyper

TKB:n beskriver inte typerna separat. Avsnittet är genererat ur domänschemat [BirthRegistrationTypes_1.0.xsd](BirthRegistrationTypes_1.0.xsd), som bygger på Skatteverkets schema Fodelse.xsd, och ur [HealthCertificateLifelineCommonTypes_1.0.xsd](HealthCertificateLifelineCommonTypes_1.0.xsd).

### Kodverk

Uppräkningarna i schemat är modellerade som kodverk:

| | | | |
| :--- | :--- | :--- | :--- |
| Anmälan mottagen (`AnmalanMottagen`) | JA, NEJ | [lifeline-anmalanmottagen-cs](CodeSystem-lifeline-anmalanmottagen-cs.md) | [lifeline-anmalanmottagen-vs](ValueSet-lifeline-anmalanmottagen-vs.md) |
| Anmälningstyp (`AnmalningsTyp`) | NYANMALD, RATTAD, MAKULERAD | [lifeline-anmalningstyp-cs](CodeSystem-lifeline-anmalningstyp-cs.md) | [lifeline-anmalningstyp-vs](ValueSet-lifeline-anmalningstyp-vs.md) |
| Feltyp (`ErrorIdEnumType`) | VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR | [lifeline-erroridenum-cs](CodeSystem-lifeline-erroridenum-cs.md) | [lifeline-erroridenum-vs](ValueSet-lifeline-erroridenum-vs.md) |
| Barnets kön (`Kon`) | FLICKA, POJKE | [lifeline-kon-cs](CodeSystem-lifeline-kon-cs.md) | [lifeline-kon-vs](ValueSet-lifeline-kon-vs.md) |
| Levande vid födelsen (`Levande`) | JA, NEJ | [lifeline-levande-cs](CodeSystem-lifeline-levande-cs.md) | [lifeline-levande-vs](ValueSet-lifeline-levande-vs.md) |
| Resultatkod (`ResultCodeEnumType`) | OK, ERROR, INFO | [lifeline-resultcodeenum-cs](CodeSystem-lifeline-resultcodeenum-cs.md) | [lifeline-resultcodeenum-vs](ValueSet-lifeline-resultcodeenum-vs.md) |

## Typer i scheman

### AdressTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| | | | |
| :--- | :--- | :--- | :--- |
| AdressRad1 | AdressRadTYPE |   | 1..1 |
| AdressRad2 | AdressRadTYPE |   | 0..1 |
| AdressRad3 | AdressRadTYPE |   | 0..1 |
| AdressRad4 | AdressRadTYPE |   | 0..1 |
| AdressRad5 | AdressRadTYPE |   | 0..1 |

### ArendeuppgifterTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| | | | |
| :--- | :--- | :--- | :--- |
| Moder | PersonTYPE |   | 1..1 |
| ModersMake | PersonTYPE |   | 0..1 |
| Barn | BarnTYPE |   | 1..1 |
| Vistelseadress | AdressTYPE |   | 0..1 |
| Bostadsadress | AdressTYPE |   | 0..1 |
| KontaktTelefon | string20TYPE |   | 0..1 |
| KontaktTelefon2 | string20TYPE |   | 0..1 |
| KontaktTelefon3 | string20TYPE |   | 0..1 |
| KontaktTelefon4 | string20TYPE |   | 0..1 |
| KontaktTelefon5 | string20TYPE |   | 0..1 |

### BarnTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| | | | |
| :--- | :--- | :--- | :--- |
| DatumFodelse | date |   | 1..1 |
| Kon | Kon |   | 0..1 |
| OrdningsNr | OrdningsNr |   | 1..1 |
| AntalBarn | AntalBarn |   | 1..1 |
| FodelseKommun | FodelseKommun |   | 1..1 |
| Levande | Levande |   | 1..1 |

### DatumTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| | | | |
| :--- | :--- | :--- | :--- |
| FodelseAr | string |   | 1..1 |
| FodelseManad | string |   | 1..1 |
| FodelseDag | string |   | 1..1 |

### DokumentuppgifterTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| | | | |
| :--- | :--- | :--- | :--- |
| Ingivarnamn | string100TYPE |   | 1..1 |
| AnmalningsTyp | AnmalningsTyp |   | 1..1 |
| AnmalningsId | AnmalningsIdTYPE |   | 1..1 |
| Ingivartelefon | string15TYPE |   | 0..1 |

### MeddelandeTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

Information om orsaken till att personnummer ej returneras.

| | | | |
| :--- | :--- | :--- | :--- |
| AnmalanMottagen | AnmalanMottagen | Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen. | 1..1 |
| MeddelandeKod | int | Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number | 1..1 |
| MeddelandeText | string | Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning | 1..1 |

### NamnTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| | | | |
| :--- | :--- | :--- | :--- |
| Fornamn | string100TYPE |   | 0..1 |
| Mellannamn | string100TYPE |   | 0..1 |
| Efternamn | string100TYPE |   | 0..1 |

### PersonTYPE

Domänschema `BirthRegistrationTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Birth`).

| | | | |
| :--- | :--- | :--- | :--- |
| Namn | NamnTYPE |   | 0..1 |
| Fodelsedatum | DatumTYPE |   | 0..1 |
| PersonNummer | PersonNummerTYPE |   | 0..1 |

### ResultOfCallType

Domänschema `HealthCertificateLifelineCommonTypes_1.0.xsd` (namnrymd `urn:riv:healthcertificate:lifeline:1:Common`).

Holds information about the success of the call. If INFO is set the field infoText should contain more information. If ERROR is set the fields errorId and errorText will contain information about the error.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnumType |   | 1..1 |
| infoText | string |   | 0..1 |
| errorId | ErrorIdEnumType |   | 0..1 |
| errorText | string |   | 0..1 |

