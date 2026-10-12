# 7 Tjänstekontrakt - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## Tjänstekontrakt

> **Om numreringen:** I TKB-dokumentet (version 1.2.1) är tjänstekontrakten kapitel 6, eftersom dokumentet saknar ett eget kapitel för gemensamma informationskomponenter. I denna IG ligger de i kapitel 7 enligt projektets sidstruktur. Hänvisningar i texten till avsnitt 6.1.x avser alltså underavsnitten till GetObservations nedan.

### GetObservations

Detta tjänstekontrakt returnerar strukturerade observationer för en patient. Den praktiska tillämpningen av detta kontrakt beskrivs i särskilda tilläggsbeskrivningar i form av interaktionsöverenskommelser. En typ av observation kan exempelvis vara ett kliniskt fynd eller en huvuddiagnos. Värdeattributet innehåller den faktiska observationen, t.ex. ”ankylos på tand” kodat med en Snomed CT-kod. Om observationen består av något som är uppmätt så beskrivs vad som uppmätts i attributet Observation.type/typ (exempelvis diastoliskt blodtryck) och resultatet av mätningen i Observation.value/värde (exempelvis 90 mmHg). Meddelandemodell från stycke 5.1 V-MIM - Observationer motsvarar svarsmeddelandet för detta tjänstekontrakt. Kopplingen mellan V-MIM enligt NI 2015:1 och de tekniska engelska namnen visas i tabellen i samma avsnitt.

#### Version

1.1

#### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

##### Begäran

| | | | |
| :--- | :--- | :--- | :--- |
| patientId | IIType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / Regel 1.1 | 1 |
| patientId.root | String | Sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. | 1 |
| patientId.extension | String | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1 |
| time | TimePeriodType | Begränsar sökningen till det angivna intervallet. Om tidsattributet Observation.Time i svaret är en tidpunkt innebär begränsningen att endast poster returneras där Observation.Time i svaret ligger inom sökintervallets start- och sluttidpunkt. / Om tidsattributet Observation.Time i svaret är ett intervall innebär begränsningen att endast poster returneras där tidsintervallet som anges i attributet Observation.Time i svaret, överlappar med det angivna sökintervallet, dvs. / det bildade intervallets starttidpunkt ligger inom sökintervallets start- och sluttidpunkt / det bildade intervallets sluttidpunkt ligger inom sökintervallets start- och sluttidpunkt / det bildade intervallets starttidpunkt ligger före sökintervallets starttidpunkt och sluttidpunkt ligger efter sökintervallets sluttidpunkt | 0..1 |
| time.start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| time.end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| observationType | CVType | Begränsning av sökning avseende observationen till en viss typ av värde som man vill titta närmare på, t.ex. kliniskt fynd eller diagnoser. | 0..* |
| observationType.code | String | Kod för observationstyp | 1 |
| observationType.codeSystem | String | Kodsystem för angiven kod för observationstyp. | 1 |
| observationType.codeSystemName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationType.codeSystemVersion | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationType.displayName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| observationId | IIType | Ett unikt värde för själva observationen som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar observation/id i svaret. | 0..* |
| observationId.root | String | Källsystemets HSA-id. | 1 |
| observationId.extension | String | Det i källsystemet unika identiteten för observationen | 1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. Motsvarar observationGroup/sourceSystem i svaret. | 0..1 |
| careGiverId | IIType | Används när man vill söka hos en specifik vårdgivare. | 0..1 |
| careGiverId.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| careGiverId.extension | String | Extension sätts till HSA-id för den vårdgivaren från vilken observationer skall returneras från. | 1 |
| careUnitId | IIType | Begränsning av sökning mha HSAid för (PDL) vårdenhet som har ansvar för dokumentationen av obdervationen/observationerna. | 0..1 |
| careUnitId.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| careUnitId.extension | String | Extension sätts till HSA-id för PDL-vårdenheten. | 1 |
| interactionAgreementId | UUIDType | Detta attribut används inte. Ange UUID / 2866a7c4-9c60-433f-9035-a4d779ffe7a1 | 1..1 |
| relation | RelationFilterType | Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte observationer på deras relationer. | 0..* |
| relation.typeCode | CVType | Filtrera på sambandstyp | 0..1 |
| relation.typeCode.code | String | Kod för sambandstyp | 0..1 |
| relation.typeCode.codeSystem | String | Kodsystem för sambandstyp | 0..1 |
| relation.typeCode.codeSystemName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation.typeCode.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| relation.typeCode.displayname | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation.id | IIType | Filtrera poster på den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla observationer som har en relation till en viss aktivitet. | 0..1 |
| relation.id.root | String | Id-root från den Uppgift i patientjournal som sambandet pekar ut. Detta är den vårdgivares HSA-id som är ansvarig för informationen. | 0..1 |
| relation.id.extension | String | Id-extension från den uppgift i patientjournal som sambandet pekar ut. Detta ska vara ett id som är unikt inom vårdgivaren oavsett vilket källsystem informationen lagras inom. | 0..1 |
| relation. referredInformationType | String | Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. I denna version av tjänstekontraktet är följande typer möjliga: / chb-o (observation) / caa-a (aktivitet) | 1..1 |

