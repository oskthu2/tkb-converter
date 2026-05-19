CommissionService
Tjänstekontraktsbeskrivning
Version PA1.6
2013-11-11
Innehållsförteckning
1	Inledning	5
1.1	Om dokumentet	5
1.2	Målgrupp	5
2	Versionsinformation	5
3	Tjänstedomänens arkitektur	5
3.1	Allmänt	5
3.1.1	Flöde för uppdragsval	6
3.2	Tjänsteöversikt	6
3.3	Logisk adressering	7
3.4	Referenser	7
4	Tjänstedomänens krav och regler	7
4.1	Säkerhet	7
4.1.1	Förlitande parter enligt RIV TA Basic Profile	7
4.2	Felhantering	7
4.3	Format för Datum	8
4.4	Format för tidpunkter	8
4.5	Tidszon för tidpunkter	8
5	Tjänstekontrakt	8
5.1	GetCommissionsForPerson	8
5.1.1	Version	8
5.1.2	Fältregler	9
5.1.3	Regler	9
5.1.4	Övriga regler	9
5.1.5	Annan information om kontraktet	10
5.2	SetSelectedCommissionForPerson	11
5.2.1	Version	11
5.2.2	Fältregler	11
5.2.3	Regler	12
5.2.4	Övriga regler	12
5.2.5	Annan information om kontraktet	12
6	Datatyper	13
6.1.1	commissionservice:Commission	13
6.1.2	commissionservice:GetCommissionsForPersonResult	14
6.1.3	commissionservice:HsaId	14
6.1.4	commissionservice:PersonalIdentityNumber	14
6.1.5	commissionservice:Result	14
6.1.6	commissionservice:ResultCode	15
Revisionshistorik

| Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| PA0.1 | 2013-09-06 | Första utkast | Daniel Fjällström, Marcus Tinnsten |  |
| PA1.0 | 2013-09-23 | Version PA1 av tjänstekontraktet | Daniel Fjällström, Marcus Tinnsten |  |
| PA1.1 | 2013-10-01 | Smärre justeringar | Björn Skeppner |  |
| PA1.2 | 2013-10-03 | Justeringar | Marcus Tinnsten |  |
| PA1.3 | 2013-10-14 | Ändring av domänens namn | Marcus Tinnsten |  |
| PA1.4 | 2013-10-24 | Korrigering av svarsexempel för GetCommissionsForPerson | Marcus Tinnsten |  |
| PA1.5 | 2013-10-29 | Smärre textjusteringar, utgåvan för godkännande | Björn Skeppner |  |
| PA1.6 | 2013-11-11 | Ändring av domänens namn | Marcus Tinnsten |  |

## Inledning

### Om dokumentet
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen ehr:commission. Den svenska benämningen för detta tjänstekontrakt är Uppdragsvalstjänsten. Tjänstekontraktet är baserat på RIV TA 2.1
Tjänstedomänens omfattning är val av medarbetaruppdrag när man gör en autentisering från rik klient eller tunn klient.
Ett bakomliggande kravarbete specifikt kring autentisering från rik klient har dessutom bedrivits av Inera på uppdrag av CeHis med representanter från SLL, VGR,  Region Skåne och tillverkare av journalsystem. Parterna har representerats av sakkunniga inom områdena verksamhet och teknik.

### Målgrupp
Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för autentisering från rik klient där det finns behov av medarbetaruppdragsval.

## Versionsinformation
1.0

## Tjänstedomänens arkitektur

### Allmänt
Arkitekturen är utformad för att kunna motsvara klienters behov att kunna autentisera användare från rik och tunn klient. En del i autentisering av användare är att kunna göra ett uppdragsval. Att uppdragsvalet görs i en separat tjänst är dels för att möjliggöra uppdragsval när man autentiserar sig från rik klient via WS-Trust 1.3 som inte har stöd för uppdragsval och dels för att tillhandahålla en generell tjänst för denna funktion.

#### Flöde för uppdragsval
I Figur 1 ser vi hur uppdragsvalstjänsten fungerar.
Identifiera användaren
Hämta medarbetaruppdrag för användaren från uppdragsvalstjänsten
Välj uppdrag
Skicka valt uppdrag till uppdragsvalstjänsten

