## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Skicka ordinationsdata
Nedanstående diagram visar hur flödet ser ut när ordinationsdata skickas.

##### Arbetsflödesdiagram

###### Roller (Aktörer) i arbetsflödet

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som matar in ny data eller att data inkommer automatiskt. |

###### Arbetssteg

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Registrerar/uppdaterar ordinationsdata | Information som innefattar ordinationsdata registreras.  Detta kan vara i form av nyregistrering eller uppdatering av befintlig ordinationsdata. |
| Svar på hur skrivningen gick. | Information om hur skrivningen hos tjänsteproducenten gick tas emot. |

###### Informationsmängder

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Ordinationsdata | Information om ordinationsdata |
| Begäran | En begäran för att skriva ordinationsdata skickas till beststämd destination. |
| Svar | Svar på hur skrivningen gick. |

###### Informationslager

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att hämta information i form av aktiviteter. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

##### Sekvensdiagram
Siffrorna i diagrammet nedan kopplar ihop begäransvar för respektive meddelande.

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som matar in ny data eller att data inkommer automatiskt. |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att skicka information i form av ordinationer. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

###### Steg

| Namn | Beskrivning |
| :--- | :--- |
| 1. Registrerar/uppdaterar ordinationsdata | Information som innefattar ordinationsdata registreras.  Detta kan vara i form av nyregistrering eller uppdatering av befintlig ordinationsdata. |
| 2. ProcessPrescriptionReason(Request) | Tjänstekonsumenten vill skicka ordinationer via tjänstekontraktet ProcessPrescriptionReason kring en viss invånare/patient till en annan källa/informationsägare. Källan/informationsägaren är i detta fall är känd och därmed pekar Logical Address till rätt destination (HSA-id). |
| 3. ProcessPrescriptionReason(Request) | Tjänsteplattformen slussar informationen vidare till rätt teknisk adress enligt Logical Address med hjälp av tjänsteadresseringskatalogen. |
| 3. ProcessPrescriptionReason(Response) | Tjänsteproducenten returnerar ett svar på hur skrivningen gick. |
| 2. ProcessPrescriptionReason(Response) | Tjänsteplattformen slussar vidare svaret till tjänstekonsumenten. |
| 1. Svar på hur skrivningen gick. | Information om hur skrivningen hos tjänsteproducenten gick tas emot. |

#### Radera ordinationsorsak
Nedanstående diagram visar hur flödet ser ut när ordinationsorsakdata raderas.

##### Arbetsflödesdiagram

###### Roller (Aktörer) i arbetsflödet

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som raderar data eller att data raderas automatiskt. |

###### Arbetssteg

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Befintlig information om ordinationsorsak raderas. | Information som innefattar ordinationsorsak raderas. |
| Erhåller svar på hur raderingen gick. | Information om hur raderingen hos tjänsteproducenten gick tas emot. |

###### Informationsmängder

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Radering | Radering av befintlig data om ordinationsorsak |
| Begäran | En begäran för att radera data skickas till beststämd destination. |
| Svar | Svar på hur raderingen gick. |

###### Informationslager

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att radera information i form av ordinationsorsak. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

##### Sekvensdiagram
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som raderar data eller att data raderas automatiskt. |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att radera information i form av ordinationsorsak. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

###### Steg

| Namn | Beskrivning |
| :--- | :--- |
| 1. Radering av ordinationsorsak | Information som innefattar ordinationsorsak raderas. |
| 2. DeletePrescriptionReason(Request) | Tjänstekonsumenten vill radera data via tjänstekontraktet DeletePrescriptionReason kring en viss invånare/patient hos en annan källa/informationsägare. Källan/informationsägaren är i detta fall är känd och därmed pekar Logical Address till rätt destination (HSA-id). |
| 3. DeletePrescriptionReason(Request) | Tjänsteplattformen slussar begäran om radering vidare till rätt teknisk adress enligt Logical Address med hjälp av tjänsteadresseringskatalogen. |
| 3. DeletePrescriptionReason(Response) | Tjänsteproducenten returnerar ett svar på hur raderingen gick. |
| 2. DeletePrescriptionReason (Response) | Tjänsteplattformen slussar vidare svaret till tjänstekonsumenten. |
| 1. Erhåller svar på hur raderingen gick | Information om hur raderingen hos tjänsteproducenten gick tas emot. |