##### Svar: observationGroup

| | | | |
| :--- | :--- | :--- | :--- |
| observationGroup | ObservationGroupType | Grupp av observationer som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera observationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck). Denna klass är en teknisk optimering som inte speglas i NI 2015:1. | 0..* |
| patient | PatientType | Den patient som observationsgruppen avser. | 1..1 |
| performerRole | PerformerRoleType | Den som utfört observationerna inom gruppen. | 1..1 |
| legalAuthenticator | LegalAuthenticatorType | Den som signerat observationerna inom gruppen. | 0..1 |
| additionalParticipant | AdditionalParticipantType | Övriga deltagare relaterat till observationerna inom gruppen. | 0..* |
| sourceSystem | SourceSystemType | Källsystem som observationsgruppen lagras i. | 1..1 |
| observation | ObservationType | De observationer som ligger inom denna grupp av observationer. | 1..* |

##### Svarsdel: observationGroup/patient

Klassen PatientType är en kompakt och specifik representation av den patient som observationen gäller.

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för patienten. Skall anges med 12 tecken utan avskiljare. | 1 |
| id.root | String | Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) användas. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | Personnummer/samordningsnummer/reservnummer. | 1 |
| name | String | Personens namn | 0..1 |
| dateOfBirth | DateTime | Anger patientens födelseår, månad och dag. Ej personnummer! / Datum. Format ÅÅÅÅMMDD | 1 |
| gender | CVType | Anger patientens kön. | 0..1 |
| gender.code | String | Kod för könstyp. / 0 okänt / 1 man / 2 kvinna / 9 ej tillämpligt | 1 |
| gender.codeSystem | String | Kodsystem för angiven kod för könstyp. / KV kön (OID: 1.2.752.129.2.2.1.1) [R9] | 1 |
| gender.codeSystemName | String | Namn för kodsystem. | 0..1 |
| gender.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| gender.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
|   |   |   |   |

##### Svarsdel: observationGroup/performerRole

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Identitet för personen som utfört observationen. / Detta fält anges enbart om observationen utförts av hälso- och sjukvårdspersonal. Anges med HSA-id. / Regel 2.1 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). | 1 |
| id.extension | String | HSA-id för den hälso- och sjukvårdspersonal som utfört observationen. | 1 |
| code | CVType | Beskriver den roll som utföraren agerar i under observationen. | 1 |
| code.code | String | Kod för utförarroll. | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för utförartyp. | 1 |
| code.codeSystemName | String | Namn på kodsystem. | 0..1 |
| code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| code.displayName | String | Klartext för det som koden anger. | 0..1 |
| person | PersonType | Beskriver den person som utfört observationen. Klassen används i två fall: / Då det finns behov av att beskriva egenskaper hos person som utfört observation som inte beskrivs i performerRole (t.ex. namn på hälso- och sjukvårdspersonal) / Då observationen utförts av en person som inte klassas som hälso- och sjukvårdspersonal. / Regel 2.1 | 0..1 |
| careUnit | CareUnitType | Den PDL-vårdenhet och PDL-vårdgivare som observationen utförs på uppdrag av (där utföraren har sitt medarbetaruppdrag). / Ska endast anges då den person som utfört observationen är hälso- och sjukvårdpersonal. / Regel 2.1 / Regel 2.5 | 0..1 |

##### Svarsdel: observationGroup/legalAuthenticator

Klassen LegalAuthenticator är en kompakt och specifik version av AdditionalPartipication. LegalAuthenticator är indirekt en ”Professionell aktör” med deltagandetyp signerare enligt V-MIM i de fall då informationen signerats.

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | HSA-id för personen som signerat observationerna som ingår i observationsgruppen. / Regel 2.3 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) | 1 |
| id.extension | String | HSA-id | 1 |
| time | PartialTimeStampType | Tid för signeringen av observationerna i observationsgruppen. Uttrycks med formatet ÅÅÅÅMMDDttmmss där klockslaget är frivilligt. | 1 |
| name | String | För- och efternamn i klartext för signerande person. / Regel 2.3 | 0..1 |
|   |   |   |   |

