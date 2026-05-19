## Tjänstekontrakt

### GetActivities
Detta tjänstekontrakt returnerar strukturerade aktiviteter för en patient. Den praktiska tillämpningen av detta kontrakt beskrivs i särskilda tilläggsbeskrivningar i form av interaktionsöverenskommelser., t.ex. en interaktionsöverenskommelse för åtgärder kodade med KVÅ.
En aktivitet kan exempelvis vara en operation eller en genomförd undersökning.
Meddelandemodell från stycke 5.1 V-MIM - Aktiviteter motsvarar svarsmeddelandet för detta tjänstekontrakt. Kopplingen mellan V-MIM enligt NI 2015:1 och de tekniska engelska namnen visas i tabellen i samma avsnitt.

#### Version
1.3

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i kapitel 6.1.3 Övriga regler.

##### Begäran

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientId | IIType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / Regel 1.1 | 1 |
| patientId.root | String | Sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. | 1 |
| patientId.extension | String | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1 |
| time | TimePeriodType | Begränsar sökningen till det angivna intervallet. Om tidsattributet Activity.Time i svaret är en tidpunkt innebär begränsningen att endast poster returneras där Activity.Time i svaret ligger inom sökintervallets start- och sluttidpunkt. / Om tidsattributet Activity.Time i svaret är ett intervall innebär begränsningen att endast poster returneras där tidsintervallet som anges i attributet Activity.Time i svaret, överlappar med det angivna sökintervallet, dvs. / det bildade intervallets starttidpunkt ligger inom sökintervallets start- och sluttidpunkt / det bildade intervallets sluttidpunkt ligger inom sökintervallets start- och sluttidpunkt / det bildade intervallets starttidpunkt ligger före sökintervallets starttidpunkt och sluttidpunkt ligger efter sökintervallets sluttidpunkt / Om sökningen begränsas med detta attribut ska poster som saknar Activity.Time inte returneras. Om sökningen inte begränsas med detta attribut returneras även poster som saknar Activity.Time. | 0..1 |
| time.start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| time.end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| activityCode | CVType | Begränsar sökningen till en viss typ av aktivitet. Motsvarar activity.code i svaret. | 0..* |
| activityCode.code | String | Kod för aktivitet | 1 |
| activityCode.codeSystem | String | Kodsystem för angiven kod. | 1 |
| activityCode.codeSystemName | String | Del av standarddatatyp. Ska ignoreras i begäran. | 0..0 |
| activityCode.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| activityCode.displayName | String | Del av standarddatatyp. Ska ignoreras i begäran. | 0..0 |
| activityId | IIType | Ett unikt värde för själva aktiviteten som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar activity/id i svaret. | 0..* |
| activityId.root | String | Källsystemet HSAID | 1 |
| activityId.extension | String | Det i källsystemet unika identiteten för aktiviteten | 1 |
| sourceSystemId | IIType | Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. Motsvarar activityGroup/sourceSystem i svaret. | 0..1 |
| sourceSystemId.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| sourceSystemId.extension | String | Extension sätts till HSA-id för det källsystem inom vilket aktivitetsId är unikt. | 1 |
| careGiverId | IIType | Begränsar sökningen till aktivitet från en specifik vårdgivare. Motsvarar activityGroup/performerRole/careUnit/ careGiver i svaret. | 0..1 |
| careGiverId.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| careGiverId.extension | String | Extension sätts till HSA-id för den vårdgivaren från vilken aktiviteter skall returneras från. | 1 |
| careUnitId | IIType | Begränsar sökningen till en vårdenhet (se [R15] förytterligare information om begreppet vårdenhet) som har ansvar för dokumentationen av en aktivitet. Motsvarar activityGroup/performerRole/careUnit/ i svaret. | 0..1 |
| careUnitId.root | String | Root sätts till OID för HSA-id 1.2.752.129.2.1.4.1 | 1 |
| careUnitId.extension | String | Extension sätts till HSA-id för PDL vårdenheten. | 1 |
| interactionAgreementId | UUIDType | Detta attribut används inte. Ange alltid UUID / 2866a7c4-9c60-433f-9035-a4d779ffe7a1 | 1..1 |
| relation | RelationFilterType | Begränsar sökningen till aktiviteter med avseende på hur de är relaterade till andra uppgifter i journalsystem. Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte aktiviteter på deras relationer. Motsvarar activityGroup/activity/relation i svaret. / Minst en av relation.typeCode och relation.id skall vara angiven. | 0..* |
| relation.typeCode | CVType | Filtrera på relations-/sambandstyp | 0..1 |
| relation.typeCode.code | String | Kod för relation/-sambandstyp | 0..1 |
| relation.typeCode.codeSystem | String | Kodsystem för relation-/sambandstyp | 0..1 |
| relation.typeCode.codeSystemName | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation.typeCode.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..0 |
| relation.typeCode.displayname | String | Ska ignoreras i begäran och ej skickas. | 0..0 |
| relation.id | IIType | Begränsar sökningen till aktiviteter med den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla aktiviteter som har en relation till en viss observation. | 0..1 |
| relation.id.root | String | Id-root från den Uppgift i patientjournal som sambandet pekar ut. Detta är ett källsystems-HSA-id. | 0..1 |
| relation.id.extension | String | Id-extension från den uppgift i patientjournal som sambandet pekar ut. Detta ska vara ett id som är unikt inom källsystemet för informationen. | 0..1 |
| relation. referredInformationType | String | Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. I denna version av tjänstekontraktet är följande typer möjliga: / chb-o  (observation) / caa-ga (aktivitet) | 1..1 |

