# 4 Tjänstedomänens arkitektur

## 4.1 Översikt

Tjänstedomänen syftar till att komplettera ordinationsprocessen med logistisk information, t.ex. information om uthämtade läkemedel på apotek. Nedan visar en konceptuell bild över de övergripande syftet med tjänsterna: att bidraga till en samlad läkemedelslista för patienten. Tjänstekonsumenter behöver även hantera de säkerhetskrav som gäller för att använda tjänsterna.

![img_001.png](images/img_001.png)

Figur 1: Patientens samlade läkemedelslista

Tjänster i domänen clinicalprocess:activityprescriptions:logistics passar således in i en större helhet kring patientens samlade läkemedelslista, se figur 2 som visar samverkansarkitekturen.

Följande tjänstegrupper relaterar till och kompletterar på olika sätt domänen:

- Andra läkemedelsrelaterade tjänster, bland annat
  - Ordination och förskrivning (clinicalprocess:activityprescriptions:prescibe)
  - Logistikfunktioner för dosapotek
- Stödtjänster
  - Nationell katalog (HSA) - för att koppla medarbetare till organisation och få ut behörighetsstyrande egenskaper för medarbetaren
  - Stark autentisering - för att möta säkerhetskrav
  - Logg - för att möta säkerhetskrav
  - Personuppgift - kontroll av patientuppgifter mot Skatteverket
  - Samtycke till Läkemedelsförteckningen (LF) - för åtkomst till uppgifter i LF

![img_002.png](images/img_002.png)

Figur 2: Övergripande samverkansarkitektur; samverkande tjänstedomäner

## 4.2 Hämta information om uthämtade läkemedel

I Läkemedelsförteckningen samlas uppgifter om alla receptförskrivna läkemedel som varje individ har hämtat ut på apotek under de senaste 15 månaderna. eHälsomyndigheten ansvarar för att lagra och behandla personuppgifter i Läkemedelsförteckningen.

### Översikt

De tjänster som ligger inom denna grupp hämtar sin information från Läkemedelsförteckningen (LF).

Följande principiella bild visar slutanvändarens åtkomst ur vårdens perspektiv.

![img_003.png](images/img_003.png)

### Arbetsflöde

![img_004.png](images/img_004.png)

#### Förutsättningar

Arbetsflödet förutsätter att

- Användaren har identifierats i vårdinformationssystemet med s k stark autentisering.

#### Roller

| Namn/beteckning | Beskrivning |
|---|---|
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som tar del av tidigare gjorda ordinationer och uthämtade läkemedel för en viss patient. |

#### Arbetssteg

| Namn/beteckning | Beskrivning |
|---|---|
| Välj visa patientens ordinationer | Hälso- och sjukvårdspersonalen kan välja att se uthämtade läkemedel som en del av patientens samlade läkemedelslista, eller som som en separat lista. Om det förra så startar flödet med att patientens ordinationer hämtas. |
| Välj visa uthämtade läkemedel på apotek | Hälso- och sjukvårdspersonal väljer att titta på uthämtade läkemedel på apotek., antingen i form av en separat sammanställning av alla uthämtade läkemedel, eller som uthämtade läkemedel kopplat till respektive ordination. <br> Vårdinformationssystemet kontrollerar slutanvändarens behörighet för åtgärden. |
| Ange samtycke alternativt nödåtkomst om saknas <br> (Samtycke Läkemedelsförteckningen) | Vårdinformationssystemet kontrollerar med LF Samtycketjänst om samtycke finns till att läsa läkemedelsförteckningen. Enbart Hälso- och sjukvårdspersonal med förskrivningsrätt och individuell förskrivarkod kan registrera ett tillsvidaresamtycke. Övrig behörig personal (legitimerad sjuksköterska, AT-läkare m.fl.) kan ange engångssamtycke eller nödsituation. Om samtycket har återkallats visas det särskilt för användaren. Om samtycke saknas får Hälso- och sjukvårdspersonalen ange en av <br> tillsvidaresamtycke <br> engångssamtycke <br> nödsituation <br> Samtycke av typ tillsvidare registreras i LF Samtyckestjänst. |
| Visa information om uthämtade läkemedel | Vårdinformationssystemet hämtar information om uthämtade läkemedel och presenterar för användaren, antingen kopplat till ordinationerna eller som separat lista. <br> Det kan även finnas uthämtade läkemedel som inte är kopplade till ordinationen. Denna ”restlista” ska då också visas upp för användaren. För förskrivare kontrolleras förskrivarkod i tjänsten. |
| Logga åtkomst | Åtkomsten loggas i tjänsten för uppföljning av registeransvarig. <br> Åtkomsten loggas i Vårdinformationssystemet för uppföljning i verksamheten. |
