// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetOfferingCataloguesFieldDescriptions
* offeringCatalogue ^definition = "Utbudskatalog"
* offeringCatalogue ^comment = "TKB-fält: `OfferingCatalogue` (`OfferingCatalogueType`, kardinalitet 0..*)."
* offeringCatalogue.providingOrganization ^definition = "Katalogansvarig organisation"
* offeringCatalogue.providingOrganization ^comment = "TKB-fält: `../providingOrganization` (`ProvidingOrganizationType`, kardinalitet 1..*)."
* offeringCatalogue.providingOrganization.providingOrganizationId ^definition = "Organisation id

Id för den katalogansvariga organisationen. Innehållet i id styrs av vilken typ av organisation det är.

För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)

För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1)"
* offeringCatalogue.providingOrganization.providingOrganizationId ^comment = "TKB-fält: `../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** providingOrganizationId Heter id i schemat."
* offeringCatalogue.providingOrganization.providingOrganizationId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* offeringCatalogue.providingOrganization.providingOrganizationId.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* offeringCatalogue.providingOrganization.providingOrganizationName ^definition = "Namn på katalogansvarig organisation."
* offeringCatalogue.providingOrganization.providingOrganizationName ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 1..1).

**Modellanteckning:** providingOrganizationName Heter name i schemat."
* offeringCatalogue.providingOrganization.management ^definition = "Ägarform

Anger ägarform för den katalogansvariga organisationen.

Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].

Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* offeringCatalogue.providingOrganization.management ^comment = "TKB-fält: `../../management` (`CVType`, kardinalitet 1..1)."
* offeringCatalogue.providingOrganization.management.cvCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* offeringCatalogue.providingOrganization.management.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* offeringCatalogue.providingOrganization.management.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.management.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.management.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.management.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.publicProvider ^definition = "Offentlig huvudman

Anger om den katalogansvariga organisationen är en offentlig huvudman.

true = offentlig huvudman"
* offeringCatalogue.providingOrganization.publicProvider ^comment = "TKB-fält: `../../publicProvider*` (`Boolean`, kardinalitet 1..1)."
* offeringCatalogue.providingOrganization.description ^definition = "Beskrivning av den katalogansvariga organisationen. Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* offeringCatalogue.providingOrganization.description ^comment = "TKB-fält: `../../description` (`DescriptionType`, kardinalitet 0..*)."
* offeringCatalogue.providingOrganization.description.descriptionText ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** descriptionText Heter text i schemat."
* offeringCatalogue.providingOrganization.description.descriptionLanguage ^comment = "TKB-fält: `../../../language` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** descriptionLanguage Heter language i schemat."
* offeringCatalogue.providingOrganization.description.descriptionLanguage.cvCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* offeringCatalogue.providingOrganization.description.descriptionLanguage.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1)."
* offeringCatalogue.providingOrganization.description.descriptionLanguage.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.description.descriptionLanguage.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.description.descriptionLanguage.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.description.descriptionLanguage.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.description.role ^comment = "TKB-fält: `../../../role` (`CVType`, kardinalitet 0..*)."
* offeringCatalogue.providingOrganization.description.role.cvCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* offeringCatalogue.providingOrganization.description.role.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1)."
* offeringCatalogue.providingOrganization.description.role.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.description.role.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.description.role.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* offeringCatalogue.providingOrganization.description.role.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* offeringCatalogue.interaction ^definition = "Interaktion

Pekar på var utbudskatalogen finns.

En katalogansvarig organisation kan ha flera kataloger med olika systemadresser."
* offeringCatalogue.interaction ^comment = "TKB-fält: `../interaction` (`InteractionType`, kardinalitet 1..1)."
* offeringCatalogue.interaction.logicalAddress ^definition = "Logisk adress

Logisk adress som ska användas vid adressering."
* offeringCatalogue.interaction.logicalAddress ^comment = "TKB-fält: `../../logicalAddress` (`string`, kardinalitet 1..1)."
* offeringCatalogue.interaction.interactionName ^definition = "Namn på interaktion"
* offeringCatalogue.interaction.interactionName ^comment = "TKB-fält: `../../name` (`anyURI`, kardinalitet 1..1).

**Modellanteckning:** interactionName Heter name i schemat."
* offeringCatalogue.interaction.majorVersion ^definition = "Den majorversion som stöds"
* offeringCatalogue.interaction.majorVersion ^comment = "TKB-fält: `../../majorVersion` (`int`, kardinalitet 1..1)."
* offeringCatalogue.interaction.minorVersion ^definition = "Den minorversion som stöds"
* offeringCatalogue.interaction.minorVersion ^comment = "TKB-fält: `../../minorVersion` (`int`, kardinalitet 0..1)."
* offeringCatalogue.interaction.rivtaVersion ^definition = "Rivtaversion

Version av RIVTA [2.0, 2.1]"
* offeringCatalogue.interaction.rivtaVersion ^comment = "TKB-fält: `../../rivtaVersion` (`RIVTAVersionEnum`, kardinalitet 1..1)."
