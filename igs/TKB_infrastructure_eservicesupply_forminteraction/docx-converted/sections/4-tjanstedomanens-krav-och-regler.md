## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Presentationsregler för konsument
Producerande system styr vilka frågor som konsument skall presentera för slutanvändaren (användare/patient).
T.ex. Om producerande system skickar 5 frågor skall konsumerande system presentera 5 frågor för slutanvändaren (användare/patient).
Konsumerande system skall följa den metadata som styr utformningen och grafiska presentationen av frågor.
T.ex. om producerande system skickar metadata för inmatningstypen ”checkbox” skall konsumerande system presentera en checkbox.
Konsumerande system presenterar formulär och dess frågor så det harmonisera med sin grafiska profil.

### Informationssäkerhet och juridik
Det kan vara effektivt för kontakter med olika regelverksansvariga att det finns upprättat en eller flera systembeskrivningar över den organisationskontext inom vilken formulärtjänsterna skall användas – bilder av hur formulärhanteringen ser ut ur ett organisatoriskt perspektiv. Bilden kan vara mer generisk, som en översiktsbild för planerade tjänster, flöden och relationer, eller mer konkret, som en kartläggning med tekniska skisser av redan befintliga tjänster. Regelverksansvariga kan t ex vara landstingsjurister, informationssäkerhetsexperter, personuppgiftsombud och handläggare hos tillsynsmyndigheter.
Systembeskrivningar är användbara även annars i tjänsteproducenters och tjänstekonsumenters arbete, t ex när de skall ta ställning till hur formulärhanteringen skall designas för att användandet enkelt skall kunna harmoniera med gällande juridiska regelverk (t ex vad avser informationssäkerhetskrav, patientsäkerhetsfrågor, hantering av offentlighet och sekretess, journalföring, krav på behörighetshantering, gallring och arkivering).
Nedan följer ett stöd vid framtagande av en organisatorisk systembeskrivning av verksamhetsinriktad karaktär. Systembeskrivningen bör tas fram av de parter som direkt arbetar med systemen, t ex utvecklare, projektägare, systemägare eller systemförvaltare. Vanligen är det frågan om del av ett vårdsystem i hälso- och sjukvården i Sverige, med några av de delar som det i sin tur är sammansatt av, ett system av system.
Exempel på delar att beskriva vid kartläggning av ett relevant vårdsystem:
Inom vilken hälso- och sjukvård skall tjänsten användas? Yttre gränsdragning är viktig för att begränsa till relevant helhet. Det kan vara generiska exempel, t ex offentlig primärvård inom ett landsting eller faktiska tillämpningar, t ex KOL-vården i Lidingö kommun.
Vid vilka vårdenheter och vilka verksamheter skall tjänsten användas? T ex vårdenheten Reumatologmottagningen vid Karolinska universitetssjukhuset i Solna eller verksamheten som reumatologmottagningen tillhör - Reumatologiska kliniken vid Karolinska universitetssjukhuset.
Inom vilka vårdprocesser skall tjänsten användas? T ex det normala, icke akuta, vårdflödet för kroniskt sjuka CF-patienter med egenvård, löpande konsultationer, månadskontroller och årskontroll.
Vilken vårdgivare är ansvarig? T ex myndigheten Karolinska universitetssjukhuset eller Jönköpings läns landsting eller Praktikertjänst AB. Ange organisationsnummer.
Vilka landsting/kommuner är yttersta ansvariga, d.v.s. sjukvårdshuvudmän, för verksamheten där tjänsten används? T ex Stockholms läns landsting, Göteborgs kommun eller Region Skåne. Ange organisationsnummer.
Vilka patientgrupper skall använda tjänsten? T ex personer med astmadiagnos som är över 55 år gamla och som är bosatta i Göteborgs kommun.
Exempel på egenskaper hos de kartdelar som beskrivs:
systemgränser (t ex landstingsgränser eller gränser mot kommunal socialtjänst och hur offentlighet och sekretess skall hanteras),
relationer (t ex förhållanden mellan olika vårdgivare som använder en gemensam formulärtjänst i en vårdprocess med samma patientgrupp när det gäller hur personuppgiftsansvaret skall organiseras),
objekt/subsystem (t ex informationsflöden som involverar labb eller intern IT-support och hur journalföring / arkivering skall ske)
omgivning (t ex gränsdragning mot vårdprocesser som inte skall omfattas av en tjänst, eller beroenden till systemförvaltande IT-leverantörer, tillsynsmyndigheters ansvarsområden för att analysera hur dessa skall involveras eller avgränsas i regelverksarbetet).
Resultatet av en systembeskrivning kan beskrivas mer i text eller mer grafiskt (jfr systemkarta). Här följer exempel på frågor och resonemang på påverkan som kan utredas med systembeskrivningar som ett underlag:

| Exempel på fråga | Exempel på påverkan som kan utredas med systembeskrivningar som ett underlag |
| :--- | :--- |
| ”Vilka avtal/kontrakt bör upprättas mellan de olika aktörerna (e-tjänst mellanhänder, huvudman och invånaren)?” | En tydlig systemkartläggning kan belysa och bearbetas med hjälp av verkliga och hypotetiska case och scenarier. När en e-tjänst funnits under en period kan inventering av befintliga avtal också ge en bättre bild av vilka kontrakt som upplevs som nödvändiga och användbara. Den nationella arkitekturen, landstingsgemensamma ramavtal och strukturer, referensarkitektur kommer att underlätta integration och gemensam utveckling samt underlätta för regelverksansvariga. |
| ”Hur länge får information lagras i ett formulär, hur länge bör ett pågående formulär få vara aktivt d.v.s. vara temporärt.” | Frågeställningen påverkar kraven som en vårdgivare måste ställa på den tekniska lösningen och kan kräva att den tekniska lösningen antingen uppfyller krav som ställs på journalsystem, alternativt innehåller stöd för export av information från formulärtjänst till journal på ett sätt som uppfyller särskilda informationssäkerhetskrav. Normalt sätt kan detta hanteras med utgångspunkten att själva formulärtjänsten inte innehåller lagring av känsliga personuppgifter. |
| ”Vem äger och kan ta betalt för en formulärtjänst?”, ”Vem äger informationen i tjänsten?” | Dessa frågeställningar påverkar ingångsvillkoren för hur en e-tjänstelösning introduceras inom en sjukvårdshuvudmans område och medför t ex att man när en medborgare använder en tjänst tillser att den som äger tjänsten i förhållandet med invånaren (t ex en vårdgivare) har säkrat med slutanvändarna att informationen kan utnyttjas för ytterligare ändamål som t ex statistik, forskning. Normalt sätt kan detta hanteras genom att man har väl utvecklade avtal med slutanvändarna, t ex villkorstexter integrerade i de olika tjänstekomponenterna som användarna godkänner när man har börjat använda tjänsten, och att man med policies, ramavtal och anslutningsavtal reglerar från sjukvårdshuvudmannens sida vad som skall gälla. |
| ”På vilket sätt bör en användares (patients) avslutade formulär vara tillgängligt? Måste man kunna se det som en historik över ifyllda formulär?” | Denna frågeställning påverkar hur en personuppgiftsansvarig vårdgivare skall se på formulärhanteringen på verksamhetsnivå och kan kräva att verksamheterna har särskilda rutiner för journalföring, gallring och arkivering. Normalt sätt kan detta hanteras genom att personuppgiftsansvarig vårdgivare har ett särskilt system för kartläggning av befintliga register (jfr PUH-registret inom SLL där också ett Arkiv och biobankscentrum finns som erbjuder tjänster för förvaring och långtidslagring av information och råd och stöd i arkiv- och dokumenthanteringsfrågor). |
| ”Kan olika vårdgivare ta del av information från samma patient?” | Denna frågeställning påverkar frågor om sammanhållen journalföring och avtal mellan vårdgivare om personuppgiftsbiträden, direktåtkomst, personuppgiftsombud m.m. och kan kräva att den som tillhandahåller en formulärtjänst har kartlagt alla personuppgiftsflöden. Normalt sätt kan detta hanteras genom att själva formulärtjänsten inte möjliggör att olika vårdgivare har access till ”varandras” patientuppgifter, istället styrs accessmatriser och behörigheter på verksamhetsnivå. |
| ”Kan patienter dela med sig av informationen i formulärtjänsten till handläggare inom socialtjänsten?” | Det pågår utredningar för att förbättra tillgång till personuppgifter inom och mellan hälso- och sjukvården och socialtjänsten som skall förbättra och förenkla möjligheterna för aktörer i e-hälsa att utbyta information. Dessa frågeställningar påverkar avtal mellan invånare och den som tillhandahåller en tjänst, t ex en för att en vårdgivare skall kunna säkerställa att patienten har en privat sfär för hantering av sina patientuppgifter som inte faller inom vårdgivarens ansvar för offentlig handling och sekretess. |
| ”Har en användare rätt att få ett avslutat formulär raderat? Vilka verksamhetsregler skall tillämpas på formulären? Vilka regelverk kan styra patientens möjlighet att radera ett formulär?” | Denna frågeställning påverkar avtal mellan vårdgivare, verksamheter, tjänsteleverantörer, patienter m.fl. och kan kräva att tjänsten både i användargränssnitt och avtal tydliggör vad som är patientens egna uppgifter som patienten kan bestämma skall raderas (jfr patientens skrivyta), vad som är journaluppgifter eller administrativa uppgifter som vårdgivare äger (jfr uppgifter som skall journalföras eller som ingår i administrationsgränssnitt). Normalt sätt kan detta hanteras genom att formulärtjänster delas upp i tydliga deltjänster så att inte sammanblandning mellan olika krav och regelverk behöver hanteras (ett normalfall skulle vara att separera information som skall journalföras från allmän användarinformation eller rent administrativa uppgifter). |
| ”Vilka olika typer av formulär kan aktualiseras och vilka olika generella regelverk behövs? På vilket sätt är dess typer kopplade till verksamhetsprocesser och hur styr det regelverken?” | Formulär kan t ex hjälpa till vid förnyande av recept, dialog om provresultat eller för att inhämta hälsodeklaration. Vilka frågeställningar som är aktuella påverkar sjukvårdshuvudmannens krav på hur eTjänster integreras i verksamhetsprocesser och lokala regelverk. I upphandlingsunderlag kan krav på att olika tjänster tillhandahålls ställas och även generella policys kan skapas för att styra upp hanteringen, t ex med etiska riktlinjer kring hur patientuppgifter får användas för forskning och marknadsföring. Graden av integration med verksamhetsprocesser påverkar hur integrerad eTjänsten skall ses med vårdtjänster i övrigt vilket får påverkan på patientsäkerhetsfrågor, ansvarsfrågor m.m. |
| ”Hur skall ansvarsgränser dras mellan aktörer? Systemkrav?” | För att denna frågeställning skall kunna bearbetas behövs tydlig systemkartläggning som sedan kan belysas och bearbetas med hjälp verkliga och hypotetiska case och scenarier. |
| ”Vem är ansvarig för helheten? Styrmedel?” | Med utgångspunkt i de avgränsningar och delar som beskrivits i en systemkartläggning kan styrmedel diskuteras, t ex vad gäller: / - Policys / - Ersättningsmodeller / - Regelverk / - Avtal / - Författningskrav / Ansvar mellan beställare och utförare kan regleras avtalas med e-tjänster som en integrerad del. Nationella strukturer kan utformas och regleras. |
| ”Vem är ansvarig inför patienten? Informationskrav” | Ett vanligt sätt att beskriva begreppet personlig integritet i samband med informationshantering är att den enskilde skall kunna kontrollera spridningen av uppgifter om sig själv eller ha en rätt att bestämma vilka uppgifter om sig själv som han eller hon vill dela med sig till andra. Med utgångspunkt i de avgränsningar och delar som beskrivits i en systemkartläggning kan informationssäkerhetsfrågor diskuteras konkret, t ex vad gäller: / - Integritet / - Sekretess / - Offentlighet / - Informationssäkerhet / - Informationsklassning / - Integritetsfilter / - Informationssäkerhet |
| ”Vart vänder sig patienten vid fel/missnöje?” | Utgångspunkten är att eHälsotjänsterna är en integrerad del i hälso- och sjukvården. Det bör då alltid finnas en ansvarig vårdgivare som en missnöjd patient kan vända sig till. Invånare utan patientrelation bör kunna vända sig till en representant för sjukvårdshuvudmannen, t ex utsedd en funktion för e-tjänsten – besvara formulär. |

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt. Observera att detta gäller tjänsteproducenten, antalet ”mellanhänder” som tjänsteplattformar kan komma att utöka svarstiden.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid (avg) | < 500 ms per anrop. |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 50 samtidiga anrop |  |
| Aktualitet | - |  |
| Återställningstid | - |  |

#### Övriga krav
Inga övriga krav finns.

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara följdeffekter av programmeringsfel eller att meddelandeformatet är felaktigt. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.
Användaren kommer enbart att se ”tekniskt fel – inte detaljinformation. Den riktar sig till systemförvaltaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode, resultText/comment.
Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa upp informationen för invånaren.
resultCode kan vara:
OK 
transaktionen har utförts enligt uppdraget i frågemeddelandet.
INFO 
transaktionen har utförts enligt uppdraget i frågemeddelandet, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren. Exempel på detta kan vara ”medtag legitimation vid besöket”.
ERROR
transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara ”ditt svar gick inte att hantera pga XXX”.

#### Krav på en tjänsteproducent

##### Logiska fel
Inga specifika felkoder används.

##### Tekniska fel
Inga specifika felkoder används.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga specifika felkoder används.

##### Tekniska fel
Inga specifika felkoder används.

