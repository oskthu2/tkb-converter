## Tjänstekontrakt

### GetObservations
Detta tjänstekontrakt hämtar ut strukturerade observationer rörande en patient. Tjänstekontraktets informatik är abstrakt (godtyckliga observationer kan hämtas). Det gör att observationer kan hämtas oavsett kliniskt sammanhang (labbsvar, ordinerad egenvård, MT-utrustning i klinisk miljö etc). Att stödja kontraktet innebär därmed inte att en konsument kan förlita sig på vilka typer av observationer som producenten kan tillgängliggöra. En konsument kan t.ex. vara intresserad av producenter som stödjer observationer relaterade till tillväxtinformation inom barnhälsa. För att en producent ska kunna deklarare stöd för specifika typer av observationer, behöver semantiska deklarationer upprättas för att kompensera att dessa inte är reglerade av tjänstekontraktet. Dessa semantiska deklarationer benämns Interaktinsöverenskommelser. En konsument av detta kontrakt behöver alltså peka på både kontraktet och för konsumenten relevanta interaktionsöverenskommelser för att kunna deklarera kraven på semantisk interoperabilitet gentemot de verksamheter som avser stödja konsumenten.
En typ av observation kan exempelvis vara ett kliniskt fynd eller en huvuddiagnos. Värdeattributet innehåller den faktiska observationen, exempelvis ”ankylos på tand” kodat med en Snomed CT-kod. Om observationen består av något som är uppmätt så beskrivs vad som uppmätts i fältet observations/observationBody/type (exempelvis diastoliskt blodtryck) och resultatet av mätningen i observations/observationBody/value (exempelvis 90 mmHg).
Meddelandemodell från avsnitt 5.1 V-MIM – Observationer motsvarar en observation i svarsmeddelandet för detta tjänstekontrakt. Kopplingen mellan V-MIM enligt NI 2017 och de tekniska engelska namnen visas i tabellen i samma avsnitt.

#### Version
2.0

#### Fältregler

##### Begäran

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| personPatientId | IIType | Id för den person som är patient och för vilken observationer ska returneras. Identiteten kan vara  antingen person-id (person- eller samordningsnummer) eller patient-id (nationell reservidentitet). Se [R9] för mer information om nationell reservidentitet. Lokala reservnummer är inte tillåtna. / Se övrig regel 1, avsnitt 6.1.3.1. | 1..1 |
| personPatientId/root | String | OID för typ av identifierare. / 1) För personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) För nationell reservidentitet ska OID för nationell reservidentitet (1.2.752.74.9.1) användas. | 1..1 |
| personPatientId/extension | String | Id i form av / personnummer, samordningsnummer eller / nationell reservidentitet. Ska anges med 12 tecken utan avskiljare. | 1..1 |
| time | TimePeriodType | Begränsning av sökning i tid. Resultatet innehåller de poster vars tid (observations/observationBody/time) ligger inom det sökta tidsintervallet (start- och/eller slutpunkt ska inkluderas i sökintervallet). / Om endast start anges men inte end, sker sökning även på pågående observationer. / Minst en av start och end attributen ska anges om attributet time anges. / Se övrig regel 1, avsnitt 6.1.3.1. | 0..1 |
| time/start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. / Se övrig regel 2, avsnitt 6.1.3.2. | 0..1 |
| time/end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. / Se övrig regel 2, avsnitt 6.1.3.2. | 0..1 |
| observationType | CVType | Begränsning av sökning till en viss typ av observation (observations/observationBody/type), exempelvis blodtryck. Notera att om den observerade storheten består av ett kliniskt fynd är observationstyp oftast inte angiven i svaret. I dessa fall ska istället fältet ObservationCodedValue i begäran användas för filtrering. / Se övrig regel 1, avsnitt 6.1.3.1. | 0..* |
| observationType/code | String | Kod för observationstyp. | 1..1 |
| observationType/codeSystem | String | Kodsystem för angiven kod för observationstyp. | 1..1 |
| observationType/codeSystemVersion | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationType/displayName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationCodedValue | CVType | Begränsning av sökning till ett visst (kodat) värde som är utfallet av en observation (observations/observationBody/value). Detta fält används då observationType inte kan användas för att begränsa sökmängden. / Se övrig regel 1, avsnitt 6.1.3.1. | 0..* |
| observationCodedValue/code | String | Kod för värde av observation. | 1..1 |
| observationCodedValue/codeSystem | String | Kodsystem för angiven kod för värde av observation. | 1..1 |
| observationCodedValue/codeSystemVersion | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationCodedValue/displayName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationId | IIType | Begränsning av sökning till en viss observation (observations/observationBody/id). Identiteten ska garanterat vara unik inom vårdgivaren. / Se övrig regel 1, avsnitt 6.1.3.1. | 0..* |
| observationId/root | String | Den informationsägande vårdgivarens HSA-id. | 1..1 |
| observationId/extension | String | Den inom vårdgivaren unika id-beteckningen för observationen. | 1..1 |
| observationStatus | CVType | Begränsning av sökning till observationer med en viss status (observations/observationBody/status). / Se övrig regel 1, avsnitt 6.1.3.1. / Koder för status för observation tillhandahålls av Socialstyrelsen som ett urval ur Snomed CT samt som bilaga till NI 2017 [R5]. / Snomed CT urvals-id är 56431000052106.  Vilka koder som ingår i urvalet söks fram i IHTSDO SNOMED CT Browser [R7]. / Om koder utanför urvalet behöver användas ska detta göras i samråd med Socialstyrelsen. | 0..* |
| observationStatus/code | String | Kod för status. | 1..1 |
| observationStatus/codeSystem | String | Kodsystem för angiven kod för status. Snomed CT OID är  1.2.752.116.2.1.1. | 1..1 |
| observationStatus/codeSystemVersion | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationStatus/displayName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| sourceSystemHSAId | IIType | Används när man vill söka ur ett specifikt källsystem. HSA-id för det källsystem inom vilket observationens id är unikt. / Se övrig regel 1, avsnitt 6.1.3.1. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Fältet är tvingande om observationId angivits. | 0..1 |
| sourceSystemHSAId/root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| sourceSystemHSAId/extension | String | Källsystemets HSA-id. | 1..1 |
| careGiverId | IIType | Begränsning av sökning till observationer hos en viss vårdgivare. Filtrerar på den ansvariga vårdgivare som angetts i headern (observations/header/accessControlHeader/accountableCareGiver). / Se övrig regel 1, avsnitt 6.1.3.1. | 0..1 |
| careGiverId/root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| careGiverId/extension | String | HSA-id för den vårdgivare från vilken observationer ska returneras. | 1..1 |
| careUnitId | IIType | Begränsning av sökning till observationer hos viss vårdenhet (enligt PDLs definition av vårdenhet). Filtrerar på den ansvariga vårdenhet som angetts i headern (observations/header/accessControlHeader/accountableCareUnit). / Se övrig regel 1, avsnitt 6.1.3.1. | 0..* |
| careUnitId/root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| careUnitId/extension | String | HSA-id för vårdenheten från vilken observationer ska returneras. | 1..1 |
| careProcessId | UUIDType | Begränsning av sökning till observationer som dokumenteras inom en viss individanpassad vårdprocess (observations/header/accessControlHeader/careProcessId). Om fältet anges och ett producentsystem inte hanterar individanpassad vårdprocess returneras ett tomt svar. / Se övrig regel 1, avsnitt 6.1.3.1. | 0..1 |
| relation | RelationFilterType | Begränsning av sökning till observationer med samband till andra observationer eller aktiviteter, utifrån typ av samband eller egenskaper hos den refererade informationen (id och typ). / Minst en av relation/relationType och relation/referredInformationId skall vara angiven. / Se övrig regel 1, avsnitt 6.1.3.1. | 0..* |
| relation/relationType | CVType | Filtrering på sambandstyp (observations/observationBody/relation/type). / Koder för sambandstyp tillhandahålls av Socialstyrelsen som ett urval ur Snomed CT samt som bilaga till NI 2017 [R5]. / Snomed CT urvals-id är 53371000052106. Vilka koder som ingår i urvalet söks fram i IHTSDO SNOMED CT Browser [R7]. / Om koder utanför urvalet behöver användas ska detta göras i samråd med Socialstyrelsen. | 0..1 |
| relation/relationType/code | String | Kod för sambandstyp. | 1..1 |
| relation/relationType/codeSystem | String | Kodsystem för sambandstyp. Snomed CT OID är  1.2.752.116.2.1.1. | 1..1 |
| relation/relationType/codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| relation/relationType/displayname | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation/referredInformationId | IIType | Filtrering på identitet på den refererade informationen som sambandet pekar ut (observations/observationBody/relation/referredInformation/id). Detta ger exempelvis möjlighet att söka ut alla observationer som har ett samband till en viss aktivitet. | 0..1 |
| relation/referredInformationId/root | String | Id-root på den refererade information som sambandet pekar ut. | 1..1 |
| relation/referredInformationId/extension | String | Id-extension på den refererade information som sambandet pekar ut. | 1..1 |
| relation/referredInformationCategorization | String | Den typ av information som sambandet pekar ut (observations/observationBody/relation/referredInformation/categorization). Detta är en kod från Categorization i engagemangsindexposten. / I denna version av tjänstekontraktet är följande typer möjliga: / chb-o  (observation) / caa-ga (aktivitet) | 1..1 |

