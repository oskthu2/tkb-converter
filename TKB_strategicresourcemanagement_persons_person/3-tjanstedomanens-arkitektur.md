# 3 Tjänstedomänens arkitektur - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* **3 Tjänstedomänens arkitektur**

## 3 Tjänstedomänens arkitektur

# 3 Tjänstedomänens arkitektur

Källa: **Personuppgiftstjänsten – Tjänstekontraktsbeskrivning**, version 5.1 (2024-11-28), [TKB_strategicresourcemanagement_persons_person.docx](TKB_strategicresourcemanagement_persons_person.docx).

Tjänstedomänen hanterar uppgifter om person som dels finns registrerade i folkbokföringsregistret hos Skatteverket, dels har tillkommit genom uttagande av reservidentiteter, dels har tillkommit genom personens egna kompletteringar kring kontaktuppgifter.

### 3.1 Flöden

#### 3.1.1 Flöde 1: Hämta personuppgifter på personidentitet

Nedanstående diagram visar hur man kan hämta personuppgifter på en eller flera personer utifrån deras reservidentiteter, personnummer eller samordningsnummer.

##### 3.1.1.1 Arbetsflöde

Se Informationsspecifikation, punkt 4.2.1.

###### 3.1.1.1.1 Roller

Verksamhetspersonal

##### 3.1.1.2 Sekvensdiagram

Hämta personuppgifter utifrån en eller flera personidentitet(er) via GetPersonsForProfile alternativt GetPersonForProfileUnrestricted

![](img_004.png)

#### 3.1.2 Flöde 2: Hämta personuppgifter baserat på sökvillkor

Nedanstående diagram visar hur man kan hämta personuppgifter på en eller flera personer utifrån specifika sökvillkor. Exempelvis söka på personer utifrån ett förnamn och efternamn.

##### 3.1.2.1 Arbetsflöde

Se Informationsspecifikation, punkt 4.2.2

###### 3.1.2.1.1 Roller

Verksamhetspersonal

##### 3.1.2.2 Sekvensdiagram

Hämta personuppgifter utifrån en eller flera personidentitet(er) via GetPersonsForProfile alternativt GetPersonForProfileUnrestricted

![](img_010.jpg)

#### 3.1.3 Flöde 3: Hämta personens kontaktuppgifter

När vården har anledning att kontakta personen eller anhörig, så nyttjas ofta de olika kontaktuppgifter som finns registrerade i vårdens IT-system (på det s.k. ”patientkortet”).

Nedanstående flöde visar flödet för hämtning av personens kontaktuppgifter.

##### 3.1.3.1 Arbetsflöde

Se Informationsspecifikation, punkt 4.2.3.

###### 3.1.3.1.1 Roller

Verksamhetspersonal

##### 3.1.3.2 Sekvensdiagram

Hämta kontaktuppgifter via GetPersonContactInformation alternativt GetPersonContactInformationUnrestricted

![](img_009.jpg)

Sekvensen är densamma för GetPersonContactInformationUnrestricted.

#### 3.1.4 Flöde 4: Uppdatera personens kontaktuppgifter

När vården har anledning att kontakta personen eller anhörig, så nyttjas ofta de olika kontaktuppgifter som finns registrerade i vårdens IT-system (på det s.k. ”patientkortet”).

Nedanstående flöde visar flödet för uppdatering av personens kontaktuppgifter.

##### 3.1.4.1 Arbetsflöde

Se Informationsspecifikation, punkt 4.2.4.

###### 3.1.4.1.1 Roller

Verksamhetspersonal

##### 3.1.4.2 Sekvensdiagram

![](img_006.jpg)

För en uppdatering av personens kontaktuppgifter ska alltid en läsning föregå uppdateringen. Läsningen kan antingen ske via GetPersonContactInformation eller GetPerson, eller via motsvarade unrestricted kontrakt. Vid användning av GetPersonForProfile/GetPersonForProfileUnrestricted så måste minst profil 3 användas.

