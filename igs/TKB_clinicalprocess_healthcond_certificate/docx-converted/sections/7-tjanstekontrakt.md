## Tjänstekontrakt

### GetCertificate
Tjänstekontraktet används för att hämta ett enskilt intyg och tillhörande metadata (som statusar och relationer) från en intygstjänst. Tjänstekontraktet kan anropas av en intygsapplikation, en intygsmottagares system eller en invånartjänst för intyg (t.ex. Mina intyg).
En intygsapplikation anropar tjänstekontraktet för att hälso- och sjukvårdspersonal ska kunna titta på ett intyg. Endast statusinformation om makulering och om att intyget är skickat till en intygsmottagare följer med när anropet sker på detta vis.
Intygsmottagares system anropar tjänstekontraktet för att intygsmottagaren ska kunna hämta ett specifikt intyg från en intygstjänst. Detta är aktuellt till exempel då de mottagit ett utskrivet intyg och vill hämta den elektroniskt underskrivna versionen av intyget.
En invånartjänst för intyg anropar tjänstekontraktet för att invånaren ska kunna titta på ett intyg i tjänsten. Intygens alla statusar följer då med, både de som vården har gett upphov till (t.ex. makulerat) och de som invånaren själv har gett upphov till (t.ex. arkiverat eller skickat till en viss intygsmottagare). En invånartjänst för intyg kan också anropa tjänstekontraktet för att invånaren ska kunna bifoga ett intyg till ett ärende i intygsmottagarens egen e-tjänst (t.ex. Försäkringskassans Mina sidor). Bara statusinformation om makulering och om intyget redan är skickat till aktuell intygsmottagare följer då med. Detta på grund av att olika intygsmottagare inte behöver veta om att intyget också är skickat till andra intygsmottagare.

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som skall hämtas. | 1..1 | Intyg.intygs-id |
| part | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som skickar begäran om att hämta intyget. | 1..1 | Part.part |
| Svar |  |  |  |  |
| intyg | Intyg (se 7.1.5) | Ett intyg. | 1..1 | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### ListCertificatesForCare
Tjänstekontraktet används för att hämta en lista med alla intyg gällande en viss patient på en eller flera enheter eller vårdgivare från en intygstjänst. Tjänstekontraktet kan anropas av en intygsapplikation.
En intygsapplikation anropar tjänstekontraktet för att hälso- och sjukvårdspersonal ska kunna se en lista över intyg. Bara statusinformation om makulering och om att intyget är skickat till en intygsmottagare följer med.
Listan som returneras inkluderar också eventuella makulerade intyg.

#### Version
3.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| person-id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. | 1..1 | Patient.person-id |
| vardgivar-id* | HsaId (se 7.2.5) | HSA-id för vårdgivaren. | 0..1 | Vårdgivare.vårdgivar-id |
| enhets-id* | HsaId (se 7.2.5) | HSA-id för enheten. | 0..* | Enhet.enhets-id |
| Svar |  |  |  |  |
| intygsLista | ListaType (lokalt definierad i kontraktet) | En lista av intyg som är signerade eller makulerade. | 1..1 | - |
| ../intyg | Intyg (se 7.1.5) | Ett intyg. | 0..* | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.skickattidpunkt |

#### Övriga regler

##### enhets-id
När enhets-id anges kan vardgivar-id ej anges. Detta styrs med ett XML schema choice element.

##### vardgivar-id
När vardgivar-id anges kan enhets-id ej anges. Detta styrs med ett XML schema choice element.
Vid sökning på vårdgivare matchas detta direkt mot den vårdgivare som är angiven i intyget, dvs alternativet att i HSA slå upp alla enheter för en vårdgivare och sedan söka intyg för dessa enheter används inte.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1

