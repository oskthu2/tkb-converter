// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetBlocksForPatientRequestFieldDescriptions
* patientId ^definition = "Patientens personnummer eller samordningsnummer vars spärrar skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`blocking:PersonIdValue`, kardinalitet 1..1)."
* careProviderId ^definition = "HSA-id på den vårdgivare vars spärrar skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`blocking:HsaId`, kardinalitet 1..1)."
* createdOnOrAfter ^definition = "Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras."
* createdOnOrAfter ^comment = "TKB-fält: `createdOnOrAfter` (`xs:dateTime`, kardinalitet 0..1)."
