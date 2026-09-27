## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
informationsecurity: authorization: blocking
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

### Svenskt namn
infrastruktur:säkerhetstjänster:spärrhantering

### Beskrivning
Tjänstedomänens omfattning är spärrhantering för vårdgivare som har behov av att registrera spärr av uppgifter på patientens begäran enligt Patientdatalagens regleringar samt att utföra kontroll mot spärr i vårdsystemen.
Den kravställande processen är att tillse att vårdgivarna inom svensk hälso- och sjukvård får verktyg att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande patientens rättighet att begära spärr på sina uppgifter.
Tjänstekontrakten för Spärr syftar till att stödja informationshanteringen både inom det inre sekretessområdet (inom vårdgivarens verksamhet) och vid sammanhållen journalföring.
En utgångspunkt för tjänstedomänen Spärr är uppdraget Patientdatalagen i Praktiken (PDLiP), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av patientdatalagen.
Arbetet har resulterat i rapporter samt RIV-specifikation för PDLiP [RIV PDLiP].
Ett bakomliggande kravarbete specifikt kring spärrhantering har dessutom bedrivits av Inera på uppdrag av då tidigare CeHis med representanter från SLL, Sörmland, Örebro, VGR, Östergötland. Parterna har representerats av sakkunniga inom områdena juridik, verksamhet och teknik.

Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för spärrhantering lokalt såväl som nationellt.
Det typiska behovet är att från e-tjänst/vårdsystem ansluta sig mot befintliga tjänster för spärr för att hantera PDLs krav. Tjänstekontrakten kan även ligga till grund för konstruktion av en implementation av en lokal spärrtjänst.

