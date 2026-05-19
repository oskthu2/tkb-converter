ehr:accesscontrol
Version 1.0.6
2023-09-29

![img_006.png](images/img_006.png)

![img_002.png](images/img_002.png)
Innehållsförteckning
1	Inledning	4
1.1	Svenskt namn	4
1.2	WEB beskrivning	5
2	Versionsinformation	5
2.1	Version 1.0.6	5
2.1.1	Oförändrade tjänstekontrakt	5
2.1.2	Nya tjänstekontrakt	5
2.1.3	Förändrade tjänstekontrakt	6
2.1.4	Utgångna tjänstekontrakt	6
3	Tjänstedomänens arkitektur	6
3.1	Flöden	6
3.1.1	Flöde 1: Åtkomstkontroll inom sammanhållen journalföring	6
3.1.2	Obligatoriska kontrakt	10
3.2	Adressering	10
3.3	Aggregering och engagemangsindex	10
4	Tjänstedomänens krav och regler	10
4.1	Konsument-krav	10
4.2	Producentkrav	11
4.3	Informationssäkerhet och juridik	11
4.3.1	Verksamhetsregler	11
4.4	Icke funktionella krav	12
4.4.1	SLA krav	12
4.4.2	Övriga krav	12
4.5	Felhantering	12
4.5.1	Krav på en tjänsteproducent	12
4.5.2	Krav på en tjänstekonsument	13
5	Tjänstedomänens meddelandemodeller	13
5.1	V-MIM	13
5.2	Formatregler	14
5.2.1	Regel 1	14
6	Tjänstekontrakt	15
6.1	AssertCareEngagement	15
6.1.1	Version	15
6.1.2	Fältregler	15
6.1.3	Övriga regler	16
6.1.4	Icke funktionella krav	16
6.1.5	SLA-krav	16
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| 1.0.3 (RC1) | 2014-06-02 | Johan Eltes, Inera | Upprättad för befintlig domän som saknat TKB |
| 1.0.3 (RC3) | 2014-06-24 | Johan Eltes, Inera | Uppdateringar efter AL-granskning |
| 1.0.3 (RC4) | 2014-07-17 | Johan Eltes, Inera | Ändringar efter AL-S-granskning |
| 1.0.3 | 2014-07-17 | Johan Eltes, Inera | Release |
| 1.0.4 | 2014-10-08 | Johan Eltes | Uppdaterad med svenskt namn och WEB beskrivning |
| 1.0.5 | 2021-04-08 | Jan Söderman | Uppdaterat versionsnumret på grund av uppdatering av domänversionen |
| 1.0.6 | 2023-09-29 | Annika Fredriksson | Flyttat innehåll i TKB till uppdaterad mall med Ineras nya grafiska profil. / Uppdaterat avsnittet om adressering. / Mindre språkliga uppdateringar. |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – AB_ ehr_accesscontrol.doc | Obligatoriskt | I samma versionsstruktur som TKB |
| R2 | RIVTA flera dokument | Finns på Webben | länk |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| JS | Journalsystem | Verksamhetsstödjande IT-system för journalföring. |
| K | Tjänstekonsument | Enligt RIV TA |
| P | Tjänsteproducent | Enligt RIV TA |
| PAS | Patientadministrativt system | Verksamhetsstödjande IT-system där professionen registrerar och planerar patientkontakter. |
| TGP | Tillgänglig patient | Syftar på om en patients journal är tillgänglig för visning i sammanhållen journalföring (för aktuell användare i professionen), i betydelsen att positiv åtkomstberättigande patientrelation rapporteras av tjänsteproducenten. / OBSERVERA att den åtkomstkontroll som tjänsteinteraktionen ehr:accesscontrol:AssertCareEngagement beskriver, bara är en av flertalet förutsättningar som måste vara uppfyllda för att användaren (professionen) ska kunna beredas åtkomst till sammanhållen journalföring för aktuell patient. |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
ehr:accesscontrol
Den svenska benämningen är ”infrastruktur:säkerhetstjänster:patientrelation”. Vid nästa uppdatering som bryter bakåtkompatibilitet planeras överföring av det enda tjänstekontrakt som finns i ehr:accesscontrol till tjänstedomänen infrastructure:securityservices:patientrelationship som har det svenska namnet ”infrastruktur:säkerhetstjänster:patientrelation”.
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Domänen innehåller i denna version endast tjänstekontraktet AssertCareEngagement (kallas ibland ”TGP-kontraktet”). Kortfattat syftar funktionen till att möjliggöra för tillämpningar som bereder professionen åtkomst till sammanhållen journalföring att elektroniskt styrka att medarbetaren (användaren) agerar i uppdrag av en verksamhet där berörd patient har eller har haft ett behörighetsgrundande engagemang.
Exakt vad som avses med ett behörighetsgrundande engagemang, uttrycks genom regler i vårdgivarens verksamhetssystem. Det är med andra ord den verksamhet som bereder medarbetaren tillgång till sammanhållen journalföring, som ansvarar för vilka elektroniska spår som representerar ett åtkomstgrundande engagemang. Observera att det gäller varje verksamhet med medarbetare som bereds åtkomst till sammanhållen journalföring, oavsett om verksamheten är ansluten som producent.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastruktur:säkerhetstjänster:patientrelation
tillgänglig patient (TGP)

