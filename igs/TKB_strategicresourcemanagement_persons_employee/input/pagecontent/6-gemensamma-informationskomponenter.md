# 6 Gemensamma informationskomponenter

Källa: *Tjänstekontraktsbeskrivning strategicresourcemanagement: persons: employee*, tagg 2.0_RC1 (2016-11-22), [TKB_strategicresourcemanagement_persons_employee.docx](TKB_strategicresourcemanagement_persons_employee.docx).

> **Utgången domän.** Domänen kom aldrig längre än 2.0_RC1. I september 2017 flyttades tjänstekontrakten till infrastructure.directory.employee, som har en egen IG, och domänens repo är sedan dess tomt. IG:n dokumenterar RC-versionen.

*SAKNAS I KÄLLDOKUMENT*: TKB:n har inget kapitel om gemensamma informationskomponenter. Informationsmodellen hänvisas till RIV Informationsspecifikation HSA (se avsnitt 5). Kodverken och typerna nedan är hämtade ur domänschemana.

### 6.1 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| Kodverk | Koder | CodeSystem | ValueSet |
|---|---|---|---|

### 6.2 Typer i domänschemat (XSD)

Genererat ur [strategicresourcemanagement_persons_employee_2.0.xsd](strategicresourcemanagement_persons_employee_2.0.xsd).

#### AddressType

Domänschema `strategicresourcemanagement_persons_employee_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:employee:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| addressLine | string |  | 1..* |

#### PaTitleType

Domänschema `strategicresourcemanagement_persons_employee_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:employee:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| paTitleName | string |  | 0..1 |
| paTitleCode | string |  | 0..1 |

#### PersonInformationType

Domänschema `strategicresourcemanagement_persons_employee_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:employee:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personHsaId | string |  | 1..1 |
| givenName | string |  | 0..1 |
| middleAndSurName | string |  | 1..1 |
| nickName | string |  | 0..1 |
| mail | string |  | 0..1 |
| telephoneNumber | TelephoneNumberType |  | 0..* |
| switchboardNumber | TelephoneNumberType |  | 0..1 |
| nonPublicTelephoneNumber | TelephoneNumberType |  | 0..* |
| mobileNumber | TelephoneNumberType |  | 0..* |
| smsTelephoneNumber | TelephoneNumberType |  | 0..1 |
| facsimileTelephoneNumber | TelephoneNumberType |  | 0..* |
| telephoneHour | TimeSpanType |  | 0..* |
| postalAddress | AddressType |  | 0..1 |
| description | string |  | 0..1 |
| languageKnowledgeCode | string |  | 0..* |
| title | string |  | 0..1 |
| healthCareProfessionalLicence | string |  | 0..* |
| paTitle | PaTitleType |  | 0..* |
| specialityName | string |  | 0..* |
| specialityCode | string |  | 0..* |
| dn | DNType |  | 1..1 |
| protectedPerson | boolean |  | 0..1 |
| personStartDate | dateTime |  | 0..1 |
| personEndDate | dateTime |  | 0..1 |
| feignedPerson | boolean |  | 0..1 |

#### TimeSpanType

Domänschema `strategicresourcemanagement_persons_employee_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:employee:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fromDay | string |  | 1..1 |
| fromTime | time |  | 1..1 |
| toDay | string |  | 1..1 |
| toTime | time |  | 1..1 |
| comment | string |  | 0..1 |
