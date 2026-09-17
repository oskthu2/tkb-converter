// Genererad från TKB population:residentmaster v1.2
// Kontrakt: LookupResidentForFullProfile v1.2
// Genererad: 2026-09-17

Invariant: lookupresidentforfullprofile-relation-id-xor
Description: "Exakt ett av relationPersonNr och relationFodelsetidNr ska anges för en relation (enligt kommentar i källschemat: 'ett av värdena måste vara satta, men inte båda')."
Expression: "relationPersonNr.exists() xor relationFodelsetidNr.exists()"
Severity: #error

Logical: LookupResidentForFullProfile
Id: lookupresidentforfullprofile
Title: "LookupResidentForFullProfile"
Description: """
  Logisk modell för svaret från tjänstekontraktet LookupResidentForFullProfile
  (RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1).
  Representerar en post (ResidentType, fullständig profil "Full") i svarets lista av
  träffar. Svaret som helhet innehåller 0..* sådana poster, en per efterfrågat och
  matchat personnummer (se avsnitt 7). Fält som inte ingår i den aktuella profilen
  utelämnas normalt inte i denna modell (den täcker hela ResidentType-bruttolistan),
  men kan i ett faktiskt svar sakna värde eftersom endast Full-profilens fält (se
  avsnitt 6.1) faktiskt populeras av producenten.
"""
Characteristics: #can-be-target

* residentSekretessmarkering 1..1 boolean "Sekretessmarkering"
    """
    true = personen har sekretessmarkering (J), false = personen har inte
    sekretessmarkering (N). Poster med sekretessmarkering innehåller normalt inte
    annan information än personnummer och detta fält.
    Kardinalitet: Obligatorisk.
    """
* senasteAndringFolkbokforing 0..1 date "Senaste ändring i folkbokföringen"
    "Datum när personen uppdaterades senast i folkbokföringen."
