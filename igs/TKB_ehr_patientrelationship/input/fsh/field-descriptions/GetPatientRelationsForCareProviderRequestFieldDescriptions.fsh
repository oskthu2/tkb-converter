// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPatientRelationsForCareProviderRequestFieldDescriptions
* careProviderId ^definition = "HSA-id på den vårdgivare vars patientrelationer skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`patientrelationship:HsaId`, kardinalitet 1..1)."
* createdOnOrAfter ^definition = "Ej obligatoriskt startdatum för hur gamla patientrelationer som skall hämtas. Om angivet så returneras endast patientrelationer skapade/förändrade  på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras."
* createdOnOrAfter ^comment = "TKB-fält: `createdOnOrAfter` (`xs:dateTime`, kardinalitet 0..1)."
* getCancelledFlag ^definition = "Flagga som avgör om makulerade och återkallade patientrelationer som ej är utgångna (giltigt t o m har passerats) skall returneras."
* getCancelledFlag ^comment = "TKB-fält: `getCancelledFlag` (`xs:boolean`, kardinalitet 1..1)."