##### Svar: activityGroup

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| activityGroup | ActivityGroupType | Grupp av aktiviteter som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera aktiviteter gjorts med samma medverkande (exempelvis de aktiviteter som utförts under ett visst operationstillfälle). Denna klass är en teknisk optimering som inte speglas i NI 2015:1. | 0..* |
| patient | PatientType | Den patient som aktivitetsgruppen avser. | 1..1 |
| performerRole | PerformerRoleType | Den som utfört aktiviteter inom gruppen. | 1..1 |
| legalAuthenticator | LegalAuthenticatorType | Den som signerat aktiviteterna inom gruppen. | 0..1 |
| additionalParticipant | AdditionalParticipantType | Övriga deltagare relaterat till aktiviteterna inom gruppen. | 0..* |
| device | DeviceType | Deltagande artefakt / Använd dessa i additionalParticipant i stället. | 0..0 |
| location | LocationType | Plats för aktiviteten / Använd dessa i additionalParticipant i stället. | 0..0 |
| careProcessId | UUIDType | UUID för den individanpassade vårdprocess som denna aktivitet ingår i | 0..1 |
| sourceSystem | SourceSystemType | Källsystem som aktivitetsgruppen lagras i. | 1..1 |
| activity | ActivityType | De aktiviteter som ligger inom denna grupp av aktiviteter. | 1..* |

##### Svarsdel: activityGroup/patient
Klassen PatientType är en kompakt och specifik representation av den patient som aktiviteten gäller.

| activityGroup/patient | PatientType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för patienten. Skall anges med 12 tecken utan avskiljare. | 1 |
| id.root | String | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | Personnummer/samordningsnummer/reservnummer. | 1 |
| dateOfBirth | DateType | Anger patientens födelseår, månad och dag. Ej personnummer!

Datum. Format ÅÅÅÅMMDD | 1 |
| gender | CVType | Anger patientens kön. | 0..1 |
| gender.code | String | Kod för kön. / 0 okänt
1 man
2 kvinna
9 ej tillämpligt | 1 |
| gender.codeSystem | String | Sätts till OID för KV kön: 1.2.752.129.2.2.1.1 | 1 |
| gender.codeSystemName | String | Namn för kodsystem. | 0..1 |
| gender.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| gender.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |

##### Svarsdel: activityGroup/performerRole

