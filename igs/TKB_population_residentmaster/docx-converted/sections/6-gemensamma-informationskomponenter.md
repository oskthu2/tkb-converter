# 6 Gemensamma informationskomponenter

_Not: motsvarar källdokumentets kapitel "Aktuella profiler" samt "Referenser"._

## 6.1 Aktuella profiler

Som beskrivet i avsnitt 1 och 5 tillhandahåller varje `LookupResidentFor<Profile>`-
kontrakt en namngiven delmängd (profil) av fälten i `ResidentType`. Nedanstående
tabell anger vilka fält som ingår i den enda för närvarande publicerade profilen,
**Full** (kontraktet `LookupResidentForFullProfile`).

| Fältnamn | Full profil |
|---|---|
| Sekretessmarkering | X |
| SenasteAndringFolkbokforing | X |
| Personpost | |
| PersonId | X |
| Kon | X |
| Fodelsetid | X |
| Namn | |
| Aviseringsnamn | X |
| Fornamn | X |
| Tilltalsnamnsmarkering | X |
| Mellannamn | X |
| Efternamn | X |
| Avregistrering | |
| AvregistreringsorsakKod | X |
| Avregistreringsdatum | X |
| AvregistreringsorsakKodKomplett | X |
| Folkbokföringsadress | |
| LanKod | X |
| KommunKod | X |
| ForsamlingKod | X |
| Fastighetsbeteckning | X |
| CareOf | X |
| Utdelningsadress1 | X |
| Utdelningsadress2 | X |
| Postnr | X |
| Postort | X |
| Folkbokforingsdatum | X |
| SärskildPostadress | |
| CareOf | X |
| Utdelningsadress1 | X |
| Utdelningsadress2 | X |
| Postnr | X |
| Postort | X |
| HanvisningsPersonNr | |
| Utlandsadress | |
| Utdelningsadress1 | X |
| Utdelningsadress2 | X |
| Utdelningsadress3 | X |
| Land | X |
| Utlandsadressdatum | X |
| Rostrattsdatum | X |
| Civilstånd | |
| CivilstandKod | X |
| Civilstandsdatum | X |
| Fodelse | |
| HemortSverige | |
| .../FodelselanKod | X |
| .../Fodelseforsamling | X |
| OrtUtlandet | |
| .../FodelseortUtland | X |
| .../Styrkt | X |
| .../Fodelseland | X |
| Invandring | X |
| .../Invandringsdatum | X |
| Relationer | |
| Relation | X |
| .../RelationId | X |
| .../.../PersonNr | X |
| .../.../FodelsetidNr | X |
| .../.../Relationstyp | X |
| .../.../RelationFromdatum | X |
| .../.../RelationTomdatum | X |
| .../.../Namn | X |
| .../.../Avregistrering | X |
| .../.../Status | X |
| Distriktskod | X |

_Not: `HanvisningsPersonNr` saknar `X` i källdokumentets tabell för Full-profilen
(troligen ett dokumentationsfel, eftersom fältet annars vore meningslöst att
definiera) — se ASSUME-PRM-003._

## 6.2 Referenser

| Nr | Namn | Utfärdare |
|---|---|---|
| 1 | Beskrivning av systemgränssnitt Skatteverkets avisering (Navet) — se `Skatteverket_Navetavisering_V1.xsd` och `Skatteverket XML-struktur Navet Avisering v1.34.pdf` i avsnitt 7 | Skatteverket |
| 2 | Beskrivning av ändringar relaterat till församling och införandet av distriktskod | Skatteverket |