##### Svarsdel: observationGroup/additionalParticipant

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för ytterligare deltagare. / Detta fält anges enbart om deltagaren klassas som hälso- och sjukvårdspersonal. Anges med HSA-id. / Regel 2.2 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). | 1..1 |
| id.extension | String | HSA-id för den hälso- och sjukvårdspersonal som är ytterligare deltagare. | 1..1 |
| type | CVType | Typ av deltagande. Detta beskriver på vilket sätt en deltagare deltagit i observationen. Kan exempelvis vara sekundär utförare/assistent. Istället för person kan ”deltagandet” handla om utrustning (device) eller organisation eller plats. | 1..1 |
| type.code | String | Kod för typ av deltagande. | 1..1 |
| type.codeSystem | String | Kodsystem för typ av deltagande. | 1..1 |
| type.codeSystemName | String | Skall ej anges | 0..0 |
| type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| type.displayName | String | Skall ej anges | 0..0 |
| role | CVType | Beskriver i vilken roll deltagaren agerar (exempelvis rollen som anhörig eller i sin yrkesroll som vårdpersonal). | 1..1 |
| role.code | String | Kod för deltagares roll | 1..1 |
| role.codeSystem | String | Kodsystem för deltagares roll | 1..1 |
| role.codeSystemName | String | Skall ej anges | 0..0 |
| role.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| role.displayName | String | Skall ej anges | 0..0 |
| time | TimePeriodType | Ifall deltagandetiden för denna deltagare inte överensstämmer med observationens tidsperiod kan time-attributet ange när den specifika deltagaren deltog i observationen. | 0..1 |
| **Endast en av nedanstående** |   |   |   |
| person | PersonType | Deltagande övriga personer. | 0..1 |
| organisation | OrganisationType | Deltagande övrig organisation. | 0..1 |
| device | DeviceType | Deltagande utrustning. | 0..1 |
| location | LocationType | Deltagande plats. | 0..1 |
|   |   |   |   |

##### Svarsdel: observationGroup/sourceSystem

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | HSA-id för källsystemet som observationsgruppen hämtats ifrån. | 1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id för systemet | 1 |

##### Svarsdel: observationGroup/additionalParticipant/device

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Angivelse av identitetsbeteckning på en viss verklig instans av utrustning, exempelvis MR-maskinen på avdelning R23, rum 3. | 0..1 |
| id.root | String | Typ av identitetsbeteckning. | 1 |
| id.extension | String | Specifikt id för utrustning. | 1 |
| type | CVType | Beskriver typ av deltagande utrustning. | 0..1 |
| type .code | String | Kod för typ av deltagande utrustning. | 1 |
| type.codeSystem | String | OID för kodsystem. | 1 |
| type.codeSystemName | String | Namn på kodsystem. | 0..1 |
| type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| type.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| model | SCType | Modell för angiven utrustning. | 0..1 |
| model.code | CVType | Modellbeteckning | 0..1 |
| model.code.code | String | Kod för modellbeteckning | 1..1 |
| model.code.codeSystem | String | Kodsystem för modellbeteckning. | 1..1 |
| model.code.codeSystemVersion | String | Skall ej anges | 0..0 |
| model.code.displayName | String | Klartext för kod | 0..1 |
| model.value | String | Tillverkarens modellbeteckning i klartext. Kan användas som komplement eller i stället för den model.code (kod för modell). | 0..1 |

##### Svarsdel: observationGroup/additionalParticipant/location

Klassen Location är en sammanslagning av typen roll och plats enligt V-MIM.

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för platsen. Anges om platsen är en vårdenhet. | 0..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id. | 1 |
| name | String | Namn på den plats där observation har genomförts. | 1 |
| address | AddressType | Adress till plats | 0..* |
| electronicAddress | TelType | Elektronisk adress till plats | 0..* |
|   |   |   |   |

