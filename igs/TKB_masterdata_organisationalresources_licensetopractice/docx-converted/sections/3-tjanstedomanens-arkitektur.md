## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden
Domänens flöde syftar till att ge direktåtkomst till HoSp-registret genom att låta användare nyttja tjänsten för att söka uppgifter baserat på namn och födelsedatum eller hämta uppgifter med hjälp av person- eller samordningsnummer.
Tjänsten kan nyttjas på två sätt. Antingen känner man till en persons personnummer eller samordningsnummer och anger detta genom inparameten personId till tjänsten.
Alternativt kan man söka efter en person genom att ange efternamn, ett eller flera förnamn och/eller födelsedatum. Vid uppslag vi personId retuneras uppgifter om en eller ingen person. Vid sökning kan resultatet även utgöras av flera matchande HoSp-personer.

#### Direktåtkomst för offentliga vårdgivare
Tjänsten syftar till att ge direktåtkomst till HoSp-registret för offentliga vårdgivare genom att låta dem söka uppgifter baserat på namn och födelsedatum eller hämta uppgifter med hjälp av person- eller samordningsnummer.
Fråga på specifikt personId:
GetHospPersonForPublicHealthcareRequest
<<personId>>
GetHospPersonForPublicHealthcareResponse
Svar med 0..1 hospPerson
Sökning efter HoSp-person:
GetHospPersonForPublicHealthcareRequest
<<fornamn|efternamn|fodelsedatum>>
GetHospPersonForPublicHealthcareResponse
Svar med 0..* hospPerson

#### Direktåtkomst för IVO
Tjänsten syftar till att ge direktåtkomst till HoSp-registret för IVO genom att låta dem söka uppgifter baserat på namn och födelsedatum eller hämta uppgifter med hjälp av person- eller samordningsnummer.
Fråga på specifikt personId:
GetHospPersonForIVORequest
<<personId>>
GetHospPersonForIVOResponse
Svar med 0..1 hospPerson
Sökning efter HoSp-person:
GetHospPersonIVORequest
<<fornamn|efternamn|fodelsedatum>>
GetHospPersonForIVOResponse
Svar med 0..* hospPerson

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde direktåtkomst |
| :--- | :--- |
| GetHospPersonForPublicHealthcare | Offentliga vårdgivare |
| GetHospPersonForIVO | IVO |

### Adressering
Den logiska adressen är till den nationella instansen för HoSp som representeras av Socialstyrelsens organisationsnummer.

### Aggregering och engagemangsindex
Används ej inom domänen,

