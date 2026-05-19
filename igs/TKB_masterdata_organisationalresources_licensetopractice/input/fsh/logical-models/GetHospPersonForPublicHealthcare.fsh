// Genererad från TKB masterdata:organisationalresources:licensetopractice v2.0
// Kontrakt: GetHospPersonForPublicHealthcare v2.0
// Namespace: urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForPublicHealthCareResponder:2
// Genererad: 2026-05-19

Logical: GetHospPersonForPublicHealthcare
Id: gethosppersonforpublichealthcare
Title: "GetHospPersonForPublicHealthcare"
Description: """
  Logisk modell för tjänstekontraktet GetHospPersonForPublicHealthcare
  (RIV-TA urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForPublicHealthCareResponder:2).
  Representerar responsens informationsstruktur — en lista av HoSp-personer med legitimationsinformation.
  Tjänsten ger offentliga vårdgivare direktåtkomst till Socialstyrelsens register över hälso- och
  sjukvårdspersonal (HoSp).
"""
Characteristics: #can-be-target

* hospPerson 0..* BackboneElement "HoSp-person" "En post i HOSP-registret med legitimationsinformation."
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
    Ett tidigare personnummer eller samordningsnummer om personen bytt identitet.
    """
  * efternamn 1..1 string "Efternamn"
  * samtligaFornamn 1..* string "Samtliga förnamn"
  * fodelsedatum 1..1 string "Födelsedatum (ÅÅÅÅMMDD)"
    """
    Datum för personens födelse. Format: ÅÅÅÅMMDD.
    """
  * skyddadIdentitetUpplysning 0..1 string "Upplysning vid skyddad identitet"
    """
    Upplysningstext om kontakta Socialstyrelsen, används när personen har skyddad identitet.
    Vid skyddad identitet returneras endast personnummer, födelsedatum, och denna upplysning.
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
    * utbildning 0..1 CodeableConcept "Utbildning"
      """
      Anger personens utbildning för denna legitimation.
      OID: 1.2.752.116.3.1.4.
      """
    * legitimationsDatum 1..1 string "Legitimationsdatum (ÅÅÅÅMMDD)"
      """
      Datum från vilket legitimationen är giltig. Format: ÅÅÅÅMMDD.
      """
    * beslutsdatumFysioterapeut 0..1 string "Beslutsdatum fysioterapeut (ÅÅÅÅMMDD)"
      """
      Anger datum då en person övergått från legitimerat yrke SG (Sjukgymnast) till FT (Fysioterapeut).
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
