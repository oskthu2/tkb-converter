// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAllBlocksRequestFieldDescriptions
* careProviderIds ^definition = "Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. Om detta utelämnas hämtas alla spärrar oavsett organisationstillhörighet."
* careProviderIds ^comment = "TKB-fält: `careProviderIds` (`blocking:HsaId`, kardinalitet 0..*)."
* createdOnOrAfter ^definition = "Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras."
* createdOnOrAfter ^comment = "TKB-fält: `createdOnOrAfter` (`xs:dateTime`, kardinalitet 0..1)."