* personPost 1..1 BackboneElement "Personpost"
  * personId 1..1 Identifier "Personnummer/samordningsnummer/reservnummer"
      """
      value = personnummer på formatet ÅÅÅÅMMDDNNNN, eller (för regional/lokal
      tjänstekonsument) ett reservnummer enligt aktuellt reservnummerkodverk.
      Kardinalitet: Obligatorisk.
      """
  * personKon 0..1 code "Kön"
  * personKon from KonVS (required)
  * personFodelsetid 0..1 date "Födelsetid"
      "Kan saknas för personer utan fastställd födelsetid."
  * avregistrering 0..1 BackboneElement "Avregistreringsuppgifter"
    * avregistreringsorsakKod 0..1 code "Avregistreringsorsak"
        "Utgår i ResidentType version 2 — ersätts av avregistreringsorsakKodKomplett."
    * avregistreringsorsakKod from AvregistreringsorsakVS (required)
    * avregistreringsdatum 0..1 string "Avregistreringsdatum"
        "Format ÅÅÅÅMMDD, men kan vara ett ofullständigt datum (4–8 tecken)."
    * avregistreringsorsakKodKomplett 0..1 code "Avregistreringsorsak (komplett kodverk)"
    * avregistreringsorsakKodKomplett from AvregistreringsorsakKomplettVS (required)
  * personNamn 0..1 BackboneElement "Namnuppgifter"
    * aviseringsnamn 0..1 string "Aviseringsnamn"
        "Mellannamn, efternamn och förnamn i den ordningen, max 36 tecken."
    * fornamn 0..1 string "Förnamn"
        "Alla förnamn med mellanslag emellan, max 80 tecken."
    * tilltalsnamnsmarkering 0..1 integer "Tilltalsnamnsmarkering"
        "Positionskod (10–99) som anger vilket av förnamnen som är tilltalsnamn."
    * mellannamn 0..1 string "Mellannamn"
        "Max 40 tecken."
    * efternamn 0..1 string "Efternamn"
        "Max 60 tecken."
  * folkbokforingsadress 0..1 BackboneElement "Folkbokföringsadress"
    * lanKod 0..1 string "Länskod"
    * kommunKod 0..1 string "Kommunkod"
    * forsamlingKod 0..1 string "Församlingskod"
    * fastighetsbeteckning 0..1 string "Fastighetsbeteckning"
    * careOf 0..1 string "Care of"
    * utdelningsadress1 0..1 string "Utdelningsadress, rad 1"
    * utdelningsadress2 0..1 string "Utdelningsadress, rad 2"
    * postnummer 0..1 string "Postnummer"
        "Fem tecken, inga mellanslag."
    * postort 0..1 string "Postort"
    * folkbokforingsdatum 0..1 string "Folkbokföringsdatum"
        "Format ÅÅÅÅMMDD, men kan vara ett ofullständigt datum."
    * scbNyckelkod 0..1 string "SCB Nyckelkod"
        "Sex tecken, ej från Navet-avisering."
  * sarskildPostadress 0..1 BackboneElement "Särskild postadress"
      "Samma struktur som folkbokföringsadress (SvenskAdressTYPE)."
    * lanKod 0..1 string "Länskod"
    * kommunKod 0..1 string "Kommunkod"
    * forsamlingKod 0..1 string "Församlingskod"
    * fastighetsbeteckning 0..1 string "Fastighetsbeteckning"
    * careOf 0..1 string "Care of"
    * utdelningsadress1 0..1 string "Utdelningsadress, rad 1"
    * utdelningsadress2 0..1 string "Utdelningsadress, rad 2"
    * postnummer 0..1 string "Postnummer"
    * postort 0..1 string "Postort"
    * folkbokforingsdatum 0..1 string "Folkbokföringsdatum"
    * scbNyckelkod 0..1 string "SCB Nyckelkod"
  * hanvisningsPersonNr 0..1 Identifier "Hänvisningspersonnummer"
      "value = personnummer eller tilldelat personnummer/samordningsnummer."
  * utlandsadress 0..1 BackboneElement "Utlandsadress"
    * utdelningsadress1 0..1 string "Utdelningsadress, rad 1"
    * utdelningsadress2 0..1 string "Utdelningsadress, rad 2"
    * utdelningsadress3 0..1 string "Utdelningsadress, rad 3"
    * land 0..1 string "Land"
    * utlandsadressdatum 0..1 string "Datum för utlandsadress"
    * rostrattsdatum 0..1 string "Datum för rösträtt"
  * civilstand 0..1 BackboneElement "Civilstånd"
    * civilstandKod 0..1 code "Civilståndskod"
    * civilstandKod from CivilstandKodVS (required)
    * civilstandsdatum 0..1 string "Civilståndsdatum"
  * fodelse 0..1 BackboneElement "Födelseuppgifter"
    * hemortSverige 0..1 BackboneElement "Hemort i Sverige"
      * fodelselanKod 0..1 string "Kod för födelselän"
      * fodelseforsamling 0..1 string "Kod för födelseförsamling"
    * ortUtlandet 0..1 BackboneElement "Födelseort i utlandet"
      * fodelseortUtland 0..1 string "Födelseort vid utlandsfödsel"
      * styrkt 0..1 boolean "Födelsen är styrkt"
      * fodelseland 0..1 string "Födelseland"
  * invandring 0..1 BackboneElement "Invandringsuppgifter"
    * invandringsdatum 0..1 string "Invandringsdatum"
  * relationer 1..1 BackboneElement "Relationer till andra personer"
    * relation 0..* BackboneElement "Relation"
      * relationId 1..1 BackboneElement "Identitet för den relaterade personen"
        * relationPersonNr 0..1 Identifier "Personnummer för den relaterade personen"
        * relationFodelsetidNr 0..1 Identifier "Födelsetid+nollor för relaterad person utan personnummer"
            "Används när relationen aldrig folkbokförts eller saknar korrekt personnummer. Format ÅÅÅÅMMDD0000 (kan ha nollor i hela eller delar av födelsetiden)."
        * obeys lookupresidentforfullprofile-relation-id-xor
      * relationstyp 1..1 code "Relationstyp"
      * relationstyp from RelationstypVS (required)
      * relationFromdatum 0..1 string "Relation från-och-med-datum"
      * relationTomdatum 0..1 string "Relation till-och-med-datum"
      * relationNamn 0..1 BackboneElement "Namnuppgifter för den relaterade personen"
          "Samma poststruktur som personPost.personNamn."
        * aviseringsnamn 0..1 string "Aviseringsnamn"
        * fornamn 0..1 string "Förnamn"
        * tilltalsnamnsmarkering 0..1 integer "Tilltalsnamnsmarkering"
        * mellannamn 0..1 string "Mellannamn"
        * efternamn 0..1 string "Efternamn"
      * relationAvregistrering 0..1 BackboneElement "Avregistreringsuppgifter för den relaterade personen"
          "Samma poststruktur som personPost.avregistrering."
        * avregistreringsorsakKod 0..1 code "Avregistreringsorsak"
        * avregistreringsorsakKod from AvregistreringsorsakVS (required)
        * avregistreringsdatum 0..1 string "Avregistreringsdatum"
        * avregistreringsorsakKodKomplett 0..1 code "Avregistreringsorsak (komplett kodverk)"
        * avregistreringsorsakKodKomplett from AvregistreringsorsakKomplettVS (required)
      * relationStatus 0..1 code "Relationsstatus"
          "Aviseras endast vid regelbunden ändringspost."
      * relationStatus from RelationStatusVS (required)
  * distriktskod 0..1 integer "Distriktskod"
      "Enligt Skatteverket. Heltal 0–999999."