##### Svarsdel: observationGroup/observation

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | En unik identifierare för observationen som avses. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| id.root | String | Vårdgivarens HSA-id. | 1 |
| id.extension | String | Den inom vårdgivaren eller källsystemet unika identifieraren för observationen. | 1 |
| type | CVType | NI 2015:1 / Kod som motsvarar den typ av observation som avses. Det som faktiskt är avsett, önskat eller observerat tillstånd dokumenteras i attributet värde [value]. Exempelvis kan typ [type] vara ”diagnos” vilket innebär att attributet värde [value] håller diagnosen. | 1 |
| type.code | String | Kod för observationstyp | 1 |
| type.codeSystem | String | Kodsystem för angiven kod för observationstyp. | 1 |
| type.codeSystemName | String | Namn på kodsystem. | 0..1 |
| type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| type.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| status | CVType | NI 2015:1 / Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller är ett potentiellt tillstånd. En instans av klassen observation kan inte byta status. Om man exempelvis vill dokumentera ett måltillstånd och som senare uppfylls så dokumenteras detta som två instanser av klassen observation, en med status måltillstånd och en med status observerat. / Om statuskoden utelämnas antas detta vara en faktisk observation som dokumenterats. | 0..0 / Denna version av specifikation tillåter endast faktiskt utförda observationer. |
| status.code | String | Kod för status | 1 |
| status.codeSystem | String | Kodsystem för angiven kod för status | 1 |
| status.codeSystemName | String | Namn på kodsystem | 0..1 |
| status.displayName | String | Textuell beskrivning av statuskod | 0..1 |
| targetSite | CVType | NI 2015:1 / Angivelse av lokalisation [targetSite], som används för att beskriva vad observationen avser gällande anatomi, funktion eller system. Lokalisation [targetSite] kan beskriva exempelvis lateralitet, organs position och orientering i relation till andra delar av kroppen. / Lokalisationsattributet [targetSite] används endast om inte attributet typ [type] innefattar tillräcklig information om detta. | 0..1 |
| targetSite.code | String | Kod för lokalisation. | 1 |
| targetSite.codeSystem | String | Kodsystem för angiven kod för lokalisation. | 1 |
| targetSite.codeSystemName | String | Namn på kodsystem. | 0..1 |
| targetSite.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| targetSite.displayName | String | Textuell beskrivning av kod för lokalisation. | 0..1 |
| time | PartialTimePeriodType | Tidsperiod för observationen. / Består av PartialTimeStampTypeintervallerna startTime respektive endTime. Vardera uttrycks på formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Om observationen är en tidpunkt, inte ett intervall, sätts sluttid till samma tid som starttid. / Minst en av startTime och endTime måste vara angiven. / NI 2015:1 / Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Exempelvis så kan tidsattributet ange att patienten hade huvudvärk igår kväll mellan kl. 20.00 och 21.45 även om detta berättades på morgonen efter och det dokumenterades först då. Om observationen är ett måltillstånd anger tidsattributet när detta tillstånd önskas vara uppnått. / Observationens tid skiljer sig vanligtvis från dokumentationstidpunkt [observation.registrationTime] i journalhandling som beskriver när tillståndet dokumenterades, vilket alltid sker i efterhand. | 1 |
| time.start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| time.end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| method | CVType | Kod för den typ av tillvägagångssätt för genomförandet av / obdervationen som avses | 0..1 |
| method.code | String | Kod för metodtyp. | 1 |
| method.codeSystem | String | Kodsystem för angiven kod för metodtyp. | 1 |
| method.codeSystemName | String | Namn för kodsystem. | 0..1 |
| method.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| method.displayName | String | Klartextbeskrivning av det begrepp som avses. | 0..1 |
| value | ValueANYType | Observations utfall/värde / NI 2015:1 / Angivelse av värde som innehåller resultatet av observationen. Exempelvis så skulle observationens typ (observation.type) kunna motsvara "längd mätt utan skor" och då innehåller värde-attributet resultatet av mätningen, exempelvis 168 cm. Om observationen avser ett måltillstånd motsvarar värde det resultat man önskar observera för att målet ska uppfyllas. | 1..1 |
| valueNegation | Boolean | Denna flagga negerar betydelsen av det som anges i value-fältet. Normalvärde är false, det vill säga att det som anges i value är en positiv utsaga. Detta ska tolkas som att man letat efter ett visst tillstånd och konstaterat att det inte föreligger. Om man i value exempelvis har diagnoskoden N19.9 (Njursvikt, icke specificerad som akut eller kronisk) och valueNegation är satt till true betyder detta att patienten inte har njursvikt. / NI 2015:1 / Flagga som negerar betydelsen av observationen. Det används för att dokumentera exempelvis att ett tillstånd inte har förekommit/observerats men att man explicit har letat efter det. Detta till skillnad från att inget dokumenterats om ett specifikt tillstånd vilket kan innebära att man inte utrett det överhuvudtaget. Det som negeras är förekomsten av det som beskrivs av värdet. Detta innebär att om exempelvis metod [method] och lokalisation [targetsite] anges ska negationen tolkas som att man med en viss metod har letat efter ett visst tillstånd som beskrivs av ett visst värde men att detta tillstånd inte har kunnat observeras. | 1..1 |
| description | String | Fritextbeskrivning av observationen där sådan kompletterar kodbeteckningen. | 0..1 |
| approvedForPatient | Boolean | Anger om information får delas till patient (menprövad). Värdet sätts i sådant fall till ”true”, i annat fall till ”false”. | 1 |
| registrationTime | TimeStampType | Dokumentationstidpunkt. När uppgiften registrerades i patientens journal. Kan skilja sig från signeringstidpunkt som återfinns i LegalAuthenticatior. | 0..1 |
| relation | RelationType | Beskriver typade samband till andra informationsmängder. Exempelvis kan en observation av en post-operativ infektion ha ett samband av typen ”har orsak” till en tidigare operation (aktivitet). | 0..* |

