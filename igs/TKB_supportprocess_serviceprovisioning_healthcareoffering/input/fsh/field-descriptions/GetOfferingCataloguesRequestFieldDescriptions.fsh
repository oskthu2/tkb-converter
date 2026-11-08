// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetOfferingCataloguesRequestFieldDescriptions
* providingOrganization ^definition = "Katalogansvarig organisation"
* providingOrganization ^comment = "TKB-fält: `providingOrganization` (`SearchProvidingOrganizationType`, kardinalitet 0..1)."
* providingOrganization.providingOrganizationId ^definition = "Id på katalogansvarig organisation

Id på katalogansvarig organisation

Begränsar sökningen så att endast poster med angivet id för katalogansvarig organisation returneras.

För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)

För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1)"
* providingOrganization.providingOrganizationId ^comment = "TKB-fält: `providingOrganizationId` (`IIType`, kardinalitet 0..*)."
* providingOrganization.management ^definition = "Ägarform

Begränsar sökningen så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras.

Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].

Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* providingOrganization.management ^comment = "TKB-fält: `management` (`CVType`, kardinalitet 0..*)."
* providingOrganization.publicProvider ^definition = "Offentlig huvudman

Om satt till ’true’ filtreras sökresultatet så att endast poster returneras där katalogansvarig organisation är en offentlig huvudman."
* providingOrganization.publicProvider ^comment = "TKB-fält: `publicProvider*` (`Boolean`, kardinalitet 0..1)."
