# 1 Inledning - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

## Inledning

**SAKNAS I KÄLLDOKUMENT.** Domänen har ingen tjänstekontraktsbeskrivning. Uppgifterna nedan är hämtade ur WSDL-filernas annoteringar samt de gränssnittsspecifikationer (PDF) som finns för varje tjänstekontrakt och dokumentet **Pascal – Objekt och felhantering**.

Domänen innehåller tjänster mellan vårdsystem och dosapotek (Pascal/IOR-tjänsterna): registrera och uppdatera vårdtagare för dos, hämta vårdtagarinformation, beställa, hämta och avbeställa originalförpackningar, hämta dosapotekets lokala produktsortiment, söka vårdande enhet samt skicka, hämta och uppdatera status på meddelanden mellan vård och dosapotek.

| | |
| :--- | :--- |
| Tjänstedomän | druglogistics:dosedispensing |
| Tjänsteinteraktionstyp | Fråga-Svar |
| WS-profil | RIVTABP20 |
| Förvaltas av | Sveriges Kommuner och Landsting |

### Referenser

| | | |
| :--- | :--- | :--- |
| ref[1] | [Objekt_och_felhantering.pdf](Objekt_och_felhantering.pdf) | Pascal – Objekt och felhantering, version 1.5 (2012-03-21). Gemensamma objekt, uppräkningar och felhantering, se avsnitt 4 och 6 |
| Gränssnittsspecifikationer | En PDF per tjänstekontrakt | Återges under respektive kontrakt i avsnitt 7 |
| Releasenoteringar | [releasenotes.txt](releasenotes.txt) | Återges i avsnitt 2 |

### Förkortningar

Förkortningarna förekommer i schemaannoteringarna. Förklaringarna finns inte i källan; de är tolkade (se QUESTIONS.md).

| | |
| :--- | :--- |
| GLN | Global Location Number, identitet för dosapotek |
| HSA | Hälso- och sjukvårdens adressregister |
| HKDB | Högkostnadsdatabasen |
| NPL | Nationellt produktregister för läkemedel (NPLid, NPLpackid) |
| PAL | Patientansvarig läkare |
| EXPO | Register över expeditionsställen (apotek) |
| IOR | Tjänsterna kallas IOR-tjänster i Pascal-specifikationerna; förkortningen förklaras inte i källan |