| activityGroup/performerRole | PerformerRoleType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identitet för personen som utfört aktiviteten. / Detta fält anges enbart om aktiviteten utförts av hälso- och sjukvårdspersonal. Anges med HSA-id. / Regel 2.1 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). | 1 |
| id.extension | String | HSA-id för den hälso- och sjukvårdspersonal som utfört aktiviteten. | 1 |
| code | CVType | Beskriver den roll som utföraren agerar i under aktiviteten. | 1 |
| code.code | String | Kod för utförarroll. | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för utförartyp. | 1 |
| code.codeSystemName | String | Namn på kodsystem. | 0..1 |
| code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| code.displayName | String | Klartext för det som koden anger. | 0..1 |
| person | PersonType | Beskriver den person som utfört aktiviteten. Klassen används i två fall: / Då det finns behov av att beskriva egenskaper hos person som utfört aktiviteten som inte beskrivs i performerRole (t.ex. namn på hälso- och sjukvårdspersonal) / Då aktiviteten utförts av en person som inte klassas som hälso- och sjukvårdspersonal. / Regel 2.1 | 0..1 |
| careUnit | CareUnitType | Den PDL-vårdenhet och PDL-vårdgivare som aktiviteten utförs på uppdrag av (där utföraren har sitt medarbetaruppdrag).  Ska endast anges då den person som utfört aktiviteten är hälso- och sjukvårdpersonal. / Regel 2.1 / Regel 2.6 | 0..1 |

##### Svarsdel:  activityGroup/legalAuthenticator
Klassen LegalAuthenticator är en kompakt och specifik version av AdditionalPartipication.
LegalAuthenticator är indirekt en ”Professionell aktör” med deltagandetyp signerare enligt V-MIM i de fall då informationen signerats.

| activityGroup/legalAuthenticator | LegalAuthenticatorType |  |  |
| :--- | :--- | :--- | :--- |
| Id | IIType | HSA-id för personen som signerat aktiviteterna som ingår i aktivitetsgruppen. / Regel 2.4 | 0..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id. | 1 |
| time | PartialTimeStampType | Tid för signeringen av aktiviteten. Uttrycks på formatet ÅÅÅÅMMDDttmmss där klockslaget är frivilligt. | 1 |
| name | String | För- och efternamn i klartext för signerande person. / Regel 2.4 | 0..1 |

##### Svarsdel:  activityGroup/additionalParticipant

| activityGroup/additionalParticipant | AdditionalParticipantType |  |  |
| :--- | :--- | :--- | :--- |
| Id | IIType | Identifierare för ytterligare deltagare. / Detta fält anges enbart om deltagaren klassas som hälso- och sjukvårdspersonal. Anges med HSA-id. / Regel 2.2 | 0..1 |
| id.root | String | Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). | 1..1 |
| id.extension | String | HSA-id för den hälso- och sjukvårdspersonal som är ytterligare deltagare. | 1..1 |
| type | CVType | Typ av deltagande. Detta beskriver på vilket sätt en deltagare deltagit i aktiviteten. Kan exempelvis vara sekundär utförare/assistent. Istället för person kan ”deltagandet” handla om utrustning (device) eller organisation eller plats. | 1..1 |
| type.code | String | Kod för typ av deltagande. | 1..1 |
| type.codeSystem | String | Kodsystem för typ av deltagande. | 1..1 |
| type.codeSystemName | String | Skall ej anges | 0..0 |
| type.codeSystemVersion | String | Skall ej anges | 0..0 |
| type.displayName | String | Skall ej anges | 0..0 |
| role | CVType | Beskriver i vilken roll deltagaren agerar (exempelvis rollen som anhörig eller i sin yrkesroll som vårdpersonal). | 1..1 |
| role.code | String | Kod för deltagares roll | 1..1 |
| role.codeSystem | String | Kodsystem för deltagares roll | 1..1 |
| role.codeSystemName | String | Skall ej anges | 0..0 |
| role.codeSystemVersion | String | Skall ej anges | 0..0 |
| role.displayName | String | Skall ej anges | 0..0 |
| time | TimePeriodType | I de fall deltagandetiden för denna deltagare inte överensstämmer med aktivitetens tidsperiod kan time-attributet ange när den specifika deltagaren deltog i aktiviteten. | 0..1 |
| Endast en av nedanstående | Endast en av nedanstående | Endast en av nedanstående | Endast en av nedanstående |
| person | PersonType | Deltagande övrig person. | 0..1 |
| organisation | OrganisationType | Deltagande övrig organisation. | 0..1 |
| device | DeviceType | Deltagande medicinskteknisk produkt (Se [R14] för mer information om vad som klassas som medicinskteknisk produkt). | 0..1 |
| location | LocationType | Deltagande plats. | 0..1 |