### ListCertificatesForCitizen
Tjänstekontraktet används för att hämta en lista med intyg för en viss patient från en intygstjänst. Alla intyg inkluderas, oavsett utfärdande enhet. Tjänstekontraktet kan anropas av en invånartjänst för intyg (t.ex. Mina intyg).En invånartjänst för intyg anropar tjänstekontraktet för att invånaren ska kunna se en lista över sina intyg i tjänsten. Intygens alla statusar följer med, både de som vården har gett upphov till (t.ex. makulerat) och de som invånaren själv har gett upphov till (t.ex. arkiverat eller skickat till en viss intygsmottagare).
En invånartjänst för intyg kan också anropa tjänstekontraktet för att invånaren ska kunna bifoga ett intyg till ett ärende i intygsmottagarens egen e-tjänst (t.ex. Försäkringskassans Mina sidor). Bara statusinformation om makulering och om intyget redan är skickat till aktuell intygsmottagare följer med. Detta på grund av att olika intygsmottagare inte behöver veta om att intyget också är skickat till andra intygsmottagare.
Tjänstekontraktet kan hämta alla typer av intyg, eller intyg av en angiven typ. Det är även möjligt att avgränsa sökningen till intyg signerade mellan vissa datum. Listan inkluderar också eventuella makulerade intyg.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| person-id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. | 1..1 | Patient.person-id |
| intygTyp | TypAvIntyg (se 7.2.11) | Kodad värde som avgränsar vilka typer av intyg som ska hämtas. Utelämnas för att hämta alla typer. | 0..* | Intyg.typ |
| arkiverade | boolean | Anger om intyg som arkiverats av invånaren ska hämtas. True anger att arkiverade intyg ska hämtas, False att de inte ska hämtas. | 1..1 | - |
| fromDatum | DateType | Hämta intyg med signeringsdatum från och med detta datum. Utelämnas för att hämta utan begränsning bakåt i tiden. | 0..1 | - |
| tomDatum | DateType | Hämta intyg med signeringsdatum till och med detta datum. Utelämnas för att hämta utan begränsning på senaste datum. | 0..1 | - |
| part | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som skickar begäran om att hämta intygslistan. | 1..1 | Part.part |
| Svar |  |  |  |  |
| intygLista | ListaType (lokalt definierad i kontraktet) | En lista av intyg som är signerade eller makulerade. | 1..1 | - |
| ../intyg | Intyg (se 7.1.5) | Ett intyg. | 0..* | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### RegisterCertificate
Tjänstekontraktet används för att registrera ett intyg. Registreringen innebär att intyget registreras i ett annat system. Tjänstekontraktet kan anropas av en intygsapplikation (t.ex. Webcert) eller en intygstjänst (t.ex. Intygstjänsten).
En intygsapplikation anropar tjänstekontraktet för att registrera det signerade intyget i en intygstjänst.
En intygstjänst anropar tjänstekontraktet (efter att den har fått signal om att skicka intyget genom SendCertificateToRecipient) för att registrera intyget i intygsmottagarens system.

#### Version
3.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| svarPa* | MeddelandeReferens (se 7.1.7) | Om intyget utfärdas som ett svar på en fråga från intygsmottagaren (t.ex. en begäran om komplettering) ska referens till meddelandet skickas. | 0..1 | Meddelande.meddelande-id, Meddelande.referens-id |
| intyg* | Intyg (se 7.1.5) | Ett intyg. | 1..1 | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### svarPa
När en meddelandeReferens (svarPa) anges SKALL referens-id anges om det skickades i frågan (kompletteringsbegäran) från intygsmottagaren.

##### intyg/mottagare
Ska ej anges vid registrering av intyg.

##### intyg/skickatTidpunkt
Ska ange aktuell tidpunkt när intyg skickas från intygsapplikation till intygstjänst.

##### Dubletthantering
Om intyget redan skulle vara registrerat returnerar tjänsten information om detta med result.resultCode=”INFO”. Det betraktas således inte som ett fel.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1

