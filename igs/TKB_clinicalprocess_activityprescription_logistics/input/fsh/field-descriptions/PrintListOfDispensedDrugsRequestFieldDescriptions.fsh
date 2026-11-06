// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: PrintListOfDispensedDrugsRequestFieldDescriptions
* patient ^definition = "Patient vars läkemedelsförteckning skall hämtas."
* patient ^comment = "TKB-fält: `patient` (`Patient`, kardinalitet 1..1)."
* patient.patientidentifikation ^definition = "Patientidentifikationen kan innehålla följande typer: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret."
* patient.patientidentifikation ^comment = "TKB-fält i Patient: `patientidentifikation` (`Patientidentifikation`, kardinalitet 1..1)."
* anropandeVardpersonal ^definition = "Anropande vårdpersonal."
* anropandeVardpersonal ^comment = "TKB-fält: `anropandeVardpersonal` (`Vardpersonal`, kardinalitet 1..1)."
* anropandeVardpersonal.efternamn ^definition = "Användarnamn. Används i kombination med personHsaId för att identifiera användare."
* anropandeVardpersonal.efternamn ^comment = "TKB-fält i Vardpersonal: `efternamn` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..35"
* anropandeVardpersonal.fornamn ^definition = "Användarnamn. Används i kombination med personHsaId för att identifiera användare."
* anropandeVardpersonal.fornamn ^comment = "TKB-fält i Vardpersonal: `fornamn` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..35"
* anropandeVardpersonal.personHsaId ^definition = "HSA-id för läsande person."
* anropandeVardpersonal.personHsaId ^comment = "TKB-fält i Vardpersonal: `personHsaId` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..64

**Modellanteckning:** Fältlängd 1..64."
* anropandeVardpersonal.vardenhetHsaId ^definition = "HSA-id för läsande vårdenhet. Används för spårbarhet."
* anropandeVardpersonal.vardenhetHsaId ^comment = "TKB-fält i Vardpersonal: `vardenhetHsaId` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..64"
* anropandeVardpersonal.vardgivareHsaId ^definition = "HSA-id för läsande vårdgivare. Används för spårbarhet."
* anropandeVardpersonal.vardgivareHsaId ^comment = "TKB-fält i Vardpersonal: `vardgivareHsaId` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..64"
* forskrivarkod ^definition = "Förskrivarens individuella förskrivarkod. Gruppförskrivarkoder får ej användas. Valideras mot FORS."
* forskrivarkod ^comment = "TKB-fält: `forskrivarkod` (`string`, kardinalitet 0..1).

**Fältlängder:** 7..7"
* identifieradArbetsplats ^definition = "Identifierad arbetsplats."
* identifieradArbetsplats ^comment = "TKB-fält: `identifieradArbetsplats` (`ArbetsplatsIdentifikation`, kardinalitet 1..1).

**Modellanteckning:** XSD: ArbetsplatsIdentifikation (xs:choice). Exakt ett av arbetsplatskod och arbetsplats ska anges."
* identifieradArbetsplats.arbetsplatskod ^definition = "Del av val. Förskrivarens arbetsplatskod. Valideras. Obligatorisk om arbetsplats inte anges."
* identifieradArbetsplats.arbetsplatskod ^comment = "TKB-fält i ArbetsplatsIdentifikation: `arbetsplatskod` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Fältlängder:** 1..20"
* identifieradArbetsplats.arbetsplats ^definition = "Del av val. Förskrivarens arbetsplats. Obligatorisk om arbetsplatskod inte anges."
* identifieradArbetsplats.arbetsplats ^comment = "TKB-fält i ArbetsplatsIdentifikation: `arbetsplats` (`Arbetsplats`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
