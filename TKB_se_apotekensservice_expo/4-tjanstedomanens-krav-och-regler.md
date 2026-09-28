# 4 Tjänstedomänens krav och regler - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

## Tjänstedomänens krav och regler

**SAKNAS I KÄLLDOKUMENT.** Det finns ingen TKB som beskriver krav och regler. Det som framgår av schemana:

### Felhantering

Tjänsterna returnerar fel som SOAP-fel (wsdl:fault), inte som ett resultatfält i svaret. Två feltyper är definierade i domänschemana:

| | | |
| :--- | :--- | :--- |
| ApplicationException | Applikationsfel | `code`(1..1, string),`description`(0..1, string) |
| SystemException | Systemfel | `code`(1..1, string) |

Felkoderna finns inte dokumenterade i källan.

### Utökningar

Begärande- och svarstyperna har utökningspunkter (`xs:any` eller ett valfritt element `extension` av typen ExtensionType). Utökningspunkterna är inte med i de logiska modellerna.

### Villkor i schemaannoteringarna

Villkor mellan fält (t.ex. att ett fält är obligatoriskt när ett annat är satt) står bara i fältbeskrivningarna i [avsnitt 7](7-tjanstekontrakt.md) och är inte uttryckta som invarianter.

