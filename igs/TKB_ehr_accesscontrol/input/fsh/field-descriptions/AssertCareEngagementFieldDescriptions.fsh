// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: AssertCareEngagementFieldDescriptions
* hasCareEngagement ^definition = "\"true\" om åtkomstberättigande vårdrelation kan anses föreligga, annars \"false\"."
* hasCareEngagement ^comment = "TKB-fält: `HasCareEngagement` (`booelan`, kardinalitet 1).

**Modellanteckning:** 'true' om åtkomstberättigande vårdrelation kan anses föreligga, annars 'false'.
Notering: Fältnamnet anges som 'HasCareEngagement' (versalt H) i TKB-tabellen
men som 'hasCareEngagement' i XSD. Normaliserat till camelCase i FHIR-modellen.
Kardinaliteten anges som '1' (utan punktnotation) i TKB — tolkat som 1..1."