#### 3.1.5 Flöde 5: Uttag av ny reservidentitet

Ibland har man behov av att kunna registrera uppgifter, t.ex journalföra på en person vars identitet ej är känd med ett svenskt person- eller samordningsnummer (PNR/SNR). T.ex när en medvetslös person kommer in på en akutmottagning. För dessa tillfällen använder man sig oftast av en temporär identitet, en reservidentitet.

Nedanstående flöde visar flödet för uttag av en nationell reservidentitet (NRID) till en person. Flödet är även detsamma för att registrera en person på en lokal reservidentitet (LRID).

##### 3.1.5.1 Arbetsflöde

Se Informationsspecifikation, punkt 4.2.5.

###### 3.1.5.1.1 Roller

Verksamhetspersonal

##### 3.1.5.2 Sekvensdiagram

![](img_013.jpg)

#### 3.1.6 Flöde 5.a: Uttag av anonym reservidentitet

Ibland har man behov av att kunna ta ut en ”anonymiserad” reservidentitet, dvs en identitet som varken avslöjar kön eller ålder. Detta kan göras genom att man anropar tjänsten UpdatePerson utan att ange några uppgifter kring ålder & kön. Tjänsten returnerar i detta fall då en identitet som ej innehåller uppgifter kring personen. För att sen tillföra uppgifter kring denna anonymiserade identitet ska detta göras i ett senare steg (se diagrammet nedan, ”Komplettera med personuppgifter”)

##### 3.1.6.1 Arbetsflöde

Se Informationsspecifikation, punkt 4.2.5.

###### 3.1.6.1.1 Roller

Verksamhetspersonal

##### 3.1.6.2 Sekvensdiagram

![](img_003.jpg)

#### 3.1.7 Flöde 6: Uppdatera befintlig reservidentitet

Nedanstående flöde visar flödet för uppdatering av en nationell reservidentitet (NRID) eller en lokal reservidentitet (LRID).

##### 3.1.7.1 Arbetsflöde

Se Informationsspecifikation, punkt 4.2.6.

###### 3.1.7.1.1 Roller

Verksamhetspersonal

##### 3.1.7.2 Sekvensdiagram

UpdatePerson

![](img_011.jpg)

För en uppdatering av persons reservidentitet ska alltid en läsning med minst profil 4 föregå uppdateringen.

#### 3.1.8 Flöde 7: Koppla ihop en identitet med en huvudidentitet

Kopplingen avser att man kopplar en befintlig identitet till en huvudidentitet. T.ex att koppla ihop en reservidentitet till ett personnummer.

##### 3.1.8.1 Arbetsflöde

Se Informationsspecifikation, punkt 4.2.7.

###### 3.1.8.1.1 Roller

Verksamhetspersonal

##### 3.1.8.2 Sekvensdiagram

LinkPersonIdentity

![](img_008.jpg)

En koppling mellan en identitet till en huvudidentitet ska normalt ske utifrån ett underlag som användaren har som beslutsunderlag. Dvs genom att en koppling föregås av en hämtning av uppgifter kring de olika identiteterna bereds aktören möjligheten att jämföra namn, adress etc.

Not: För Get-kontrakten kan även GetPersonForProfileUnrestricted-kontraktet användas.

#### 3.1.9 Flöde 8: Isärkoppling av kopplade identiteter

För att stödja fallet då en felkoppling av identiteter har gjorts så finns kontraktet UnlinkPersonIdentity.

Nedanstående flöde visar flödet för isärkoppling av identitet mot huvudidentitet.

##### 3.1.9.1 Arbetsflöde

Se informationsspecifikation, punkt 4.2.8

###### 3.1.9.1.1 Roller

Verksamhetspersonal

##### 3.1.9.2 Sekvensdiagram

UnlinkPersonIdentity

![](img_007.jpg)

Isärkoppling av en identitet från en huvudidentitet ska ske utifrån ett beslutsunderlag, där användaren ges möjlighet att granska uppgifterna för både huvudidentiteten och den kopplade identiteten.

