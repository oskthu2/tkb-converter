// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetConsentsForCareProviderRequestFieldDescriptions
* careProviderId ^definition = "HSA-id på den vårdgivare vars samtycken skall hämtas."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`patientconsent:HsaId`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för vårdgivare. system = urn:oid:1.2.752.129.2.1.4.1. Max 32 tecken."
* createdOnOrAfter ^definition = "Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas. Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras."
* createdOnOrAfter ^comment = "TKB-fält: `createdOnOrAfter` (`xs:dateTime`, kardinalitet 0..1)."
* getCancelledFlag ^definition = "Flagga som avgör om makulerade och återkallade samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras."
* getCancelledFlag ^comment = "TKB-fält: `getCancelledFlag` (`xs:boolean`, kardinalitet 1..1).

**Modellanteckning:** Om true returneras även makulerade och återkallade intyg som inte är utgångna.
Utgångna intyg (giltigt t o m har passerats) returneras ej oavsett makulering eller återkallning."
