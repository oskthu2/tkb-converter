// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: PrintListOfDispensedDrugsFieldDescriptions
* patientinformation ^definition = "Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som Avliden så returneras ej pdf."
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
* pdf ^definition = "Utdrag från läkemedelsförteckningen som PDF."
* pdf ^comment = "TKB-fält: `pdf` (`base64Binary`, kardinalitet 0..1)."
* resultCode ^definition = "Resultatkod för anropet."
* resultCode ^comment = "TKB-fält: `resultCode` (`resultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** Resultatkod för anropet. Tillåtna värden: OK, ERROR, INFO."
* comment ^definition = "Kommentar till eventuella fel eller varningar."
* comment ^comment = "TKB-fält: `comment` (`string`, kardinalitet 0..1).

**Fältlängder:** 1..1024"