![img_001.png](images/img_001.png)
*Figur 1 Val av medarbetaruppdrag*
När uppdraget är valt kan man gå vidare att autentisera använderen och få ett SAML-intyg med medarbetaruppdrag.

### Tjänsteöversikt
Nedanstående tabell visar vilka tjänster som finns definierade.

| Tjänst | Beskrivning |
| :--- | :--- |
| GetCommissionsForPerson | Hämtar lista med de aktuella medarbetaruppdrag som en användare har samt det senaste valda medarbetaruppdraget. Information finns också om det senaste valda medarbetaruppdraget är aktivt (och därmed bör väljas automatiskt av den konsumerande tjänsten) |
| SetSelectedCommissionForPerson | Sätter vilket medarbetaruppdrag som valdes aktivt av användaren. |

### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används. Detta möjliggör att en för avsändaren transparent tjänsteväxel kan förmedla anrop vidare till en viss instans av uppdragsvalstjänsten och även behörighetskontrollera anropet. Logisk adressat skall anges även om uppdragsvalstjänsten för stunden inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där tjänstekonsumenten adresserar med HSA-id för tjänsteproducenten. För de generella tjänsterna som inte har en specifik organisationstillhörighet skall Ineras gemensamma HSA-id SE165565594230-1000 anges. Dessa tjänster representerar en gemensam nivå och hanterar alla gemensamt kända informationsposter. Se tabellen nedan hur adressat skall anges.

### Referenser

| Beteckning | Dokument / Källa |
| :--- | :--- |
| RIV TA 2.1 | RIV Teknisk Anvisning Basic Profile 2.1
http://rivta.googlecode.com/svn/wiki/specs/RIV_Tekniska_Anvisningar_Basic_profile_2.1.pdf |
| WS-Trust 1.3 | Specifikation för WS-Trust 1.3 / http://docs.oasis-open.org/ws-sx/ws-trust/200512/ws-trust-1.3-os.html |

## Tjänstedomänens krav och regler

### Säkerhet

#### Förlitande parter enligt RIV TA Basic Profile
Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att att konsument och producent ömsesidigt kan verifera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

### Felhantering
Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara att tjänsteproducenten för tillfället inte är tillgängligt.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras typen ResultType (resultCode, resultText).
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom "OK" och ”INFO” betyder att åtgärden inte genomfördes. Se ResultType nedan för detaljerad specifikation.
Ett förlåtande tillvägagångssätt när det gäller hantering av fel rekommenderas. T.ex om ett vårdsystem försöker registrera en spärr dubbelt bör resultatet i båda fallen bli ”OK” för att minska ner möjliga felsituationer.

### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss”. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Tjänstekontrakt

### GetCommissionsForPerson
Tjänst som hämtar alla medarbetaruppdrag som personen är kopplad till. Tjänsten returnerar även vilket uppdrag som valdes vid senaste tillfället. Det senaste valda uppdraget returneras alltid, även ifall inget val gjorts de senaste 12 timmarna, detta kan användas för att presentera det uppdrag användaren valde senast. Dessutom returneras om ett uppdrag valts inom de senaste 12 timmarna. Denna tjänst finns för att en medarbetare endast ska behöva välja uppdrag en gång per normalt arbetspass, oavsett om användaren använder en tunn klient eller rik klient. Tjänsten kan användas som en del i autentiseringstjänsten, samt rika klienter som vill göra ett uppdragsval direkt i den rika klienten.

#### Version
1.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personalHsaId *) | commissionservice:HsaId | HSA-id för den aktör som medarbetaruppdrag ska hämtas för. | 0..1 |
| personalIdentityNumber *) | commissionservice:PersonalIdentityNumber | Personnummer för den aktör som medarbetaruppdrag ska hämtas för. | 0..1 |
| Svar |  |  |  |
| getCommissionsForPerson | commissionservice:GetCommissionsForPersonResult | En lista med medarbetaruppdrag, det senast valda uppdraget och ifall ett uppdrag har valts (inom de senaste 12 timmarna) | 1..1 |

#### Regler
Anropande system ska ha behörighet att anropa tjänsten.  Om behörighet nekas skall felkod ACCESSDENIED returneras och flödet avbryts.
Tiden för hur länge ett uppdrag ska anses vara valt efter ett anrop till SetCommissionForPerson är konfigurerbart (12h är default).
Personen anges antingen med HSA-id eller personnummer. Om man inte anger något av dessa eller att personnummer/HSA-id inte är giltigt returneras statuskod VALIDATIONERROR.
*) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.