##### Svar

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| observations | ObservationResponseType | De observationer som matchar sökkriterier i begäran, inklusive header-information. | 0..* |
ObservationResponseType

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| header | HeaderType | Header enligt RIV-TA standard, se separat dokument med fältregler för header [R10]. | 1 |
| observationBody | ObservationType | Information om en observation. | 1 |

###### ObservationType
Motsvarar klasserna Observation och Uppgift i patientjournal i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Identitet för observationen. Identiteten ska garanterat vara unik inom vårdgivaren. | 1..1 |
| id/root | String | Den informationsägande vårdgivarens HSA-id. | 1..1 |
| id/extension | String | Den inom vårdgivaren unika id-beteckningen för observationen. | 1..1 |
| registrationTime | TimeStampType | Dokumentationstidpunkt. När uppgiften registrerades i patientens journal. Kan skilja sig från signeringstidpunkt som återfinns i header. | 1..1 |
| type | CVType | NI 2017 (Observation.typ) / Kod för den typ av observation som avses i de fall detta inte framgår av attributet värde. Ett exempel på typ är "längd mätt utan skor" där attributet värde håller information om resultatet av mätningen, exempelvis 174 cm. Ett annat exempel är typen ”huvuddiagnos” där attributet värde håller information om den specifika diagnosen, exempelvis ”hypertoni” eller diagnoskoden. | 0..1 |
| type/code | String | Kod för observationstyp | 1..1 |
| type/codeSystem | String | Kodsystem för angiven kod för observationstyp. | 1..1 |
| type/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| type/displayName | String | Textuell beskrivning av det som koden anger. | 1..1 |
| value | ValueANYType | NI 2017 (Observation.värde) / Angivelse av värde som alltid representerar det faktiska observerade hälsotillståndet. Exempelvis så skulle observationens typ [type] kunna motsvara "huvuddiagnos”, vilket innebär att attributet värde håller den huvudsakliga diagnosen. Ett annat exempel är "längd mätt utan skor" och då innehåller attributet värde resultatet av mätningen, exempelvis 158 cm. Om observationen avser ett måltillstånd motsvarar attributet värde det resultat man önskar uppnå för att målet ska uppfyllas. Notera att även observationer vars representation dokumenteras som fritext använder attributet värde. / Se ValueANYType i avsnitt 6.1.2.2.16. | 1..1 |
| scale | CVType | NI 2017 (Observation.skala) / Den mätskala som värdet är uppmätt på i de fall då detta inte uttrycks i attributet typ [type] eller värde [value]. Två huvudsakliga typer av skalor förekommer: nominalskalor och ordinalskalor. En nominalskala är en mätskala där data klassificeras endast efter kvalitativa egenskaper. Data sägs vara kategoriska. Ett exempel på detta är gruppering av blod i AB0-systemet i kategorierna A, B, AB, 0. En ordinalskala är en mätskala där data kan indelas i grupper som har en inbördes rangordning, men inte nödvändigtvis numeriska värden. Ett exempel på en ordinalskala är AUDIT (Alcohol use disorders identification test) där riskkonsumtion av alkohol bedöms på en skala från 0-40 poäng. | 0..1 |
| scale/code | String | Kod för mätskala. | 1..1 |
| scale/codeSystem | String | Kodsystem för angiven kod för nätskala. | 1..1 |
| scale/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| scale/displayName | String | Textuell beskrivning av det som koden anger. | 1..1 |
| status | CVType | NI 2017 (Observation.status)
Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller är ett potentiellt tillstånd. En instans av klassen observation kan inte byta status. Om man exempelvis vill dokumentera ett måltillstånd som senare uppfylls så dokumenteras detta som två instanser av klassen observation, en med status måltillstånd och en med status observerat. / Koder för status för observation tillhandahålls av Socialstyrelsen som ett urval ur Snomed CT samt som bilaga till NI 2017 [R5]. / Snomed CT urvals-id är 56431000052106.  Vilka koder som ingår i urvalet söks fram i IHTSDO SNOMED CT Browser [R7]. / Om koder utanför urvalet behöver användas ska detta göras i samråd med Socialstyrelsen. | 1..1 |
| status/code | String | Kod för status | 1..1 |
| status/codeSystem | String | Kodsystem för angiven kod för status. Snomed CT OID är  1.2.752.116.2.1.1. | 1..1 |
| status/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| status/displayName | String | Textuell beskrivning av statuskod | 1..1 |
| targetSite | CVType | NI 2017 (Observation.lokalisation) / Angivelse av lokalisation, som används för att beskriva vad observationen avser gällande anatomi, funktion eller system. Lokalisation kan beskriva exempelvis lateralitet, organs position och orientering i relation till andra delar av kroppen. / Lokalisationsattributet används endast om inte attributet värde [value] innefattar tillräcklig information om detta. | 0..* |
| targetSite/code | String | Kod för lokalisation. | 1..1 |
| targetSite/codeSystem | String | Kodsystem för angiven kod för lokalisation. | 1..1 |
| targetSite/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| targetSite/displayName | String | Textuell beskrivning av kod för lokalisation. | 1..1 |
| description | String | NI 2017 (Observation.beskrivning) / Textuell beskrivning av den observation som avses. Används som komplement till attributet värde [value] i de fall en ytterligare textuell beskrivning krävs. / OBS! Om observationen endast består av fritext skall denna anges i value-attributet. | 0..1 |
| time | TimeType | Tidpunkt eller tidsintervall för observationen. / Se TimeType i avsnitt 6.1.2.2.18. / NI 2017 (Observation.tid) / Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Exempelvis så kan tidsattributet ange att patienten hade huvudvärk igår kväll mellan kl. 20.00 och 21.45 även om detta berättades på morgonen efter och det dokumenterades först då. Om observationen är ett måltillstånd anger tidsattributet när detta tillstånd önskas vara uppnått. / Observationens tid skiljer sig vanligtvis från dokumentationstidpunkt i uppgift i patientjournal [registrationTime] som beskriver när tillståndet dokumenterades, vilket alltid sker i efterhand. | 0..1 |
| valueNegation | Boolean | Denna flagga negerar betydelsen av det som anges i value-fältet. Normalvärde är false, det vill säga att det som anges i value är en positiv utsaga. Detta ska tolkas som att man letat efter ett visst tillstånd och konstaterat att det inte föreligger. Om man i value exempelvis har diagnoskoden N19.9 (Njursvikt, icke specificerad som akut eller kronisk) och valueNegation är satt till true betyder detta att patienten inte har njursvikt. / NI 2017 (Observation.negation) / Flagga som negerar betydelsen av observationen. Det används för att dokumentera exempelvis att ett tillstånd inte har förekommit/observerats men att man explicit har letat efter det. Detta till skillnad från att inget dokumenterats om ett specifikt tillstånd vilket kan innebära att man inte utrett det överhuvudtaget. Det som negeras är förekomsten av det som beskrivs av värdet [value]. Negationens betydelse modifieras ytterligare av statusflaggan [status]. Om status är exempelvis måltillstånd innebär negationsflaggan att målet är att ett visst tillstånd inte skall kunna observeras vid en viss tidpunkt. / Om flaggan är satt till sant innebär det att betydelsen av instansen som helhet är negerad. | 1..1 |
| patient | PatientInformationType | Den patient som observationen avser. / Se  PatientInformationType i avsnitt 6.1.2.2.3. | 1..1 |
| participation | ParticipationType | Deltagare i observationen, bland annat den som utfört observationen. / En deltagare kan vara antingen hälso- och sjukvårdspersonal, patienten själv, en annan person, en organisation, en plats där observationen gjorts eller en resurs (exempelvis medicinteknisk utrustning). / Se ParticipationType i avsnitt 6.1.2.2.5. | 0..* |
| relation | RelationType | Beskriver typade samband till andra informationsmängder. Exempelvis är ett systoliskt blodtryck (observation) resultat av aktiviteten blodtrycksmätning. / Se RelationType i avsnitt 6.1.2.2.6. | 0..* |