##### Svarsdel: observationGroup/observation/value

| | | | |
| :--- | :--- | :--- | :--- |
| **En och endast en av nedanstående huvudtyper** |   |   |   |
| **Kodade värden** |   |   |   |
| cv | CVType | Här anges det som observerats som ett kodat värde. Kan exempelvis vara en diagnoskod enligt ICD-10 eller ett kliniskt fynd enligt Snomed CT. | 0..1 |
| cv.code | string | Kod för värdetyp. | 1..1 |
| cv.codeSystem | string | Kodsystem för angiven kod för värdestyp. | 1..1 |
| cv.codeSystemName | string | Namn för kodsystem. | 0..1 |
| cv.codeSystemVersion | string | Versionsnummer för använt kodsystem. | 0..1 |
| cv.displayName | string | Textuell beskrivning av det som koden anger. | 0..1 |
| **Mätvärden** |   |   |   |
| pq | PQType | Här anges det mätvärde som uppmätts. Kan exempelvis vara 187 cm. | 0..1 |
| pq.value | decimal | Den numeriska delen av värdet (187). | 1..1 |
| pq.unit | string | Enhet enligt UCUM. / Om värdet av observationen är enhetslöst (exempelvis ett värde på en skala) ska unit sättas till 1. Exempel för värdet 2 för hudfärg på Apgarskalan: / pq.value=2 / pq.unit=1 | 1..1 |
| **Mätvärdesintervall** |   |   |   |
| ivl_pq | PQIntervalType | Här anges det mätvärdesintervall som uppmätts. Kan exempelvis vara 5–10 st. | 0..1 |
| ivl_pq.low | decimal | Intervallets lägsta mätetal mätt i enheten som anges av ”unit”. Minst ett av fälten low och high måste anges. | 0..1 |
| ivl_pq.lowClosed | boolean | Angivelse av om värdet är en del av intervallet eller ej. Exempel: / lowClosed = true och low = 5 motsvarar intervallet ≥ 5 / lowClosed = false och low = 5 motsvarar intervallet > 5 | 0..1 |
| ivl_pq.high | decimal | Intervallets högsta mätetal mätt i enheten som anges av ”unit”. Minst ett av fälten low och high måste anges. | 0..1 |
| ivl_pq.highClosed | boolean | Angivelse av om värdet är en del av intervallet eller ej. Exempel: / highClosed = true och high = 5 motsvarar intervallet ≤ 5 / highClosed = false och high = 5 motsvarar intervallet <5 | 0..1 |
| ivl_pq.unit | string | Enhet enligt UCUM. / Om värdet av observationen är enhetslöst (exempelvis ett värde på en skala) ska unit sättas till 1. Exempel för värdet 2 för hudfärg på Apgarskalan: / pq.value=2 / pq.unit=1 | 1..1 |
| **Tidpunkt** |   |   |   |
| ts | PartialTimeStampType | Tidsstämpel på formatet YYYYMMDDhhmmss där precisionen kan minskas ner till endast årtal | 0..1 |
| **Tidsintervall** |   |   |   |
| ivl_ts | PartialTimePeriodType | Tidsintervall. Minst en av start och end tiderna skall anges på formatet YYYYMMDDhhmmss där precisionen kan minskas ner till endast årtal. | 0..1 |