### WEB beskrivning
Tjänstekontraktet för Tillgänglig patient (TGP) används av fristående e-tjänster som erbjuder professionen direktåtkomst till sammanhållen journalföring. Tjänsteproducenter för tjänstekontraktet ger svar på om aktuell användare av en sådan e-tjänst (t.ex. NPÖ-tjänsten) genom sitt medarbetaruppdrag har dokumenterad relation till patienten som styrker att tjänstekonsumenten (e-tjänsten) ska erbjuda användaren åtkomst till sammanhållen journalföring.
Vanligen är PAS- eller journalsystemen tjänsteproducenter för kontraktet. Det är alltså den egna verksamhetens IT-system som agerar tjänsteproducent när en medarbetare begär åtkomst till sammanhållen journalföring via en fristående e-tjänst.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om version 1.0.6 . Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0.6

#### Oförändrade tjänstekontrakt
AssertCareEngagement, version 1.0

#### Nya tjänstekontrakt
Inga kontrakt är nya sedan föregående version.

#### Förändrade tjänstekontrakt
Inga kontrakt är förändrade sedan föregående version.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

## Tjänstedomänens arkitektur

### Flöden

#### Flöde 1: Åtkomstkontroll inom sammanhållen journalföring

##### Arbetsflöde
Följande flöde visar vilken roll funktionen spelar för åtkomstkontroll inom sammanhållen journalföring:
Medarbetare begär åtkomst till patients vårddokumentation i sammanhållen journalföring
Tillämpningen (genom fråga enligt AssertCareEngagement direkt mot system hos användarens vårdgivare) fastställer att patienten har ett behörighetsgrundande engagemang hos den vårdenhet på vars uppdrag medarbetaren begär åtkomst.
Tillträde nekas om tjänsten i steg 2 inte bekräftar behörighetsgrundande engagemang (”TGP”).
Kontroll att förutsättningar enligt PDL  6 kap 3§ är uppfyllda (samtycke, spärr etc.)
Tillträde till sammanhållen journalföring erbjuds medarbetaren

![img_007.png](images/img_007.png)
*Figur  Grafisk flödesmodell*

###### Roller
Tabellen nedan beskriver de roller i flödesmodellen som relaterar till stegen som är specifika för denna tjänstedomän.

| Roll | Beskrivning |
| :--- | :--- |
| Användare | Medarbetare inom vård och omsorg som begär åtkomst till patients vårddokumentation inom sammanhållen journalföring. |
| Källsystem, vårdkontakt- eller remissadministration | Det verksamhetsstödjande IT-system som används i medarbetarens verksamhet i syfte att administrera patientkontakter eller remisser. |
| Källsystem, Journal | Det journalsystem som hanterar journaluppgifter för annan vårdgivares räkning och som är anslutet till sammanhållen journalföring. Här finns journalinformation aktuell patient som Användaren begär åtkomst till. |
| Tillämpning för sammanhållen journalföring | Det IT-stöd genom vilket användaren bereds åtkomst till sammanhållen journalföring. |

##### Sekvensdiagram
Interaktionerna i sekvensdiagrammet nedan kan i praktiken komma att ske i en infrastruktur enligt följande figur:

![img_004.png](images/img_004.png)
*Figur  AssertCareEngagement i ett sammanhang*
UML-versionen av ovanstående visar de klasser som ingår i sekvensdiagrammet och deras inbördes förhållanden:

