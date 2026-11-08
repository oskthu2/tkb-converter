// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetDispensedDrugsFieldDescriptions
* lakemedelsforteckning ^definition = "Patientens läkemedelsförteckning kompletterad med ordinationsmappningsinformation. Om patienten saknar poster i läkemedelsförteckningen så returneras en tom lista."
* lakemedelsforteckning ^comment = "TKB-fält: `lakemedelsforteckning` (`Receptexpeditionsrad`, kardinalitet 0..*)."
* lakemedelsforteckning.aktorsExpeditionsId ^definition = "Aktörens expeditionsId."
* lakemedelsforteckning.aktorsExpeditionsId ^comment = "TKB-fält i Receptexpeditionsrad: `aktorsExpeditionsId` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..35"
* lakemedelsforteckning.antalForpackningar ^definition = "Antal förpackningar av utlämnad vara. Returneras om posten ej är en dosdispenserad artikel."
* lakemedelsforteckning.antalForpackningar ^comment = "TKB-fält i Receptexpeditionsrad: `antalForpackningar` (`int`, kardinalitet 0..1)."
* lakemedelsforteckning.antalPillerKlartext ^definition = "Antal avdelade doser inklusive enhet. Returneras om posten är en dosdispenserad artikel. Exempel: \"28 st\"."
* lakemedelsforteckning.antalPillerKlartext ^comment = "TKB-fält i Receptexpeditionsrad: `antalPillerKlartext` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..10"
* lakemedelsforteckning.artikelinformation ^definition = "Information om utlämnad artikel."
* lakemedelsforteckning.artikelinformation ^comment = "TKB-fält i Receptexpeditionsrad: `artikelinformation` (`Artikelinformation`, kardinalitet 1..1)."
* lakemedelsforteckning.borttagen ^definition = "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt."
* lakemedelsforteckning.borttagen ^comment = "TKB-fält i Receptexpeditionsrad: `borttagen` (`boolean`, kardinalitet 1..1)."
* lakemedelsforteckning.borttagsdatum ^definition = "Tidpunkt då posten blev markerad som borttagen. Returneras endast om borttagen är sant."
* lakemedelsforteckning.borttagsdatum ^comment = "TKB-fält i Receptexpeditionsrad: `borttagsdatum` (`dateTime`, kardinalitet 0..1)."
* lakemedelsforteckning.borttagsorsak ^definition = "Kommentar för borttagen post. Returneras endast om borttagen är sant."
* lakemedelsforteckning.borttagsorsak ^comment = "TKB-fält i Receptexpeditionsrad: `borttagsorsak` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..50"
* lakemedelsforteckning.doseringstext ^definition = "Doseringsanvisning: doseringstext inklusive ändamål."
* lakemedelsforteckning.doseringstext ^comment = "TKB-fält i Receptexpeditionsrad: `doseringstext` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..1016"
* lakemedelsforteckning.expeditionsId ^definition = "Expeditionsid hämtat från eHälsomyndigheten."
* lakemedelsforteckning.expeditionsId ^comment = "TKB-fält i Receptexpeditionsrad: `expeditionsId` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..31"
* lakemedelsforteckning.expeditionsdatum ^definition = "Datum för utlämning från apotek."
* lakemedelsforteckning.expeditionsdatum ^comment = "TKB-fält i Receptexpeditionsrad: `expeditionsdatum` (`dateTime`, kardinalitet 1..1)."
* lakemedelsforteckning.forskrivarensArbetsplatsnamn ^definition = "Förskrivarens arbetsplats namn."
* lakemedelsforteckning.forskrivarensArbetsplatsnamn ^comment = "TKB-fält i Receptexpeditionsrad: `forskrivarensArbetsplatsnamn` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..35"
* lakemedelsforteckning.forskrivarensArbetsplatsOrt ^definition = "Förskrivarens arbetsplats ort."
* lakemedelsforteckning.forskrivarensArbetsplatsOrt ^comment = "TKB-fält i Receptexpeditionsrad: `forskrivarensArbetsplatsOrt` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..28"
* lakemedelsforteckning.forskrivarnamn ^definition = "Förskrivarens namn."
* lakemedelsforteckning.forskrivarnamn ^comment = "TKB-fält i Receptexpeditionsrad: `forskrivarnamn` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..71"
* lakemedelsforteckning.forskrivarpostadress ^definition = "Förskrivarens postadress."
* lakemedelsforteckning.forskrivarpostadress ^comment = "TKB-fält i Receptexpeditionsrad: `forskrivarpostadress` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..35"
* lakemedelsforteckning.forskrivarpostnummer ^definition = "Förskrivarens postnummer."
* lakemedelsforteckning.forskrivarpostnummer ^comment = "TKB-fält i Receptexpeditionsrad: `forskrivarpostnummer` (`string`, kardinalitet 0..1).

