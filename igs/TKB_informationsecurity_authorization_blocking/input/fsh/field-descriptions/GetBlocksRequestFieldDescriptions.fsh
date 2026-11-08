// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetBlocksRequestFieldDescriptions
* patientId ^definition = "Ej obligatorisk patientidentitet såsom personnummer, samordningsnummer eller reservnummer vars spärrar skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:blocking:4:IIType`, kardinalitet 0..1)."
* careProviderIds ^definition = "Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas."
* careProviderIds ^comment = "TKB-fält: `careProviderIds` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 0..*)."
* createdOnOrAfter ^definition = "Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras."
* createdOnOrAfter ^comment = "TKB-fält: `createdOnOrAfter` (`xs:DateTime`, kardinalitet 0..1)."
