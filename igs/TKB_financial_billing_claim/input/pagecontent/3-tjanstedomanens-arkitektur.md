# 3 Tjänstedomänens arkitektur

Källa: *Tjänstekontraktsbeskrivning Utomlänsfakturering*, version 1.1 (2025-10-13), [TKB_financial_billing_claim.docx](TKB_financial_billing_claim.docx).

### 3.1 Flöden

Följande flöden finns definierade för denna tjänstedomän:

1.  Skapa och skicka fakturaunderlag
2.  Kreditering vid felaktig faktura eller fakturaunderlag

Som underlag för dessa flöden finns ett handledningsdokument framtaget [R6].

#### 3.1.1 Flöde 1 – skapa och skicka fakturaunderlag

Då en patient får vård utanför sin hemregion faktureras hemregionen, enligt fastställda prislistor, för utgifter som uppkommit i samband med vården. En faktura skapas av vårdregionens ekonomisystem, medan fakturaunderlaget (som fakturan refererar till) skapas vid sidan om, i en separat databas/system. Både faktura och fakturaunderlag skickas till hemregionen. I flödet används benämningen säljande region som vårdregion och köpande region som hemregion.

Relevant flöde för denna tjänstekontraktsbeskrivning är det som är markerat med mörkare orange färg i flödesdiagrammet. Det ljusare flödet (skapa och skicka faktura) sker parallellt och visas för en ökad förståelse, men hanteras vid sidan om och inte av tjänstekontrakt inom denna domän.

![Flöde 1 – skapa och skicka fakturaunderlag](img_005.jpeg)

##### 3.1.1.1 Arbetsflöde

| Flöde | Beskrivning |
| :--- | :--- |
| Information om patientens uppgifter gällande utomlänsvård hämtas | I journalsystemet finns uppgifter om patienten och dennes besök i öppen eller slutenvården. Uppgifter som finns registrerade där används för att skapa ett fakturaunderlag. |
| Fakturaunderlag skapas och sparas | Baserat på uppgifterna från journalsystemet + övriga relevanta uppgifter (se informationsmodell) skapas ett fakturaunderlag av säljande region (vårdregion). |
| Fakturaunderlag skickas | Då fakturaunderlaget är skapat och sparat, kan det skickas till köpande region (patientens hemregion). |
| Fakturaunderlag tas emot | Köpande region/ hemregionen tar emot fakturaunderlaget. |
| Faktura matchas med fakturaunderlag | Köpande region / hemregion, som tar emot både faktura och fakturaunderlag, gör en matchning mellan dessa.  Matchningen görs med det fakturaunderlags-id som finns i fakturan. |

###### 3.1.1.1.1 Roller

| Roll | Beskrivning |
| :--- | :--- |
| Journalsystem | Det system som används för att hämta uppgifter om en patients vård i vårdregionen (säljande region). |
| Säljande regions databas/system | Den databas eller det system som används för att skapa ett fakturaunderlag hos säljande region / vårdregion. |
| Köpande regions databas/system | Den databas eller det system som används för att spara mottaget fakturaunderlag hos köpande region /hemregion. Om något system inte finns, sker hanteringen manuellt. |

##### 3.1.1.2 Sekvensdiagram

Då fakturaunderlag har skapats och sparats i säljande regions databas/system (tjänstekonsument nedan) skickas det till köpande regions databas/system (tjänsteproducent nedan) via den nationella tjänsteplattformen.

![Sekvensdiagram](img_003.png)

Sekvensdiagram där

En regions tjänstekonsument skickar fakturaunderlag till en annan regions tjänsteproducent adresserad [logicalAddress] enligt kap 3.2

Om svar är [OK] så behöver inget mer göras av tjänstekonsument, om svar innehåller ett logiskt fel [ERROR] se krav på felhantering i kap 4.3

Vid händelse av SoapException eller Timeout ska reglerna för omsändning följas, se kap 4.2.1

Om svar är [OK] så behöver inget mer göras av tjänstekonsument, om svar innehåller ett logiskt fel [ERROR] se krav på felhantering i kap 4.3

#### 3.1.2 Flöde 2 - Kreditering vid felaktig faktura eller fakturaunderlag

Då eventuella felaktigheter i fakturan eller fakturaunderlaget upptäcks, ska en kreditering göras av faktura och fakturaunderlag.

Följande avvikelser/felaktigheter kan inträffa [R6]:

Säljare har skickat felaktigt fakturaunderlag som stannat vid mottagningen (i tjänsteproducent) 

I de fall ett fakturaunderlag stoppas vid mottagningen efter schema- respektive schematronvalidering kommer säljaren att få ett svar som beskriver de fel som upptäckts.