### RevokeCertificate
Tjänstekontraktet används för att makulera ett registrerat intyg. Tjänstekontraktet kan anropas av en intygsapplikation (t.ex. Webcert) eller en intygstjänst (t.ex. Intygstjänsten).
En intygsapplikation (där intyget har makulerats) anropar tjänstekontraktet för att informera en intygstjänst om att ett tidigare registrerat intyg har makulerats.
En intygstjänst anropar i sin tur tjänstekontraktet (i anslutning till att intyget har makulerats i denna intygstjänst) för att förmedla information till intygsmottagarens system, om att intyget har makulerats hos sjukvården.

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| meddelande | string | Beskrivning av orsak till makuleringen. | 0..1 | Makulering.meddelande |
| skickatTidpunkt | TimeStampType | Tidpunkt då makuleringen skickades från vården. | 1..1 | Makulering.tidpunkt |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som skall makuleras. | 1..1 | Intyg.intygs-id |
| patientPerson-Id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som ska makuleras. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id. | 1..1 | Patient.person-id |
| skickatAv | HoSPersonal (se 7.1.4) | Identifierar den som utför makuleringen. | 1..1 | HoS-personal, Enhet, Vårdgivare |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### SendCertificateToRecipient
Tjänstekontraktet används för att skicka en begäran om att ett intyg ska registreras hos en intygsmottagare. Tjänstekontraktet kan anropas av en invånartjänst för intyg (t.ex. Mina intyg) eller en intygsapplikation.
En invånartjänst för intyg eller en intygsapplikation anropar tjänstekontraktet för att skicka en signal till en intygstjänst och därmed instruera denna att registrera ett intyg i intygsmottagarens system genom att anropa RegisterCertificate.

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| skickatTidpunkt | TimeStampType | Tidpunkt då begäran om att skicka intyg skickas. | 1..1 | - |
| intygs-id | IntygId (se 7.2.6) | Identitet på intyget. | 1..1 | Intyg.intygs-id |
| patientPerson-Id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som ska skickas. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id. | 1..1 | Patient.person-id |
| mottagare | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som intyget ska skickas till. | 1..1 | Intygsmottagare.part |
| skickatAv |  | Identifierar den person som skickar meddelandet. Denna information loggas men lagras inte i Intygstjänsten. |  | - |
| ../hosPersonal | HoSPersonal (se 7.1.4) | Skall anges när anrop görs från vården, och enbart då. | 0..1 | HoS-personal, Enhet, Vårdgivare |
| ../person-id | PersonId (se 7.2.10) | Skall anges när anrop görs från en invånartjänst, och enbart då. | 0..1 | Patient.person-id |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Intyg redan skickat
Om intyget redan skulle vara skickat till mottagaren returnerar tjänsten information om detta med result.resultCode=”INFO”.

