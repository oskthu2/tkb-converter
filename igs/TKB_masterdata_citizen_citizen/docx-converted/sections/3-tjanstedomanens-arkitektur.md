## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.
Tjänstedomänen hanterar uppgifter om person registrerade i folkbokföringsregistret hos Skatteverket.

### Flöden

#### Flöde 1: Hämta personuppgifter på personnummer
Nedanstående diagram visar hur man kan hämta personuppgifter på en eller flera personer utifrån deras personnummer eller samordningsnummer.

##### Arbetsflöde

![img_001.png](images/img_001.png)

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Användare | Kan vara medarbetare (vård/omsorg/administration) eller invånare |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt.
Kan vara ett vårdsystem, administrativt system etc. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Tjänsteproducent - Personuppgiftstjänst | Tillhandahåller mellanlager med personuppgifter till visst SLA enligt domänens regler, även kallad PU-tjänst. |
| Skatteverket/Navet | Bakomliggande register/tjänst - master för folkbokföringsuppgifter |

##### Sekvensdiagram

![img_002.png](images/img_002.png)

#### Obligatoriska kontrakt
N/A

### Adressering
Den logiska adressen för Ineras nationella PU-tjänst är Ineras nationella HSA-id SE165565594230-1000.
Logisk adress till de lokala eller regionala PU-tjänsterna är producentens HSA-id.

