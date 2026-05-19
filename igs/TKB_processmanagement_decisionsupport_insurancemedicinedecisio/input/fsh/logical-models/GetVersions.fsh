// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetVersions v1.0
// Genererad: 2026-05-19

Logical: GetVersions
Id: getversions
Title: "GetVersions"
Description: """
  Logisk modell för tjänstekontraktet GetVersions
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetVersions:1).
  Returnerar tidpunkten när FMB och diagnosinformation senast versionsuppdaterades,
  respektive senast ändrades. Begäran har inga inparametrar.
"""
Characteristics: #can-be-target

* versioner 1..1 BackboneElement "Versionsinformation för FMB och diagnosinformation"
* versioner.fmbSenasteVersionsuppdatering 1..1 dateTime "FMB — tidpunkt för senaste versionsuppdatering"
  """
  Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort)
  bland alla producentens beslutsunderlag. Det kan vara ett underlag som ej returnerats i svaret
  som föranlett ett nytt datum.
  """
* versioner.fmbSenasteAndring 1..1 dateTime "FMB — tidpunkt för senaste ändring"
  """
  Anger när ett beslutsunderlag senast uppdaterades, både mindre förändringar som ej givit en ny version
  OCH versionsuppdateringar bland alla producentens beslutsunderlag. Det kan vara ett underlag som ej
  returnerats i svaret.
  """
* versioner.diagnosInformationSenasteVersionsuppdatering 1..1 dateTime "Diagnosinformation — tidpunkt för senaste versionsuppdatering"
  """
  Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort)
  bland alla diagnosinformation. Det kan vara diagnosinformation som ej returnerats i svaret som
  föranlett ett nytt datum.
  """
* versioner.diagnosInformationSenasteAndring 1..1 dateTime "Diagnosinformation — tidpunkt för senaste ändring"
  """
  Anger när diagnosinformation senast uppdaterades; både mindre förändringar som ej givit en ny version
  OCH versionsuppdateringar bland alla producentens diagnosinformation. Det kan vara diagnosinformation
  som ej returnerats i svaret.
  """