**Fältlängder:** 5..6"
* lakemedelsforteckning.forskrivarspecialiteter ^definition = "Förskrivarens specialitet i klartext."
* lakemedelsforteckning.forskrivarspecialiteter ^comment = "TKB-fält i Receptexpeditionsrad: `forskrivarspecialiteter` (`string`, kardinalitet 0..*).

**Fältlängder:** 1..256"
* lakemedelsforteckning.forskrivaryrke ^definition = "Förskrivarens yrke i klartext."
* lakemedelsforteckning.forskrivaryrke ^comment = "TKB-fält i Receptexpeditionsrad: `forskrivaryrke` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..100"
* lakemedelsforteckning.mangd ^definition = "Totalt expedierad mängd. Kan returneras som: antalPillerKlartext eller antalForpackningar + forpackningsstorlek. Exempel: \"28 st\" eller \"2x100 tabletter\"."
* lakemedelsforteckning.mangd ^comment = "TKB-fält i Receptexpeditionsrad: `mangd` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..100"
* lakemedelsforteckning.ordinationsmappning ^definition = "Information som behövs för att mappa en post i läkemedelsförteckningen till en ordination."
* lakemedelsforteckning.ordinationsmappning ^comment = "TKB-fält i Receptexpeditionsrad: `ordinationsmappning` (`Ordinationsmappning`, kardinalitet 0..1)."
* lakemedelsforteckning.radid ^definition = "Unikt id för posten i läkemedelsförteckningen."
* lakemedelsforteckning.radid ^comment = "TKB-fält i Receptexpeditionsrad: `radid` (`long`, kardinalitet 1..1)."
* lakemedelsforteckning.radnummer ^definition = "Radnummer för utlämnad vara i aktuell expedition."
* lakemedelsforteckning.radnummer ^comment = "TKB-fält i Receptexpeditionsrad: `radnummer` (`int`, kardinalitet 0..1)."
* patientinformation ^definition = "Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som 'Avliden' så returneras inga rader ur läkemedelsförteckningen."
* patientinformation ^comment = "TKB-fält: `patientinformation` (`Patientinformation`, kardinalitet 0..1)."
* patientinformation.patientidentifikation ^definition = "Patientidentifikationen kan enbart innehålla följande typ: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret."
* patientinformation.patientidentifikation ^comment = "TKB-fält i Patientinformation: `patientidentifikation` (`Patientidentifikation`, kardinalitet 0..1)."
* patientinformation.fornamn ^definition = "Patientens förnamn. För patient med skyddad identitet visas inte förnamn."
* patientinformation.fornamn ^comment = "TKB-fält i Patientinformation: `fornamn` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..80"
* patientinformation.efternamn ^definition = "Patientens efternamn. För patient med skyddad identitet visas inte efternamn."
* patientinformation.efternamn ^comment = "TKB-fält i Patientinformation: `efternamn` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..60"
* patientinformation.redigeratNamn ^definition = "Redigerat namn i formatet \"mellannamn efternamn, förnamn\". Förkortat till 36 tecken."
* patientinformation.redigeratNamn ^comment = "TKB-fält i Patientinformation: `redigeratNamn` (`string`, kardinalitet 1..1).

**Fältlängder:** 1..36"
* patientinformation.harRedigeratNamnForkortats ^definition = "Anger om redigeratNamn har förkortats."
* patientinformation.harRedigeratNamnForkortats ^comment = "TKB-fält i Patientinformation: `harRedigeratNamnForkortats` (`boolean`, kardinalitet 1..1)."
* patientinformation.avliden ^definition = "Anger om patienten är avliden. Sant om personen är markerad som avliden, annars falskt."
* patientinformation.avliden ^comment = "TKB-fält i Patientinformation: `avliden` (`boolean`, kardinalitet 1..1)."
* varningsnivaUppnadd ^definition = "Flagga som anger om förskrivarens antal läsningar det senaste dygnet överskridit varningsnivå. Sant om varningsnivå har uppnåtts, annars falskt."
* varningsnivaUppnadd ^comment = "TKB-fält: `varningsnivaUppnadd` (`boolean`, kardinalitet 1..1)."
* resultCode ^definition = "Resultatkod för anropet."
* resultCode ^comment = "TKB-fält: `resultCode` (`resultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** Resultatkod för anropet. Tillåtna värden: OK, ERROR, INFO."
* comment ^definition = "Kommentar till eventuella fel eller varningar."
* comment ^comment = "TKB-fält: `comment` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..1024"