###### RelationType
Motsvarar delvis klassen Samband i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| type | CVType | NI 2017 (Samband.typ) / Kod för på vilket sätt två företeelser dokumenterade som uppgifter i patientjournal är relaterade till varandra. / Exempelvis observationen att patienten har typ 2-diabetes har grund i observationerna att patienten är trött, kissar mycket och har ett förhöjt blodsockervärde, där typ av samband är ”har grund”. / Koder för sambandstyp tillhandahålls av Socialstyrelsen som ett urval ur Snomed CT samt som bilaga till NI 2017 [R5]. / Snomed CT urvals-id är 53371000052106.  Vilka koder som ingår i urvalet söks fram i IHTSDO SNOMED CT Browser [R7]. / Om koder utanför urvalet behöver användas ska detta göras i samråd med Socialstyrelsen. | 1..1 |
| type/code | String | Kod för sambandstyp. | 1..1 |
| type/codeSystem | String | Kodsystem för sambandsstyp. Snomed CT OID är  1.2.752.116.2.1.1. | 1..1 |
| type/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| type/displayName | String | Klartextnamn för kod. | 1..1 |
| referredInformation | ReferredInformationType | Referens till en uppgift i patientjournal som denna observation har ett samband till. | 1..1 |
| referredInformation/id | IIType | Identitet på den refererade informationen. | 1..1 |
| referredInformation/id/root | String | Id-root på den refererade information som sambandet pekar ut. | 1..1 |
| referredInformation/id/extension | String | Id-extension på den refererade information som sambandet pekar ut. | 1..1 |
| referredInformation/time | PartialTimeStampType | Starttid för refererad information. Uttrycks med formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Se övrig regel 4, avsnitt 6.1.3.4. | 1..1 |
| referredInformation/categorization | String | Den typ av information som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. Exempelvis kan en observation ha ett samband till en aktivitet och då är  detta fält ”caa-ga”. Se avsnitt om categorization i tjänstekontraktsbeskrivning för respektive tjänst, som passar för det relaterade objektet. | 1..1 |
| referredInformation/informationOwner | InformationOwnerType | Vårdgivare som är informationsägare av den refererade informationen. | 1..1 |
| referredInformation/informationOwner/id | IIType | Identitet för vårdgivare som är informationsägare av den refererade information. | 1..1 |
| referredInformation/informationOwner/id/root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| referredInformation/informationOwner/id/extension | String | Den informationsägande vårdgivarens HSA-id. | 1..1 |

###### PatientInformationType
Motsvarar klassen Patient i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | NI 2017 (Patient.id) / Angivelse av identitetsbeteckning för patientrollen. Denna identitet används då patienten inte kan eller bör identifieras med ett person-id (personnummer eller samordningsnummer). Identitetsbeteckningen på patient är vanligtvis ett reservnummer. En person kan ha flera instanser av klassen patient och dessa kan ha olika id. / Observera att det är obligatoriskt att ange antingen person-id på person eller id på patient. / Nationell reservidentitet är den enda typ av reservnummer som tillåts i denna tjänst. Denna ska anges med 12 tecken utan avskiljare. Se [R9] för mer information om nationell reservidentitet. | 0..1 |
| id/root | String | Sätts till OID för nationell reservidentitet (1.2.752.74.9.1). | 1..1 |
| id/extension | String | Nationell reservidentitet | 1..1 |
| person | PersonType | Uppgifter om den person som har rollen som patient. / Se övrig regel 3, avsnitt 6.1.3.3. / Se PersonType i avsnitt 6.1.2.2.6. | 1..1 |
| address | AddressType | NI 2017 (Patient.adress) / Angivelse av adressinformation för fysisk plats som en person har i sin roll som patient, exempelvis särskild kallelseadress. / Se AddressType i avsnitt 6.1.2.2.14. | 0..* |
| electronicAddress | TelType | NI 2017 (Patient.elektroniskAdress) / Angivelse av elektronisk adressinformation som en person har i sin roll som patient. Här avses även telefonnummer. Exempel är särskilt telefonnummer till telemedicinutrustning. / Se TelType i avsnitt 6.1.2.2.15. | 0..* |