##### skickatAv/hosPersonal och skickatAv/person-id
Attributen hanteras med XML schema choice element vilket gör att bara ett av dem kan anges.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### SendMessageToCare
Tjänstekontraktet används för att skicka ett meddelande från en intygsmottagare till vården. Meddelandet kan vara en fråga, ett svar på en av vården tidigare skickad fråga, eller en påminnelse gällande en obesvarad fråga. Meddelandet hör alltid till ett intyg som måste vara skickat till intygsmottagaren innan ett meddelande skapas. Tjänstekontraktet kan anropas av intygsmottagarens system.
Meddelanden av denna typ ska alltid skickas via en intygstjänst, för att möjliggöra kontroll och uppföljning av intygsrelaterade ärendeflöden. En intygstjänst bör vidarebefordra anropen synkront, så att konsumenten informeras om det uppstår fel när anropet vidarebefordras.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| meddelande-id | string | Unikt ID för meddelandet. ”Meddelande” syftar här på själva requestet. Är en GUID. | 1..1 | Meddelande.meddelande-id |
| referens-id | string | Valfri referens till entitet hos sändande part. Behöver ej vara unikt. | 0..1 | Meddelande.referens-id |
| skickatTidpunkt | TimeStampType | Tidpunkt då meddelandet skickades. | 1..1 | Meddelande.avsänt tidpunkt |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som meddelandet hör till. | 1..1 | Intyg.intygs-id |
| patientPerson-Id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som meddelandet hör till. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id. | 1..1 | Patient.person-id |
| logiskAdressMottagare* | string | Logisk adress för den vårdenhet som intygstjänsten ska vidarebefordra meddelandet till. | 1..1 | Enhet.Enhets-id.extension |
| amne* | Amneskod (se 7.2.1) | Kodat värde som anger ämnet för frågan. | 1..1 | Meddelande.ämne |
| rubrik | string | En valfri rubrik som beskriver meddelandet. | 0..1 | Meddelande.rubrik |
| meddelande* | string | Meddelandets text. / Om meddelandet är av ämne “Komplettering” ska det via det här fältet skickas det generella kompletteringsmeddelandet. Kompletteringmeddelandet som gäller en specifik fråga i intyget ska skickas via fältet komplettering/text | 1..1 | Meddelande.meddelande |
| paminnelseMeddelande-id* | string | Identitet på ett tidigare skickat meddelande, som detta meddelande är en påminnelse om. | 0..1 | Meddelande.meddelande-id |
| svarPa | MeddelandeReferens (se 7.1.7) | Om detta meddelande är ett svar på en fråga från vården ska referens till frågan skickas | 0..1 | Meddelande.meddelande-id, Meddelande.referens-id |
| skickatAv | - | - | 1..1 | - |
| ../part | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som skickar meddelandet. | 1..1 | Intygsmottagare.part |
| ../kontaktInfo | string | Rader med kontaktinformation. Vilken information som skickas kan variera för olika intygsmottagare, och måste överenskommas mellan vården och intygsmottagaren. | 0..* | Intygsmottagare. kontaktuppgift |
| komplettering* | - | Komplettering | 0..* | - |
| ../frage-id | string | Identitet på den fråga som intygsmottagaren önskar få kompletterad. | 1..1 | Fråga.fråge-id |
| ../instans* | int | Instansnummer för en fråga som förekommer i flera instanser. | 0..1 | Svar.instans |
| ../text* | string | Kompletteringsmeddelande som gäller en specifik fråga i intyget. Texten ska inte vara redundant med den texten som skickades via fältet meddelande | 1..1 | Kompletteringsfråga.kompletteringsfråga |
| sistaDatumForSvar | DateType | Datum då intygsmottagaren senast vill ha ett svar. | 0..1 | Meddelande.sista datum för svar |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### amne
När tjänsten används för att skicka ett svar på en tidigare ställd fråga från vården ska ämnet för svaret sättas till samma ämne som frågan hade.

##### paminnelseMeddelande-id
Ska endast anges när ämnet är ”Påminnelse”.

##### logiskAdressMottagare
Den logiska adressaten ska för nya frågor vara den enhet som utfärdade intyget. För svar på frågor ska den logiska adressen hämtas från frågan (skickatAv.enhet.enhets-id.extension).

##### komplettering
Ska endast anges när ämnet är ”Komplettering”.

##### komplettering/instans
Ska endast ange när frågan har besvarats flera gånger, och kompletteringen är relaterad till en specifik instans. Uppgiften utelämnas när en fråga endast besvarats en gång, eller om kompletteringen är relaterad till alla instanser. Avgränsningar kring denna hantering kan gälla för en viss typ av intyg. Lägsta värde är 1.

##### sistaDatumForSvar
Ska endast anges när meddelandet är en fråga.

##### meddelande
Försäkringskassan har, för sin användning av tjänsten, avtalat med domänens förvaltare att detta fält inte behöver innehålla någon information i de fall fältet ämne anger att det handlar om ”komplettering”. Då skickas meddelandetexten till vården enbart i fältet komplettering.text.

