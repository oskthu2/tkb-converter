// Genererad från TKB clinicalprocess:activityprescription:logistics v1.0.2
// Kontrakt: GetDispensedDrugs v1.0
// Genererad: 2026-09-26

Invariant: getdispenseddrugs-borttagen-fields
Description: "borttagsdatum och borttagsorsak returneras endast om borttagen är sant"
Expression: "borttagen = false implies (borttagsdatum.empty() and borttagsorsak.empty())"
Severity: #error

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

* lakemedelsforteckning 0..* BackboneElement "Patientens läkemedelsförteckning"
    """
    XSD: Receptexpeditionsrad. Patientens läkemedelsförteckning kompletterad med ordinationsmappningsinformation.
    Om patienten saknar poster i läkemedelsförteckningen returneras en tom lista.
    """
  * obeys getdispenseddrugs-borttagen-fields
  * aktorsExpeditionsId 1..1 string "Aktörens expeditionsId"
      """
      Fältlängd 1..35.
      """
  * antalForpackningar 0..1 integer "Antal förpackningar av utlämnad vara"
      """
      Returneras om posten ej är en dosdispenserad artikel.
      """
  * antalPillerKlartext 0..1 string "Antal avdelade doser inklusive enhet"
      """
      Returneras om posten är en dosdispenserad artikel. Exempel: "28 st". Fältlängd 1..10.
      """
  * artikelinformation 1..1 BackboneElement "Information om utlämnad artikel"
    * antalEnhet 0..1 string "Enhet för antalForpackning"
        """
        Exempelvis "styck" eller "milliliter". Exempel där antalEnhet ingår: "6 x 5 x 0.72 milliliter". Fältlängd 1..80.
        """
    * antalIForpackning 0..1 decimal "Antal i förpackning"
        """
        Numerisk angivelse, exempelvis 0,72 (XSD-typ decimaltal, högst 3 decimaler). Exempel: "6 x 5 x 0.72 milliliter".
        """
    * antalYtterstaForpackning 0..1 integer "Antal yttersta förpackningar (multipel 2)"
        """
        Exempelvis 6. Exempel: "6 x 5 x 0.72 milliliter".
        """
    * antalYttreForpackning 0..1 integer "Antal yttre förpackningar (multipel 1)"
        """
        Exempelvis 5. Exempel: "6 x 5 x 0.72 milliliter".
        """
    * atckod 0..1 string "ATC-kod"
        """
        Exempel: "C07AB03". Fältlängd 1..8.
        """
    * atckodKlartext 0..1 string "Verksamt ämne enligt ATC-kod"
        """
        Exempel: "Atenolol". Fältlängd 1..240.
        """
    * forpackningsstorlek 0..1 string "Förpackningsstorlek"
        """
        Exempel: "6 x 5 x 0.72 milliliter". Fältlängd 1..50.
        """
    * forpackningstyp 0..1 string "Artikelns förpackningstyp"
        """
        Exempel: "Blister". Fältlängd 1..40.
        """
    * intressent 0..1 string "Ansvarigt företag för artikeln"
        """
        T.ex. innehavare av godkännande/registrering av försäljning eller parallellimportör. Exempel: "AstraZeneca AB". Fältlängd 1..160.
        """
    * lakemedelsform 0..1 string "Läkemedelsform"
        """
        Exempel: "Filmdragerad tablett". Fältlängd 1..160.
        """
    * lakemedelsformKod 0..1 string "Kod för läkemedelsform (beredningsformkod)"
        """
        Exempel: "FICOTA". Fältlängd 1..6.
        """
    * nplPackid 1..1 string "NPL Pack-id alternativt SB Pack-id"
        """
        Identitet på förskrivet läkemedel. Fältlängd 14..14.
        """
    * produktnamn 0..1 string "Läkemedelsnamn"
        """
        Fältlängd 1..100.
        """
    * styrka 0..1 decimal "Numerisk styrka"
        """
        Exempel "20.0" (XSD-typ decimaltal, högst 3 decimaler).
        """
    * styrkaEnhet 0..1 string "Styrkans enhet"
        """
        Exempel: "mg". Fältlängd 1..60.
        """
    * styrkaKlartext 0..1 string "Styrka i klartext"
        """
        Exempel: "20.0 mg". Fältlängd 1..80.
        """
  * borttagen 1..1 boolean "Markering om posten är borttagen"
      """
      Sant om posten är borttagen, annars falskt. En borttagen post ska visas överstruken med borttagsdatum och borttagsorsak.
      """
  * borttagsdatum 0..1 dateTime "Tidpunkt då posten markerades som borttagen"
      """
      Returneras endast om borttagen är sant.
      """
  * borttagsorsak 0..1 string "Kommentar för borttagen post"
      """
      Returneras endast om borttagen är sant. Fältlängd 1..50.
      """
  * doseringstext 1..1 string "Doseringsanvisning"
      """
      Doseringstext inklusive ändamål. Fältlängd 1..1016.
      """
  * expeditionsId 0..1 string "Expeditionsid hämtat från eHälsomyndigheten"
      """
      Fältlängd 1..31.
      """
  * expeditionsdatum 1..1 dateTime "Datum för utlämning från apotek"
  * forskrivarensArbetsplatsnamn 0..1 string "Förskrivarens arbetsplats namn"
      """
      Fältlängd 1..35.
      """
  * forskrivarensArbetsplatsOrt 0..1 string "Förskrivarens arbetsplats ort"
      """
      Fältlängd 1..28.
      """
  * forskrivarnamn 0..1 string "Förskrivarens namn"
      """
      Fältlängd 1..71.
      """
  * forskrivarpostadress 0..1 string "Förskrivarens postadress"
      """
      Fältlängd 1..35.
      """
  * forskrivarpostnummer 0..1 string "Förskrivarens postnummer"
      """
      Fältlängd 5..6.
      """
  * forskrivarspecialiteter 0..* string "Förskrivarens specialitet i klartext"
      """
      Fältlängd 1..256.
      """
  * forskrivaryrke 0..1 string "Förskrivarens yrke i klartext"
      """
      Fältlängd 1..100.
      """
  * mangd 1..1 string "Totalt expedierad mängd"
      """
      Kan returneras som antalPillerKlartext eller antalForpackningar + forpackningsstorlek. Exempel: "28 st" eller "2x100 tabletter". Fältlängd 1..100.
      """
  * ordinationsmappning 0..1 BackboneElement "Information för att mappa posten till en ordination"
      """
      Saknas i vissa fall, t.ex. när samma läkemedel (nplpackid) förekommer flera gånger i samma expedition, vid pappers- och telefonrecept, och vid uttag från äldre receptexpeditionssystem (expeditionsid saknas).
      """
    * ordinationsId 1..1 string "Förskrivningens ordinationsid"
    * produktradnummer 0..1 integer "Tillhörande recepts prdradnummer NEF i receptdepån"
        """
        Anges enbart om fältet är befintligt i receptdepån.
        """
    * radnummer 0..1 integer "Tillhörande recepts radnummer NEF i receptdepån"
        """
        Anges enbart om fältet är befintligt i receptdepån.
        """
  * radid 1..1 string "Unikt id för posten i läkemedelsförteckningen"
      """
      XSD-typ xs:long. Modellerad som string eftersom FHIR R4 saknar 64-bitars heltal (se ASSUME-APL-003).
      """
  * radnummer 0..1 integer "Radnummer för utlämnad vara i aktuell expedition"