#### Radera ordinationsdata
Nedanstående diagram visar hur flödet ser ut när ordinationsdata raderas.

##### Arbetsflödesdiagram

###### Roller (Aktörer) i arbetsflödet

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som raderar data eller att data raderas automatiskt. |

###### Arbetssteg

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Befintlig information om ordinationsdata raderas. | Information som innefattar ordinationsdata raderas. |
| Erhåller svar på hur raderingen gick. | Information om hur raderingen hos tjänsteproducenten gick tas emot. |

###### Informationsmängder

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Radering | Radering av befintlig ordinationsdata |
| Begäran | En begäran för att radera data skickas till beststämd destination. |
| Svar | Svar på hur raderingen gick. |

###### Informationslager

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att radera information i form av ordinationer. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

##### Sekvensdiagram
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som raderar data eller att data raderas automatiskt. |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att radera information i form av ordinationer. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

###### Steg

| Namn | Beskrivning |
| :--- | :--- |
| 1. Radering av ordinationsdata | Information som innefattar ordinationsdata raderas. |
| 2. DeletePrescription(Request) | Tjänstekonsumenten vill radera data via tjänstekontraktet DeletePrescription kring en viss invånare/patient hos en annan källa/informationsägare. Källan/informationsägaren är i detta fall är känd och därmed pekar Logical Address till rätt destination (HSA-id). |
| 3. DeletePrescription(Request) | Tjänsteplattformen slussar begäran om radering vidare till rätt teknisk adress enligt Logical Address med hjälp av tjänsteadresseringskatalogen. |
| 3. DeletePrescription(Response) | Tjänsteproducenten returnerar ett svar på hur raderingen gick. |
| 2. DeletePrescription(Response) | Tjänsteplattformen slussar vidare svaret till tjänstekonsumenten. |
| 1. Erhåller svar på hur raderingen gick | Information om hur raderingen hos tjänsteproducenten gick tas emot. |

#### Skicka labdata
Nedanstående diagram visar hur flödet ser ut när information om labdata skickas.

##### Arbetsflödesdiagram

###### Roller (Aktörer) i arbetsflödet

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som matar in ny data eller att data inkommer automatiskt. |

###### Arbetssteg

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Registrerar/uppdaterar labdata | Information som innefattar labdata registreras.  Detta kan vara i form av nyregistrering eller uppdatering av befintlig labdata. |
| Svar på hur skrivningen gick. | Information om hur skrivningen hos tjänsteproducenten gick tas emot. |

###### Informationsmängder

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Labdata | Information om labdata. |
| Begäran | En begäran för att skriva labdata skickas till beststämd destination. |
| Svar | Svar på hur skrivningen gick. |

###### Informationslager

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att skicka information i form av labdata. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

##### Sekvensdiagram
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som matar in ny data eller att data inkommer automatiskt. |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att skicka information i form av labdata. |
| Tjänsteplattform | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

###### Steg

| Namn | Beskrivning |
| :--- | :--- |
| 1. Uppdatering/registrering av labdata | Information som innefattar labdata registreras.  Detta kan vara i form av nyregistrering eller uppdatering av befintlig labdata. |
| 2. ProcessLaboratoryReport(Request) | Tjänstekonsumenten vill skicka labdata via tjänstekontraktet ProcessLaboratoryReport kring en viss invånare/patient till en annan källa/informationsägare. Källan/informationsägaren är i detta fall är känd och därmed pekar Logical Address till rätt destination (HSA-id). |
| 3. ProcessLaboratoryReport(Request) | Tjänsteplattformen slussar informationen vidare till rätt teknisk adress enligt Logical Address med hjälp av tjänsteadresseringskatalogen. |
| 3. ProcessLaboratoryReport(Response) | Tjänsteproducenten returnerar ett svar på hur skrivningen gick. |
| 2. ProcessLaboratoryReport(Response) | Tjänsteplattformen slussar vidare svaret till tjänstekonsumenten. |
| 1. Svar på hur skrivningen gick. | Information om hur skrivningen hos tjänsteproducenten gick tas emot. |

