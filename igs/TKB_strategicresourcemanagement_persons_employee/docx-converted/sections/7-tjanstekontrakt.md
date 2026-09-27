## Tjänstekontrakt

### GetEmployeeIncludingProtectedPerson
GetEmployeeIncludingProtectedPerson returnerar information, som kontaktinformation samt legitimerad yrkesgrupp och specialitet, för angiven person. Metoden kan användas av en tjänstekonsument för att t.ex. verifiera uppgifter i en egen intern användardatabas, för att kunna registrera en användare (med HSA-id) baserat på användarens person-id eller för att verifiera behörighet för det fall att denna grundar sig enbart på den personliga egenskapen Legitimerad yrkesgrupp.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.2 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personHsaId *1) | String | Sökt persons HSA-id. | 0..1 |
| personalIdentityNumber *1) | String | Sökt persons Person-id (personnummer eller samordningsnummer) | 0..1 |
| searchBase *2) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| personInformation | PersonInformationType | Information om personen. / Om personen har flera person-objekt returneras en instans per objekt. | 0..n |
| ..personHsaId | String | Personens HSA-id. | 1..1 |
| ..givenName | String | Tilltalsnamn. | ..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. | 0..1 |
| ..mail | String | E-postadress. | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..switchboardNumber | Telefon | Telefonnummer till växel. | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer. | 0..n |
| ..mobileNumber | Telefon | Mobiltelefonnummer. | 0..n |
| ..smsTelephoneNumber | Telefon | Telefonnummer för SMS-meddelanden. | 0..1 |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. | 0..n |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..postalAddress | AddressType | Postadress. | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..n |
|  |  |  |  |
| ..description | String | Generell beskrivning. | 0..1 |
| ..languageKnowledgeCode | String | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. | 0..n |
| ..title | String | Titel i fritext | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp | 0..n |
| ..paTitle | PaTitleType | Personens befattning | 0..n |
| .. ..paTitleName | String | Befattning | ..1 |
| .. ..paTitleCode | String | Befattningskod | ..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning. | 0..n |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning. | 0..n |
| ..dn | DN | ”Distinguished Name”. Objektets placering (sökväg) i katalogen, t.ex. cn=Henrika Littorin,ou=Anställda,ou=Enhet Systemförvaltning,ou=Område e-tjänster Drift och Förvaltning,o=Inera AB,c=SE | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras) | 0..1 |
| .. | Boolean | true: om personen är ett fingerat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
*2) searchBase
För GetEmployeeIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter person: i anropet angiven sökbas

#### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson | 10 anrop/s | 100 ms |

#### Logiska fel

#### Annan information om kontraktet
-

### GetEmployee
Metoden är identisk med GetEmployeeIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap
ovan.

#### Version
Version på detta kontrakt är 1.1

#### Fältregler
Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.1.2 Fältregler) aldrig kommer att returneras.

### GetCommissionMembersIncludingProtectedPerson
GetCommissionMembersIncludingProtectedPerson returnerar information, som namn, kontaktinformation samt legitimerad yrkesgrupp och specialitet, om personer som är kopplade till medarbetaruppdrag för angiven enhet eller organisation och kopplingen är inom ev angivna start- och slutdatum. Listan kan vid behov filtreras. Metoden kan användas av en tjänstekonsument för att t.ex. för en administratör presentera en lista med valbara personer för registrering i en intern användardatabas eller för tilldelning av ärenden.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.4 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 1.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL. | 1..1 |
| commissionPurpose | String | Medarbetaruppdragets ändamål enligt definierad värdemängd. | 1..1 |
| commissionRights | String | Medarbetaruppdragets rättigheter enligt definierade värdemängder. Syntax / Aktivitet;Informationstyp;Omfång, alla delar behöver anges. | 0..n |
| healthCareProfessionalLicense | String | Legitimerad yrkesgrupp enligt definierad värdemängd | 0..n |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| personInformation | PersonInformationType | Information om personen. / En person (ett HSA-id) returneras bara en gång även om personen är medlem i flera matchande medarbetaruppdrag Om personen har flera person-objekt returneras en instans per objekt. | 0..n |
| ..personHsaId | String | Personens HSA-id. | 1..1 |
| ..givenName | String | Tilltalsnamn. | ..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. | 0..1 |
| ..personStartDate | dateTime | Eventuellt startdatum för personens anställning. Om startdatum ännu inte inträtt innebär det att personens anställning ännu inte är aktiv. | 0..1 |
| ..personEndDate | dateTime | Eventuellt slutdatum för personens anställning. Om slutdatum passerats innebär det att personens anställning inte är aktiv. | 0..1 |
| ..mail | String | E-postadress. | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..switchboardNumber | Telefon | Telefonnummer till växel. | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer. | 0..n |
| ..mobileNumber | Telefon | Mobiltelefonnummer. | 0..n |
| ..smsTelephoneNumber | Telefon | Telefonnummer för SMS-meddelanden. | 0..1 |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. | 0..n |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..languageKnowledgeCode | String | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. | 0..n |
| ..title | String | Titel i fritext | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp | 0..n |
| ..paTitle | PaTitleType | Personens befattning | 0..n |
| .. ..paTitleName | String | Befattning | ..1 |
| .. ..paTitleCode | String | Befattningskod | ..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning. | 0..n |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning. | 0..n |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras) | 0..1 |
| .. | Boolean | true: om personen är ett fingerat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns inga regler som ej uttrycks i schemafilerna och tabellen ovan.
*2) searchBase
För GetCommissionMembersIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter enhet som pekas ut i organisationsomfång: i anropet angiven sökbas
- Sök efter medarbetaruppdrag: vårdenheten används som sökbas
- Sök efter person: här används sökbasen c=SE

#### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetCommissionMembersIncludingProtectedPerson | 1 anrop/s | 1000 ms |

#### Logiska fel

#### Annan information om kontraktet
-

### GetCommissionMembers
Metoden är identisk med GetCommissionMembersIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.3  ovan.

#### Version
Version på detta kontrakt är 1.1

#### Fältregler
Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.3.2 Fältregler) aldrig kommer att returneras.
