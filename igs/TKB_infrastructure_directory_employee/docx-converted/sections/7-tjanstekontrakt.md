## Tjänstekontrakt

### GetEmployeeIncludingProtectedPerson
GetEmployeeIncludingProtectedPerson returnerar information, som kontaktinformation samt legitimerad yrkesgrupp och specialitet, för angiven person. Metoden kan användas av en tjänstekonsument för att t.ex. verifiera uppgifter i en egen intern användardatabas, för att kunna registrera en användare (med HSA-id) baserat på användarens person-id eller för att verifiera behörighet för det fall att denna grundar sig enbart på den personliga egenskapen Legitimerad yrkesgrupp.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.2 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personHsaId *1) | String | Sökt persons HSA-id. / Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| personalIdentityNumber *1) | String | Sökt persons Person-id (personnummer eller samordningsnummer)
Ref. person-id (personalIdentityNumber) [R5] | 0..1 |
| searchBase *2) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| profile | String | Anger vilka attribut som returneras i svaret. 
Värde kan skrivas med både stora och/eller små bokstäver. 
Om värdet utelämnas antas värdet vara FULL. Följande värden kan användas.

BASIC:
personHsaId, givenName, middleAndSurName, nickname, dn, protectedPerson, feignedPerson

TITLE:
Alla attribut som returneras av BASIC samt description, title, healthCareProfessionalLicence, healthCareProfessionalLicenceSpeciality, paTitle, specialityName, specialityCode

CONTACT:
Alla attribut som returneras av BASIC samt mail, telephoneNumber, switchboardNumber, nonPublicTelephoneNumber, mobileNumber, facsimileTelephoneNumber, telephoneHour, postalAddress, structuredPostalAddress

FULL:
Alla attribut som returneras av BASIC, TITLE och CONTACT.

extended1:
Alla attribut som returneras av FULL samt age och gender | 0..1 |
| Svar |  |  |  |
| personInformation | PersonInformationType | Information om personen. Om personen har flera person-objekt returneras en instans per objekt. | 0..* |
| ..personHsaId | String | Personens HSA-id. / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..givenName | String | Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter. / Ref. tilltalsnamn (givenName, gn) [R5] | 0..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag
Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5] | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. Får ej användas för presentation, endast för sökning.
Ref. smeknamn (nickName) [R5] | 0..1 |
| ..mail | String | E-postadress. / Ref. e-postadress (mail) [R5] | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer.
Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| ..switchboardNumber | Telefon | Telefonnummer till växel. / Ref. växeltelefon (hsaSwitchboardNumber) [R5] | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer / Ref. tjänstetelefon (hsaTelephoneNumber) [R5] | 0..* |
| ..mobileNumber | Telefon | Mobiltelefonnummer. / Ref. mobiltelefon (mobile) [R5] | 0..* |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. / Ref. fax (facsimileTelephoneNumber) [R5] | 0..* |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). / Ref. telefontid (telephoneHours) [R5] | 0..* |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..fromDate | String | Tiden gäller från och med detta datum | 0..1 |
| .. ..toDate | String | Tider gäller till och med detta datum | 0..1 |
| ..postalAddress | AddressType | Postadress i ostrukturerat format. / Kommer på sikt att ersättas av structuredPostalAddress. / . / Ref. postadress (postalAddress) [R5] | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..* |
| ..structuredPostalAddress | structuredPostalAddressType | Vårdenhetens postadress i strukturerat format. / Kommer på sikt att ersätta postalAddress. / Ref. Strukturerad postadress (hsaPostalAddress) [R5] | 0..1 |
| .. .. addressee | String | Adressat | 1..* |
| .. .. street | String | Gata | 0..1 |
| .. .. premisesNumber | String | Adressplatsnummer | 0..1 |
| .. .. premisesLetter | String | Adressplatslittera | 0..1 |
| .. ..postCode | String | Postnummer | 1..1 |
| .. ..town | String | Postort | 1..1 |
| ..description | String | Generell beskrivning. / Ref. beskrivning (description) [R5] | 0..1 |
| ..title | String | Titel i fritext / Ref. titel (title) [R5] | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] | 0..* |
| ..healthCareProfessionalLicenceSpeciality | HealthCareProfessionalLicenceSpecialityType | Legitimerad yrkesgrupp och specialitet för läkare och tandläkare. Ref. leg.yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5] | 0..* |
| .. ..healthCareProfessionalLicence | String | Kod för Legitimerad yrkesgrupp som nedanstående specialitet hör till. | 1..1 |
| .. ..specialityCode | String | Kod för specialistutbildning utöver grundutbildning | 1..1 |
| .. ..specialityName | String | Klartext för namnet på specialistutbildning utöver grundutbildning | 1..1 |
| ..paTitle | PaTitleType | Personens befattning | 0..* |
| .. ..paTitleName | String | Befattning / Ref. befattning (paTitleName) [R5] | 0..1 |
| .. ..paTitleCode | String | Befattningskod / Ref. befattningskod (paTitleCode) [R5] | 0..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning för läkare eller tandläkare. / Ref. specialitet (specialityName) [R5] | 0..* |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning. / Ref. specialitetskod (specialityCode) [R5] | 0..* |
| ..dn | DN | ”Distinguished Name”. Objektets placering (sökväg) i katalogen, t.ex. cn=Henrika Littorin,ou=Anställda,ou=Enhet Systemförvaltning,ou=Område e-tjänster Drift och Förvaltning,o=Inera AB,c=SE | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras) / Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5] | 0..1 |
| ..feignedPerson | Boolean | true: om personen är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| ..age *3) | String | Personens ålder, anges i jämna år. 
Värdet hämtas från personens person- eller samordningsnummer, Ref. person-id (personalIdentityNumber) [R5] eller födelsedatum (hsaPassportBirhtDate) ) [R5]. | 0..1 |
| ..gender *3) | String | Personens kön. 
0, okänt (person saknar person-id) 
1, man 
2, kvinna / Värdet beräknas från personens person- eller samordningsnummer, Ref. person-id (personalIdentityNumber) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
*2) searchBase
För GetEmployeeIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter person: i anropet angiven sökbas
*3) Attribut som returneras då inparametern ”profile” är satt till ”extended1” och om underlag finns definierade i personposten:
- age, personens ålder i hela år
- gender, personens kön

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson | 10 anrop/s | 100 ms |

