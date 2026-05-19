## Inledning

### Svenskt namn
infrastruktur:säkerhetstjänster:patientrelationshantering
patientrelationshantering

### WEB beskrivning
Patientrelationshantering registrerar och lagrar information om relationer mellan personal och patient.
Tjänstekontrakten för Patientrelationshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina "egna" patientrelationer, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Tjänstekontrakten specificerar bland annat hur patientrelationsunderlag ska hämtas ut för intern kontroll av patientrelation i vårdsystemet, hur anrop från ett vårdsystem ska göras för att kontrollera om patientrelation finns eller inte, och för att kunna ge patienten en sammanställd lista av dennes alla patientrelationer som finns registrerade hos vårdgivaren.

### Om dokumentet
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen urn:riv:ehr:patientrelationship (huvuddomän Electronic Health Record underdomän PatientRelationship). Den svenska benämningen är Patientrelationstjänst.
Tjänsterna syftar till att vårdgivarna inom svensk hälso- och sjukvård får verktyg att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande krav på patientrelation mellan vårdpersonal och patient.
Genom att nationellt standardisera tjänstekontrakt för samverkan mellan vårdsystem och patientrelationstjänst skapas kompatibilitet mellan alla journalsystem och alla patientrelationstjänster. Därigenom undviks huvudmanna-specifika anpassningar av vårdsystem som behöver integration med patientrelationstjänst.
Tjänstedomänen omfattar tjänster för
att registrera patientrelation mellan personal i vård och omsorg och patient för att få tillgång till patient uppgifter enligt Patientlagens regleringar
att hämta ut patientrelationsunderlag för intern kontroll av patientrelation i vårdsystemet
att via anrop från vårdsystem kontrollera om patientrelation finns
att ge patienten en sammanställd lista av dennes alla patientrelationer som finns registrerade hos vårdgivarna
Tjänstekontrakten för patientrelation syftar till att stödja informationshanteringen både inom det inre sekretessområdet (inom vårdgivarens verksamhet) och vid sammanhållen journalföring.
En utgångspunkt för tjänstedomänen är Cehis uppdrag Patientdatalagen i Praktiken (PDLiP) , som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av Patientdatalagen för informationssamverkan inom och mellan vårdgivare.
Arbetet baseras på RIV-specifikation för PDLiP [RIV PDLiP] som bland annat omfattar hanteringen av patientrelationer för vårdgivare.

### Målgrupp
Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för hantering av patientrelationer lokalt såväl som nationellt.
Det typiska behovet är att ansluta en tillämpning som erbjuder patientrelation som tjänstekonsument till en patientrelationstjänst för att hantera PDLs krav. Tjänstekontrakten ligger även till grund för konstruktion av patientrelationstjänster.

### Allmänt
Den nationella arkitekturen är utformad
dels för att stödja vårdgivarnas behov att hantera patientrelationer för lokala/regionala vårdsystem
dels för motsvarande behov i nationella e-hälsotjänster
Arkitekturen ska medge att vårdgivare, landsting/kommuner och regioner på ett flexibelt sätt kan hantera sina "egna" patientrelationer, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Patientrelationsinformation utbyts därför genom tydliga tjänstekontrakt.
Tjänsterna syftar till att ge följande verksamhetsmässiga effekter
Hälso- och sjukvårdpersonalen ska få stöd att på ett enkelt sätt registrera patientrelationer, dess varaktighet och för vem/vilka registreringen gäller.
Patientrelationen ska kunna få genomslag i anslutna tillämpningar, såväl lokala som nationella, t ex både i det egna vårdsystemet och i nationell patientöversikt, så att dubbelregistreringar undviks.