#### Radera labdata
Nedanstående diagram visar hur flödet ser ut när labdata raderas.

##### Arbetsflödesdiagram

###### Roller (Aktörer) i arbetsflödet

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som raderar data eller att data raderas automatiskt. |

###### Arbetssteg

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Radering av registrerad labdata. | Information som innefattar labdata raderas. |
| Erhåller svar på hur raderingen gick. | Information om hur raderingen hos tjänsteproducenten gick tas emot. |

###### Informationsmängder

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Radering | Radering av befintlig labdata |
| Begäran | En begäran för att radera labdata skickas till beststämd destination. |
| Svar | Svar på hur raderingen gick. |

###### Informationslager

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att radera information i form av labdata. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

##### Sekvensdiagram
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som raderar data eller att data raderas automatiskt. |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att radera information i form av labdata. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

###### Steg

| Namn | Beskrivning |
| :--- | :--- |
| 1. Radering av labdata | Information som innefattar labdata raderas. |
| 2. DeleteLaboratoryReport(Request) | Tjänstekonsumenten vill radera labdata via tjänstekontraktet DeleteLaboratoryReport kring en viss invånare/patient hos en annan källa/informationsägare. Källan/informationsägaren är i detta fall är känd och därmed pekar Logical Address till rätt destination (HSA-id). |
| 3. DeleteLaboratoryReport(Request) | Tjänsteplattformen slussar begäran om radering vidare till rätt teknisk adress enligt Logical Address med hjälp av tjänsteadresseringskatalogen. |
| 3. DeleteLaboratoryReport(Response) | Tjänsteproducenten returnerar ett svar på hur raderingen gick. |
| 2. DeleteLaboratoryReport(Response) | Tjänsteplattformen slussar vidare svaret till tjänstekonsumenten. |
| 1. Erhåller svar på hur raderingen gick | Information om hur raderingen hos tjänsteproducenten gick tas emot. |

#### Skicka vårdkontaktsdata
Nedanstående diagram visar hur flödet ser ut när information om vårdkontaktsdata skickas.

##### Arbetsflödesdiagram

###### Roller (Aktörer) i arbetsflödet

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som matar in ny data eller att data inkommer automatiskt. |

###### Arbetssteg

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Registrerar/uppdaterar vårdkontaktsdata | Information som innefattar vårdkontaktsdata registreras.  Detta kan vara i form av nyregistrering eller uppdatering av befintlig vårdkontaktsdata. |
| Svar på hur skrivningen gick. | Information om hur skrivningen hos tjänsteproducenten gick tas emot. |

###### Informationsmängder

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Vårdkontaktsdata | Information om vårdkontaktsdata. |
| Begäran | En begäran för att skriva vårdkontaktsdata skickas till beststämd destination. |
| Svar | Svar på hur skrivningen gick. |

###### Informationslager

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att skicka information i form av vårdkontaktsdata. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

##### Sekvensdiagram
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som matar in ny data eller att data inkommer automatiskt. |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att skicka information i form av vårdkontaktsdata. |
| Tjänsteplattform | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

###### Steg

| Namn | Beskrivning |
| :--- | :--- |
| 1. Uppdatering/registrering av vårdkontaktsdata | Information som innefattar vårdkontaktsdata registreras.  Detta kan vara i form av nyregistrering eller uppdatering av befintlig vårdkontaktsdata. |
| 2. ProcessCareEncounter(Request) | Tjänstekonsumenten vill skicka vårdkontaktsdata via tjänstekontraktet ProcessCareEncounter kring en viss invånare/patient till en annan källa/informationsägare. Källan/informationsägaren är i detta fall är känd och därmed pekar Logical Address till rätt destination (HSA-id). |
| 3. ProcessCareEncounter(Request) | Tjänsteplattformen slussar informationen vidare till rätt teknisk adress enligt Logical Address med hjälp av tjänsteadresseringskatalogen. |
| 3. ProcessCareEncounter(Response) | Tjänsteproducenten returnerar ett svar på hur skrivningen gick. |
| 2. ProcessCareEncounter(Response) | Tjänsteplattformen slussar vidare svaret till tjänstekonsumenten. |
| 1. Svar på hur skrivningen gick. | Information om hur skrivningen hos tjänsteproducenten gick tas emot. |

