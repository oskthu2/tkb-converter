// Genererad från TKB masterdata:organisationalresources:licensetopractice v2.0
// Kontrakt: GetHospPersonForIVO v2.0 — Request
// Genererad: 2026-05-19

Logical: GetHospPersonForIVORequest
Id: gethosppersonforivo-request
Title: "GetHospPersonForIVO — Request"
Description: """
  Logisk modell för requestparametrar i GetHospPersonForIVO.
  IVO har utökade sökparametrar jämfört med den publika tjänsten, bland annat möjlighet att
  filtrera på länskod, kommunkod, folkbokföringsort, förskrivarkod, yrke och specialistinriktning.
  Sökfälten folkbokforingsort, yrke och specialistinriktning stöder wildcard-sökning.
"""
Characteristics: #can-be-target

* personnummer 0..1 string "Personnummer"
  """
  Söker en person efter personnummer. Format: ÅÅÅÅMMDDXXXX (12 siffror).
  """
* samordningsnummer 0..1 string "Samordningsnummer"
  """
  Söker en person efter samordningsnummer. Format: ÅÅÅÅMMDDXXXX (12 siffror).
  """
* efternamn 0..1 string "Efternamn"
  """
  Söker personer efter efternamn.
  """
* fornamn 0..1 string "Förnamn"
  """
  Söker personer efter förnamn.
  """
* fodelsedatum 0..1 string "Födelsedatum (ÅÅÅÅMMDD)"
  """
  Söker personer efter födelsedatum. Format: ÅÅÅÅMMDD.
  """
* lansKod 0..1 string "Länskod"
  """
  Filtrerar sökning efter person utifrån länskod.
  """
* kommunKod 0..1 string "Kommunkod"
  """
  Filtrerar sökning efter person utifrån kommunkod.
  """
* folkbokforingsort 0..1 string "Folkbokföringsort"
  """
  Filtrerar sökning efter person utifrån folkbokföringsort.
  Tillåter wildcard: '*' eller '%' matchar delar av text, '?' eller '_' matchar ett tecken.
  """
* forskrivarkod 0..1 string "Förskrivarkod"
  """
  Filtrerar sökning efter person utifrån förskrivarkod.
  """
* yrke 0..1 string "Yrke"
  """
  Filtrerar sökning efter person utifrån grundyrke.
  Tillåter wildcard: '*' eller '%' matchar delar av text, '?' eller '_' matchar ett tecken.
  """
* specialistinriktning 0..1 string "Specialistinriktning"
  """
  Filtrerar sökning efter person utifrån specialistinriktning.
  Tillåter wildcard i angiven sträng. Tillåter även att en av Socialstyrelsens specialistinriktningskoder anges.
  """