##### Svarsdel: activityGroup/additionalParticipant/person

| activityGroup/additionalParticipant/person | PersonType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för deltagande övrig person | 0..1 |
| id.root | String | Sätts till OID för typ av identifierare. / För HSA-nummer 1.2.752.129.2.1.4.1
För Skatteverkets personnummer 1.2.752.129.2.1.3.1
För Skatteverkets samordningsnummer 1.2.752.129.2.1.3.3
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | HSA-id/personnummer/ samordningsnummer/reservnummer. | 1 |
| name | String | För- och efternamn i klartext för person. | 0..1 |

##### Svarsdel:  activityGroup/additionalParticipant/organisation

| activityGroup/additionalParticipant/organisationType | OrganisationType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | HSA-id för den organisation som denna ytterligare deltagare har sitt uppdrag hos | 1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id för organisationen. | 1 |
| name | String | Organisationens namn i klartext så som det är lämpligt att publicera för en användare. | 0..1 |

##### Svarsdel:  activityGroup/additionalParticipant/device
Klassen Device är en sammanslagning av de generiska typerna artefakt och roll enligt V-MIM.

| activityGroup/additionalParticipant/device | DeviceType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för instans av medicinskteknisk produkt. Exempelvis identitet för en viss MR-kamera på röntgenavdelning 18. | 0..1 |
| id.root | String | Typ av identitetsbeteckning. | 1 |
| id.extension | String | Specifikt id för medicinskteknisk produkt. | 1 |
| type | CVType | Beskriver typ av medicinskteknisk produkt. | 0..1 |
| type .code | String | Kod för typ av medicinskteknisk produkt. | 1 |
| type.codeSystem | String | OID för kodsystem. | 1 |
| type.codeSystemName | String | Namn på kodsystem. | 0..1 |
| type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| type.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| model | SCType | Modell för angiven medicinskteknisk produkt. | 0..1 |
| model.code | CVType | Modellbeteckning | 0..1 |
| model.code.code | String | Kod för modellbeteckning | 1..1 |
| model.code.codeSystem | String | Kodsystem för modellbeteckning. | 1..1 |
| model.code.codeSystemVersion | String | Skall ej anges | 0..0 |
| model.code.displayName | String | Klartext för kod | 0..1 |
| model.value | String | Tillverkarens modellbeteckning i klartext. Kan användas som komplement eller i stället för den model.code (kod för modell). | 0..1 |

##### Svarsdel:  activityGroup/additionalParticipant/location
Klassen Location är en sammanslagning av typen roll och plats enligt V-MIM.

| activityGroup/additionalParticipant/location/address/ | LocationType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifiering för platsen. Anges om platsen är en vårdenhet. | 0..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id. | 1 |
| name | String | Namn på den plats där en aktivitet har genomförts. | 1 |
| address | AddressType | Adress till plats | 0..* |
| address.use | PostalAddressUseEnum | Om flera adresser anges skiljs de åt via sin use-kod. Den primära/default adressen anges alltid utan use-kod. / PHYS – Adress till fysisk plats/besöksadress / H – Hemadress / HV – Semesteradress / WP – Arbetsplats / TMP – Tillfällig adress / När det inte finns en adress med ”use” som matchar syftet med adressanvändningen, väljs den primära adressen. | 0..1 |
| address.part | AddressPartType |  | 1..* |
| address.part.value | String | Del av adress till plats | 1..1 |
| address.part.type | AddressPartTypeEnum | Enumeration baserat på ISO 21090: / CAR = C/O (care of) adress / POB = Postbox / SAL = Gatuadressrad / ZIP = Postnummer / CTY = Postort / CNT = Land / PRE = Distriktsområde (LKF-kod) / CPA = Län (anges med länskod enligt SCB) / Koderna är listade i den sorteringsordning de ska förekomma i meddelandet. | 0..1 |
| electronicAddress | TelType | Elektronisk adress till plats | 0..* |
| electronicAddress.use | TelTypeEnum | voice = nummer för röstsamtal / fax = faxnummer / data = e-post adress / sms =  nummer för mobila textmeddelanden | 1..1 |
| electronicAddress.value | String | Elektronisk adress | 1..1 |