#### Radera vårdkontaktsdata
Nedanstående diagram visar hur flödet ser ut när vårdkontaktsdata raderas.

##### Arbetsflödesdiagram

###### Roller (Aktörer) i arbetsflödet

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som raderar data eller att data raderas automatiskt. |

###### Arbetssteg

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Befintlig information om vårdkontaktsdata raderas. | Information som innefattar vårdkontaktsdata raderas. |
| Erhåller svar på hur raderingen gick. | Information om hur raderingen hos tjänsteproducenten gick tas emot. |

###### Informationsmängder

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Radering | Radering av befintlig vårdkontaktsdata |
| Begäran | En begäran för att radera vårdkontaktsdata skickas till beststämd destination. |
| Svar | Svar på hur raderingen gick. |

###### Informationslager

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att radera information i form av vårdkontaktsdata. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

##### Sekvensdiagram
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Händelsekälla | Med händelsekälla avses en person som raderar data eller att data raderas automatiskt. |
| Tjänstekonsument | Verksamhetssystem i rollen som tjänstekonsument som interagerar med information från andra källor. I detta fall för att radera information i form av vårdkontaktsdata. |
| Tjänsteplattformen | Ett nav mellan olika system och tjänster. Tjänsteplattformen dirigerar meddelanden vidare till rätt tjänst/system med hjälp av tjänsteadresseringskatalogen. |
| Tjänsteproducent | Tjänsteproducenter uppvisar ett tekniskt gränssnitt för tjänstekonsumenter så att dessa genom frågemeddelanden kan begära/uppdatera/skicka information. |

###### Steg

| Namn | Beskrivning |
| :--- | :--- |
| 1. Radering av vårdkontaktsdata | Information som innefattar vårdkontaktsdata raderas. |
| 2. DeleteCareEncounter(Request) | Tjänstekonsumenten vill radera vårdkontaktsdata via tjänstekontraktet DeleteCareEncounter kring en viss invånare/patient hos en annan källa/informationsägare. Källan/informationsägaren är i detta fall är känd och därmed pekar Logical Address till rätt destination (HSA-id). |
| 3. DeleteCareEncounter(Request) | Tjänsteplattformen slussar begäran om radering vidare till rätt teknisk adress enligt Logical Address med hjälp av tjänsteadresseringskatalogen. |
| 3. DeleteCareEncounter(Response) | Tjänsteproducenten returnerar ett svar på hur raderingen gick. |
| 2. DeleteCareEncounter(Response) | Tjänsteplattformen slussar vidare svaret till tjänstekonsumenten. |
| 1. Erhåller svar på hur raderingen gick | Information om hur raderingen hos tjänsteproducenten gick tas emot. |

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Skicka ordina-tions-data | Radera ordina-tions-orsak | Radera ordina-tions-
data | Skicka labdata | Radera labdata | Skicka vård-kontakts-data | Radera vård-kontakts-data |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| ProcessPrescriptionReason | X |  |  |  |  |  |  |
| DeletePrescriptionReason |  | X |  |  |  |  |  |
| DeletePrescription |  |  | X |  |  |  |  |
| ProcessLaboratoryReport |  |  |  | X |  |  |  |
| DeleteLaboratoryReport |  |  |  |  | X |  |  |
| ProcessCareEncounter |  |  |  |  |  | X |  |
| DeleteCareEncounter |  |  |  |  |  |  | X |

### Adressering
Tjänstedomänen tillämpar vårdgivaradressering. Det innebär att den logiska adressen i anropet ska innehålla informationsägande enhets HSA-Id.