OBS! Vid anropet till GetPersonForProfile behöver flaggan ”ignoreReferredIdentity” vara satt till true, annars erhålls personuppgifter till huvudidentiteten även för den identitet man vill isärkoppla.

Not: För läsning kan även GetPersonForProfilesUnrestricted användas.

#### 3.1.10 Flöde 9: Hämtning av personuppgifter utifrån urvalskriterier, asynkront

Nedanstående flöde visar flödet för hur ett angivande av urvalrskriterier (sökparamterar) resulterar i ett asynkront svar där resultatet levereras som en unik orderidentitet (orderId) som sen används av konsumenten vid anrop till en annan tjänst, GetFilesForOrderId, där resultatet av sökningen hämtas.

##### 3.1.10.1 Arbetsflöde

Se informationsspecifikation, punkt 4.2.2

###### 3.1.10.1.1 Roller

Verksamhetspersonal

##### 3.1.10.2 Sekvensdiagram

SearchPersonsForProfileByOrder (alternativt SearchPersonsForProfileByOrderUnrestricted)

![](img_014.jpg)

Tjänstekonsumenten kan behöva loopa anropet till GetFilesForOrderId beroende på producentens eventuella bearbetningstid. Reslutatet från GetFilesForOrderId är 0..n URL:er som sedan används för att hämta sökresultatet.

#### 3.1.11 Flöde 10: Hämtning av personuppgifter utifrån en fil innehållande en lista med personidentiteter.

Nedanstående flöde visar hur man genom att till Personuppgiftstjänsten via en REST-tjänst kan skicka in en fil med en lista med personidentiteter. I slutändan erhålls 1..n URL:er till zippade filer med personuppgifter baserat på de personidentiteter som bifogades i filen. Genom att i anropet ange önskad profil så erhålls i svaret olika mycket detaljerade personuppgifter.

##### 3.1.11.1 Arbetsflöde

Se informationsspecifikation, 4.2.1

###### 3.1.11.1.1 Roller

Verksamhetspersonal

##### 3.1.11.2 Sekvensdiagram

GetPersonsByFile (REST) Hämta personuppgifter utifrån en fil med personidentiteter, se R[14]

![](img_002.png)

Tjänstekonsumenten kan behöva loopa anropet till GetFilesForOrderId beroende på producentens eventuella bearbetningstid. Resultatet från GetFilesForOrderId är 0..n URL:er som sedan används för att hämta sökresultatet.

#### 3.1.12 Obligatoriska kontrakt

Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| | | | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| GetPersonForProfile, / (GetPersonForProfileUnrestricted) |   |   | X |   |   |   |   | X | X | X |   |   |
| SearchPersonsForProfile, / (SearchPersonsForProfileUnrestricted) |   |   |   | X |   |   |   |   |   |   |   |   |
| GetPersonContactInformation, / (GetPersonContactInformationUnrestricted) |   |   |   |   | X | X |   |   |   |   |   |   |
| UpdatePersonContactInformation |   |   |   |   |   | X |   |   |   |   |   |   |
| UpdatePerson |   |   |   |   |   |   | X | X |   |   |   |   |
| LinkPersonIdentity |   |   |   |   |   |   |   |   | X |   |   |   |
| UnlinkPersonIdentity |   |   |   |   |   |   |   |   |   | X |   |   |
| SearchPersonsForProfileByOrder, / SearchPersonsForProfileByOrderUnrestricted |   |   |   |   |   |   |   |   |   |   | X |   |
| GetFilesForOrderId |   |   |   |   |   |   |   |   |   |   | X | X |
| GetPersonsByFile (REST) |   |   |   |   |   |   |   |   |   |   |   | X |

### 3.2 Adressering

Den logiska adressen för Ineras nationella PU-tjänst är Ineras nationella HSA-id SE165565594230-1000.

### 3.3 Aggregering och engagemangsindex

Ej tillämpbart för denna tjänstedomän.