##### Svarsdel:  activityGroup/sourceSystem

| activityGroup/sourceSystem | SourceSystemType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | HSA-id för källsystemet som aktivitetsgruppen hämtats i från | 1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| id.extension | String | Extension sätts till HSA-id för systemet | 1 |

##### Svarsdel:  activityGroup/activity

| activityGroup/activity | ActivityType |  |  |
| :--- | :--- | :--- | :--- |
| id | IIType | En unik identifierare för aktiviteten som avses. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| id.root | String | Källsystemets HSA-id. | 1 |
| id.extension | String | Den inom källsystemet unika identifieraren för aktiviteten. | 1 |
| code | CVType | NI 2015:1
Kod för den typ av aktivitet som avses, exempelvis genom användande av en kod från en klassifikation för åtgärder. / Notera att antingen attributet kod eller beskrivning måste finnas. / Denna tekniska implementationen av aktivitetskontraktet kräver till skillnad från NI 2015:1 att code/kod-attributet anges. Description/Beskrivningsfältet är frivilligt i denna implementation i likhet med NI 2015:1. | 1 |
| code.code | String | Kod för den typ av aktivitet som avses | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för  typ av aktivitet. | 1 |
| code .codeSystemName | String | Namn på kodsystem. | 0..1 |
| code .codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| code .displayName | String | Textuell beskrivning av det som koden avser. | 0..1 |
| status | CVType | NI 2023:1
Kod för aktivitetens status som anger om en aktivitet exempelvis är planerad eller utförd. En instans av klassen aktivitet kan inte byta status. Om man exempelvis vill dokumentera en planerad utredning och som senare utförs så dokumenteras detta som två instanser av klassen aktivitet, en med status planerad och en med status utförd / Om statuskoden utelämnas antas detta vara en faktiskt utförd aktivitet som dokumenterats. | 0..1 |
| status.code | String | Kod för status. / Anges med en av koderna ur snomeds refset urval aktivitetsstatus (SCTID: 56421000052109). / Observera att detta refset kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1 |
| status.codeSystem | String | Kodsystem för angiven kod för status. Sätts till / 1.2.752.116.2.1.1 | 1 |
| status.codeSystemName | String | Sätts till snomed-ct-se | 0..1 |
| status.codeSystemVersion | String | Skall ej användas | 0..0 |
| status.displayName | String | Sätts till den klartext som motsvarar koden som angetts i status.code. | 0..1 |
| targetSite | CVType | NI 2015:1
Angivelse av lokalisation [targetSite], som används för att beskriva vad observationen avser gällande anatomi, funktion eller system. Lokalisation [targetSite] kan beskriva exempelvis lateralitet, organs position och orientering i relation till andra delar av kroppen. / Lokalisationsattributet [targetSite] används endast om inte attributet typ [type] innefattar tillräcklig information om detta. | 0..1 |
| targetSite.code | String | Kod för lokalisation. | 1 |
| targetSite.codeSystem | String | Kodsystem för angiven kod för lokalisation. | 1 |
| targetSite.codeSystemName | String | Namn på kodsystem. | 0..1 |
| targetSite.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| targetSite.displayName | String | Textuell beskrivning av kod för lokalisation. | 0..1 |
| time | PartialTimePeriodType | Tidsperiod för aktiviteten. / Består av PartialTimeStampTypeintervallerna startTime respektive endTime. Vardera uttrycks på formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Om aktiviteten skedde vid en tidpunkt, inte under ett intervall, sätts sluttid till samma tid som starttid. / Minst en av startTime och endTime måste vara angiven. / NI 2015:1
Angivelse av vilken tid en aktivitet utförts, är planerad att utföras eller önskas utföras. Om aktiviteten är planerad att ske återkommande kan även frekvens och omfattning anges. / Regel 2.3 | 0..1 |
| time.start | PartialTimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år.. | 0..1 |
| time.end | PartialTimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss  där precisionen kan minskas ner till att bara ange år.. | 0..1 |
| method | CVType | Kod för den typ av tillvägagångssätt för genomförandet av / aktiviteten som avses | 0..1 |
| method.code | String | Kod för metodtyp. | 1 |
| method.codeSystem | String | Kodsystem för angiven kod för metodtyp. | 1 |
| method.codeSystemName | String | Namn för kodsystem. | 0..1 |
| method.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| method.displayName | String | Klartextbeskrivning av det begrepp som avses. | 0..1 |
| description | String | Fritextbeskrivning av aktiviteten som kompletterar kodbeteckningen. | 0..1 |
| approvedForPatient | Boolean | Anger om information får delas till patient (menprövad). Värdet sätts i sådant fall till ”true”, i annat fall till ”false”. | 1 |
| registrationTime | TimeStampType | Dokumentationstidpunkt. När uppgiften registrerades i patientens journal. Kan skilja sig från signeringstidpunkt som återfinns i LegalAuthenticatior. | 1 |
| relation | RelationType | Beskriver typade samband till andra informationsmängder. Exempelvis kan en observation av en post-operativ infektion ha ett samband av typen ”har orsak” till en tidigare operation (aktivitet). | 0..* |
| additionalInformation | AdditionalInformationType | Ytterligare information kopplad till aktiviteten. | 0..* |
| additionalInformation.key | String | Ange en av följande: / Planeringstid / Orsak / Planeringstid avser tiden då en aktivitet planerades. / Exempel: Den 1 januari planerar en läkare att en viss behandling ska påbörjas den 1 februari. Planeringstiden avser i detta fall 1 januari. / Orsak avser orsaken till varför en aktivitet har utförts. | 1..1 |
| additionalInformation.value | Any | Planeringstid anges med datatypen PatialTimeStampType enligt formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att ange år, månad och dag. / Orsak anges med kod enligt datatypen CVType [R12] | 1..1 |

