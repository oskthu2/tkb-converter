// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetVersionsFieldDescriptions
* versioner ^comment = "TKB-fält: `versioner` (kardinalitet 1..1)."
* versioner.fmbSenasteVersionsuppdatering ^definition = "Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret som föranlett ett nytt datum."
* versioner.fmbSenasteVersionsuppdatering ^comment = "TKB-fält: `../fmbSenasteVersionsuppdatering` (`DateTime`, kardinalitet 1..1)."
* versioner.fmbSenasteAndring ^definition = "Anger när ett beslutsunderlag senast uppdaterades, både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret."
* versioner.fmbSenasteAndring ^comment = "TKB-fält: `../fmbSenasteAndring` (`DateTime`, kardinalitet 1..1)."
* versioner.diagnosInformationSenasteVersionsuppdatering ^definition = "Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret som föranlett ett nytt datum."
* versioner.diagnosInformationSenasteVersionsuppdatering ^comment = "TKB-fält: `../diagnosInformationSenasteVersionsuppdatering` (`DateTime`, kardinalitet 1..1)."
* versioner.diagnosInformationSenasteAndring ^definition = "Anger när diagnosinformation senast uppdaterades; både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret."
* versioner.diagnosInformationSenasteAndring ^comment = "TKB-fält: `../diagnosInformationSenasteAndring` (`DateTime`, kardinalitet 1..1)."
