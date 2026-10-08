# 8 Bilaga MIM-mappningar GetCareContacts - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* **8 Bilaga MIM-mappningar GetCareContacts**

## 8 Bilaga MIM-mappningar GetCareContacts

## Bilaga MIM-mappningar GetCareContacts

Detta är innehållet i bilagan [Bilaga MIM_Mappningar_GetCareContacts.xlsx](Bilaga_MIM_Mappningar_GetCareContacts.xlsx) (filnamnet har fått understreck i stället för mellanslag), som TKB:ns beskrivning av GetCareContacts hänvisar till. Arbetsboken har två flikar. Tabellerna återger dem rad för rad. Elementnamnets nivå i meddelandet anges med indrag (`.`) efter vilken kolumn i arkivet namnet står i. Stavningen är bilagans egen.

### Flik "SendReferralAnswer CDA"

Arkets rubriker är "RIV" (mappning mot NPÖ RIV-informationsspecifikationen) och "Green CDA". Kolumnen **Element** sammanfattar elementnamnet ur kolumnerna B–G.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
|   | careContact | careContactType |   | 0..* | De vård- och omsorgskontakter som matchar begäran. |
|   | .careContactHeader | patientSummeryHeaderType |   | 1..1 | Innehåller basinformation om dokumentet |
| RIV: vård- och omsorgskontakt.kontakt-id | ..CareContactId | string |   | 1..1 | Identitet för den vård- och omsorgskontakt. Identiteten är unik inom källsystemet |
|   | ..sourceSystemHSAid | HSAidType | String | 1..1 | HSAid för det system som dokumentet är skapat i. |
| RIV: vård-och omsorgskontakt.registreringstidpunkt | ..documentTime | TimeStampType |   | 1..1 | Registreringstidpunkt |
| RIV: vård- och omsorgstagare.person-id | ..patientID | PersonIdType | id / type | 1.1 | Id för patienten. / id sätts till patientens identifierare. / Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) |
|   | ..accountableHealthcareProfesional | HealthcareProfessional |   | 0..1 | Hälso- och sjukvårdspersonal som ansvarar för vårdkontakten. |
| RIV:vård- och omsorgspersonal.personal-id | …healthcareProfessionalHSAid | HSAIdType | string | 1..1 | HSA-id för vård- och omsorg |
| RIV: Vård- och omsorgspersonal.namn | …healthcareProfesionalNamn | string |   | 1..1 | Namn på vård- och omsorgspersonal |
| RIV: Vård- och omsorgspersonal.befattning. | …healthcareProfesionalRoleCode | string | string | 0..1 | Information om författarens befattning om annat kodverk än KV Befattning används. Ska anges om healthcareProfessionalOtherRoleCode saknas. Kan inte anges samtidigt med healthcareProfessionalOtherRoleCode. |
| RIV: Vård- och omsorgspersonal.befattning. | …healthcareProfessionalOtherRoleCode | HealthcareProfessionalOtherRoleType | string | 0..1 | Information om författarens befattning om annat kodverk än KV Befattning används. Ska anges om healthcareProfessionalOtherRoleCode saknas. Kan inte anges samtidigt med healthcareProfessionalOtherRoleCode. |
|   | …careUnitHSAid | HSAIdType | string | 1..1 | HSA-id för PDL-enhet |
| RIV: Informationsmängd.ägande vårdgivare-id | …careGiverHSAid | HSAIdType | string | 1..1 | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för |
|   | …accountableHealthcareProfesionalOrgUnit | OrgUnitType |   | 1..1 | Organistaionsenhet för vård- och omsorgspersonens uppdrag i samband med vårdkontakten. |
| RIV: enhet.enhets-id | ….careContactOrgUnitHsaId | HSAidTYpe |   | 1..1 | HSA-id för organistationsenhet |
| RIV: enhet.enhetsnamn | ….careContactOrgUnitName | string |   | 1..1 | Namn på organistationsenheten |
| RIV: enhet.telefonnummer | ….careContactOrgUnitTelecom | string |   | 0..1 | Telefon till organistaionsenheten |
| RIV: enhet.e-postadress | ….careContactOrgUnitEmail | string |   | 0..1 | E-post till organistionsenheten |
| RIV: enhet.postadress | ….careContactOrgUnitAddress | string |   | 0..1 | Postadress till organistionsenheten |
| RIV: enhet.geografisk plats | ….careContactOrgUnitLocation | string |   | 0.1 | Geografisk plats till organistaionsenheten |
|   | ..ApporvedForPatient | boolean |   | 1..1 | Anger om informationen får delas till patient. Värdet sätts i sådana fall till true, i annat fall till false. |
|   | .careContactBody | careContactBodyType |   | 1..1 |   |
| RIV: vård-och omsorgskontakt.kontakttyp |   |   |   |   |   |
|   | ..careContactCode | integer |   | 1..1 | Typ av vård- och omsorgsdokumentation. Nullvärde tillåtetet. Tillåtna värden är: 1 = Besök / 2 = Telefon / 3 = Vårdtillfälle / 4 = Dagsjukvård / 5 = Annan |
| RIV: vård-och omsorgskontakt.kontaktorsak | ..careContactReason | string |   | 0..1 | Text som beskriver orsaken till vård- och omsorgskontakt som vård- och omsorgstagaren själv eller dess företrädare anger |
| RIV: vård-och omsorgskontakt.kontaktstid | ..careContactTime | TimeStampType |   | 1..1 | Tidpunkt för kontakt |
|   | ..careContactOrgUnit | OrgUnitType |   | 1..1 | Den eller de enheter som kontakt utfördes vid |
| RIV: vård- och omsorgskontakt.utför vid.enhet.enhets-id | …careContactOrgUnitHsaId | HSAIdType |   | 1..1 | HSA-id för organistaionsenhet |
| RIV: vård- och omsorgskontakt.utför vid.enhet.enhetsnamn | …careContactOrgUnitNamn | string |   | 1..1 | Namn på organistaionsenheten |
| RIV: vård- och omsorgskontakt.utför vid.enhet.telefonnummer | …careContactOrgUnitTelecom | string |   | 0..1 | Telefon till organistionsenheten |
| RIV: vård- och omsorgskontakt.utför vid.enhet.e-postadress | …careContactOrgUnitEmail | string |   | 0..1 | E-post till organisationsenheten |
| RIV: vård- och omsorgskontakt.utför vid.enhet.address | …careContactOrgUnitAddress | string |   | 0..1 | Postadress till organistaionsenheten |
| RIV: vård- och omsorgskontakt.utför vid.enhet.geografisk plats | …careContactOrgUnitLocation | string |   | 0..1 | Text som anger namnet på plats eller ort för organistaionsenhetens eller funktionsens fysiska placering |
| RIV: Vård- och omsorgskontakt.kontaktstatus | ..careContactStatus | integer |   | 0..1 | Tillåtna värden (från KV status: 1 = Ej påbörjad / 2 = Inställd / 3 = Pågående / 4 = Avbruten / 5 = Avslutad |

### Flik "Blad1"

Fliken innehåller en lista med elementnamn ur CDA (utan ytterligare beskrivning):

* `assignedEntity`
* `classCode`
* `id`
* `code`
* `addr`
* `telecom`
* `assignedPerson`
* `representedOrganization`

