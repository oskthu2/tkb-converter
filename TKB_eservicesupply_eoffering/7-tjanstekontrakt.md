# 7 Tjänstekontrakt - eservicesupply: eoffering v1.0.0

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

## 7.1 GetAvailableEServices

**Namnrymd:** `urn:riv:eservicesupply:eoffering:GetAvailableEServicesResponder:1` **Version:** 1.0 **Tjänsteinteraktion:** GetAvailableEServices

Tjänsten redovisar vilka e-tjänster en vårdenhet (identifierad via HSA-ID) erbjuder (stödtjänst Erbjuden e-tjänst).

Alla e-tjänster är kopplade till en vårdenhet (HSA-ID). Då Erbjuden e-tjänst är en stödtjänst för invånarens e-tjänster, sorterar den under "tillgängliggöra kontaktvägar".

### Begäran (Request)

| | | | |
| :--- | :--- | :--- | :--- |
| logicalAddress | string | 1..1 | Adresseringsparameter. Adressen till tjänsteproducent. |
| healthcare_facility | hsaIdType | 1..* | Hsa-id för vårdenhet(er). Hsa-id måste vara ett giltigt hsa-id i HSA-katalogen. |

### Svar (Response)

| | | | |
| :--- | :--- | :--- | :--- |
| availableEServices | availableEServicesType | 0..* | Lista med e-tjänster per vårdenhet. |
| availableEServices.healthcare_facility | healthcareFacilityInfoType | 1..1 | Vårdenhet som erbjuder e-tjänsterna. Se avsnitt 6. |
| availableEServices.eservice | eServiceType | 0..* | Information om e-tjänsten. Se avsnitt 6. |

**healthcare_facility (healthcareFacilityInfoType):**

| | | | |
| :--- | :--- | :--- | :--- |
| healthcare_facility | hsaIdType (string) | 1..1 | Vårdenhetens HSA-id. |
| healthcare_facility_name | string | 0..1 | Vårdenhetens namn. Utelämnas detta ska namnet hämtas från HSA-katalog. |

**eservice (eServiceType):**

| | | | |
| :--- | :--- | :--- | :--- |
| commonName | string | 1..1 | E-tjänstens namn. Ex: Tidbokning. |
| description | string | 1..1 | Information om e-tjänsten. Kan innehålla beskrivningar och villkor för användandet av tjänsten (riktad mot användare/patient). |
| resourceId | string | 1..1 | E-tjänstens id. Unikt id för e-tjänsten. Tjänsteproducentens unika id. |
| securitylevel | securitylevelType | 0..1 | Tjänstens krav på autentiseringsnivå (AL). Se[SecurityLevelCS](CodeSystem-securitylevel-cs.md). |
| url | anyURI | 0..1 | URL till e-tjänst. Måste kunna nås via internet. Ex: https://host/funktion?operation |
| restrictions | restrictionType | 0..1 | Restriktioner för att använda e-tjänsten. En e-tjänst utan restriktioner är tillgänglig för alla. |

**restrictions (restrictionType):**

| | | | |
| :--- | :--- | :--- | :--- |
| eserviceAreaCode | eServiceAreaCodeType | 0..1 | Betjäningsområde — geografiskt område e-tjänsten täcker. |
| gender | genderType (string) | 0..1 | E-tjänsten riktar sig till ett visst kön. 1 = Man, 2 = Kvinna. Se[GenderEofferingCS](CodeSystem-gender-eoffering-cs.md). |
| listing | boolean | 1..1 | Listningskrav. true = kräver listning, false = kräver ej listning. |
| referal | boolean | 1..1 | Remisskrav. true = kräver remiss, false = kräver ej remiss. |
| referalTypeId | string | 0..1 | Kodverk för remisstyper 1–8 (KV Framställantyp). |
| ageMin | integer | 0..1 | Ålderskrav minimum (år). |
| ageMax | integer | 0..1 | Ålderskrav maximum (år). |

**eserviceAreaCode (eServiceAreaCodeType):**

| | | | |
| :--- | :--- | :--- | :--- |
| countycode | string | 1..* | Länskod. Anger i vilka län e-tjänsten är tillgänglig/erbjuds. |
| municipalityCode | string | 0..* | Kommunkod. Avgränsar länskod. Utelämnas denna gäller hela länet. |
| municipalitySectionCode | string | 0..* | Kommundelskod. Avgränsar kommunkod. Utelämnas denna gäller hela kommunen. |

### Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception).

### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetAvailableEServicesInteraction_1.0_RIVTABP20.wsdl](files/wsdl/GetAvailableEServicesInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt (RIVTABP 2.0) |
| [GetAvailableEServicesInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetAvailableEServicesInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt (RIVTABP 2.1) |
| [eservicesupply_eoffering_1.0.xsd](files/schema/eservicesupply_eoffering_1.0.xsd) | Domänschema (gemensamma komponenter) |
| [GetAvailableEServicesResponder_1.0.xsd](files/schema/GetAvailableEServicesResponder_1.0.xsd) | Tjänstespecifikt schema |
| [itintegration_registry_1.0.xsd](files/schema/itintegration_registry_1.0.xsd) | Engagemangsindex-schema (delad dependency) |
| [ws-addressing-1.0.xsd](files/schema/ws-addressing-1.0.xsd) | WS-Addressing (infrastruktur) |
| [TKB_eservicesupply_eoffering_v0.3.pdf](files/docs/TKB_eservicesupply_eoffering_v0.3.pdf) | Tjänstekontraktsbeskrivning (PDF) |
| [Erbjuden_e-tjanst_SAD_v1.0.docx](files/docs/Erbjuden_e-tjanst_SAD_v1.0.docx) | Systemarkitekturdokument (SAD) |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getavailableeservices](StructureDefinition-getavailableeservices.md)
* **Logisk modell (request):** [StructureDefinition/getavailableeservices-request](StructureDefinition-getavailableeservices-request.md)
* **Kodsystem (autentiseringsnivå):** [CodeSystem/securitylevel-cs](CodeSystem-securitylevel-cs.md)
* **ValueSet (autentiseringsnivå):** [ValueSet/securitylevel-vs](ValueSet-securitylevel-vs.md)
* **Kodsystem (kön):** [CodeSystem/gender-eoffering-cs](CodeSystem-gender-eoffering-cs.md)
* **ValueSet (kön):** [ValueSet/gender-eoffering-vs](ValueSet-gender-eoffering-vs.md)

