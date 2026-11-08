// Elementen genereras ur GetDispensedDrugsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:logistics v1.0.2
// Kontrakt: GetDispensedDrugs v1.0
// Genererad: 2026-09-26

Logical: GetDispensedDrugs
Id: getdispenseddrugs
Title: "GetDispensedDrugs"
Description: """
  Logisk modell för tjänstekontraktet GetDispensedDrugs
  (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:GetDispensedDrugsResponder:1).
  Representerar responsens informationsstruktur: patientens läkemedelsförteckning med viss
  ordinationsinformation för att kunna koppla ihop utlämnat läkemedel med ordinerat.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* lakemedelsforteckning 0..* Base "Receptexpeditionsrad" "Patientens läkemedelsförteckning kompletterad med ordinationsmappningsinformation. Om patienten saknar poster i läkemedelsförteckningen så returneras en tom lista."
* lakemedelsforteckning.aktorsExpeditionsId 1..1 string "aktorsExpeditionsId" "aktorsExpeditionsId"
* lakemedelsforteckning.antalForpackningar 0..1 integer "Antal förpackningar av utlämnad vara. Returneras om posten ej är en dosdispenserad artikel." "Antal förpackningar av utlämnad vara. Returneras om posten ej är en dosdispenserad artikel."
* lakemedelsforteckning.antalPillerKlartext 0..1 string "antalPillerKlartext" "antalPillerKlartext"
* lakemedelsforteckning.artikelinformation 1..1 Base "Artikelinformation" "Information om utlämnad artikel."
* lakemedelsforteckning.artikelinformation.antalEnhet 0..1 string "antalEnhet" "antalEnhet"
* lakemedelsforteckning.artikelinformation.antalIForpackning 0..1 decimal "antalIForpackning" "Antal i förpackning. Numerisk angivelse, exempelvis 0,72. Exempel där antalForpackning ingår: \"6 x 5 x 0.72 milliliter\"."
* lakemedelsforteckning.artikelinformation.antalYtterstaForpackning 0..1 integer "antalYtterstaForpackning" "Antal multipel 2. Antal yttersta förpackningar för artikeln, exempelvis 6. Exempel där antalForpackning ingår: \"6 x 5 x 0.72 milliliter\"."
* lakemedelsforteckning.artikelinformation.antalYttreForpackning 0..1 integer "antalYttreForpackning" "Antal multipel 1. Antal yttre förpackningar som varan har, exempelvis 5. Exempel där antalYttreForpackning ingår: \"6 x 5 x 0.72 milliliter\"."
* lakemedelsforteckning.artikelinformation.atckod 0..1 string "atckod" "atckod"
* lakemedelsforteckning.artikelinformation.atckodKlartext 0..1 string "atckodKlartext" "atckodKlartext"
* lakemedelsforteckning.artikelinformation.forpackningsstorlek 0..1 string "forpackningsstorlek" "forpackningsstorlek"
* lakemedelsforteckning.artikelinformation.forpackningstyp 0..1 string "forpackningstyp" "forpackningstyp"
* lakemedelsforteckning.artikelinformation.intressent 0..1 string "intressent" "intressent"
* lakemedelsforteckning.artikelinformation.lakemedelsform 0..1 string "lakemedelsform" "lakemedelsform"
* lakemedelsforteckning.artikelinformation.lakemedelsformKod 0..1 string "lakemedelsformKod" "lakemedelsformKod"
* lakemedelsforteckning.artikelinformation.nplPackid 1..1 string "nplPackid" "nplPackid"
* lakemedelsforteckning.artikelinformation.produktnamn 0..1 string "produktnamn" "produktnamn"
* lakemedelsforteckning.artikelinformation.styrka 0..1 decimal "Numerisk styrka. Exempel \"20.0\"." "Numerisk styrka. Exempel \"20.0\"."
* lakemedelsforteckning.artikelinformation.styrkaEnhet 0..1 string "styrkaEnhet" "styrkaEnhet"
* lakemedelsforteckning.artikelinformation.styrkaKlartext 0..1 string "styrkaKlartext" "styrkaKlartext"
* lakemedelsforteckning.borttagen 1..1 boolean "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt." "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt."
* lakemedelsforteckning.borttagsdatum 0..1 dateTime "Tidpunkt då posten blev markerad som borttagen. Returneras endast om borttagen är sant." "Tidpunkt då posten blev markerad som borttagen. Returneras endast om borttagen är sant."
* lakemedelsforteckning.borttagsorsak 0..1 string "borttagsorsak" "borttagsorsak"
* lakemedelsforteckning.doseringstext 1..1 string "doseringstext" "doseringstext"
* lakemedelsforteckning.expeditionsId 0..1 string "expeditionsId" "expeditionsId"
* lakemedelsforteckning.expeditionsdatum 1..1 dateTime "Datum för utlämning från apotek." "Datum för utlämning från apotek."
* lakemedelsforteckning.forskrivarensArbetsplatsnamn 0..1 string "forskrivarensArbetsplatsnamn" "forskrivarensArbetsplatsnamn"
* lakemedelsforteckning.forskrivarensArbetsplatsOrt 0..1 string "forskrivarensArbetsplatsOrt" "forskrivarensArbetsplatsOrt"
* lakemedelsforteckning.forskrivarnamn 0..1 string "forskrivarnamn" "forskrivarnamn"
* lakemedelsforteckning.forskrivarpostadress 0..1 string "forskrivarpostadress" "forskrivarpostadress"
* lakemedelsforteckning.forskrivarpostnummer 0..1 string "forskrivarpostnummer" "forskrivarpostnummer"
* lakemedelsforteckning.forskrivarspecialiteter 0..* string "forskrivarspecialiteter" "forskrivarspecialiteter"
* lakemedelsforteckning.forskrivaryrke 0..1 string "forskrivaryrke" "forskrivaryrke"
* lakemedelsforteckning.mangd 1..1 string "mangd" "mangd"
* lakemedelsforteckning.ordinationsmappning 0..1 Base "Ordinationsmappning" "Information som behövs för att mappa en post i läkemedelsförteckningen till en ordination."
* lakemedelsforteckning.ordinationsmappning.ordinationsId 1..1 string "Förskrivningens ordinationsid." "Förskrivningens ordinationsid."
* lakemedelsforteckning.ordinationsmappning.produktradnummer 0..1 integer "Tillhörande recepts eventuella prdradnummer NEF i receptdepån. Anges enbart om fältet är befintligt i receptdepån." "Tillhörande recepts eventuella prdradnummer NEF i receptdepån. Anges enbart om fältet är befintligt i receptdepån."
* lakemedelsforteckning.ordinationsmappning.radnummer 0..1 integer "Tillhörande recepts eventuella radnummer NEF i receptdepån. Anges enbart om fältet är befintligt i receptdepån." "Tillhörande recepts eventuella radnummer NEF i receptdepån. Anges enbart om fältet är befintligt i receptdepån."
* lakemedelsforteckning.radid 1..1 string "Unikt id för posten i läkemedelsförteckningen." "Unikt id för posten i läkemedelsförteckningen."
* lakemedelsforteckning.radnummer 0..1 integer "Radnummer för utlämnad vara i aktuell expedition." "Radnummer för utlämnad vara i aktuell expedition."
* patientinformation 0..1 Base "Patientinformation" "Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som 'Avliden' så returneras inga rader ur läkemedelsförteckningen."
* patientinformation.patientidentifikation 0..1 Base "Patientidentifikation" "Patientidentifikationen kan enbart innehålla följande typ: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret."
* patientinformation.patientidentifikation.kod 1..1 string "kod" "kod"
* patientinformation.patientidentifikation.kodverk 1..1 string "Identifierng av berört kodverk/klassifikation enligt V-TIM 2.2." "Identifierng av berört kodverk/klassifikation enligt V-TIM 2.2."
* patientinformation.patientidentifikation.kodverk only OID
* patientinformation.fornamn 0..1 string "fornamn" "fornamn"
* patientinformation.efternamn 0..1 string "efternamn" "efternamn"
* patientinformation.redigeratNamn 1..1 string "redigeratNamn" "redigeratNamn"
* patientinformation.harRedigeratNamnForkortats 1..1 boolean "Anger om redigeratNamn har förkortats." "Anger om redigeratNamn har förkortats."
* patientinformation.avliden 1..1 boolean "Anger om patienten är avliden. Sant om personen är markerad som avliden, annars falskt." "Anger om patienten är avliden. Sant om personen är markerad som avliden, annars falskt."
* varningsnivaUppnadd 1..1 boolean "varningsnivaUppnadd" "Flagga som anger om förskrivarens antal läsningar det senaste dygnet överskridit varningsnivå. Sant om varningsnivå har uppnåtts, annars falskt."
* resultCode 1..1 code "Resultatkod för anropet." "Resultatkod för anropet. Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetDispensedDrugsFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* lakemedelsforteckning obeys getdispenseddrugs-borttagen-fields

Invariant: getdispenseddrugs-borttagen-fields
Description: "borttagsdatum och borttagsorsak returneras endast om borttagen är sant"
Expression: "borttagen = false implies (borttagsdatum.empty() and borttagsorsak.empty())"
Severity: #error