![img_001.png](images/img_001.png)
Figur 1: Principer för samverkande tjänster för hantering av patientrelation
Notera att en viss instans av patientrelationstjänsten typiskt hanterar flera vårdgivares information. För att visa på principerna ges exempel utifrån två fiktiva vårdgivare A och B.
Nationellt anpassade tjänstekontrakt gör att vårdsystem kan ansluta till ett och samma gränssnitt för patientrelation oavsett hur huvudmannen ordnar med sin hantering och lokala infrastruktur.
Tjänstekontrakten kan realiseras oberoende av var delsystemen realiseras. Man kan således välja att nyttja en mellan huvudmän delad molntjänst ("hotelltjänst"), alternativt en egen lokal installation.
Det är vidare valfritt var användargränssnittet för att registrera patientrelation realiseras, i ett separat gränssnitt mot patientrelationstjänsten (som i fallet NPÖ) eller i respektive vårdsystem/e-tjänst eller i en gemensam portal. Oavsett var sparas patientrelation i patientrelationstjänsten för aktuell vårdgivare.
Nationella e-tjänster, t ex NPÖ, får genom tjänstekontrakten ett gränssnitt till de samtycken och patientrelationer som behövs för dess hantering av direktåtkomst inom den sammanhållna journalföringen. Eftersom informationen kommer från många olika vårdgivare över landstings- och regiongränser, behöver tjänsteanropen routas till den instans av patientrelationstjänst som är aktuell. Routingen bygger på verksamhetsmässig adressering av anropen enligt RIV TA och T-boken och är huvudsakligen baserad på vårdgivarens identitet.

### Information hanterad i tjänsterna
Tjänsterna inom domänen hanterar intyg gällande viss patient för direktåtkomst till patientens information från andra vårdgivare enligt Patientdatalagen.
Patientrelationen avser primärt att patienten har en relation till enskild hälso- och sjukvårdspersonal på en vårdenhet.
Patientrelaionen har en giltighetstid och det finns även tjänster för att återkalla respektive makulera (vid felregistrering) intygen.
Tjänstekontrakten hanterar
dels grundläggande patientrelationsinformation. 
Denna information är nödvändig för samverkan mellan system och nyttjas för patientrelationskontroll.
dels utökad patientrelationsinformation (extended).
Utökningarna är kringinformation som t ex när och vem som registrerade patientrelationen. Denna är inte nödvändig för patientrelationskontrollen, men kan användas när patientrelationsinformation hanteras och visas upp.

### Tjänsteöversikt
Nedanstående tabell visar vilka tjänster som finns definierade.
Den extra underdomänen beskriver vilket tjänsteområde/ namnrymd tjänsten tillhör. Följande underdomäner är definierade:
querying 	- tjänstekontrakt för att hämta patientrelationer för patientrelationskontroll
accesscontrol 	- tjänstekontrakt för patientrelationskontroll
administration 	- tjänstekontrakt för att registrera, återkalla och lista patientrelationer med utökad information

| Tjänst | Beskrivning | Underdomän |
| :--- | :--- | :--- |
| GetPatientRelationsForCareProvider | Läs patientrelationer  inom vårdgivare. | querying |
| GetPatientRelationsForPatient | Läs patientrelationer för patient inom vårdgivare | querying |
| CheckPatientRelation | Kontrollera om patientrelation finns relativ viss personal/vårdenhet | accesscontrol |
| GetExtendedPatientRelationsForPatient | Läs patientrelationer för patient inom vårdgivare, med utökad information | administration |
| RegisterExtendedPatientRelation | Registrera patientrelation, med utökad information | administration |
| CancelExtendedPatientRelation | Återkalla patientrelation, med utökad information | administration |
| DeleteExtendedPatientRelation | Makulera patientrelation, med utökad information | administration |

### Referenser

| Beteckning | Dokument / Källa |
| :--- | :--- |
| RIV PDLiP | RIV Specifikation Patientdatalagen i Praktiken, 1.0, CeHis, www.cehis.se |
| PDL | Patientdatalag (2008:355), http://www.regeringen.se/sb/d/6150/a/71234 |
| SOS2008:14 | SOSFS 2008:14 föreskrifter samt handbok http://www.sos.se/sosfs |
| RIVAnvisning Tjänstebeskrivning | RIV_21_Anvisning_Bilaga_51_Tjanstekontraktbeskrivning_Regelverk_110220 |
| RIV TA 2 | RIV Teknisk Anvisning Basic Profile 2.1 http://rivta.googlecode.com/svn/wiki/specs/RIV_Tekniska_Anvisningar_Basic_profile_2.1.pdf |
