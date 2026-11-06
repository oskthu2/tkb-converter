// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetConsentsForCareProviderRequestFieldDescriptions
* careProviderId ^definition = "HSA-id på den vård-/omsorgsgivare vars samtycken skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`urn:riv:informationsecurity:authorization:consent:2:HsaId`, kardinalitet 1..1)."
* createdOnOrAfter ^definition = "Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas. Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras."
* createdOnOrAfter ^comment = "TKB-fält: `createdOnOrAfter` (`xs:DateTime`, kardinalitet 0..1)."
* getCancelledFlag ^definition = "Flagga som avgör om makulerade samtyckesintyg eller samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras."
* getCancelledFlag ^comment = "TKB-fält: `getCancelledFlag` (`xs:Boolean`, kardinalitet 1..1)."