#### Logiska fel
Logiska fel hanteras enligt: Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt person inte kan hittas i katalogen, så returneras tomt svar.
Saknar personobjektet obligatorisk uppgift om HSA-id eller Namn så returneras tomt svar.
Om både personHsaId och personIdentityNumber har angetts som sökparametrar, så är anropet felaktigt och ett soap-fault returneras.
För komplexa returvärden som inte följer specificerad syntax m a p sammansättningen, returneras inte det aktuella värdet. Detta gäller för:
- paTitle som utgår från separata attribut i HSA (kod och klartext) som behöver kunna matchas ihop.
- telephoneHours ska innehålla 4 eller upp till 7 delar (från-dag, till-dag, från-tid, till-tid, ev en kommentar, ev från-datum och ev till-datum) separerade med ”#”.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

### GetEmployee
Är identisk med GetEmployeeIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.1  GetEmployeeIncludingProtectedPerson ovan.

#### Version
Version på detta kontrakt är 4.0

#### Fältregler
Eftersom skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.1.2 Fältregler) aldrig kommer att returneras.

### GetCommissionMembersIncludingProtectedPerson
GetCommissionMembersIncludingProtectedPerson returnerar information, som namn, kontaktinformation samt legitimerad yrkesgrupp och specialitet, om personer som är kopplade till vårdmedarbetaruppdrag för angiven enhet eller organisation och kopplingen är inom ev angivna start- och slutdatum. Listan kan vid behov filtreras. Metoden kan användas av en tjänstekonsument för att t.ex. för en administratör presentera en lista med valbara personer för registrering i en intern användardatabas eller för tilldelning av ärenden.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.4 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 3.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL.
Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| commissionPurpose | String | Vårdmedarbetaruppdragets ändamål enligt definierad värdemängd. / Ref. vårdmedarbetaruppdragets ändamål  (hsaCommissionPurpose) [R5] | 1..1 |
| commissionRights | String | Vårdmedarbetaruppdragets rättigheter enligt definierade värdemängder. Syntax / Aktivitet;Informationstyp;Omfång, alla delar behöver anges. 
Ref. vårdmedarbetaruppdragets rättigheter  (hsaCommissionRight) [R5] | 0..* |
| healthCareProfessionalLicense | String | Legitimerad yrkesgrupp enligt definierad värdemängd
Ref. legitimerad yrkesgrupp (hsaTitle) [R5] | 0..* |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| personInformation | PersonInformationType | Information om personen. / En person (ett HSA-id) returneras bara en gång även om personen är medlem i flera matchande vårdmedarbetaruppdrag Om personen har flera person-objekt returneras en instans per objekt. | 0..* |
| ..personHsaId | String | Personens HSA-id. / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..givenName | String | Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter.
Ref. tilltalsnamn (givenName, gn) [R5] | 0..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag
Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5] | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. Får ej användas för presentation, endast för sökning.
Ref. smeknamn (nickName) [R5] | 0..1 |
| ..personStartDate | dateTime | Eventuellt startdatum för personens anställning. Om startdatum ännu inte inträtt innebär det att personens anställning ännu inte är aktiv.
Ref. startdatum (startDate) [R5] | 0..1 |
| ..personEndDate | dateTime | Eventuellt slutdatum för personens anställning. Om slutdatum passerats innebär det att personens anställning inte är aktiv.
Ref. slutdatum (endDate) [R5] | 0..1 |
| ..mail | String | E-postadress.
Ref. e-postadress (mail) [R5] | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer.
Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| ..switchboardNumber | Telefon | Telefonnummer till växel.
Ref. växeltelefon (hsaSwitchboardNumber) [R5] | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer.
Ref. tjänstetelefon (hsaTelephoneNumber) [R5] | 0..* |
| ..mobileNumber | Telefon | Mobiltelefonnummer. / Ref. mobiltelefon (mobile) [R5] | 0..* |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. / Ref. fax (facsimileTelephoneNumber) [R5] | 0..* |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). / Ref. telefontid (telephoneHours) [R5] | 0..* |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..fromDate | String | Tiden gäller från och med detta datum | 0..1 |
| .. ..toDate | String | Tider gäller till och med detta datum | 0..1 |
| ..title | String | Titel i fritext / Ref. titel (title) [R5] | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] | 0..* |
| ..paTitle | PaTitleType | Personens befattning | 0..* |
| .. ..paTitleName | String | Befattning / Ref. befattning (paTitleName) [R5] | 0..1 |
| .. ..paTitleCode | String | Befattningskod / Ref. befattningskod (paTitleCode) [R5] | 0..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning för läkare eller tandläkare. / Ref. specialitet (specialityName) [R5] | 0..* |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning för läkare eller tandläkare. / Ref. specialitetskod (specialityCode) [R5] | 0..* |
| ..healthCareProfessionalLicenceSpeciality | HealthCareProfessionalLicenceSpecialityType | Legitimerad yrkesgrupp och specialitet för läkare och tandläkare. Ref. leg.yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5] | 0..* |
| .. ..healthCareProfessionalLicence | String | Kod för Legitimerad yrkesgrupp som nedanstående specialitet hör till. | 1..1 |
| .. ..specialityCode | String | Kod för specialistutbildning utöver grundutbildning | 1..1 |
| .. ..specialityName | String | Klartext för namnet på specialistutbildning utöver grundutbildning | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras)
Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5] | 0..1 |
| ..feignedPerson | Boolean | true: om personen är ett fingerat objekt
Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns inga regler som ej uttrycks i schemafilerna och tabellen ovan.
*2) searchBase
För GetCommissionMembersIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter enhet som pekas ut i organisationsomfång: i anropet angiven sökbas
- Sök efter vårdmedarbetaruppdrag: vårdenheten används som sökbas
- Sök efter person: här används sökbasen c=SE

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetCommissionMembersIncludingProtectedPerson | 1 anrop/s | 1000 ms |

#### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt person inte kan hittas i katalogen, så returneras tomt svar .
Saknar personobjektet obligatorisk uppgift om HSA-id eller Namn så returneras tomt svar.
Om både personHsaId och personIdentityNumber har angetts som sökparametrar, så är anropet felaktigt och ett soap-fault returneras.
För sökning med ogiltiga värden och kombinationer av commissionPurpose och commissionRights returneras soap-fault.
För komplexa returvärden som inte följer specificerad syntax m a p sammansättningen, returneras inte det aktuella värdet. Detta gäller för:
- paTitle som utgår från separata attribut i HSA (kod och klartext) som behöver kunna matchas ihop.
- telephoneHours ska innehålla 4 eller upp till 7 delar (från-dag, till-dag, från-tid, , till-tid, ev en kommentar, ev från-datum och ev till-datum) separerade med ”#”.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

### GetCommissionMembers
Är identisk med GetCommissionMembersIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.3 GetCommissionMembersIncludingProtectedPerson ovan.

#### Version
Version på detta kontrakt är 3.0

#### Fältregler
Eftersom skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.3.2 Fältregler) aldrig kommer att returneras.
