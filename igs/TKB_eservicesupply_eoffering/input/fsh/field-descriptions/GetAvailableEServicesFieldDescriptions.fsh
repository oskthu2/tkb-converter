// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAvailableEServicesFieldDescriptions
* availableEServices ^definition = "Lista med e-tjänster per vårdenhet."
* availableEServices ^comment = "TKB-fält: `availableEServices` (`availableEServicesType`, kardinalitet 0..*)."
* availableEServices.healthcareFacility ^definition = "Hsa-id för vårdenhet(er). Hsa-id måste vara ett giltigt hsa-id i HSA-katalogen."
* availableEServices.healthcareFacility ^comment = "TKB-fält: `healthcare_facility` (`hsaIdType`, kardinalitet 1..*).

Obs: modellen anger 1..1 där TKB:n anger 1..*.

**Modellanteckning:** Vårdenhet som erbjuder e-tjänster."
* availableEServices.healthcareFacility.healthcareFacilityName ^definition = "Vårdenhetens namn. Utelämnas detta ska namnet hämtas från HSA-katalog."
* availableEServices.healthcareFacility.healthcareFacilityName ^comment = "TKB-fält: `healthcare_facility_name` (`string`, kardinalitet 0..1)."
* availableEServices.eservice ^definition = "Information om e-tjänsten. Se avsnitt 6."
* availableEServices.eservice ^comment = "TKB-fält: `availableEServices.eservice` (`eServiceType`, kardinalitet 0..*)."
* availableEServices.eservice.commonName ^definition = "E-tjänstens namn. Ex: Tidbokning."
* availableEServices.eservice.commonName ^comment = "TKB-fält: `commonName` (`string`, kardinalitet 1..1)."
* availableEServices.eservice.description ^definition = "Information om e-tjänsten. Kan innehålla beskrivningar och villkor för användandet av tjänsten (riktad mot användare/patient)."
* availableEServices.eservice.description ^comment = "TKB-fält: `description` (`string`, kardinalitet 1..1)."
* availableEServices.eservice.resourceId ^definition = "E-tjänstens id. Unikt id för e-tjänsten. Tjänsteproducentens unika id."
* availableEServices.eservice.resourceId ^comment = "TKB-fält: `resourceId` (`string`, kardinalitet 1..1)."
* availableEServices.eservice.securitylevel ^definition = "Tjänstens krav på autentiseringsnivå (AL). Se [SecurityLevelCS](CodeSystem-securitylevel-cs.html)."
* availableEServices.eservice.securitylevel ^comment = "TKB-fält: `securitylevel` (`securitylevelType`, kardinalitet 0..1).

**Modellanteckning:** Tjänstens krav på autentiseringsnivå (Assurance Level, ISO/IEC 29115).
AL1 = Tillitsnivå 1, AL2 = Tillitsnivå 2,
AL3 = Mjuka certifikat/stark autentisering med engångskod,
AL4 = Hårda certifikat."
* availableEServices.eservice.url ^definition = "URL till e-tjänst. Måste kunna nås via internet. Ex: https://host/funktion?operation"
* availableEServices.eservice.url ^comment = "TKB-fält: `url` (`anyURI`, kardinalitet 0..1)."
* availableEServices.eservice.restrictions ^definition = "Restriktioner för att använda e-tjänsten. En e-tjänst utan restriktioner är tillgänglig för alla."
* availableEServices.eservice.restrictions ^comment = "TKB-fält: `restrictions` (`restrictionType`, kardinalitet 0..1)."
* availableEServices.eservice.restrictions.eserviceAreaCode ^definition = "Betjäningsområde — geografiskt område e-tjänsten täcker."
* availableEServices.eservice.restrictions.eserviceAreaCode ^comment = "TKB-fält: `eserviceAreaCode` (`eServiceAreaCodeType`, kardinalitet 0..1).

