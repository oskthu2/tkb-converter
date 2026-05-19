// Genererad från TKB masterdata:organisationalresources:licensetopractice v2.0
// Kontrakt: GetHospPersonForPublicHealthcare v2.0 — Request
// Genererad: 2026-05-19

Logical: GetHospPersonForPublicHealthcareRequest
Id: gethosppersonforpublichealthcare-request
Title: "GetHospPersonForPublicHealthcare — Request"
Description: """
  Logisk modell för requestparametrar i GetHospPersonForPublicHealthcare.
  Antingen anges personId, eller ett eller flera av fälten efternamn, fornamn, fodelsedatum.
"""
Characteristics: #can-be-target

* personId 0..1 Identifier "Personnummer eller samordningsnummer"
  """
  Personnummer (OID: 1.2.752.129.2.1.3.1) eller
  samordningsnummer (OID: 1.2.752.129.2.1.3.3).
  Format: ÅÅÅÅMMDDXXXX (12 siffror).
  Om personId inte anges måste minst ett av efternamn, fornamn eller fodelsedatum anges.
  """
* fodelsedatum 0..1 string "Födelsedatum (ÅÅÅÅMMDD)"
  """
  Söker personer efter födelsedatum. Format: ÅÅÅÅMMDD.
  """
* efternamn 0..1 string "Efternamn"
  """
  Söker personer efter efternamn.
  """
* fornamn 0..* string "Förnamn"
  """
  Söker personer efter förnamn. Kan anges 0 eller fler.
  """