##### Endast ett svar
En fråga får endast besvaras en gång.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### SendMessageToRecipient
Tjänstekontraktet används för att skicka ett meddelande från vården till en intygsmottagare. Meddelandet kan vara en fråga eller ett svar på en av intygsmottagaren tidigare skickad fråga, eller en påminnelse gällande en obesvarad fråga. Meddelandet hör alltid till ett intyg som måste vara skickat till intygsmottagaren innan ett meddelande skapas. Tjänstekontraktet kan anropas av en intygsapplikation.
Meddelanden ska alltid skickas via en intygstjänst, för att möjliggöra kontroll och uppföljning av intygsrelaterade ärendeflöden. En intygstjänst bör vidarebefordra anropen synkront, så att konsumenten informeras om det uppstår fel när anropet vidarebefordras.

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| meddelande-id | string | Unikt ID för meddelandet. ”Meddelande” syftar här på själva requestet. Är en GUID. | 1..1 | Meddelande.meddelande-id |
| referens-id | string | Valfri referens till entitet hos sändande part. Behöver ej vara unikt. | 0..1 | Meddelande.referens-id |
| skickatTidpunkt | TimeStampType | Tidpunkt då meddelandet skickades. | 1..1 | Meddelande.avsänt tidpunkt |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som meddelandet hör till. | 1..1 | Intyg.intygs-id |
| patientPerson-Id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som meddelandet hör till. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id. | 1..1 | Patient.person-id |
| logiskAdressMottagare | string | Logisk adress för den intygsmottagare som intygstjänsten ska vidarebefordra meddelandet till. | 1..1 | Intygsmottagare.logisk adress |
| amne* | Amneskod (se 7.2.1) | Kodat värde som anger ämnet för frågan. | 1..1 | Meddelande.ämne |
| rubrik | string | En valfri rubrik som beskriver meddelandet. | 0..1 | Meddelande.rubrik |
| meddelande | string | Meddelandets text | 1..1 | Meddelande.meddelande |
| paminnelseMeddelande-id* | string | Identitet på ett tidigare skickat meddelande, som detta meddelande är en påminnelse om. | 0..1 | Meddelande.meddelande-id |
| svarPa | MeddelandeReferens (se 7.1.7) | Om detta meddelande är ett svar på en fråga från intygsmottagaren ska referens till frågan skickas | 0..1 | Meddelande.meddelande-id, Meddelande.referens-id |
| skickatAv | HosPersonal (se 7.1.4) | Information om den hälso- och sjukvårdspersonal som skickar meddelandet. Anges eftersom det inte behöver vara samma som signerade intyget. | 1..1 | HoS-personal, Enhet, Vårdgivare |
| sistaDatumForSvar | DateType | Datum då vården senast vill ha ett svar. | 0..1 | Meddelande.sista datum för svar |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### amne
När tjänsten används för att skicka ett svar på en tidigare ställd fråga från intygsmottagaren ska ämnet för svaret sättas till samma ämne som frågan hade. Undantaget är påminnelser, som alltid ska ha ämnet ”Påminnelse”.

##### paminnelseMeddelande-id
Ska endast anges när ämnet är ”Påminnelse”. Användning av ämnet Påminnelse beror på intygsmottagare och det måste kontrolleras att den aktuella intygsmottagaren har stöd för att ta emot påminnelser.

##### sistaDatumForSvar
Ska endast anges när meddelandet är en fråga.

##### Endast ett svar
En fråga får endast besvaras en gång.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### SetCertificateStatus
Tjänstekontraktet används för att sätta status för ett registrerat intyg i en intygstjänst. Statusen anger intygets status för en viss part, t.ex. en intygsmottagare (Försäkringskassan) eller invånaren. Tjänstekontraktet kan anropas av en invånartjänst för intyg (t.ex. Mina intyg eller Försäkringskassans Mina sidor).
Invånartjänsten för intyg anropar tjänstekontraktet för att invånaren ska kunna bifoga ett intyg till ett ärende i intygsmottagarens egen e-tjänst (t.ex. Försäkringskassans Mina sidor), varvid en status sätts som informerar om att intyget är skickat till Försäkringskassan. En invånartjänst för intyg kan också anropa tjänstekontraktet för att invånaren ska kunna arkivera ett intyg eller återställa ett intyg från arkivering i tjänsten.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som status skall sättas för. | 1..1 | Intyg.intygs-id |
| part | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som statusen gäller för. | 1..1 | Part.part |
| status | Statuskod (se 7.2.15) | Kodat värde som anger status för ett intyg. | 1..1 | Status.status |
| tidpunkt | TimeStampType | Tidpunkt då statusen sattes. | 1..1 | Status.tidpunkt |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### CreateDraftCertificate
Tjänstekontraktet används för att skapa ett intygsutkast i en intygsapplikation. Tjänstekontraktet kan anropas av ett vårdsystem.
I intyget som skapas vill man använda de namn på HoS-Personal och Enhet som förekommer i vårdsystemet, därför skickas de med i anropet istället för att hämtas från HSA. Övriga uppgifter om dessa entiteter hämtas dock från HSA. Observera att uppgifter om vårdgivare inte skickas med i anropet. Detta förutsätter att angiven enhet är kopplad till en vårdgivare i HSA. Som svar skickas ett intygs-id på det intygsutkast som har skapats.