##### Svarsdel:  activityGroup/activity/relation

| activityGroup/activity/relation | RelationType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CVType | Anger vilken typ av relation den refererade informationen har till hämtad aktivitet. | 1 |
| code.code | String | Kod för relationstyp. | 1 |
| code.codeSystem | String | Kodsystem för angiven kod för relationstyp. | 1 |
| code.codeSystemName | String | Namn för kodsystem. | 0..1 |
| code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| referredInformation | ReferredInformationType |  | 1..1 |

##### Svarsdel:  activityGroup/activity/relation/referredInformation

| activityGroup/activity/relation/referredInformation | ReferredInformationType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Den refererade externa informationens identitet | 1..1 |
| id.root | String | HSA-id för källsystem där den refererade informationen är lagrad. | 1..1 |
| id.extension | String | Ett inom källsystemet unikt id för denna aktivitet.  I denna version av tjänstekontraktet är endast relationer inom ett källsystem tillåtet. | 1..1 |
| time | PartialTimeStampType | Starttid av refererad information. Uttrycks med formatet ÅÅÅÅMMDDttmmss där precisionen kan minskas ner till att bara ange år. / Regel 2.5 | 1 |
| type | String | Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. Exempelvis kan en aktivitet ha ett samband till en observation och då är referredInformationType ”chb-o”.Se avsnitt om categorization i tjänstekontraktsbeskrivning för respektive tjänst, som passar för det relaterade objektet. | 1 |
| informationOwner | InformationOwnerType | Vårdgivare som är informationsägare av den refererade informationen. | 1..1 |

##### Svarsdel:  activityGroup/activity/relation/referredInformation/informationOwner

