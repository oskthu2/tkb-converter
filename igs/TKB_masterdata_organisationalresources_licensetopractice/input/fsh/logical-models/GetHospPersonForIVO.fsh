// Genererad från TKB masterdata:organisationalresources:licensetopractice v2.0
// Kontrakt: GetHospPersonForIVO v2.0
// Namespace: urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForIvoResponder:2
// Genererad: 2026-05-19

Logical: GetHospPersonForIVO
Id: gethosppersonforivo
Title: "GetHospPersonForIVO"
Description: """
  Logisk modell för tjänstekontraktet GetHospPersonForIVO
  (RIV-TA urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForIvoResponder:2).
  Representerar responsens informationsstruktur — en lista av HoSp-personer med fullständig legitimationsinformation.
  Tjänsten ger Inspektionen för vård och omsorg (IVO) direktåtkomst till Socialstyrelsens register
  över hälso- och sjukvårdspersonal (HoSp) med utökade sökparametrar jämfört med den publika tjänsten.
"""
Characteristics: #can-be-target

* hospPerson 0..* BackboneElement "HoSp-person" "En post i HOSP-registret med fullständig legitimationsinformation."
  * hospId 1..1 Identifier "Unikt ID för person i HOSP"
    """
    Unikt identifierare för personen i HOSP-registret.
    OID för root: 1.2.752.116.3.1.1.
    """
  * personId 0..1 Identifier "Personnummer eller samordningsnummer"
    """
    Personnummer (OID: 1.2.752.129.2.1.3.1) eller
    samordningsnummer (OID: 1.2.752.129.2.1.3.3).
    Format: ÅÅÅÅMMDDXXXX (12 siffror).
    """
  * tidigarePersonId 0..1 Identifier "Tidigare personnummer eller samordningsnummer"
    """
    Tidigare personnummer eller samordningsnummer om personen bytt identitet.
    """
  * efternamn 1..1 string "Efternamn"
  * mellannamn 0..1 string "Mellannamn"
  * samtligaFornamn 1..* string "Samtliga förnamn"
  * tilltalsnamn 0..1 string "Tilltalsnamnsmarkering"
  * fodelsedatum 1..1 string "Födelsedatum (ÅÅÅÅMMDD)"
    """
    Datum för personens födelse. Format: ÅÅÅÅMMDD.
    """
  * kon 0..1 CodeableConcept "Kön"
    """
    Personens kön. OID: 1.2.752.129.2.2.1.1 (notera: dokumentet anger 1.2.752.116.3.1.3 men XSD-filen anger 1.2.752.129.2.2.1.1).
    """
  * kon from KonVS (required)
  * lan 0..1 CodeableConcept "Länstillhörighet"
    """
    Personens länstillhörighet. OID: 1.2.752.129.2.2.1.18.
    """
  * kommun 0..1 CodeableConcept "Kommuntillhörighet"
    """
    Personens kommuntillhörighet. OID: 1.2.752.129.2.2.1.17.
    """
  * folkbokforingsort 0..1 string "Folkbokföringsort"
  * skyddadIdentitet 1..1 boolean "Skyddad identitet"
    """
    Sant om personen har en sekretessmarkering.
    Vid skyddad identitet returneras begränsad information.
    """
  * skyddadIdentitetUpplysning 0..1 string "Upplysning vid skyddad identitet"
    """
    Upplysningstext att kontakta Socialstyrelsen, vid skyddad identitet.
    """
  * avliden 1..1 boolean "Avliden"
    """
    Sant om personen är avliden.
    """
  * avlidenDatum 0..1 string "Dödsdatum (ÅÅÅÅMMDD)"
    """
    Datum för dödsfallet. Format: ÅÅÅÅMMDD.
    """
  * utvandrad 1..1 boolean "Utvandrad"
    """
    Sant om personen har utvandrat.
    """
  * forskrivarkod 0..1 Identifier "Förskrivarkod"
    """
    Personens förskrivarkod. OID för root: 1.2.752.116.3.1.2.
    """
  * legitimation 0..* BackboneElement "Legitimation" "Beskrivning av personens legitimation."
    * legitimeratYrke 1..1 CodeableConcept "Legitimerat yrke"
      """
      Anger vilket legitimerat yrke som avses.
      Kodas enligt kodverket LegitimeratYrke (OID: 1.2.752.116.3.1.3).
      """
    * legitimeratYrke from LegitimeratYrkeVS (required)
    * giltigLegitimation 1..1 boolean "Giltig legitimation"
      """
      Anger om legitimationen är giltig (true/false).
      """
    * utbildning 1..1 CodeableConcept "Utbildning"
      """
      Anger personens utbildning för denna legitimation.
      OID: 1.2.752.116.3.1.4.
      """
    * utbildningsland 0..1 string "Utbildningsland"
      """
      Land där utbildning skedde om ej svensk utbildning.
      """
    * internationellOverrenskommelse 0..1 string "Internationell överrenskommelse"
      """
      Internationell överrenskommelse, anges för personer som har primär legitimation inom annat EU/EES-land.
      """
    * legitimationsDatum 1..1 string "Legitimationsdatum (ÅÅÅÅMMDD)"
      """
      Datum från vilket legitimationen är giltig. Format: ÅÅÅÅMMDD.
      """
    * beslutsdatumFysioterapeut 0..1 string "Beslutsdatum fysioterapeut (ÅÅÅÅMMDD)"
      """
      Anger datum då en person övergått från legitimerat yrke SG (Sjukgymnast) till FT (Fysioterapeut).
      """
    * examensdatum 0..1 string "Examensdatum (ÅÅÅÅMMDD)"
      """
      Datum för examen. Format: ÅÅÅÅMMDD.
      Saknar motsvarighet i RIM.
      """
    * larosate 0..1 string "Lärosäte"
      """
      Lärosäte för examen. Saknar motsvarighet i RIM.
      """
    * grundyrke 0..1 string "Grundyrke"
      """
      Grundyrke för examen. Saknar motsvarighet i RIM.
      """
    * forskrivningsratt 0..1 boolean "Förskrivningsrätt"
      """
      Anger om personen har förskrivningsrätt (true/false).
      """
    * forskrivningsrattDatum 0..1 string "Datum för förskrivningsrätt (ÅÅÅÅMMDD)"
      """
      Anger datum för förskrivningsrätt.
      För LK, TL, TH: samma datum som för legitimationen.
      För BM och SJ med förskrivningsrätt: datum för godkänd ansökan.
      """
    * specialistbevis 0..* BackboneElement "Specialistbevis" "Specialistbevis kopplade till legitimationen."
      * specialistinriktning 1..1 CodeableConcept "Specialistinriktning"
        """
        Anger vilken specialistinriktning som avses.
        OIDer: 1.2.752.116.3.1.6 (läkare 1992), 1.2.752.116.3.1.7 (läkare 1996),
        1.2.752.116.3.1.8 (läkare 2008), 1.2.752.116.3.1.9 (läkare 2015),
        1.2.752.116.3.1.10 (tandläkare 1993).
        """
      * utbildningsland 0..1 string "Utbildningsland"
        """
        Land där utbildning skedde om ej svensk utbildning.
        """
      * internationellOverrenskommelse 0..1 string "Internationell överrenskommelse"
        """
        Internationell överrenskommelse för primär legitimation inom annat EU/EES-land.
        """
      * specialistbevisDatum 1..1 string "Specialistbevis datum (ÅÅÅÅMMDD)"
        """
        Datum från vilket specialistbeviset är giltigt. Format: ÅÅÅÅMMDD.
        """
    * behorighetsbegransning 0..* BackboneElement "Behörighetsbegränsning" "Begränsning i behörighet för legitimationen."
      * typAvBehorighetsbegransning 1..1 CodeableConcept "Typ av behörighetsbegränsning"
        """
        Anger typ av behörighetsbegränsning.
        Kodas enligt kodverket TypAvBehorighetsbegransning (OID: 1.2.752.116.3.1.5).
        """
      * typAvBehorighetsbegransning from TypAvBehorighetsbegransningVS (required)
      * fromDatum 1..1 string "Från-datum (ÅÅÅÅMMDD)"
        """
        Anger från när begränsningen gäller. Format: ÅÅÅÅMMDD.
        """
      * tomDatum 0..1 string "Tom-datum (ÅÅÅÅMMDD)"
        """
        Används vid behörighetsbegränsning av typ Prövotid. Format: ÅÅÅÅMMDD.
        """
    * ovrigBehorighet 0..* BackboneElement "Övrig behörighet" "Övrig behörighet kopplad till legitimationen."
      * behorighet 1..1 CodeableConcept "Behörighet"
        """
        Anger vilken övrig behörighet som avses. OIDer se informationsspecifikationen.
        """
      * behorighetsDatum 1..1 string "Behörighetsdatum (ÅÅÅÅMMDD)"
        """
        Datum från vilket behörigheten är giltig. Format: ÅÅÅÅMMDD.
        """
