# 3 Tjänstedomänens arkitektur

Källa: *Personuppgifter – Tjänstekontraktsbeskrivning*, version 2.0 (2016-02-24, revision RC3 2016-04-22), [TKB_masterdata_citizen_citizen.docx](TKB_masterdata_citizen_citizen.docx).

Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

Tjänstedomänen hanterar uppgifter om person registrerade i folkbokföringsregistret hos Skatteverket.

### 3.1 Flöden

#### 3.1.1 Flöde 1: Hämta personuppgifter på personnummer

Nedanstående diagram visar hur man kan hämta personuppgifter på en eller flera personer utifrån deras personnummer eller samordningsnummer.

##### 3.1.1.1 Arbetsflöde

![Arbetsflöde](img_001.png)

###### 3.1.1.1.1 Roller

| Namn | Beskrivning |
| :--- | :--- |
| Användare | Kan vara medarbetare (vård/omsorg/administration) eller invånare |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. / Kan vara ett vårdsystem, administrativt system etc. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Tjänsteproducent - Personuppgiftstjänst | Tillhandahåller mellanlager med personuppgifter till visst SLA enligt domänens regler, även kallad PU-tjänst. |
| Skatteverket/Navet | Bakomliggande register/tjänst - master för folkbokföringsuppgifter |

##### 3.1.1.2 Sekvensdiagram

![Sekvensdiagram](img_002.png)

#### 3.1.2 Obligatoriska kontrakt

N/A

### 3.2 Adressering

Den logiska adressen för Ineras nationella PU-tjänst är Ineras nationella HSA-id SE165565594230-1000.

Logisk adress till de lokala eller regionala PU-tjänsterna är producentens HSA-id.