#### Version
3.2

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| intyg | Intyg (lokalt definierad i kontraktet) | Utkast till intyg. | 1..1 | Intyg |
| ../typAvIntyg | TypAvIntyg (se 7.2.11) | Kodat värde som anger intygstypen. | 1..1 | Intyg.typ |
| ../patient* | Patient (se 7.1.8) | Uppgifter om den patient som intyg skapas för. | 1..1 | Patient |
| ../skapadAv | HosPersonal (lokalt definierad i kontraktet) | Hälso- och sjukvårdspersonal som skapar intyg. | 1..1 | Hos-personal |
| ../../personal-id | HsaId (se 7.2.5) | HSA-id för hälso- och sjukvårdspersonalen som skapar intygsutkastet. | 1..1 | HoS-personal.personal-id |
| ../../fullstandigtNamn | string | Personalens förnamn + efternamn. | 1..1 | HoS-personal.fullständigt namn |
| ../../enhet | Enhet (lokalt definierad i kontraktet) | Enhet som intyg skapas på. | 1..1 | Enhet |
| ../../../enhets-id | HsaId (se 7.2.5) | HSA-id för enheten. | 1..1 | Enhet.enhets-id |
| ../../../enhetsnamn | string | Enhetens namn. | 1..1 | Enhet.enhetsnamn |
| ../ref | string | Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt. | 0..1 | Referens.ref |
| Svar |  |  |  |  |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intygsutkast som skapats. | 0..1 | Intyg.intygs-id |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### CertificateStatusUpdateForCare
Tjänstekontraktet används för att skicka uppdateringar gällande ett intyg och tillhörande ärendekommunikation. Tjänstekontraktet kan anropas av en intygsapplikation.
Uppdateringar skickas vid definierade händelser i en intygsapplikation. Händelserna kan antingen gälla ett intygsutkast, ett signerat intyg eller en ärendekommunikation för ett intyg:
Händelser som gäller intygsutkastet kan vara att intygsutkastet har skapats eller ändrats.
Händelser som gäller ett signerat intyg kan vara att intyget har skickats eller makulerats. När det gäller händelser för ett signerat intyg så kan de ibland sammanfalla med statusförändringar, men det finns händelser som inte resulterar i förändrad status. Ett vårdsystem som integrerar med en intygsapplikation behöver bara bry sig om händelser, medan eventuell status-information (som skickas med IntygsStatus, se 7.4) bör ignoreras.
Händelser som gäller ärendekommunikationen kan vara när det har inkommit en ny fråga på intyget från en intygsmottagare.
Utöver händelserna skickas även statistik om ärendekommunikation för ett intyg, t.ex. hur många frågor från intygsmottagaren som har inkommit för ett intyg och hur många av de som inte är besvarade.

