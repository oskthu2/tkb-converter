# 6 Gemensamma informationskomponenter

Domänen eservicesupply:eoffering definierar följande gemensamma informationskomponenter i `eservicesupply_eoffering_1.0.xsd`.

## healthcareFacilityInfoType

Vårdenhet som erbjuder e-tjänster.

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| healthcare_facility | hsaIdType (string) | 1..1 | Vårdenhetens hsa-id. |
| healthcare_facility_name | string | 0..1 | Vårdenhetens namn. Om utelämnat ska namnet hämtas från HSA-katalog. |

## eServiceType

Information om e-tjänsten. En e-tjänst tillhandahålls på elektronisk väg med t.ex. webbläsare eller mobil enhet.

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| commonName | string | 1..1 | E-tjänstens namn. Ex: Tidbokning. |
| description | string | 1..1 | Information om e-tjänsten. Kan innehålla beskrivningar och villkor för användandet (riktad mot användare/patient). |
| resourceId | string | 1..1 | E-tjänstens id. Unikt id för e-tjänsten. Tjänsteproducentens unika id. |
| securitylevel | securitylevelType | 0..1 | Tjänstens krav på autentiseringsnivå (Assurance Level). |
| url | anyURI | 0..1 | URL till e-tjänst. URL måste kunna nås via internet. |
| restrictions | restrictionType | 0..1 | Restriktioner för att använda e-tjänsten. |

## restrictionType

Information om de restriktioner som finns kopplade till e-tjänsten.

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| eserviceAreaCode | eServiceAreaCodeType | 0..1 | Betjäningsområde. |
| gender | genderType (string) | 0..1 | E-tjänsten riktar sig till ett visst kön. 1 = Man, 2 = Kvinna. |
| listing | boolean | 1..1 | Listningskrav. true = kräver listning, false = kräver ej listning. |
| referal | boolean | 1..1 | Remisskrav. true = kräver remiss, false = kräver ej remiss. |
| referalTypeId | string | 0..1 | Kodverk för remisstyper 1–8 (KV Framställantyp). |
| ageMin | integer | 0..1 | Ålderskrav minimum (år). |
| ageMax | integer | 0..1 | Ålderskrav maximum (år). |

## eServiceAreaCodeType

Betjäningsområde — information om e-tjänstens geografiska betjäningsområde.

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| countycode | string | 1..* | Länskod. Anger i vilka län e-tjänsten är tillgänglig/erbjuds. |
| municipalityCode | string | 0..* | Kommunkod. Avgränsar länskod. Visar i vilka specifika kommuner e-tjänsten erbjuds. |
| municipalitySectionCode | string | 0..* | Kommundelskod. Avgränsar kommunkod. Visar i vilka specifika kommundelar e-tjänsten erbjuds. |

## securitylevelType (Enumeration)

Tjänstens krav på autentiseringsnivå (Quality of Authentication Assurance, ISO/IEC 29115).

| Kod | Beskrivning |
|-----|-------------|
| AL1 | Tillitsnivå 1 |
| AL2 | Tillitsnivå 2 |
| AL3 | Tillitsnivå 3 — Mjuka certifikat, stark autentisering med engångskod |
| AL4 | Tillitsnivå 4 — Hårda certifikat |