#### Övriga regler

##### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid | < 1 + (Tiden för HSA-WS  anrop)  sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,8 |  |
| Last | 10 transaktion per sekund |  |
| Aktualitet | Grundprincipen är att alla aktiva medarbetaruppdrag som personen är kopplad till returneras. |  |

#### Annan information om kontraktet

##### Frivillighet
Obligatorisk för tjänsteproducent.

##### Tjänsteinteraktion
GetCommissionsForPerson

##### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetCommissionsForPersonRequest xmlns:ns0="urn:riv:ehr:commission:GetCommissionsForPersonResponder:1" xmlns:ns1="urn:riv:ehr:commission:1">
<!-- Optional -->
<ns0:PersonalHsaId>?</ns0:PersonalHsaId>
<!-- Optional -->
<ns0:PersonalIdentityNumber>?</ns0:PersonalIdentityNumber>
</ns0:GetCommissionsForPersonRequest>

##### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetCommissionsForPersonResponse xmlns:ns0="urn:riv:ehr:commission:GetCommissionsForPersonResponder:1" xmlns:ns1="urn:riv:ehr:commission:1">
<ns0:GetCommissionsForPerson>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
</ns1:Result>
<!-- Optional -->
<ns1:LastSelectedCommissionHsaId>?</ns1:LastSelectedCommissionHsaId>
<ns1:SelectionPerformed>?</ns1:SelectionPerformed>
<!-- Optional -->
<!-- Array -->
<ns1:Commissions>
<ns1:CommissionHsaId>?</ns1:CommissionHsaId>
<ns1:CommissionName>?</ns1:CommissionName>
<ns1:CommissionPurpose>?</ns1:CommissionPurpose>
<!-- Optional -->
<ns1:HealthCareUnitHsaId>?</ns1:HealthCareUnitHsaId>
<!-- Optional -->
<ns1:HealthCareUnitName>?</ns1:HealthCareUnitName>
<!-- Optional -->
<ns1:HealthCareUnitStartDate>?</ns1:HealthCareUnitStartDate>
<!-- Optional -->
<ns1:HealthCareUnitEndDate>?</ns1:HealthCareUnitEndDate>
<ns1:HealthCareProviderHsaId>?</ns1:HealthCareProviderHsaId>
<ns1:HealthCareProviderName>?</ns1:HealthCareProviderName>
<!-- Optional -->
<ns1:HealthCareProviderOrgNo>?</ns1:HealthCareProviderOrgNo>
<!-- Optional -->
<ns1:HealthCareProviderStartDate>?</ns1:HealthCareProviderStartDate>
<!-- Optional -->
<ns1:HealthCareProviderEndDate>?</ns1:HealthCareProviderEndDate>
</ns1:Commissions>
</ns0:GetCommissionsForPerson>
</ns0:GetCommissionsForPersonResponse>

### SetSelectedCommissionForPerson
Tjänst för att välja ett medarbetaruppdrag för en person. Valet är sedan aktuellt under nästkommande 12 timmar, vilket gör att kommande anrop till tjänsten GetCommissionsForPerson (inom 12 timmar) returnerar att ett uppdrag valts.
Det finns även möjlighet att nollställa valet genom att utelämna commissionHsaId i anropet. Detta kan t.ex. användas av autentiseringstjänsten för att tvinga fram ett uppdragsval på nytt även ifall det inte gått 12 timmar (dvs. för att stödja funktionen ”Byta Uppdrag”).

#### Version
1.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personalHsaId *) | commissionservice:HsaId | HSA-id för den aktör som medarbetaruppdrag ska hämtas för. | 0..1 |
| personalIdentityNumber *) | commissionservice:PersonalIdentityNumber | Personnummer för den aktör som medarbetaruppdrag ska hämtas för. | 0..1 |
| commissionHsaId | commissionservice:HsaId | HsaId för vilket uppdrag som är valt. Om detta fält utelämnas, så blir inget uppdrag valt. Detta kan vara aktuellt vid utloggning från en tunn klient. | 0..1 |
| Svar |  |  |  |
| setSelectedCommissionForPerson | commissionservice:Result | Resultat av valt uppdrag. | 1..1 |

