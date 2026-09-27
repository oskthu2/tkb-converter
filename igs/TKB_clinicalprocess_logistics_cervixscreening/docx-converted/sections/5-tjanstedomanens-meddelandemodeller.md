## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För beskrivning av begreppsmodell och informationsmodell se [R3].

### V-MIM

#### process:cervix:screening:information
Nedanstående bild visar schemat för meddelandemodellen.

![img_001.jpeg](images/img_001.jpeg)

| Klass.attribut / (enligt Informationsmodell i [R3] | Mappning mot Schema |
| :--- | :--- |
| Cervixscreeninginformation | CervixScreeningInformationType |
| Klassen innehåller inga attribut | - |
| Kvinna | PersonType |
| person-id | Personid |
| Organisation | OrganisationType |
| Id | Id |
| Namn | Name |
| Uppföljningsgrupp | FollowUpGroupType |
| Typ | Type |
| inklusionsdatum | inclusionDate |
| Senaste provtagning | SpecimenCollectionType |
| Tid | specimenDate |
| HPV-status | HPVstatusType |
| värde | Value |
| Exkludering från kallelse | ExclusionType |
| Orsak | Reason |
| registreringsdatum | registratedAt |
| Individuellt kallelsedatum | PlannedInvitationType |
| kallelsedatum | date |
| orsak | reason |

### Formatregler

#### Format för datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”

#### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format på personidentitet
Endast svenskt personnummer på formatet ÅÅÅÅMMDDNNNN är tillåtet.

