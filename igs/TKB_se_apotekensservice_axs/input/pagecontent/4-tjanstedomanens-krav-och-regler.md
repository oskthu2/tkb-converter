## Tjänstedomänens krav och regler

*SAKNAS I KÄLLDOKUMENT.* Det finns ingen TKB som beskriver krav och regler. Det som framgår av schemana:

### Felhantering

Tjänsten returnerar fel som SOAP-fel (wsdl:fault), inte som ett resultatfält i svaret. Två feltyper är definierade i `se.apotekensservice_axs_4.0.xsd`:

| Fel | Beskrivning | Fält |
| :--- | :--- | :--- |
| ApplicationException | Applikationsfel | `code` (1..1, string), `description` (0..1, string) |
| SystemException | Systemfel | `code` (1..1, string) |

Felkoderna finns inte dokumenterade i källan.

### Utökningar

Svars- och begärandetyperna har ett valfritt element `extension` (ExtensionType) med `xs:any`, och domäntyperna avslutas med `xs:any namespace="##other"`. Utökningspunkterna är inte med i de logiska modellerna.