###### ParticipationType
Motsvarar klassen Deltagande i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| type | CVType | Typ av deltagande. Detta beskriver på vilket sätt en deltagare deltagit i observationen. Kan exempelvis vara utförare, vittne eller ansvarig. / Koder för deltagandetyp tillhandahålls av Socialstyrelsen som ett urval ur Snomed CT samt som bilaga till NI 2017 [R5]. / Snomed CT urvals-id är 53351000052100.  Vilka koder som ingår i urvalet söks fram i IHTSDO SNOMED CT Browser [R7]. / Om koder utanför urvalet behöver användas ska detta göras i samråd med Socialstyrelsen. | 1..1 |
| type/code | String | Kod för typ av deltagande. | 1..1 |
| type/codeSystem | String | Kodsystem för typ av deltagande. Snomed CT OID är  1.2.752.116.2.1.1. | 1..1 |
| type/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| type/displayName | String | Klartextnamn för kod. | 1..1 |
| time | TimeType | Om tiden för deltagandet inte överensstämmer med tiden för observationen (observations/observationBody/time) kan detta fält ange när den specifika deltagaren deltog i observationen. / Se TimeType i avsnitt 6.1.2.2.18. | 0..1 |
| En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper |
| healthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdspersonal som deltar i observationen. / Se HealthcareProfessionalType i avsnitt 6.1.2.2.6. | 0..1 |
| patient | PatientInformationType | Patienten i det fall då patienten deltar på andra sätt än som subjekt för observationen. / Se PatientInformationType i avsnitt 6.1.2.2.4. | 0..1 |
| otherPerson | OtherPersonType | Övrig person (ej patienten eller hälso- och sjukvårdspersonal) som deltar i observationen. / Se OtherPersonType i avsnitt 6.1.2.2.7. | 0..1 |
| locationRole | LocationRoleType | Specifik plats eller en platsroll (exempelvis patientens hem eller arbetsplats) som deltar i observationen, exempelvis plats där observationen utförts. / Se LocationRoleType i avsnitt 6.1.2.2.9. | 0..1 |
| resource | ResourceType | Resurs som deltar i observationen, exempelvis medicinskteknisk utrustning eller läkemedel. / Se ResourceType i avsnitt 6.1.2.2.12. | 0..1 |
| organisation | OrganisationType | Organisation som deltar i observationen. / Se OrganisationType i avsnitt 6.1.2.2.13. | 0..1 |

###### HealthcareProfessionalType
Motsvarar klassen Hälso- och sjukvårdspersonal (och Person med kompetens att utföra hälso- och sjukvård) i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Hälso- och sjukvårdspersonalens HSA-id. | 0..1 |
| id/root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id/extension | String | Hälso och sjukvårdspersonalens HSA-id. | 1..1 |
| person | PersonType | Uppgifter om den person som har rollen som hälso- och sjukvårdspersonal. / Se övrig regel 3, avsnitt 6.1.3.3. / Se PersonType i avsnitt 6.1.2.2.8. | 1..1 |
| jobCode | CVType | NI 2017 (Hälso- och sjukvårdspersonal.befattning) / Kod för den befattning en hälso- och sjukvårdspersonal har i ett visst uppdrag i en organisation inom hälso- och sjukvård. En befattning avser ställning i en verksamhet som innebär vissa befogenheter och ett visst ansvar. / Hälso- och sjukvårdspersonal.befattning är obligatoriskt enligt NI men har kardinalitet 0..1 i tjänstekontrakt eftersom det inte är säkert att information om befattning finns tillgänglig i producentsystemet. | 0..1 |
| jobCode/code | String | Kod för befattning. | 1..1 |
| jobCode/codeSystem | String | Kodsystem för befattning. | 1..1 |
| jobCode/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| jobCode/displayName | String | Klartextnamn för kod. | 1..1 |
| license | CVType | NI 2017 (Hälso- och sjukvårdspersonal.legitimation) / Kod för den legitimation inom hälso- och sjukvård som avses. | 0..* |
| license/code | String | Kod för legitimation. | 1..1 |
| license/codeSystem | String | Kodsystem för legitimation. | 1..1 |
| license/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| license/displayName | String | Klartextnamn för kod. | 1..1 |
| specialistQualification | CVType | NI 2017 (Hälso- och sjukvårdspersonal.specialistkompetens) / Angivelse av kod för kompetens inom en medicinsk specialitet som en läkare har. | 0..* |
| specialistQualification/code | String | Kod för specialistkompetens. | 1..1 |
| specialistQualification/codeSystem | String | Kodsystem för specialistkompetens. | 1..1 |
| specialistQualification/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| specialistQualification/displayName | String | Klartextnamn för kod. | 1..1 |
| organisation | OrganisationType | Organization som hälso- och sjukvårdspersonal har uppdrag för. / Se OrganisationType i avsnitt 6.1.2.2.13. | 1..1 |
| address | AddressType | NI 2017 (Hälso- och sjukvårdspersonal.adress) / Angivelse av adressinformation för fysisk plats som en person har i sin roll som hälso- och sjukvårdspersonal i ett visst uppdrag i en organisation inom hälso- och sjukvård. Exempel är personlig besöksadress. / Se AddressType i avsnitt 6.1.2.2.14. | 0..* |
| electronicAddress | TelType | NI 2017 (Hälso- och sjukvårdspersonal.elektroniskAdress) / Angivelse av elektronisk adressinformation som en person har i sin roll som hälso- och sjukvårdspersonal i ett visst uppdrag i en organisation inom hälso- och sjukvård. Här avses även telefonnummer. Exempel är direktnummer eller personlig e-postadress. / Se TelType i avsnitt 6.1.2.2.15. | 0..* |

###### OtherPersonType
Motsvarar klassen Annan person i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| type | CVType | NI 2017 (Annan person.typ) / Kod för den typ av annan person som avses, exempelvis anhörig eller företrädare. | 1..1 |
| type/code | String | Kod för typ av annan person. | 1..1 |
| type/codeSystem | String | Kodsystem för typ av annan person. | 1..1 |
| type/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| type/displayName | String | Klartextnamn för kod. | 1..1 |
| person | PersonType | Uppgifter om den person som har rollen som annan person. / Se övrig regel 3, avsnitt 6.1.3.3. / Se PersonType i avsnitt 6.1.2.2.8. | 1..1 |
| organisation | OrganisationType | Den organisation som personen har uppdrag för. / Se OrganisationType i avsnitt 6.1.2.2.13. | 0..1 |

