# 3 Tjänstedomänens arkitektur

Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

## Flöden

### Hämta FMB

![Hämta FMB flöde](images/img_002.png)

Ett system kan hämta hem hela informationsmängden för det försäkringsmedicinska beslutsstödet, eller en delmängd genom att ange inparametrar, i ett anrop för lagring och bearbetning lokalt. Hjälpmetoden GetVersions används för att detektera om en ny version av FMB finns tillgänglig.

### Hämta diagnosinformation

![Hämta diagnosinformation flöde](images/img_003.png)

Ett system kan hämta hem hela informationsmängden för diagnosinformationen, eller en delmängd genom att ange inparametrar, i ett anrop för lagring och bearbetning lokalt. Hjälpmetoden GetVersions används för att detektera om en ny version av diagnosinformation finns tillgänglig.

## Obligatoriska kontrakt

Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Hämta FMB | Hämta diagnosinformation |
| :--- | :--- | :--- |
| GetFmb | X |  |
| GetDiagnosisInformation |  | X |
| GetVersion |  |  |

## Adressering

Den logiska adressen är till den nationella instansen för försäkringsmedicinskt beslutsstöd samt diagnosinformation, som representeras av Socialstyrelsens organisationsnummer.

## Aggregering och engagemangsindex

Används ej inom domänen.