![img_003.gif](images/img_003.gif)
*Figur  Modell över komponenter vars samverkan beskrivs i sekvensdiagrammet*

![img_008.png](images/img_008.png)
*Figur  Sekvensdiagram, Flöde 1*

#### Obligatoriska kontrakt

| Tjänstekontrakt | Flöde 1 |
| :--- | :--- |
| AssertCareEngagement | X |

### Adressering
Tjänstedomänens adressering är verksamhetsbaserad.
För adressering används HSA-id för den vårdgivare och vårdenhet inom vars uppdrag den medarbetaren agerar som begär åtkomst till sammanhållen journalföring (d.v.s. den medarbetare som vars HSA-id anges i begäran till tjänstekontraktet AssertCareEngagement).
Vårdgivarens och vårdenhetens HSA-id kombineras till en sammansatt adress som används vid anrop från tjänstekonsumenten. Den sammansatta adressen anges på formatet VårdgivarensHSA-id#VårdenhetensHSA-id.

### Aggregering och engagemangsindex
Aggregering är inte aktuell för domänen.

## Tjänstedomänens krav och regler

### Konsument-krav

| Id | Beskrivning |
| :--- | :--- |
| k1 | Konsumenten ska följa gällande tillämpningsregelverk för sammanhållen journalföring, m.a.p. uppdragsval, spärr, samtycke och loggning. |
| k2 | Resultatet av anrop gäller i 60 sekunder. Därefter måste ett nytt anrop göras. |

### Producentkrav

| Id | Beskrivning |
| :--- | :--- |
| p1 | En tjänsteproducent ska följa verksamhetsreglerna som specificeras i avsnitt 4.3.1 |
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
I Integritetsskyddsmyndighetens (dåvarande Datainspektionen) tillsyn mot NPÖ i Örebro läns landsting och kommun Drn 1390-2009 framkom bland annat att Örebro läns landsting och kommun inte levde upp till kraven på behörighetsstyrning 6 kap 7 §, 4 kap 2 § patientdatalagen och 2 kap 6 § SOSFS 2008:14. Integritetsskyddsmyndigheten ålade Örebros läns landsting och kommun att ta fram rutiner och en teknisk funktionalitet som möjliggör att behörigheterna kan begränsas till vad som behövs för att användaren ska kunna fullgöra sina arbetsuppgifter inom hälso- och sjukvården.
Enligt Integritetsskyddsmyndighetens tillsyn ska vårdgivaren inte endast bedöma om användaren i sin yrkesutövning kan träffa patienter från andra vårdgivare, utan även vilka patienter eller kategorier av patienter från andra vårdgivare det kan vara fråga om.
Integritetsskyddsmyndighetens granskning av NPÖ-implementationen i Örebro Läns Landsting föranledde kravarbete inom NPÖ-programmet rörande en kompletterande behörighetsfunktion: Tillgänglig Patient (TGP).

#### Verksamhetsregler
Följande verksamhetsregler är en rekommendation till den part som realiserar en tjänsteproducent. Varje vårdgivare ansvarar inför Integritetsskyddsmyndigheten för vilka regler som införs, men följande regler är en rekommendation.

##### Kommunal omsorg
Om någon av följande händelser kan identifieras, ges positivt TGP-beslut:
Beteckning på händelse: Inskrivning
Tidsperspektiv: För TGP ska inskrivningshändelsen referera en gällande inskrivning eller att utskrivningen skett färre än 14 dagar före åtkomstbegäran i sammanhållen journalföring.

##### Vård (t.ex. regionsfinansierad)
Om någon av följande händelser kan identifieras, ges positivt TGP-beslut:
Beteckning på händelse: Tidbokning
Tidsperspektiv: För TGP ska minst en tidbokning finnas som är gällande eller som löpt ut för färre än 14 dagar innan åtkomstbegäran i sammanhållen journalföring. Även kallelser räknas som bokningar i detta sammanhang.
Beteckning på händelse: Remiss
Tidsperspektiv: För TGP ska minst en remiss finnas som är oavslutad eller avslutat färre än 14 dagar före åtkomstbegäran i sammanhållen journalföring.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Behörighetsbeslut ska grundas på information från källsystem (PAS/remiss) som är högst 60 minuter gammal. |  |

#### Övriga krav
Inga.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Tjänstekontrakten stödjer inte rapportering av logiska fel (ej funktionskrav).

