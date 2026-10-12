# 1 Inledning - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Tjänstekontraktsbeskrivning, Listning**, version 2.1 (2025-06-13), [TKB_supportprocess_logistics_carelisting.docx](TKB_supportprocess_logistics_carelisting.docx).

### Dokumentinformation

| | |
| :--- | :--- |
| Domän | supportprocess: logistics: carelisting (individens processtöd: tillgängliggör kontaktväg: listning) |
| Version | 2.1 |
| Datum | 2025-06-13 (fastställd version enligt revisionshistoriken) |

#### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| 0.6 | 2011-01-12 | Patrick Bäcklund | Uppdaterad efter granskning av AL |
| 1.0 | 2011-03-18 | Patrick Bäcklund | Godkänd för distribution inte utkast längre |
| 2.0 RC1 | 2020-02-23 | Thomas Fafoutis | Första utkast, major-version med stöd för utomlänslistning |
| 2.0 RC1 | 2021-03-10 | Thomas Fafoutis | MIM:ar tillagda, förtydligande kring datum och tidformat |
| 2.0 RC2 | 2021-09-17 | Thomas Fafoutis | Referens till nytt kodverk för nationella listningstyper tillagt |
| 2.0 RC2 | 2022-05-27 | Thomas Fafoutis | Fältet Actor tillagt för tjänstekontrakt som förmedlar/avslöjar listningsinformation kopplat till invånare (CreateListing, GetListingCounty, GetListing) |
| 2.0 RC2 | 2022-08-15 | Thomas Fafoutis | Specifika felkoder tillagda för tjänstekontrakten CreateListing och UpdateListing. / Förtydliganden kring hur en invånare går ur kön eller hur invånare kan byta fast läkarkontakt utan att byta sin listning (se CreateListing) |
| 2.0 | 2023-05-31 | Thomas Fafoutis | Versionsnummer uppdaterad, ny Inera mall |
| 2.0.1 | 2023-06-21 | Thomas Fafoutis | Detaljering av HealthcareFacility attributet i GetListing |
| 2.1 RC1 | 2024-06-24 | Thomas Fafoutis | Utökning av datatypen HealthcareFacilityType för att förmedla kölängd på mottagningen om mottagningen har kö. |
| 2.1 RC1 | 2024-10-28 | Thomas Fafoutis | Utökning av datatypen HealthcareFacilityType med estimatedWaitInQueue |
| 2.1 | 2025-06-13 |   | Korrigering av vilka tjänstekontrakt som är förändrade i denna minor-version samt fastställande av version 2.1 |

#### Referenser

| | | | |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut | Obligatoriskt | Ingår i detta releasepaket |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation | Finns på Webben | Ingår i detta releasepaket |
| R4 | Lista över vanligt förekommande kodverk och identifierare | Finns på Webben | https://bitbucket.org/rivta-domains/best-practice/wiki/ListOfCommonlyUsedCodeSystems |
| R5 | Nationella listningstyper | Obligatoriskt | https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt |

#### Förkortningar

| | | |
| :--- | :--- | :--- |
| Källsystem (KS) | Det verksamhetssystem där originalinformationen skapas (t.ex. en driftsinstans av ett kallelse-system, LIS eller Journalsystem. | Se referens R2 |
| Tjänstekonsument (TK) | Informationssystem där aktörens agerande leder till automatiskt informationsutbyte med andra system En Tjänstekonsument använder en SOA-tjänst som i sin tur följer ett tjänstekontrakt. | Se referens R2 |
| Tjänsteproducent (TP) | Hanterar logik och format så som specificeras av ett tjänstekontrakt. | Se referens R2 |

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Arkitekturella beslut (referens R1) | [AB_supportprocess_logistics_carelisting.docx](AB_supportprocess_logistics_carelisting.docx) |
| Informationsspecifikation (referens R3) | [IS_supportprocess_logistics_carelisting.docx](IS_supportprocess_logistics_carelisting.docx) |

Självdeklarationerna för varje kontrakt finns under kontraktets källfiler i avsnitt 7. Källan innehåller också testsvitens dokumentation och arbetsmaterial (Visual Paradigm-modell), som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen Listning - supportprocess: logistics: carelisting. Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och regleras genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

individens processtöd: tillgängliggör kontaktväg: listning

