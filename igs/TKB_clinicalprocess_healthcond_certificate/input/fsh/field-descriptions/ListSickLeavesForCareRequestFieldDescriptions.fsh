// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListSickLeavesForCareRequestFieldDescriptions
* enhets-id ^definition = "HSA-id för enhet."
* enhets-id ^comment = "TKB-fält: `enhets-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).

**Mappning DIM:** Enhet.enhets-id"
* maxDagarMellanIntyg ^definition = "Maximalt antal dagars uppehåll det får vara mellan två intyg för att de ska räknas till samma sjukfall."
* maxDagarMellanIntyg ^comment = "TKB-fält: `maxDagarMellanIntyg` (`int`, kardinalitet 1..1).

**Mappning DIM:** -"
* minstaSjukskrivningslangd ^definition = "Minimal sjukskrivningslängd i dagar för de pågående sjukfall som ska hämtas."
* minstaSjukskrivningslangd ^comment = "TKB-fält: `minstaSjukskrivningslangd` (`int`, kardinalitet 0..1).

**Mappning DIM:** -"
* maxSjukskrivningslangd ^definition = "Maximal sjukskrivningslängd i dagar för de pågående sjukfall som ska hämtas."
* maxSjukskrivningslangd ^comment = "TKB-fält: `maxSjukskrivningslangd` (`int`, kardinalitet 0..1).

**Mappning DIM:** -"
* personal-id ^definition = "HSA-id för HoS-person som har signerat nuvarande intyg i sjukfallet."
* personal-id ^comment = "TKB-fält: `personal-id` (`HsaId (se 7.2.5)`, kardinalitet 0..*).

**Mappning DIM:** HoS-personal.personal-id"