##### Svarsdel: observationGroup/additionalParticipant/location/address

| | | | |
| :--- | :--- | :--- | :--- |
| use | PostalAddressUseEnum | Om flera adresser anges skiljs de åt via sin use-kod. Den primära/default adressen anges alltid utan use-kod / PHYS – Adress till fysisk plats/besöksadress / H – Hemadress / HV – Semesteradress / WP – Arbetsplats / TMP – Tillfällig adress / När det inte finns en adress med ”use” som matchar syftet med adressanvändningen, väljs den primära adressen. | 0..1 |
| part | AddressPartType |   | 1..* |

##### Svarsdel: observationGroup/additionalParticipant/location/address/part

| | | | |
| :--- | :--- | :--- | :--- |
| value | String |   | 1..1 |
| type | AddressPartTypeEnum | Enumeration baserat på ISO 21090: / CAR = C/O (care of) adress / POB = Postbox / SAL = Gatuadressrad / ZIP = Postnummer / CTY = Postort / CNT = Land / PRE = Distriktsområde (LKF-kod) / CPA = Län (anges med länskod enligt SCB) / Koderna är listade i den sorteringsordning de ska förekomma i meddelandet. | 0..1 |

##### Svarsdel: observationGroup/observation/relation

| | | | |
| :--- | :--- | :--- | :--- |
| code | CVType | Anger vilken typ av relation den refererade informationen har till hämtad observation. | 1 |
| code.code | String | Kod för relationstyp. | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för relationstyp. | 1 |
| code.codeSystemName | String | Namn för kodsystem. | 0..1 |
| code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| referredInformation | ReferredInformationType |   | 1..1 |

##### Svarsdel: observationGroup/observation/relation/referredInformation

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Den refererade externa informationens identitet | 1..1 |
| id.root | String | HSA-id för källsystem där den refererade informationen är lagrad. | 1..1 |
| id.extension | String | Ett inom vårdgivaren unikt id för denna observation. | 1..1 |
| time | PartialTimeStampType | Starttid av refererad information. Uttrycks med formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Regel 2.4 | 1 |
| type | String | Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. Exempelvis kan en aktivitet ha ett samband till en observation och då är referredInformationType ”chb-o”.Se avsnitt om categorization i tjänstekontraktsbeskrivning för respektive tjänst, som passar för det relaterade objektet. | 1 |
| informationOwner | InformationOwnerType | Vårdgivare som är informationsägare av den refererade informationen, beroende på vilken adresseringsmodell tjänsten tillämpar. | 1..1 |

##### Svarsdel: observationGroup/observation/relation/referredInformation/informationOwner

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Informationsägare av refererad information | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Vårdgivarens HSA-id. | 1..1 |
|   |   |   |   |

##### Svarsdel: observationGroup/performerRole/person

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för person som utfört observationen. Detta fält anges endast om observationen utförts av person som INTE klassas som hälso- och sjukvårdspersonal. / Om observationen utförts av person som inte klassas som hälso- och sjukvårdspersonal och id inte anges måste person.name vara angiven. | 0..1 |
| id.root | String | Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) användas. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | Personnummer/ samordningsnummer/reservnummer. | 1 |
| name | String | För- och efternamn i klartext för person. / Regel 2.1 | 0..1 |

##### Svarsdel: observationGroup/performerRole/careUnit

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | HSAid för PDL vårdenhet som har medicinskt ansvar för observationen. | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Extension sätts till HSA-id för vårdenheten | 1..1 |
| name | String | Vårdenhetens namn till vilken observationen är knuten. | 0..1 |
| careGiver | CareGiverType | Den vårdgivaren som enheten är anknuten till. | 1..1 |

##### Svarsdel: observationGroup/performerRole/careUnit/caregiver

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | HSAid. Vårdgivarens identitet som enheten är anknuten till. | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Extension sätts till HSA-id för vårdgivaren. | 1..1 |
| name | String | Vårdgivarens namn till vilken enheten är knuten. | 0..1 |

##### Svarsdel: observationGroup/additionalParticipant/location/ electronicAddress

| | | | |
| :--- | :--- | :--- | :--- |
| electronicAddress |   |   |   |
| use | TelTypeEnum | voice = nummer för röstsamtal / fax = faxnummer / data = e-post adress / sms = nummer för mobila textmeddelanden | 1..1 |
| value | String | Elektronisk adress | 1..1 |