#### Version
3.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| intyg | Intyg (se 7.1.5) | Intygsutkast eller signerat intyg enligt den gemensamma typen Intyg. | 1..1 | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt |
| handelse | Handelse (se 7.1.3) | Information om en händelse. / Händelse kan gälla ett intygsutkast, ett signerat intyg eller ärendekommunikationen för ett intyg. | 1..1 | Händelse |
| skickadeFragor | Arenden (se 7.1.1) | Frågor som rör intyget och som har skickats från vården. | 1..1 | Ärenden |
| mottagnaFragor | Arenden (se 7.1.1) | Frågor som rör intyget och som har skickats från intygsmottagaren. | 1..1 | Ärenden |
| ref | string | Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt. | 0..1 | Referens.ref |
| hanteratAv | HSAId (se 7.2.5) | Den hälso- och sjukvårdspersonal som hanterar intyget och ger upphov till en statusuppdatering. | 0..1 | HoS-personal.personal-id |
| Svar |  |  |  |  |
| result | ResultType (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Icke funktionella krav
Nedanstående verksamhetskrav gäller för det aktuella tjänstekontraktet.

##### SLA-krav
För detta tjänstekontrakt gäller de generella kraven enl. kap 4.2.1

### ListCertificatesForCareWithQA
Tjänstekontraktet används för att hämta en lista med alla intyg gällande en viss patient hos en viss enhet eller vårdgivare från en intygsapplikation. Svaret inkluderar också information om händelser och ärendekommunikation för intygen som finns i listan. Tjänstekontraktet kan anropas av ett vårdsystem.
Listan inkluderar även intygsutkast.

#### Version
3.2

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| person-id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. | 1..1 | Patient.person-id |
| enhets-id | HsaId (se 7.2.5) | HSA-id för enheten. | 0..* | Enhet.enhets-id |
| vardgivar-id | HsaId (se 7.2.5) | HSA-id för vårdgivaren. | 0..1 | Vårdgivare.vårdgivar-id |
| fromTidpunkt | TimeStampType | Hämta intyg och händelser, där händelserna inträffat från och med denna tidpunkt. Endast de händelser som inträffat från och med denna tidpunkt returneras, tillsammans med tillhörande intyg. Utelämnas för att hämta utan begränsning bakåt i tiden. | 0..1 | - |
| tomTidpunkt | TimeStampType | Hämta intyg och händelser, där händelserna inträffat fram till och med denna tidpunkt. Endast de händelser som inträffat till och med denna tidpunkt returneras, tillsammans med tillhörande intyg. Utelämnas för att hämta utan begränsning framåt i tiden. | 0..1 | - |
| Svar |  |  |  |  |
| list | List (lokalt definierad i kontraktet) | En lista av intyg som kan vara signerade, makulerade eller i form av intygsutkast. | 0..1 | - |
| ../item | ListItem (lokalt definierad i kontraktet) | Element som håller ihop objekt för ett intyg | 0..* | - |
| ../../intyg | Intyg (se 7.1.5) | Ett intyg enligt den gemensamma fälttypen Intyg. | 1..1 | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt |
| ../../handelser | HandelseList | En lista innehållande samtliga händelser för ett intyg. | 1..1 | - |
| ../../../handelse | Handelse (se 7.1.3) | Information om en händelse. / En händelse kan gälla ett intygsutkast, ett signerat intyg eller ärendekommunikationen för ett intyg. | 0..* | Händelse |
| ../../skickadeFragor | Arenden (se 7.1.1) | Frågor som rör intyget och som har skickats från vården. | 1..1 | Ärende |
| ../../mottagnaFragor | Arenden (se 7.1.1) | Frågor som rör intyget och som har skickats från intygsmottagaren. | 1..1 | Ärende |
| ../../ref | string | Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt. | 0..1 | Referens.ref |

#### Övriga regler

##### enhets-id
När enhets-id anges ska vardgivar-id ej anges.

##### vardgivar-id
När vardgivar-id anges ska enhets-id ej anges.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### ListSickLeavesForCare
Tjänstekontraktet används för att få en lista med pågående sjukfall på en angiven enhet. Tjänstekontraktet kan anropas av ett vårdsystem.
Ett sjukfall består av en rad sjukskrivningsintyg för en och samma patient, där uppehållet mellan intygen inte är längre än det max antal dagar som specificeras när tjänstekontraktet anropas. De exakta reglerna för hur sjukfallsinformationen bestäms utifrån intygsinformationen kan fås från förvaltningen av denna domän, då de kan komma att förändras något över tid.
Bara sjukfall som pågår då anropet till detta tjänstekontrakt görs, dvs. där det finns ett intyg med en sjukskrivningsperiod som är giltig samma datum, inkluderas i svaret.
I svaret inkluderas enbart sjukfall som finns på angiven enhet och eventuella underenheter till denna.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| enhets-id | HsaId (se 7.2.5) | HSA-id för enhet. | 1..1 | Enhet.enhets-id |
| maxDagarMellanIntyg | int | Maximalt antal dagars uppehåll det får vara mellan två intyg för att de ska räknas till samma sjukfall. | 1..1 | - |
| minstaSjukskrivningslangd | int | Minimal sjukskrivningslängd i dagar för de pågående sjukfall som ska hämtas. | 0..1 | - |
| maxSjukskrivningslangd | int | Maximal sjukskrivningslängd i dagar för de pågående sjukfall som ska hämtas. | 0..1 | - |
| personal-id | HsaId (se 7.2.5) | HSA-id för HoS-person som har signerat nuvarande intyg i sjukfallet. | 0..* | HoS-personal.personal-id |
| Svar |  |  |  |  |
| sjukfallLista | SjukfallLista (lokalt definierad i kontraktet) | Lista med sjukfall. | 1..1 |  |
| ../sjukfall | Sjukfall (lokalt definierad i kontraktet) | Pågående sjukfall. | 0..* | Sjukfall |
| ../../person-id | PersonId (se 7.2.10) | Patientens person- eller samordningsnummer. | 1..1 | Patient.person.id |
| ../../patientFullstandigtnamn | string | Patientens namn. | 0..1 | Patient.förnamn / Patient.mellannamn / Patient.efternamn |
| ../../enhets-id | HsaId (se 7.2.5) | HSA-id för enhet. | 1..1 | Enhet.enhets-id |
| ../../personal-id | HsaId (se 7.2.5) | HSA-id för HoS-person som har signerat nuvarande intyg i sjukfallet. | 1..1 | HoS-personal.personal-id |
| ../../startdatum | DateType | Datum då sjukfallet startade. | 1..1 | Sjukfall.startdatum |
| ../../slutdatum | DateType | Datum då sjukfallet kommer att avslutas om det inte förlängs av nya intyg. | 1..1 | Sjukfall.slutdatum |
| ../../diagnoskod | Diagnoskod | Huvuddiagnoskod i det intyg som är giltigt vid datum för hämtning av sjukfall. | 1..1 | Sjukfall.diagnoskod |
| ../../../code | string | Diagnoskod. | 1..1 | Sjukfall.diagnoskod |
| ../../../codeSystem | string | Identifierare för kodsystem, om känt. | 0..1 | Sjukfall.diagnoskod |
| ../../../codeSystemName | string | Namn på kodsystem. Används ej. | 0..1 | Sjukfall.diagnoskod |
| ../../../codeSystemVersion | string | Version på kodsystem. Används ej. | 0..1 | Sjukfall.diagnoskod |
| ../../../displayName | string | Klartext för kod. Används ej. | 0..1 | Sjukfall.diagnoskod |
| ../../../originalText | string | Beskrivande text. Används ej. | 0..1 | Sjukfall.diagnoskod |
| ../../antalintyg | int | Antal intyg som ingår i sjukfallet. | 1..1 | Sjukfall.antal intyg |
| ../../sjukskrivningslangd | int | Sjukfallets totala längd i dagar. | 1..1 | Sjukfall.sjukskrivningslängd |
| ../../sjukskrivningsgrad | Sjukskrivningsgrad | Platshållare för information om sjukfallets sjukskrivningsgrad. | 1..1 | Sjukfall.sjukskrivningsgrad / Sjukfall.aktiv sjukskrivnignsgrad |
| ../../../aktivGrad | int | Den sjukskrivningsgrad som är giltig vid datum för hämtning av sjukfall. | 1..1 | Sjukfall.aktiv sjukskrivnignsgrad |
| ../../../grader | Sjukskrivningsgrader | Platshållare för information om samtliga sjukskrivningsgrader i det intyg som är giltigt vid datum för hämtning av sjukfall. | 1..1 | Sjukfall.sjukskrivningsgrad |
| ../../../../grad | int | Samtliga sjukskrivningsgrader i det intyg som är giltigt vid datum för hämtning av sjukfall. | 1..4 | Sjukfall.sjukskrivningsgrad |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