#### Regler
Anropande system ska ha behörighet att anropa tjänsten. Om behörighet nekas skall felkod ACCESSDENIED returneras och flödet avbryts.
Tiden för hur länge ett uppdrag ska anses vara valt efter ett anrop till SetCommissionForPerson är konfigurerbart (12h är default).
*) Personen anges antingen med HSA-id eller personnummer. Om man inte anger något av dessa eller att personnummer/HSA-id inte är giltigt returneras statuskod VALIDATIONERROR.

#### Övriga regler

##### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid | <1 s |  |
| Tillgänglighet | 24x7, 99,8% |  |
| Last | 10 transaktion per sekund |  |
| Aktualitet | Tjänsten garanterar att medarbetaruppdraget är valt om anropet genomförts utan fel. |  |

#### Annan information om kontraktet

##### Frivillighet
Obligatorisk för tjänsteproducent.

##### Tjänsteinteraktion
SetSelectedCommissionForPerson

##### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:SetSelectedCommissionForPersonRequest xmlns:ns0="urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1" xmlns:ns1="urn:riv:ehr:commission:1">
<!-- Optional -->
<ns0:PersonalHsaId>?</ns0:PersonalHsaId>
<!-- Optional -->
<ns0:PersonalIdentityNumber>?</ns0:PersonalIdentityNumber>
<!-- Optional -->
<ns0:CommissionHsaId>?</ns0:CommissionHsaId>
</ns0:SetSelectedCommissionForPersonRequest>

##### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:SetSelectedCommissionForPersonResponse xmlns:ns0="urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1" xmlns:ns1="urn:riv:ehr:commission:1">
<ns0:SetSelectedCommissionForPerson>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
</ns0:SetSelectedCommissionForPerson>
</ns0:SetSelectedCommissionForPersonResponse>

## Datatyper
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 1.0.
Datatyper från namnrymd urn:riv:ehr:commission:1. Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:commission:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### commissionservice:Commission
Datatyp för medarbetaruppdrag.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| commissionHsaId | commissionservice:HsaId | Medarbetaruppdragets HSA-id | 1 |
| commissionName | xs:string | Medarbetaruppdragets Namn | 1 |
| commissionPurpose | xs:string | Medarbetaruppdragets ändamål | 1 |
| healthCareUnitHsaId | commissionservice:HsaId | HSA-id för vårdenhet enligt PDL | 0..1 |
| healthCareUnitName | xs:string | Vårdenhetens namn | 0..1 |
| healthCareUnitStartDate | xs:dateTime | Startdatum för vårdenhetens verksamhet | 0..1 |
| healthCareUnitEndDate | xs:dateTime | Slutdatum för vårdenhetens verksamhet | 0..1 |
| healthCareProviderHsaId | commissionservice:HsaId | Vårdgivarens HSA-id | 1 |
| healthCareProviderName | xs:string | Vårdgivarens Namn | 1 |
| healthCareProviderOrgNo | xs:string | Vårdgivarens organisationsnummer | 0..1 |
| healthCareProviderStartDate | xs:dateTime | Startdatum för vårdgivarens verksamhet | 0..1 |
| healthCareProviderEndDate | xs:dateTime | Slutdatum för vårdgivarens verksamhet | 0..1 |

#### commissionservice:GetCommissionsForPersonResult
Datatyp som innehåller resultatet från tjänsten GetCommissionsForPerson.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| lastSelectedCommissionHsaId | commissionservice:HsaId | Personens valda uppdrag. | 0..1 |
| selectionPerformed | xs:boolean | Check om ett uppdrag valts inom de senaste 12 timmarna. | 1 |
| commissions | commissionservice:Commission | De medarbetaruppdrag som personen är kopplad till. | 0..* |

#### commissionservice:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9. eller motsvarande.
Maxlängd: 32

#### commissionservice:PersonalIdentityNumber
Datatyp som representerar ett personnummer, samordningsnummer.
Maxlängd: 12

#### commissionservice:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | commissionservice:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |

#### commissionservice:ResultCode
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "uppdrag ej valt". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "personen finns inte i HSA". |
| "VALIDATIONERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