##### Svarsdel: observationGroup/additionalParticipant/organization

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för organisation. Vanligtvis HSA-id | 0..1 |
| id.root | String | Om HSA-id: / 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Id för organisation | 1..1 |
| name | String | Organisationens namn | 0..1 |

#### Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

| | | |
| :--- | :--- | :--- |
| **Regler i begäran** |   |   |
| 1.1 |   | Den enda sökparametern som explicit behöver anges är patientId. Det finns även möjlighet att kombinera patientId med ett eller flera andra parametrar: / timePeriod / För att begränsa till ett tidsintervall / observationCode / För att begränsa till en viss typ av observation / observationId / För att begränsa till en specifik observation / careGiverId / För att begränsa till en specifik vårdgivare / careUnitId / För att begränsa till en specifik vårdenhet / sourceSystemHSAId / För att begränsa till ett specifikt system / Relation / För att begränsa till observationer med relationer till annan instans / För att begränsa till observationer med relationer av viss typ / En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent, dvs inte vara genomförbart och ska i så fall resultera i ett tydligt felmeddelande. Detta skulle exempelvis inträffa om sökmängden blir för stor för att kunna returneras till konsumenten. |
| **Regler i svaret** |   |   |
| 2.1 | PerformerRole | Observation utförd av hälso- och sjukvårdpersonal / Då observation är utförd av hälso- och sjukvårdpersonal ska PerformerRole.id anges med HSAid. / Om producenten ska stödja sammanhållen journalföring och patientens direktåtkomst krävs även att klassen Person används och att Person.name anges. / Observation utförd av icke vårdpersonal / Då observationen är utförd av personer som inte innefattar vårdpersonal ska PerformerRole.id inte anges. / Klasserna CareUnit (vårdenhet) och CareGiver (vårdgivare) ska inte användas. / Klassen Person ska användas samt Person.name anges. |
| 2.2 | AdditionalParticipant | AdditionalParticipant är hälso- och sjukvårdspersonal / Då ytterligare medverkande är hälso- och sjukvårdpersonal ska AdditionalParticipant.id anges med HSAid. / Om producenten ska stödja sammanhållen journalföring och patientens direktåtkomst krävs även att klassen Person används och att Person.name anges. / AdditionalParticipant är INTE hälso- och sjukvårdspersonal / Då ytterligare medverkande personer inte är hälso- och sjukvårdspersonal ska additionalParticipant.id inte anges. Istället används klassen Person. / AdditionalParticipant är inte en person / Då additionalParticipant är en device, careUnit eller organization används inte additionalParticipant.id |
| 2.3 | LegalAuthenticator | Om informationen är signerad av hälso- och sjukvårdspersonal ska LegalAuthenticator anges med namn och/eller HSA-id i svars-delen. / Minst ett av attributen LegalAuthenticator.id eller LegalAuthenticator.name ska anges. |
| 2.4 | referredInformation.time | ReferredInformation.time ska innehålla en tidpunkt som ska kunna användas som inparameter i ett tidsintervallbaserat sökvillkor till den tjänst som returnerar den identifierade informationsmängd som relationen pekar ut. Denna tidpunkt skall vara den tidpunkt som tidssökparametern till den utpekade tjänsten filtrerar på. I det fall då en konsument har behov av att söka upp flera relaterade informationsmängder från samma tjänst kan konsumenten skapa ett sökintervall som omfattar de ReferredInformation.time från dessa relationer. Detta sökintervall används sedan som inparameter till den tjänst som relationerna pekar ut. På detta sätt kan en konsument göra endast ett anrop över en begränsad tid som returnerar samtlig relaterad information istället för att göra anrop ett och ett med respektive id som anges i relationen, eller ta ut en patients totala informationsmängd utan någon möjlighet att filtrera på tid. |
| 2.5 | observationGroup/ / performerRole/ / careUnit | Åtkomstkontroll inom sammanhållen journalföring / Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring |

##### Icke funktionella krav

Inga övriga icke funktionella krav.

###### SLA-krav

Inga avvikande SLA-krav

#### Annan information om kontraktet