| activityGroup/activity/relation/referredInformation/informationOwner | InformationOwnerType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Informationsägare av refererad information | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Vårdgivarens HSA-id. | 1..1 |

##### Svarsdel: activityGroup/performerRole/person

| activityGroup/performerRole/person | PersonType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Identifierare för person som utfört aktiviteten. Detta fält anges endast om aktiviteten utförts av person som INTE klassas som hälso- och sjukvårdspersonal. / Om aktiviteten utförts av person som inte klassas som hälso- och sjukvårdspersonal och id inte anges måste person.name vara angiven. | 0..1 |
| id.root | String | Sätts till OID för typ av identifierare. 
För Skatteverkets personnummer 1.2.752.129.2.1.3.1
För Skatteverkets samordningsnummer 1.2.752.129.2.1.3.3
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1 |
| id.extension | String | Personnummer/ samordningsnummer/reservnummer. | 1 |
| name | String | För- och efternamn i klartext för person. / Regel 2.1 | 0..1 |

##### Svarsdel:  activityGroup/performerRole/careUnit

| activityGroup/performerRole/careUnit | CareUnitType |  | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Id | IIType | HSA-id för PDL vårdenhet som har ansvar för aktiviteten. / Regel 2.6 | 1..1 |
| id.root | String | Root blir då / OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Extension sätts till HSA-id för vårdenheten | 1..1 |
| name | String | Vårdenhetens namn till vilken aktiviteten är knuten. | 0..1 |
| careGiver | CareGiverType | Den vårdgivaren som enheten hör till. | 1..1 |

##### Svarsdel:  activityGroup/performerRole/careUnit/careGiver

