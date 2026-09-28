| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| hsaIdentity | HsaIdentityType |  | 0..1 |
| searchBase | SearchBaseType |  | 0..1 |
| **Svar** | | | |
| UnitList | UnitList |  | 0..1 |
| ../unitListUnit | UnitListUnit |  | 0..* |
| ../../hsaIdentity | HsaIdentityType |  | 1..1 |
| ../../name | string |  | 1..1 |
| ../../parentHsaIdentity | HsaIdentityType |  | 0..1 |
