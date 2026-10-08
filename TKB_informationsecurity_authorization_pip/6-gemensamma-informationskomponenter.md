# 6 Gemensamma informationskomponenter - informationsecurity: authorization: pip v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

# 6 Gemensamma informationskomponenter

Källa: **Tjänstekontraktsbeskrivning informationsecurity: authorization: pip**, version 1.0_RC1 (2017-06-28), [TKB_informationsecurity_authorization_pip.docx](TKB_informationsecurity_authorization_pip.docx).

**SAKNAS I KÄLLDOKUMENT**: TKB:n har inget kapitel om gemensamma informationskomponenter. Informationsmodellen finns i informationsspecifikationen [R4] och i V-MIM i avsnitt 5. Typerna nedan är hämtade ur domänschemana.

### 6.1 Kodverk

Domänschemat innehåller inga uppräkningar, så inga kodverk har genererats.

### 6.2 Typer i domänschemat (XSD)

Genererat ur [informationsecurity_authorization_pip_1.0.xsd](informationsecurity_authorization_pip_1.0.xsd).

#### CareProviderSealType

Domänschema `informationsecurity_authorization_pip_1.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:pip:1`).

En vårdgivarfiltrering ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar vårdgivaren som anges i en vårdgivarförsegling.

| | | | |
| :--- | :--- | :--- | :--- |
| careProviderId | IIType |   | 1..1 |
| sealPeriod | DatePeriodType |   | 0..1 |

#### DatePeriodType

Domänschema `informationsecurity_authorization_pip_1.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:pip:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| start | DateType |   | 1..1 |
| end | DateType |   | 1..1 |

#### FullSealType

Domänschema `informationsecurity_authorization_pip_1.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:pip:1`).

Typen har inga element utöver utökningspunkter.

#### IIType

Domänschema `informationsecurity_authorization_pip_1.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:pip:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| root | string |   | 1..1 |
| extension | string |   | 1..1 |

#### OrgUnitSealType

Domänschema `informationsecurity_authorization_pip_1.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:pip:1`).

En enhetsförsegling ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar enheten som anges i en enhetsförsegling. Enhet kan vara på godtycklig nivå i vårdgivarens organisationsstruktur. För att få avsedd effekt behöver vårdgivaren som registrerar en enhetsförsegling säkerställa att enheten som anges för försegling motsvarar värden som används i JoL-kontrakten i något av dessa fält: accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId Det gäller oavsett om vårdsystemet genererar HSAid:n eller använder systeminterna enhetsidentiteter.

| | | | |
| :--- | :--- | :--- | :--- |
| orgUnit | IIType |   | 1..1 |
| sealPeriod | DatePeriodType |   | 0..1 |

#### SealType

Domänschema `informationsecurity_authorization_pip_1.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:pip:1`).

En försegling beskriver vårdgivarens beslut om att begränsa den enskildes åtkomst till sin egen information. Försegling handlar inte om att informationen kan vara till men i medicinskt hänseende för den enskilde, utan om att informationen inte ska vara tillgänglig via självbetjäning på grund av att den enskilde befinner sig i vanmaktssituation. Vårdgivaren kan även använda försegling för att stänga ute vårdnadshavares digitala åtkomst till barns (under 13 år) journaluppgifter. I praktiken förseglas barnets konto, vilket resulterar i att vårdnadshavarna inte kan se barnets information i tjänster som erbjuder vårdnadshavare åtkomst till vårdnadstagarens journaluppgifter. En försegling kan ha olika verksamhetsmässig omfattning, vilket representeras av respektive komposit element.

| | | | |
| :--- | :--- | :--- | :--- |
| patientId | IIType |   | 1..1 |
| timeCreated | TimeStampType |   | 1..1 |
| timeLastUpdated | TimeStampType |   | 1..1 |
| validFrom | DateType |   | 0..1 |
| validTo | DateType |   | 0..1 |
| deactivationDate | DateType |   | 0..1 |
| orgUnitSeal | OrgUnitSealType | En enhetsförsegling ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar enheten som anges i en enhetsförsegling. Enhet kan vara på godtycklig nivå i vårdgivarens organisationsstruktur. För att få avsedd effekt behöver vårdgivaren som registrerar en enhetsförsegling säkerställa att enheten som anges för försegling motsvarar värden som används i JoL-kontrakten i något av dessa fält: accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId Det gäller oavsett om vårdsystemet genererar HSAid:n eller använder systeminterna enhetsidentiteter. | 0..1 |
| careProviderSeal | CareProviderSealType | En vårdgivarfiltrering ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar vårdgivaren som anges i en vårdgivarförsegling. | 0..1 |
| fullSeal | FullSealType |   | 0..1 |