| activityGroup/performerRole /careUnit /careGiver | CareGiverType | Kommentar | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Id | IIType | HSAid. Vårdgivarens identitet som enheten är anknuten till. / Regel 2.6 | 1..1 |
| id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| id.extension | String | Extension sätts till HSA-id för vårdgivaren. | 1..1 |
| name | String | Vårdgivarens namn till vilken enheten är knuten. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| 1.1 | Den enda sökparametern som explicit behöver anges är patientId. Det finns även möjlighet att kombinera patientId med en eller flera andra parametrar: / timePeriod / För att begränsa till ett tidsintervall / activityCode / För att begränsa till en viss typ av aktivitet / activityId / För att begränsa till en specifik identifierad aktivitet / careGiverId / För att begränsa till en specifik vårdgivare / careUnitId / För att begränsa till en specifik vårdenhet / sourceSystemId / För att begränsa till ett specifikt system / relation / För att begränsa till en relation / En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent, dvs inte vara genomförbart och ska i så fall resultera i ett tydligt felmeddelande. Detta skulle exempelvis inträffa om sökmängden blir för stor för att kunna returneras till konsumenten. | Den enda sökparametern som explicit behöver anges är patientId. Det finns även möjlighet att kombinera patientId med en eller flera andra parametrar: / timePeriod / För att begränsa till ett tidsintervall / activityCode / För att begränsa till en viss typ av aktivitet / activityId / För att begränsa till en specifik identifierad aktivitet / careGiverId / För att begränsa till en specifik vårdgivare / careUnitId / För att begränsa till en specifik vårdenhet / sourceSystemId / För att begränsa till ett specifikt system / relation / För att begränsa till en relation / En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent, dvs inte vara genomförbart och ska i så fall resultera i ett tydligt felmeddelande. Detta skulle exempelvis inträffa om sökmängden blir för stor för att kunna returneras till konsumenten. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| 2.1 | PerformerRole | Aktivitet utförd av vårdpersonal / Då aktivitet är utförd av vårdpersonal ska PerformerRole.id anges med HSAid. / Om producenten ska stödja sammanhållen journalföring och patientens direktåtkomst krävs även att klassen Person används och att Person.name anges. / Aktivitet utförd av icke vårdpersonal / Då aktivitet är utförd av personer som inte innefattar vårdpersonal ska PerformerRole.id inte anges. / Klasserna CareUnit (vårdenhet) och CareGiver (vårdgivare) ska inte involveras däremot ska klassen Person användas och Person.name anges. |
| 2.2 | AdditionalParticipant | AdditionalParticipant är hälso- och sjukvårdspersonal / Då ytterligare medverkande är hälso- och sjukvårdpersonal ska AdditionalParticipant.id anges med HSAid. / Om producenten ska stödja sammanhållen journalföring och patientens direktåtkomst krävs även att klassen Person används och att Person.name anges. / AdditionalParticipant är INTE hälso- och sjukvårdspersonal / Då ytterligare medverkande personer inte är hälso- och sjukvårdspersonal ska additionalParticipant.id inte anges. Istället används klassen Person. / AdditionalParticipant är inte en person / Då additionalParticipant är en device, careUnit eller organization används inte additionalParticipant.id |
| 2.3 | ActivityGroup.Activity.Time | Attributet ActivityGroup.Activity.Time har multiplicitet 0..1. Då man vill indikera att en aktivitet är utförd och ActivityGroup.Activity.Status är satt till 398166005 (utförd) eller saknas, är ActivityGroup.Activity.Time obligatoriskt. |
| 2.4 | LegalAuthenticator | Om informationen är signerad av hälso- och sjukvårdspersonal ska LegalAuthenticator anges med namn och/eller HSA-id i svars-delen. / Minst ett av attributen LegalAuthenticator.id eller LegalAuthenticator.name ska anges. |
| 2.5 | referredInformation.time | ReferredInformation.time ska innehålla en tidpunkt som ska kunna användas som inparameter i ett tidsintervallbaserat sökvillkor till den tjänst som returnerar den identifierade informationsmängd som relationen pekar ut. Denna tidpunkt skall vara den tidpunkt som tidssökparametern till den utpekade tjänsten filtrerar på. I det fall då en konsument har behov av att söka upp flera relaterade informationsmängder från samma tjänst kan konsumenten skapa ett sökintervall som omfattar de ReferredInformation.time från dessa relationer. Detta sökintervall används sedan som inparameter till den tjänst som relationerna pekar ut. På detta sätt kan en konsument göra endast ett anrop över en begränsad tid som returnerar samtlig relaterad information istället för att göra anrop ett och ett med respektive id som anges i relationen, eller ta ut en patients totala informationsmängd utan någon möjlighet att filtrera på tid. |
| 2.6 | activityGroup/ / performerRole/ / careUnit | Åtkomstkontroll inom sammanhållen journalföring / Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA-krav
Inga avvikande SLA-krav

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetActivitiesInteraction_1.3_RIVTABP21.wsdl](files/wsdl/GetActivitiesInteraction_1.3_RIVTABP21.wsdl) | WSDL-kontrakt |
| [clinicalprocess_activity_actions_1.3.xsd](files/schema/clinicalprocess_activity_actions_1.3.xsd) | Domänschema (delat) |
| [clinicalprocess_activity_actions_1.3_ext.xsd](files/schema/clinicalprocess_activity_actions_1.3_ext.xsd) | Domänschema, extensions |
| [clinicalprocess_activity_actions_enum_1.3.xsd](files/schema/clinicalprocess_activity_actions_enum_1.3.xsd) | Domänschema, enumerationer |
| [itintegration_registry_1.0.xsd](files/schema/itintegration_registry_1.0.xsd) | Registry-schema (delat) |
| [GetActivitiesResponder_1.3.xsd](files/schema/GetActivitiesResponder_1.3.xsd) | Tjänstespecifikt schema |
| [SjD_TK_GetActivities_1.3.docx](files/docs/SjD_TK_GetActivities_1.3.docx) | Tjänstekontraktsbeskrivning |
| [SjD_TP_GetActivities_1.3.docx](files/docs/SjD_TP_GetActivities_1.3.docx) | Tjänsteplattformsbeskrivning |
| [AB_clinicalprocess_activity_actions.docx](files/docs/AB_clinicalprocess_activity_actions.docx) | Anslutningsbeskrivning |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getactivities](StructureDefinition-getactivities.html)
* **Logisk modell (request):** [StructureDefinition/getactivities-request](StructureDefinition-getactivities-request.html)
