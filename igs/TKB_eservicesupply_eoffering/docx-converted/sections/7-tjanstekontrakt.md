# 7 Tjänstekontrakt

## 7.1 GetAvailableEServices

**Namnrymd:** `urn:riv:eservicesupply:eoffering:GetAvailableEServicesResponder:1`
**Version:** 1.0
**Tjänsteinteraktion:** GetAvailableEServices

Tjänsten redovisar vilka e-tjänster en vårdenhet (identifierad via HSA-ID) erbjuder (stödtjänst Erbjuden e-tjänst).

Alla e-tjänster är kopplade till en vårdenhet (HSA-ID). Då Erbjuden e-tjänst är en stödtjänst för invånarens e-tjänster, sorterar den under "tillgängliggöra kontaktvägar".

### Begäran (Request)

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| logicalAddress | string | 1..1 | Adresseringsparameter. Adressen till tjänsteproducent. |
| healthcare_facility | hsaIdType | 1..* | Hsa-id för vårdenhet(er). Hsa-id måste vara ett giltigt hsa-id i HSA-katalogen. |

### Svar (Response)

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| availableEServices | availableEServicesType | 0..* | Lista med e-tjänster per vårdenhet. |
| availableEServices.healthcare_facility | healthcareFacilityInfoType | 1..1 | Vårdenhet som erbjuder e-tjänsterna. Se avsnitt 6. |
| availableEServices.eservice | eServiceType | 0..* | Information om e-tjänsten. Se avsnitt 6. |

**healthcare_facility (healthcareFacilityInfoType):**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| healthcare_facility | hsaIdType (string) | 1..1 | Vårdenhetens HSA-id. |
| healthcare_facility_name | string | 0..1 | Vårdenhetens namn. Utelämnas detta ska namnet hämtas från HSA-katalog. |

**eservice (eServiceType):**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| commonName | string | 1..1 | E-tjänstens namn. Ex: Tidbokning. |
| description | string | 1..1 | Information om e-tjänsten. Kan innehålla beskrivningar och villkor för användandet av tjänsten (riktad mot användare/patient). |
| resourceId | string | 1..1 | E-tjänstens id. Unikt id för e-tjänsten. Tjänsteproducentens unika id. |
| securitylevel | securitylevelType | 0..1 | Tjänstens krav på autentiseringsnivå (AL). Se SecurityLevelCS. |
| url | anyURI | 0..1 | URL till e-tjänst. Måste kunna nås via internet. Ex: https://host/funktion?operation |
| restrictions | restrictionType | 0..1 | Restriktioner för att använda e-tjänsten. En e-tjänst utan restriktioner är tillgänglig för alla. |

**restrictions (restrictionType):**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| eserviceAreaCode | eServiceAreaCodeType | 0..1 | Betjäningsområde — geografiskt område e-tjänsten täcker. |
| gender | genderType (string) | 0..1 | E-tjänsten riktar sig till ett visst kön. 1 = Man, 2 = Kvinna. |
| listing | boolean | 1..1 | Listningskrav. true = kräver listning, false = kräver ej listning. |
| referal | boolean | 1..1 | Remisskrav. true = kräver remiss, false = kräver ej remiss. |
| referalTypeId | string | 0..1 | Kodverk för remisstyper 1–8 (KV Framställantyp). |
| ageMin | integer | 0..1 | Ålderskrav minimum (år). |
| ageMax | integer | 0..1 | Ålderskrav maximum (år). |

**eserviceAreaCode (eServiceAreaCodeType):**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| countycode | string | 1..* | Länskod. Anger i vilka län e-tjänsten är tillgänglig/erbjuds. |
| municipalityCode | string | 0..* | Kommunkod. Avgränsar länskod. Utelämnas denna gäller hela länet. |
| municipalitySectionCode | string | 0..* | Kommundelskod. Avgränsar kommunkod. Utelämnas denna gäller hela kommunen. |

### Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception).