Köparen har i detta läge inte läst in fakturaunderlaget i sitt system. Säljaren ska rätta felen och sända ett nytt fakturaunderlag. Säljaren ska även kontrollera att fakturan överensstämmer med det nya fakturaunderlaget i de fall fakturan ännu inte skickats (rekommendation är att sända faktura efter det att man fått ett OK svar) och vid behov göra rättelser.

Om säljaren redan skickat en faktura för ett fakturaunderlag som stoppats ska säljaren skicka en kreditfaktura utan fakturaunderlag.

Om fakturaunderlaget är OK sänds detta svar i retur till säljaren som då sänder aktuell faktura.

Säljare har skickat felaktigt fakturaunderlag men korrekt faktura

I de fall en säljare upptäcker att de har skapat ett felaktigt fakturaunderlag ska kreditering ske via kreditfaktura och ett digitalt kreditfakturaunderlag. Detta gäller även om fakturan är korrekt. Därefter skickas ny debetfaktura inkl. nytt fakturaunderlag. Undantag från denna regel är när uppgifterna som är felaktiga inte är av obligatorisk karaktär. Kontakt ska tas mellan säljare och köpare vid dessa tillfällen för bästa hantering. En utgångspunkt är att köparen ska kunna få faktura och underlag som säkerställer att korrekt betalning kan ske.

Säljare har skickat felaktigt fakturaunderlag och faktura med ett flertal fel

I de fallen både filen med fakturaunderlaget och fakturan innehåller ett flertal fel så ska en ny fil med fakturaunderlaget med ny identitet skapas tillsammans med en ny faktura. Tidigare utskickad faktura ska krediteras och ett fakturaunderlag ska skapas till krediteringen. Kontakt ska tas mellan säljare och köpare vid dessa tillfällen för bästa hantering. En utgångspunkt är att köparen ska kunna få faktura och underlag som säkerställer att korrekt betalning kan ske.

Säljare har skickat felaktigt fakturaunderlag och faktura med ett mindre antal fel

Om det endast är en mindre mängd fel i en fil med fakturaunderlaget ska kreditering ske av dessa uppgifter via att kreditfaktura skickas tillsammans med ett digitalt fakturaunderlag för kreditfakturan. Det ska finnas en referens till den felaktigt debiterade vårdkontakten och på vilken faktura/fakturaunderlag som denna har varit med på. Det kan även bli aktuellt att omfakturera dessa vårdkontakter på ny debetfaktura med ny fil med fakturaunderlag om exempelvis priset varit felaktigt.

![Flöde 2 - Kreditering vid felaktig faktura eller fakturaunderlag](img_008.jpeg)

##### 3.1.2.1 Arbetsflöde

| Flöde | Beskrivning |
| :--- | :--- |
| Upptäckt av felaktig information i faktura eller fakturaunderlag | Felaktig information har upptäckts i fakturan eller fakturaunderlaget. / Se de olika alternativen ovan. |
| Kreditering av fakturaunderlag skapas och skickas (med referens till fakturaunderlag) | Säljande region / vårdregion skapar en kreditering av fakturaunderlag och skickar till köpande region / hemregion. Ska innehålla hänvisning till det ursprungliga fakturaunderlaget. |
| Nytt fakturaunderlag skapas och skickas | Efter skapad och skickad krediterat fakturaunderlag, kan ett nytt fakturaunderlag skapas och skickas, se flöde Skapa och skicka fakturaunderlag. |

###### 3.1.2.1.1 Roller

| Roll | Beskrivning |
| :--- | :--- |
| Säljande regions databas/system | Den databas eller det system som används för att skapa en kreditering av fakturaunderlag samt nytt fakturaunderlag hos säljande region. |

##### 3.1.2.2 Sekvensdiagram

Sekvensdiagrammet nedan visar att det först skickas ett krediterat fakturaunderlag för att i nästa steg skicka ett uppdaterat fakturaunderlag. Samma tjänstekontrakt används för de två stegen. Felhantering visas i flöde ’Skapa och skicka fakturaunderlag’.

![Sekvensdiagram](img_007.jpg)

#### 3.1.3 Obligatoriska kontrakt

Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 | Flöde 2 |
| :--- | :--- | :--- |
| ProcessClaimSpecification | X | X |

### 3.2 Adressering

Adresseringen i domänen är regionsbaserad och det digitala fakturaunderlaget skickas till en mottagande adress i kommunikationsrutinen. Enbart en adress per huvudman anges i kommunikationsrutinen. Adressen (logisk adress) ska anges i form av mottagarens organisationsnummer.

Enligt Riksavtalet är det en huvudprincip att patientens hemregion (dvs. köpande region) ska faktureras och inte enskilda organisatoriska enheter.

### 3.3 Aggregering och engagemangsindex

Används ej i denna domän.