* patientinformation 0..1 BackboneElement "Information om patienten"
    """
    Information om patienten vars läkemedelsförteckning man hämtat.
    Om patienten är markerad som 'Avliden' returneras inga rader ur läkemedelsförteckningen.
    """
  * patientidentifikation 0..1 BackboneElement "Patientidentifikation"
      """
      Kan enbart innehålla personnummer (kodverk OID 1.2.752.129.2.1.3), enhetligt utformat unikt person-id registrerat i folkbokföringen.
      """
    * kod 1..1 string "Patientens personnummer"
        """
        Fältlängd 1..12.
        """
    * kodverk 1..1 string "OID för kodverket"
        """
        Identifiering av berört kodverk/klassifikation enligt V-TIM 2.2 (XSD-typ OID, mönster [0-9][0-9.]*).
        För personnummer: 1.2.752.129.2.1.3.
        """
  * fornamn 0..1 string "Patientens förnamn"
      """
      För patient med skyddad identitet visas inte förnamn. Fältlängd 1..80.
      """
  * efternamn 0..1 string "Patientens efternamn"
      """
      För patient med skyddad identitet visas inte efternamn. Fältlängd 1..60.
      """
  * redigeratNamn 1..1 string "Redigerat namn"
      """
      Redigerat namn i formatet "mellannamn efternamn, förnamn". Förkortat till 36 tecken. Fältlängd 1..36.
      """
  * harRedigeratNamnForkortats 1..1 boolean "Anger om redigeratNamn har förkortats"
  * avliden 1..1 boolean "Anger om patienten är avliden"
      """
      Sant om personen är markerad som avliden, annars falskt.
      """
* varningsnivaUppnadd 1..1 boolean "Varningsnivå för antal läsningar uppnådd"
    """
    Anger om förskrivarens antal läsningar det senaste dygnet överskridit varningsnivå. Sant om varningsnivå har uppnåtts, annars falskt.
    """
* resultCode 1..1 code "Resultatkod för anropet"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar till eventuella fel eller varningar"
    """
    Fältlängd 1..1024. Vid logiska fel returneras resultCode ERROR med beskrivande text i comment.
    """