#### Krav på en tjänstekonsument
Inga.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM
Följande V-MIM beskriver den konceptuella vy av vårdrelation som tjänstekontraktet AssertCareEngagement ålägger producenterna att kunna representera. Konceptet ”PatientRelationship” är ett för ändamålet syntetiserat koncept som representerar att en vårdenhet via elektroniska bevis i form av administrativ vårdinformation kan intyga att medarbetare med uppdrag hos enheten eller vårdgivaren rimligen har professionella skäl att begära åtkomst till patientens sammanhållna journalföring.

![img_005.png](images/img_005.png)
*Figur  V-MIM, AssertCareEngagement*

| Klass.attribut | Mappning mot V-TIM 2.2 | Mappning tjänstekontrakt AssertCareEngagement |
| :--- | :--- | :--- |
| PatientRelationship.mostRecentDigitalEvidence | Kontakt.Ställningstagande kontakttid eller Framställan.(attribut för registreringstidpunkt saknas i V-TIM) | Svar.HasCareEngagement (ges värdet ”true” om minst en instans finns för aktuell med datum yngre än 2 veckor för aktuell patient/vårdenhet. |
| CareUnit.id | Informationsresurs.vårdenhet id | Begäran.careUnitHsaIdentity |
| CareGiver.id | Informationsresurs.vårdgivare id | Begäran.careGiverHsaIdentity |
| Assignment | Rättighet | Underförstått. Representeras som krav på tjänstekonsument (att begäran.healthcareProfessionalHsaIdentity agerar i uppdrag hos Begäran.careUnitHsaIdentity). |
| HealthCareProfessional.id | Personal.id | Begäran.performer |
| SubjectOfCare.id | Patient.person_id | Begäran.subjectOfCareId |

### Formatregler

#### Regel 1
Inga formatregler utöver det som ges av respektive kodverk (HSA-id).

## Tjänstekontrakt

### AssertCareEngagement
Ger svar på om en medarbetare med uppdrag på angiven vårdenhet ska ges möjlighet att begära åtkomst till sammanhållen journalföring. Tjänsteproducenter verifierar rättigheten genom att hitta administrativa informationsmängder som indirekt styrker att vårdenheten har en roll i något aktuellt hälsoärende för angiven patient. Det kan t.ex. innebära att tjänsteproducenten söker efter historiska eller planerade vårdkontakter i verksamhetens patientadministrativa system och också söker efter remisser som avser aktuell patient i journalsystemets remissmodul. Om sådana administrativa elektroniska avtryck kan hittas, svarar tjänsteproducenten med ”true” annars ”false”. Värdet ”true” indikerar att åtkomstberättigande vårdrelation kan anses föreligga. Respektive vårdgivare ansvarar för att ett ändamålsenligt regelverk tillämpas.
E-tjänster och tillämpningar som bereder professionen åtkomst till sammanhållen journalföring ska genomföra åtkomstkontrollen (anropa AssertCareEngagement) innan någon information ur sammanhållen journalföring tillgängliggörs för aktuell användare.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| performer | sträng | HSA-id för medarbetare som begär åtkomst till sammanhållen journalföring. Ska vara HSA-id för den medarbetare som är autentiserad i tjänstekonsumenten och som begär åtkomst till sammanhållen journalföring. | 1..1 |
| subjectOfCareId | sträng | Person- eller samordningsnummer. 12 tecken enligt Skatteverkets format (ej bindestreck). | 1..1 |
| careUnitHsaIdentity | sträng | HSA-id för medarbetarens uppdragsvårdenhet | 1..1 |
| careGiverHsaIdentity | Sträng | HSA-id för vårdgivaren där vårdenhet med HSA-id enligt careUnitHsaIdentity ingår. | 1..1 |
|  |  |  |  |
| Svar |  |  |  |
| HasCareEngagement | booelan | ”true” om åtkomstberättigande vårdrelation kan anses föreligga, annars ”false”. | 1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Producentregler

| P1 | Tjänsteproducenten ska tillämpa regelverk i enlighet med avsnitt 4.3.1 |
| :--- | :--- |

##### Konsumentregler

| K1 | Medarbetarens identitet ska vara fastställd enligt gällande nationellt regelverk |
| :--- | :--- |

#### Icke funktionella krav
Inga övriga icke funktionella krav.

#### SLA-krav
Inga avvikande SLA-krav.
