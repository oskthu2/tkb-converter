## Tjänstedomänens arkitektur
Tjänstekontrakten som beskrivs i detta dokument används för att hämta behörighetsegenskaper för en person som är anställd inom eller arbetar på uppdrag av en organisation verksam inom svensk vård och omsorg.
Anropen kan till exempel användas av en IdP (Identity Provider) för att förse de tjänster som en användare önskar använda med behörighetsgrundande information om användaren.

### Flöden

#### Hämta information om en persons PDL-relaterade behörighetsegenskaper
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar en persons behörighetsegenskaper via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaka till den anropande konsumenten.  Se Sekvensdiagram nedan.

##### Arbetsflöde 1
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_003.png](images/img_003.png)

#### Hämta information om en persons Administrativa behörighetsegenskaper
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar en persons behörighetsegenskaper via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaka till den anropande konsumenten.  Se Sekvensdiagram nedan.

##### Arbetsflöde 3
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_002.png](images/img_002.png)

#### Hämta HOSP-uppgifter (GetHospLastUpdate och GetHospCredentialsForPerson)
HOSP-information – det vill säga uppgifter om t.ex. legitimerad yrkesgrupp, specialistkompetens, förskrivarkod och förskrivningsrätt – hämtas till HSA från Socialstyrelsens HOSP-register och lagras i en separat och dold struktur i HSA. Därifrån kan dessa hämtas för att uppdatera en lokal HSA-katalog med aktuella HOSP-uppgifter för en eller för samtliga medarbetare.
Flödet för en typisk användning är att en tjänstekonsument först med anrop till GetHospLastUpdate kontrollerar om nytt utlämnande från Socialstyrelsen gjorts sedan konsumentens tidigare körning. Om nytt utlämnande tillgängliggjorts hämtar konsumenten HOSP-uppgifterna person för person för de personer som tjänsten behöver kontrollera.
Anrop för att kontrollera senaste tid för tillgängliggörande av nytt utlämnande med anrop till GetHospLastUpdate, samt anrop för att hämta en persons HOSP-uppgifter med anrop till GetHospCredentialsForPerson, görs normalt via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaka till den anropande konsumenten.  Se Sekvensdiagram nedan.

##### Arbetsflöde 4
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_001.png](images/img_001.png)

#### Hantera personer som behöver få HOSP-uppgifter utlämnade

#### (HandleHospCertificationPerson…)
Katalogtjänsten kan begära utlämnande av HOSP-uppgifter för de personer som finns representerade med personpost i Katalogtjänsten från Socialstyrelsen. För en person som inte redan finns representerad i Katalogtjänsten kan tjänstekonsumenten med HandleHospCertificationPerson lägga till personen i Katalogtjänsten så Katalogtjänsten begär utlämnande av HOSP-uppgifter även för en sådan person. HOSP-uppgifter för personen kan sedan efter nästa begäran/utlämnande hämtas med GetHospCredentialsForPerson enligt ovan. Principen tillämpas parallellt med normal användarhantering i en tjänst som även tillhandahålls till personer som av olika anledningar inte kan registreras i Katalogtjänsten, t.ex. fritidsförskrivare.
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar en persons HOSP-uppgifter via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaka till den anropande konsumenten.  Se Sekvensdiagram nedan.

##### Arbetsflöde 5
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_004.png](images/img_004.png)

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 | Flöde 2 | Flöde 3 | Flöde 4 | Flöde 5 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| GetCredentialsForPersonIncludingProtectedPerson (se avsnitt 6.1) | X |  |  |  |  |
| GetCredentialsForPerson (se avsnitt 6.2) | X |  |  |  |  |
| GetPersonAuthorizedToSystemIncludingProtectedPerson (se avsnitt Error! Reference source not found.) |  | X |  |  |  |
| GetPersonAuthorizedToSystem (se avsnitt Error! Reference source not found.) |  | X |  |  |  |
| GetAdminCredentialsForPersonIncludingProtectedPerson (se avsnitt 6.5) |  |  | X |  |  |
| GetAdminCredentialsForPerson (se avsnitt 6.6) |  |  | X |  |  |
| GetHospLastUpdate (se avsnitt 6.5) |  |  |  | X |  |
| GetHospCredentialsForPerson (se avsnitt 6.6) |  |  |  | X |  |
| HandleHospCertificationPerson (se avsnitt 6.7) |  |  |  |  | X |

### Adressering
Tjänstedomänen tillämpar verksamhetsbaserad adressering. Som logisk adress används Inera AB:s HSA-id för Katalogtjänst HSA.

### Aggregering och engagemangsindex
För närvarande är aggregering eller engagemangsindex ej aktuellt, då endast en tjänsteproducent är ansluten till tjänstedomänen.
I samband med att fler tjänsteproducenter ansluter till tjänstedomänen behöver sökningen från anropande tjänstekonsument realiseras mot flera tjänsteproducenter. Vilken alternativ lösning som ska tillämpas när denna situation uppstår är ännu inte beslutat, se AB-2.3 [R1].