**Modellanteckning:** Information om e-tjänstens geografiska betjäningsområde (län, kommun och kommundel)."
* availableEServices.eservice.restrictions.eserviceAreaCode.countycode ^definition = "Länskod. Anger i vilka län e-tjänsten är tillgänglig/erbjuds."
* availableEServices.eservice.restrictions.eserviceAreaCode.countycode ^comment = "TKB-fält: `countycode` (`string`, kardinalitet 1..*).

**Modellanteckning:** Länskod. Anger i vilka län e-tjänsten är tillgänglig/erbjuds.
E-tjänsten betjänar invånare i detta län.
XSD: countycode (string)."
* availableEServices.eservice.restrictions.eserviceAreaCode.municipalityCode ^definition = "Kommunkod. Avgränsar länskod. Utelämnas denna gäller hela länet."
* availableEServices.eservice.restrictions.eserviceAreaCode.municipalityCode ^comment = "TKB-fält: `municipalityCode` (`string`, kardinalitet 0..*).

**Modellanteckning:** Kommunkod. Avgränsar länskod. Visar i vilka specifika kommuner e-tjänsten erbjuds.
Utelämnas denna gäller hela länet."
* availableEServices.eservice.restrictions.eserviceAreaCode.municipalitySectionCode ^definition = "Kommundelskod. Avgränsar kommunkod. Utelämnas denna gäller hela kommunen."
* availableEServices.eservice.restrictions.eserviceAreaCode.municipalitySectionCode ^comment = "TKB-fält: `municipalitySectionCode` (`string`, kardinalitet 0..*).

**Modellanteckning:** Kommundelskod. Avgränsar kommunkod. Visar i vilka specifika kommundelar e-tjänsten erbjuds.
Utelämnas denna gäller hela kommunen."
* availableEServices.eservice.restrictions.gender ^definition = "E-tjänsten riktar sig till ett visst kön. 1 = Man, 2 = Kvinna. Se [GenderEofferingCS](CodeSystem-gender-eoffering-cs.html)."
* availableEServices.eservice.restrictions.gender ^comment = "TKB-fält: `gender` (`genderType (string)`, kardinalitet 0..1).

**Modellanteckning:** E-tjänsten riktar sig till ett visst kön.
1 = Man, 2 = Kvinna.
ASSUME: Modellat som code med domänspecifikt ValueSet.
XSD: genderType (string — ej enumeration i schemat)."
* availableEServices.eservice.restrictions.listing ^definition = "Listningskrav. true = kräver listning, false = kräver ej listning."
* availableEServices.eservice.restrictions.listing ^comment = "TKB-fält: `listing` (`boolean`, kardinalitet 1..1)."
* availableEServices.eservice.restrictions.referal ^definition = "Remisskrav. true = kräver remiss, false = kräver ej remiss."
* availableEServices.eservice.restrictions.referal ^comment = "TKB-fält: `referal` (`boolean`, kardinalitet 1..1)."
* availableEServices.eservice.restrictions.referalTypeId ^definition = "Kodverk för remisstyper 1–8 (KV Framställantyp)."
* availableEServices.eservice.restrictions.referalTypeId ^comment = "TKB-fält: `referalTypeId` (`string`, kardinalitet 0..1).

**Modellanteckning:** Kodverk för remisstyper 1–8 (KV Framställantyp).
Definiera vilken typ av remiss e-tjänsten kräver.
QUESTIONS: Canonical URL för KV Framställantyp är okänd — se QUESTIONS.md."
* availableEServices.eservice.restrictions.ageMin ^definition = "Ålderskrav minimum (år)."
* availableEServices.eservice.restrictions.ageMin ^comment = "TKB-fält: `ageMin` (`integer`, kardinalitet 0..1)."
* availableEServices.eservice.restrictions.ageMax ^definition = "Ålderskrav maximum (år)."
* availableEServices.eservice.restrictions.ageMax ^comment = "TKB-fält: `ageMax` (`integer`, kardinalitet 0..1)."