###### PersonType
Motsvarar klassen Person i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för personen i form av personnummer eller samordningsnummer. Skall anges med 12 tecken utan avskiljare. | 0..1 |
| id/root | String | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets OID för personnummer användas (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets OID för samordningsnummer användas (1.2.752.129.2.1.3.3). | 1..1 |
| id/extension | String | Personnummer/samordningsnummer. | 1..1 |
| givenName | String | NI 2017 (Person.förnamn) / Angivelse av förnamn, som är en persons givna namn och inkluderar tilltalsnamn. | 0..* |
| middleSurname | String | NI 2017 (Person.mellannamn) / Angivelse av mellannamn, som är ett namn som kan bäras för att visa gemenskap med en förälder eller en make som bär detta namn som efternamn. Man kan också bära ett eget tidigare efternamn som mellannamn om man bytt till makes eller registrerade partners efternamn. | 0..1 |
| surname | String | NI 2017 (Person.efternamn) / Angivelse av efternamn, som är en persons familjenamn eller släktnamn. | 0..1 |
| givenNameMarker | Int | NI 2017 (Person.tilltalsnamnsmarkering) / Angivelse av tilltalsnamnsmarkering, som används för att markera vilket av de angivna förnamnen som är personens tilltalsnamn. Giltiga värden är 10-99 där den första siffran anger vilket av de angivna förnamnen som är tilltalsnamnet (1 motsvarar första namnet osv.) och den andra siffran anger det eventuella andra tilltalsnamnet om dubbelnamn är aktuellt. Om inte är den andra siffran 0. | 0..1 |
| gender | CVType | NI 2017 (Person.kön) / Angivelse av vilket kön personen har enligt folkbokföringen. | 0..1 |
| gender/code | String | Kod för könstyp. / 0 okänt / 1 man / 2 kvinna / 9 ej tillämpligt | 1..1 |
| gender/codeSystem | String | Kodsystem för angiven kod för kön. / KV kön OID: 1.2.752.129.2.2.1.1 | 1..1 |
| gender/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| gender/displayName | String | Textuell beskrivning av det som koden anger. | 1..1 |
| dateOfBirth | DateType | NI 2017 (Person.födelsedatum) / Angivelse av vilket datum personen är född. / Ett datum på formatet ÅÅÅÅMMDD. Observera att det är födelsedatumet och inte personnumret. | 0..1 |
| confidentialityIndicator | Boolean | NI 2017 (Person.sekretessmarkering) / Angivelse av sekretessmarkering enligt Skatteverket. / Defaultvärde är ”false”. Defaultvärdet ska automatiskt användas om inget annat värde anges. | 1..1 |
| maritalStatus | CVType | NI 2017 (Person.civilstånd) / Angivelse av personens civilstånd. | 0..1 |
| maritalStatus/code | String | Kod för civilstånd. | 1..1 |
| maritalStatus/codeSystem | String | Kodsystem för civilstånd. | 1..1 |
| maritalStatus/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| maritalStatus/displayName | String | Klartextnamn för kod. | 1..1 |
| address | AddressType | NI 2017 (Person.adress) / Angivelse av adressinformation för fysisk plats för en person, exempelvis bostadsadress eller tillfällig adress. / Se AddressType i avsnitt 6.1.2.2.14. | 0..* |
| electronicAddress | TelType | NI 2017 (Person.elektroniskAdress) / Angivelse av elektronisk adressinformation som en person har. Här avses även telefonnummer. Exempel är telefonnummer eller e-postadress. / Se TelType i avsnitt 6.1.2.2.15. | 0..* |

###### LocationRoleType
Finns ingen motsvarighet i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| type | CVType | Typ av roll som en plats har. T.ex. patientens hem, semesterboende, arbetsplats. | 0..1 |
| location | LocationType | Fysisk eller virtuell plats som är samma oavsett vilken verksamhet som bedrivs på platsen. | 0..1 |
| location/id | IIType | Universellt unik identitetsbeteckning på plats eller område. Kan vara exempelvis HSA-id för en vårdavdelning som finns på en viss plats, id för en viss kommun eller ett visst län eller identitet för ett visst rum på en viss avdelning på ett visst sjukhus. | 0..1 |
| location/id/root | String | Typ av identititetsbeteckning. | 1..1 |
| location/id/extension | String | Identitetsbeteckning på plats eller område. | 1..1 |
| location/type | CVType | Typ a plats, exempelvis byggnad, korridor, rum eller väg. | 0..1 |
| location/type/code | String | Kod för typ av plats. | 1..1 |
| location/type/codeSystem | String | Kodsystem för typ av plats. | 1..1 |
| location/type/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| location/type/displayName | String | Klartextnamn för kod. | 1..1 |
| location/name | String | Namn på plats eller område. | 0..1 |
| location/locationAddress | AddressType | Platsens belägenhetsadress, det vill säga en adress till en fysisk plats som kan besökas. / Se AddressType i avsnitt 6.1.2.2.14. | 0..1 |
| location/electronicAddress | TelType | Angivelse av elektronisk adress till en plats, exempelvis telefonnummer till en fast telefon i en viss operationssal eller URL till en webbsida som bedriver vård eller behandling på Internet. / Se TelType i avsnitt 6.1.2.2.15. | 0..* |
| location/position | PositionType | En plats geografiska position angiven med koordinater i decimalformat i referenssystemet SWEREF99 i första hand, i andra hand WGS84. I praktiken är skillnaden mellan dessa referenssystem 7-8 dm idag (2017) där WGS84 har en lägre noggrannhet. | 0..1 |
| location/position/longitude | decimal | Längdgrad. / Exempel / longitude = 13.45678 | 1..1 |
| location/position/latitude | decimal | Breddgrad. / Exempel / latitude = 60.12345 | 1..1 |
| location/position/altitude | decimal | Höjd. | 0..1 |

###### ResourceType
Motsvarar klassen Resurs och Resursegenskap i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | NI 2017 (Resurs.id) / Angivelse av identitetsbeteckning på en viss verklig instans av resurs, exempelvis MR-maskinen på avdelning R23, rum 3. | 0..1 |
| id/root | String | Typ av identitetsbeteckning. Alternativt UUID för instans av resurs (fältet extension lämnas då tomt). | 1..1 |
| id/extension | String | Identitetsbeteckning för instans av resurs. | 0..1 |
| type | CVType | NI 2017 (Resurs.typ) / Kod för typ av resurs, exempelvis skalpell eller typ av läkemedel (som till exempel kan anges med NPL-id). | 0..1 |
| type/code | String | Kod för typ av resurs. | 1..1 |
| type/codeSystem | String | Kodsystem för typ av resurs. | 1..1 |
| type/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| type/displayName | String | Textuell beskrivning av det som koden anger. | 1..1 |
| groupId | IIType | NI 2017 (Resurs.gruppidentitet) / Angivelse av identitetsbeteckning för en grupp av resurser, exempelvis ett batchnummer eller partinummer. | 0..* |
| groupId/root | String | Typ av identitetsbeteckning. Alternativt UUID för grupp av resurser (fältet extension lämnas då tomt). | 1..1 |
| groupId/extension | String | Identitetsbeteckning för grupp av resurser. | 0..1 |
| amount | AmountType | NI 2017 (Resurs.mängd) / Angivelse av den kvantitativa omfattning som en resurs har, uttryckt exempelvis som volym, massa eller antal. Exempel kan vara att den använda resursen blodtrycksmanschett är en till antalet. / Se AmountType i avsnitt 6.1.2.2.17. | 0..1 |
| resourceProperty | ResourcePropertyType | NI 2017 (Resursegenskap) / Angivelse av egenskaper som en resurs kan ha, som inte kan utläsas från resursattributet typ [type]. Exempel är egenskapen att blodet i en blodpåse har blodgruppen "AB+". / Kan användas för att exempelvis ange modellbeteckning för en medicinteknisk utrustning. | 0..* |
| resourceProperty/type | CVType | NI 2017 (Resursegenskap.typ) / Kod för den typ av resursegenskap som avses i de fall detta inte framgår av attributet värde [resourceProperty/value]. Exempel är blodgrupp för resursen blodpåse á 500 ml. |  |
| resourceProperty/type/code | String | Kod för typ av resursegenskap. | 1..1 |
| resourceProperty/type/codeSystem | String | Kodsystem för typ av resursegenskap. | 1..1 |
| resourceProperty/type/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| resourceProperty/type/displayName | String | Klartextnamn för kod. | 1..1 |
| resourceProperty/value | ValueANYType | NI 2017 (Resursegenskap.värde) / Angivelse av värdet för den typ av egenskap som anges i  attributet typ [resourceProperty/type]. Exempelvis: "AB+" för resursegenskapen "blodgrupp". / Se ValueANYType i avsnitt 6.1.2.2.16. | 1..1 |

###### OrganisationType
Motsvarar klassen Organisation i NI 2017.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för organisation. Vanligtvis HSA-id. | 0..1 |
| id/root | String | Om HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id/extension | String | Id för organisation. | 1..1 |
| type | CVType | N1 2017 (Organisation.typ) / Kod för vilken typ av organisation som avses, exempelvis vårdgivare eller vårdenhet. / Ger också möjlighet att ange exempelvis socialtjänst eller annan myndighet. | 0..1 |
| type/code | String | Kod för typ av organisation. | 1..1 |
| type/codeSystem | String | Kodsystem för typ av organisation. | 1..1 |
| type/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| type/displayName | String | Klartextnamn för kod. | 1..1 |
| name | String | Organisationens namn | 0..1 |
| address | AddressType | NI 2017 (Organisation.adress) / Angivelse av adressinformation för fysisk plats till organisation, exempelvis besöksadress eller fakturaadress. / Se AddressType i avsnitt 6.1.2.2.14. | 0..* |
| electronicAddress | TelType | NI 2017 (Organisation.elektroniskAdress) / Angivelse av elektronisk adressinformation till organisation. Här avses även telefonnummer. Exempel är telefonnummer till växel, e-postadress eller webbadress. / Se TelType i avsnitt 6.1.2.2.15. | 0..* |

###### AddressType
Baseras på datatypen AD enligt ISO 21090.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| use | PostalAddressUseEnum | Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. / Möjliga värden: / PHYS = Fysisk besöksadress / H = Hemadress / HV = Semesteradress / WP = Adress till arbetsplats / TMP = Tillfällig adress / När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen. | 0..1 |
| part | AddressPartType | Del av adress, exempelvis gatuadress eller postnummer. | 1..* |
| part/value | String | Adressdelens värde, exempelvis ”Ringvägen 100” om part/type är SAL. | 1..1 |
| part/type | AddressPartTypeEnum | Typ av adressdel. / Möjliga värden:AR = C/O (care of) adress / SAL = Gatuadressrad (används frekvent då man inte vill bryta ned adressen i gatutyper, byggnadsnr etc.) / CAR = Care of (c/o) / CEN =  Områdes-/kvartersbenämning (område eller kvarter som berörd adress ligger i, t.ex. SoFo) / CNT = Land / CPA = Län (anges med länskod enligt SCB) / CTY = Postort / ZIP = Postnummer / POB = Postbox postnummerZIP = Postnummer / PRE = Distrikt (anges med distriktskod enligt Lantmäteriet) | 0..1 |

###### TelType
Baseras på datatypen TEL enligt ISO 21090.

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| value | AnyURI | Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. / Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: / value=”tel:+46702353535” / value=”mailto:lars@gmail.com” / value=”http://www.1177.se” | 1..1 |
| capabilities | TelecommunicationCapabilityEnum | Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. / Möjliga värden: / voice = Numret kan ta emot röstsamtal / fax = Numret kan ta emot fax / sms = Numret kan ta emot SMS | 0..* |
| use | TelecommunicationAddressUseEnum | Om flera elektroniska adresser anges skiljs de åt via sin användningskod. / Möjliga värden: / H = Används i hemmet/privat / HV = Används under semester / WP = Används på arbetet/i tjänsten / TMP = Används tillfälligt | 0..* |

###### ValueANYType

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper |
| Kodade värden | Kodade värden | Kodade värden | Kodade värden |
| cv | CVType | Kodat värde. I fallet med observationer kan det exempelvis vara en diagnoskod enligt ICD-10 eller ett kliniskt fynd enligt Snomed CT. | 0..1 |
| cv/code | String | Kod. | 1..1 |
| cv/codeSystem | String | Kodsystem för angiven kod. | 1..1 |
| cv/codeSystemVersion | String | Versionsnummer för använt kodsystem, om tillämpligt. | 0..1 |
| cv/displayName | String | Textuell beskrivning av det som koden anger. | 1..1 |
| Mätvärden | Mätvärden | Mätvärden | Mätvärden |
| pq | PQType | Värde som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187 cm, 8 tabletter eller 37,8 °C. | 0..1 |
| pq/value | Decimal | Den numeriska delen av värdet. | 1..1 |
| pq/unit | String | Måttenheten. Giltiga värden på unit hämtas i första hand från [R4]. Enheten skall hämtas från kolumnen c/s i html-specifikationen vilket motsvaras av kolumnen ”Code” i xml-beskrivningen av måttenheter. Interaktionsöverenskommelser kan specificera att ett visst mätvärde skall kommuniceras med ett visst prefix enligt §27 prefixes. Ett exempel på detta är att SI-enheten för längd är meter men för kroppslängd har vi valt att använda cm som måttenhet. Konsumenter som inte behöver konvertera från denna enhet behöver inte ha mer än limited conformance, det vill säga de kan göra textmatchningar mot den angivna enheten för att se att den överensstämmer med den enhet de förväntar sig. / Detta fält utelämnas för numeriska värden som är resultatet av att någonting fysiskt räknats (exempelvis 8 tabletter). | 0..1 |
| Intervall av mätvärden | Intervall av mätvärden | Intervall av mätvärden | Intervall av mätvärden |
| ivl_pq | PQIntervalType | Intervall av värden som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187-190 cm, 8-10 tabletter eller 37,1-37,8 °C. | 0..1 |
| ivl_pq/low | Decimal | Den numeriska delen av det lägre värdet i intervallet. / Minst en av low och high måste anges. Om endast low anges och inte high, ska det tolkas som ”större eller lika med”, exempelvis ≥100 ml. | 0..1 |
| ivl_pq/high | Decimal | Den numeriska delen av det högre värdet i intervallet. / Minst en av low och high måste anges. Om endast high anges och inte low, ska det tolkas som ”mindre eller lika med”, exempelvis ≤70 kg. | 0..1 |
| ivl_pq/unit | String | Måttenheten. Giltiga värden på unit hämtas i första hand från [R4]. Enheten skall hämtas från kolumnen c/s i html-specifikationen vilket motsvaras av kolumnen ”Code” i xml-beskrivningen av måttenheter. Interaktionsöverenskommelser kan specificera att ett visst mätvärde skall kommuniceras med ett visst prefix enligt §27 prefixes. Ett exempel på detta är att SI-enheten för längd är meter men för kroppslängd har vi valt att använda cm som måttenhet. Konsumenter som inte behöver konvertera från denna enhet behöver inte ha mer än limited conformance, det vill säga de kan göra textmatchningar mot den angivna enheten för att se att den överensstämmer med den enhet de förväntar sig. / Detta fält utelämnas för numeriska värden som är resultatet av att någonting fysiskt räknats (exempelvis 8-10 tabletter). | 0..1 |
| Tidpunkt | Tidpunkt | Tidpunkt | Tidpunkt |
| ts | PartialTimeStampType | Tidpunkt där precisionen kan varieras utifrån behov. / Notera att det föredragna sättet att ange tiden för en observation vanligtvis är att i attributet värde (observations/observationBody/value) ange vad som observerats och i attributet tid (observations/observationBody/time) ange när. | 0..1 |
| ts/format | TimeStampTypeFormatEnum | Precision på tidpunkt. Möjliga värden: / YYYY / YYYYMM / YYYYMMDD / YYYYMMDDhh / YYYYMMDDhhmm / YYYYMMDDhhmmss | 1..1 |
| ts/value | String | Tidpunkt på formatet för vald precision. | 1..1 |
| Tidsintervall | Tidsintervall | Tidsintervall | Tidsintervall |
| ivl_ts | PartialTimePeriodType | Tidsintervall där precisionen kan varieras utifrån behov. / Tidpunkt där precisionen kan varieras utifrån behov. / Notera att det föredragna sättet att ange tiden för en observation vanligtvis är att i attributet värde (observations/observationBody/value) ange vad som observerats och i attributet tid (observations/observationBody/time) ange när. | 0..1 |
| ivl_ts/start | PartialTimeStampType | Den tidigare tidpunkten, på samma format som enskilda tidpunkter (se ovan). / Om endast start anges men inte end, ska det tolkas som att observationen eller deltagandet är pågående. / Minst en av start och end måste anges. | 0..1 |
| ivl_ts/end | PartialTimeStampType | Den senare tidpunkten, på samma format som enskilda tidpunkter (se ovan). / Minst en av start och end måste anges. | 0..1 |
| Text | Text | Text | Text |
| st | String | Textuell beskrivning. | 0..1 |
| Heltal | Heltal | Heltal | Heltal |
| int | Int | Heltal. Ska användas då något klassificerats numeriskt på en skattningsskala, exempelvis 1 poäng på Apgarskalan för  Grimaser, reflex, retbarhet. Denna typ ska inte användas för numeriska värden som är ett resultat av att någonting fysiskt uppmätts eller räknats (exempelvis antal tabletter). Fysiskt uppmätta eller räknade värden ska istället dokumenteras med typen pq. | 0..1 |

###### AmountType

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper |
| Mätvärden | Mätvärden | Mätvärden | Mätvärden |
| pq | PQType | Värdet som är resultatet av att en mängd uppmätts, exempelvis 100 mg eller 8 tabletter. | 0..1 |
| pq/value | Decimal | Den numeriska delen av värdet. | 1..1 |
| pq/unit | String | Enheten. Giltiga värden på unit hämtas i första hand från [R4]. Enheten skall hämtas från kolumnen c/s i html-specifikationen vilket motsvaras av kolumnen ”Code” i xml-beskrivningen av måttenheter.  Interaktionsöverenskommelser kan specificera att ett visst mätvärde skall kommuniceras med ett visst prefix enligt §27 prefixes. Ett exempel på detta är att SI-enheten för längd är meter men för kroppslängd har vi valt att använda cm som måttenhet. Konsumenter som inte behöver konvertera från denna enhet behöver inte ha mer än limited conformance, det vill säga de kan göra textmatchningar mot den angivna enheten för att se att den överensstämmer med den enhet de förväntar sig. / Detta fält utelämnas för numeriska värden som är resultatet av att någonting fysiskt räknats (exempelvis 8 tabletter). | 0..1 |
| Intervall av mätvärden | Intervall av mätvärden | Intervall av mätvärden | Intervall av mätvärden |
| ivl_pq | IVLPQType | Intervall av mängder. | 0..1 |
| ivl_pq/low | PQType | Den mindre mängden, på samma format som enskilda mängder (se ovan). / Minst en av low och high måste anges. Om endast low anges och inte high, ska det tolkas som ”större eller lika med”, exempelvis ≥50 mg. | 0..1 |
| ivl_pq/high | PQType | Den större mängden, på samma format som enskilda mängder (se ovan). / Minst en av low och high måste anges. Om endast high anges och inte low, ska det tolkas som ”mindre eller lika med”, exempelvis ≤2 liter. | 0..1 |

###### TimeType

| Namn | Typ | Beskrivning | Kard-inalitet |
| :--- | :--- | :--- | :--- |
| En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper | En och endast en av nedanstående huvudtyper |
| Tidpunkt | Tidpunkt | Tidpunkt | Tidpunkt |
| ts | PartialTimeStampType | Tidpunkt där precisionen kan varieras utifrån behov. | 0..1 |
| ts/format | TimeStampTypeFormatEnum | Precision på tidpunkt. Möjliga värden: / YYYY / YYYYMM / YYYYMMDD / YYYYMMDDhh / YYYYMMDDhhmm / YYYYMMDDhhmmss | 1..1 |
| ts/value | String | Tidpunkt på formatet för vald precision. | 1..1 |
| Tidsintervall | Tidsintervall | Tidsintervall | Tidsintervall |
| ivl_ts | PartialTimePeriodType | Tidsintervall där precisionen kan varieras utifrån behov. | 0..1 |
| ivl_ts/start | PartialTimeStampType | Den tidigare tidpunkten, på samma format som enskilda tidpunkter (se ovan). / Om endast start anges men inte end, ska det tolkas som att observationen eller deltagandet är pågående. / Minst en av start och end måste anges. | 0..1 |
| ivl_ts/end | PartialTimeStampType | Den senare tidpunkten, på samma format som enskilda tidpunkter (se ovan). / Minst en av start och end måste anges. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Övrig regel 1 – Sökparametrar i begäran
Den enda sökparametern som alltid behöver anges är personPatientId. Det finns även möjlighet att kombinera personPatientId med en eller flera andra parametrar, se nedan. Det är obligatoriskt att ange minst en ytterligare sökparameter förutom personPatientId. En begäran med personPatientId men utan någon av de andra sökparametrarna ska nekas av producent, dvs inte vara genomförbart och ska i så fall resultera i en SOAP exception. Anledningen är att mängden information annars kan bli allt för stor för att kunna returneras till konsumenten.
time: För att begränsa till observationer som gjorts under ett visst tidsintervall
observationType: För att begränsa till en viss typ av observation
observationId: För att begränsa till en specifik observation
observationCodedValue: För att begränsa till ett visst (kodat) värde som är utfallet av en observation
observationStatus: För att begränsa till en viss status för observationen
careGiverId: För att begränsa till observationer hos en specifik vårdgivare
careUnitId: För att begränsa till observationer hos en specifik vårdenhet
relation: För att begränsa till observationer med visst samband till annan uppgift i patientjournal
sourceSystemHSAId: För att begränsa till att observationer lagrade i ett specifikt system
careProcessId: För att begränsa till observationer som dokumenteras inom en specifik individanpassad vårdprocess

##### Övrig regel 2 – Jämförelse av tidsangivelser med olika precision
Tidsdatatypen tillåter varierande precision från sekundprecision till att endast ange ett årtal. När två tidpunkter jämförs antas den minst noggrant specificerade tiden motsvara ett tidsintervall. Följande typfall finns:
Exklusion av ändpunkt med lägre precision A < B
Tidpunkt A är 2015
Tidpunkt B är 20150301
Vid en jämförelse tolkas tidpunkten A som tidsintervallet 20150101 00:00:00 till 20151231 23:59:59. Tidpunkten B ligger i detta fall inte senare i tiden än detta intervall utan är en del av intervallet. Jämförelsen A < B är alltså falsk.
Inklusion av ändpunkt med lägre precision A ≤ B
Tidpunkt A är 2015
Tidpunkt B är 20150301
Vid en jämförelse tolkas tidpunkten A som tidsintervallet 20150101 00:00:00 till 20151231 23:59:59. Tidpunkten B ligger i detta fall inom intervallet A. Eftersom ändpunkten skall inkluderas är i alltså jämförelsen A ≤ B är sann.
Exklusion av ändpunkt med högre precision B < A
Tidpunkt A är 2015
Tidpunkt B är 20150301
Vid en jämförelse tolkas tidpunkten A som tidsintervallet 20150101 00:00:00 till 20151231 23:59:59. Eftersom intervallet sträcker ut sig innan tidpunkten B är jämförelsen B < A falsk.
Inklusion av ändpunkt med högre precision B ≤ A
Tidpunkt A är 2015
Tidpunkt B är 20150301
Vid en jämförelse tolkas tidpunkten A som tidsintervallet 20150101 00:00:00 till 20151231 23:59:59. Eftersom intervallet sträcker ut sig innan tidpunkten B är jämförelsen B ≤ A falsk.

##### Övrig regel 3 – Uppgifter om en person
PatientInformationType, HealthcareProfessionalType och OtherPersonType innehåller alla fältet person som är av typen PersonType. PersonType innehåller uppgifter om en person, oavsett vilken roll personen har.
Om det är möjligt att med hjälp av en personidentitet slå upp personuppgifterna i Personuppgiftstjänsten eller HSA-katalogen är huvudregeln är att inga andra personuppgifter skickas med i PersonType förutom information om sekretessmarkering som är obligatorisk. Personuppgifter ska istället hämtas från Personuppgiftstjänsten eller HSA-katalogen vid behov. En producent kan välja att inte följa huvudregeln i de fall då det finns behov av att presentera personuppgifter som skiljer sig från folkbokföringen (exempelvis en avvikande adressuppgift).
Följande regler gäller för PersonType, baserat på vilken roll personen har.
Patient

| Typ av personidentitiet | Huvudregel |
| :--- | :--- |
| Person- eller samordningsnummer (id i PersonType) | Endast personidentitet och uppgift om sekretessmarkering. |
| Nationell reservidentitet (id i PatientInformationType) | Endast personidentitet och uppgift om sekretessmarkering. |
Hälso- och sjukvårdspersonal

| Typ av personidentitiet | Huvudregel |
| :--- | :--- |
| HSA-id (id i HealthcareProfessionalType) | Endast personidentitet och uppgift om sekretessmarkering. Om personuppgifter som inte omfattas av HSA-katalogen behövs och finns tillgängliga i källsystemet kan producenten ange dessa. |
| Person- eller samordningsnummer (id i PersonType) | Endast personidentitet och uppgift om sekretessmarkering. |
| Ingen | Producenten anger de uppgifter i PersonType som finns tillgängliga i källsystemet. |
Annan person

| Typ av personidentitiet | Huvudregel |
| :--- | :--- |
| Person- eller samordningsnummer (id i PersonType) | Endast personidentitet och uppgift om sekretessmarkering. |
| Ingen | Producenten anger de uppgifter i PersonType som finns tillgängliga i källsystemet. |

##### Övrig regel 4 – Tidpunkt på refererad information
Fältet observationBody/relation/referredInformation/time i svaret ska innehålla en tidpunkt för den information som observationen har ett samband till. Om det finns behov av att hämta den refererade informationen, och det inte är möjligt att söka ut denna med hjälp av ett id, kan istället tidpunkten för den refererade informationen användas. Om exempelvis det som refereras är information om en läkemedelsbehandling så anges tidpunkten i begäran till tjänstekontraktet GetMedicationHistory för att begränsa svarsmängden.
I det fall då en konsument har behov av att söka upp flera refererade informationsmängder från samma tjänst kan konsumenten skapa ett sökintervall som omfattar tidpunkterna för samtliga refererade informationsmängder. Detta sökintervall används sedan som inparameter till den tjänst som sambanden pekar ut. På detta sätt kan en konsument göra endast ett anrop som returnerar samtlig refererad information istället för att göra anrop ett och ett med respektive tidpunkt eller ta ut en patients totala informationsmängd utan att filtrera på tid.

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav

#### Annan information om kontraktet
Ingen övrig information om kontraktet