Ingen övrig information om kontraktet

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet ur Bitbucket-taggen 1.2.3, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetObservationsInteraction_1.2_RIVTABP21.wsdl](GetObservationsInteraction_1.2_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetObservationsResponder_1.2.xsd](GetObservationsResponder_1.2.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_healthcond_basic_1.2.xsd](clinicalprocess_healthcond_basic_1.2.xsd) | Domänschema (kärnkomponenter) |
| [clinicalprocess_healthcond_basic_1.2_ext.xsd](clinicalprocess_healthcond_basic_1.2_ext.xsd) | Domänschema (tillägg 1.2: PQIntervalType/ivl_pq) |
| [clinicalprocess_healthcond_basic_enum_1.2.xsd](clinicalprocess_healthcond_basic_enum_1.2.xsd) | Domänschema (enumerationer) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Schema för LogicalAddress (itintegration:registry) |
| [Exempel_GetObservations_vikt_langd.xml](Exempel_GetObservations_vikt_langd.xml) | Exempel på begäran (vikt/längd) |
| [Exempel_GetObservationsResponse_vikt_langd.xml](Exempel_GetObservationsResponse_vikt_langd.xml) | Exempel på svar (vikt/längd) |
| [SjD_TK_GetObservations_1.2.docx](SjD_TK_GetObservations_1.2.docx) | Självdeklaration, tjänstekonsument |
| [SjD_TP_GetObservations_1.2.docx](SjD_TP_GetObservations_1.2.docx) | Självdeklaration, tjänsteproducent |

Exempelfilerna hette i källan `Exempel GetObservations - vikt längd.xml` respektive `Exempel GetObservationsResponse - vikt längd.xml` och har döpts om utan mellanslag och å/ä/ö.

#### Skillnader mellan TKB och schema

Följande avvikelser mellan TKB-dokumentet (version 1.2.1) och schemafilerna i taggen 1.2.3 har noterats. De logiska modellerna följer schemats struktur och typer och dokumenterar TKB:ns regler i beskrivningar och invarianter.

| | | |
| :--- | :--- | :--- |
| Kontraktets version (avsnitt Version) | 1.1 | 1.2 (`GetObservationsResponder_1.2.xsd`,`version="1.2"`) |
| observation.status | 0..0 ("Denna version av specifikation tillåter endast faktiskt utförda observationer") | 0..1 |
| patient.dateOfBirth | DateTime | DateType (ÅÅÅÅMMDD) |
| observation.time.start/end | TimeStampType | PartialTimeStampType (format + value) |
| relation.typeCode.code/codeSystem (begäran) | 0..1 | 1..1 inom CVType när typeCode anges |
| observation.status, observation.relation.code | codeSystemVersion respektive displayName saknas i tabellen | Finns (0..1) i CVType |
| Ordning i begäran | sourceSystemHSAId före careGiverId | careGiverId, careUnitId, interactionAgreementId, sourceSystemHSAId |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning och schemafilerna:

* **Logisk modell (request):** [StructureDefinition/getobservations-request](StructureDefinition-getobservations-request.md)
* **Logisk modell (response):** [StructureDefinition/getobservations](StructureDefinition-getobservations.md)
* **Kodsystem:** [CodeSystem/postaladdressuse-cs](CodeSystem-postaladdressuse-cs.md) (PostalAddressUseEnum)
* **ValueSet:** [ValueSet/postaladdressuse-vs](ValueSet-postaladdressuse-vs.md)
* **Kodsystem:** [CodeSystem/addressparttype-cs](CodeSystem-addressparttype-cs.md) (AddressPartTypeEnum)
* **ValueSet:** [ValueSet/addressparttype-vs](ValueSet-addressparttype-vs.md)
* **Kodsystem:** [CodeSystem/teltype-cs](CodeSystem-teltype-cs.md) (TelTypeEnum)
* **ValueSet:** [ValueSet/teltype-vs](ValueSet-teltype-vs.md)
* **Kodsystem:** [CodeSystem/timestamptypeformat-cs](CodeSystem-timestamptypeformat-cs.md) (TimeStampTypeFormatEnum)
* **ValueSet:** [ValueSet/timestamptypeformat-vs](ValueSet-timestamptypeformat-vs.md)

Enumerationerna ResultCodeEnum och ErrorCodeEnum i `clinicalprocess_healthcond_basic_enum_1.2.xsd` används inte av GetObservations (ResultType ingår inte i svaret) och har därför inga egna kodverk.

### Gemensamma dokument för domänen

| | |
| :--- | :--- |
| [AB_clinicalprocess_healthcond_basic.docx](AB_clinicalprocess_healthcond_basic.docx) | Arkitekturella beslut (bilaga, referens R2) |
| [riv_clinicalprocess_healthcond_basic_ei_update_constraints.xml](riv_clinicalprocess_healthcond_basic_ei_update_constraints.xml) | Schematron-regler för uppdatering av engagemangsindex (categorization chb-o, logicalAddress = sourceSystem) |

