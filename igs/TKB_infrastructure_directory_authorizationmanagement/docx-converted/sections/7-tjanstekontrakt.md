## Tjänstekontrakt

### GetCredentialsForPersonIncludingProtectedPerson
GetCredentialsForPersonIncludingProtectedPerson används för att söka ut behörighetsgrundande egenskaper för angiven person. Informationen används som regel av e-tjänster (normalt via en IdP, Identity Provider) för att auktorisera användare mot den egna tjänstens regelverk för åtkomst till information/funktionalitet, normalt i enlighet med den nationella behörighetsmodellen [R6].
De behörighetsegenskaper som returneras är
De Vårdmedarbetaruppdrag som personen är knuten till inklusive information om vårdgivaren och vårdenheten, samt
Personliga egenskaper: Legitimerad yrkestitel, Förskrivarkod(-er), Befattning,
Individuell egenskap för it-tjänster, Personens specialistkoder kopplat till aktuell legitimerade yrkesgrupp samt Utökad yrkeskod.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.2 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 2.2.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personHsaId *1) | String | Unik identifierare för den person vars behörighetsegenskaper ska sökas ut. / Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| personalIdentityNumber *1) | String | Person-id för den person vars behörighetsegenskaper ska sökas ut. 
Ref. person-id (personalIdentityNumber) [R5] | 0..1 |
| searchBase *4) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| profile | String | profile kan endast ha värdet ”extended1” och med detta värde satt returneras även personalIdentity, | 0..1 |
| Svar |  |  |  |
| credentialInformation *2) | CredentialInformationType | Behörighetsegenskaper för sökt person | 0..n |
| ..givenName | String | Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter. / Ref. tilltalsnamn (givenName, gn) [R5] | 0..1 |
| ..middleAndSurName | String | Personens Mellannamn och efternamn.  Namnen är separerade med mellanslag. / Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5] | 1..1 |
| ..personHsaId | String | Personens HSA-id / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..healthCareProfessionalLicence | String | Personens Legitimerade yrkestitel(-lar) i klartext / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 0..n |
| .. healthCareProfessionalLicenceCode | String | Kod för personens Legitimerade yrkestitel. / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 0..n |
| .. healthCareProfessionalLicenceSpeciality | HCPSpecialityCodesType | Personens Specialistkoder kopplat till aktuell Legitimerade Yrkesgrupp. Ref. Leg. yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5] | 0..n |
| .. .. healthCareProfessionalLicenceCode | String | Kod för den Legitimerade yrkestitel som specialistkoden hör till. Ref. Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. ..specialityCode | String | Specialistkod, enligt något av Socialstyrelsens följande kodverk: 1.2.752.116.3.1.6 (Läkare 1992), 1.2.752.116.3.1.7 (Läkare 1996), 1.2.752.116.3.1.8 (Läkare 2008), 1.2.752.116.3.1.9 (Läkare 2015), 1.2.752.116.3.1.10 (Tandläkare 1993), 1.2.752.116.3.1.15 (temporär behörighet läkare och tandläkare 2016). / 1.2.752.116.3.1.17 (Tandläkare 2017)
1.2.752.116.3.1.20 (Läkare 2021) / Ref Socialstyrelsens kodverk [R7]. | 1..1 |
| .. ..specialityName | String | Specialitet i klartext. Klartext för specialityCode ovan. | 0..1 |
| ..occupationalCode | String | Utökad yrkeskod, används för icke-legitimerade medarbetares åtkomst till tjänster hos eHälsomyndigheten. / Ref. Utökad yrkeskod (occupationalCode) [5] och preliminärt kodverk enligt SAMBI attributspecifikation [8]: / - VT   Veterinär / - AL    AT-läkare / - TE    Apotekstekniker / - AE    Apotekarelev / - RE    Receptarieelev / - LF    Läkare med förordnande / - AD    Administratör av dospatientuppgifter | 0..n |
| ..personalIdentity *5) | IIType | Personens person- eller samordningsnummer / Ref. Person-id (personalIdentityNumber) [R5] | 0..1 |
| .. ..root | String | Anger typ av personalIdentity som returneras, för personnummer: 1.2.752.129.2.1.3.1, och för / samordningsnummer: 1.2.752.129.2.1.3.3 | 1..1 |
| .. ..extension | String | Person eller samordningsnummer. / Ref. Person-id (personalIdentityNumber) [R5] | 1..1 |
| .. healthcareProfessionalLicenseIdentityNumber | String | Personens Hosp-Id / Ref. HOSP-id (hospIdentityNumber) [R5] | 0..1 |
| ..personalPrescriptionCode | String | Personens förskrivarkod.
Ref förskrivarkod (personalPrescriptionCode) [R5] | 0..1 |
| ..groupPrescriptionCode | String | Gruppförskrivarkod (er) som personen tilldelats av sin arbetsgivare
Ref. gruppförskrivarkod (hsaGroupPrescriptionCode) [R5] | 0..n |
| ..nursePrescriptionRight | NursePrescriptionRightType | Förskrivningsrätt för barnmorska/sjuksköterska 
Ref. förskrivningsrätt för barnmorskor/ sjuksköterskor (hsaSosNursePrescriptionRight) [R5] | 0..n |
| .. ..healthCareProfessionalLicence | String | Personens Legitimerade yrkestitel inom vilken denne har förskrivningsrätt
BM för Barnmorska eller SJ för Sjuksköterska enligt Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. ..prescriptionRight | Boolean | Personen har förskrivningsrätt inom den angivna Legitimerade yrkestiteln | 1..1 |
| ..hsaSystemRole | HsaSystemRoleType | Personens Individuella egenskaper för it-tjänster. 
Ref. individuell egenskap för it-tjänster (hsaSystemRole) [R5] | 0..n |
| .. ..systemId | String | IT-tjänstens SystemId | 1..1 |
| .. ..role | String | Personens Roll inom IT-tjänsten | 1..1 |
| ..paTitleCode | String | Personens Befattningskoder / Ref. befattningskod (paTitleCode) [R5] | 0..n |
| ..protectedPerson | Boolean | true: om person har skyddade personuppgifter / (om personen inte har skyddade personuppgifter kommer inget värde att returneras) / Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5] | 0..1 |
| ..feignedPerson | Boolean | true: om personen är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| ..commission | CommissionType | De vårdmedarbetaruppdrag som personen är kopplad till | 0..n |
| .. ..commissionName | String | Vårdmedarbetaruppdragets Namn / Ref. objektnamn (cn) [R5] | 1..1 |
| .. ..commissionHsaId | String | Vårdmedarbetaruppdragets HSA-id / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. ..commissionPurpose | String | Vårdmedarbetaruppdragets ändamål / Ref. vårdmedarbetaruppdragets ändamål (hsaCommissionPurpose) [R5] | 1..1 |
| .. ..commissionRight | CommissionRightType | Vårdmedarbetaruppdragets rättigheter / Ref. vårdmedarbetaruppdragets rättigheter (hsaCommissionRight) [R5] | 0..n |
| .. .. ..activity | String | Rättighet aktivitet | 1..1 |
| .. .. ..informationClass | String | Rättighet informationstyp | 1..1 |
| .. .. ..scope | String | Rättighet omfång | 1..1 |
| .. ..pharmacyIdentifier | String | Unikt id för apotek
Ref. (hsaGlnCode + hsaBusinessCode) [R5] | 0..1 |
| .. ..feignedCommission | Boolean | true: om vårdmedarbetaruppdraget är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| .. ..healthCareUnitHsaId *3) | String | HSA-id för vårdenhet enligt PDL / Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| .. ..healthCareUnitName *3) | String | Vårdenhetens namn / Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5] | 0..1 |
| .. ..healthCareUnitStartDate *3) | dateTime | Startdatum för vårdenhetens verksamhet / Ref. startdatum (startDate) [R5] | 0..1 |
| .. ..healthCareUnitEndDate *3) | dateTime | Slutdatum för vårdenhetens verksamhet / Ref. slutdatum (endDate) [R5] | 0..1 |
| .. ..feignedHealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| .. ..archivedHealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt / Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |
| .. ..healthCareProviderHsaId | String | Vårdgivarens HSA-id / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. ..healthCareProviderName | String | Vårdgivarens Namn 
Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5] | 1..1 |
| .. ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer / Ref. organisationsnummer (orgNo) [R5] | 1..1 |
| .. ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet / Ref. startdatum (startDate) [R5] | 0..1 |
| .. ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet / Ref. slutdatum (endDate) [R5] | 0..1 |
| .. ..feignedHealthCareProvider | Boolean | true: om vårdgivaren är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| .. ..archivedHealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt / Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
*2) credentialInformation
En person kan ha flera olika HSA-id om personen har lagts upp i olika organisationers grenar av katalogen.
Vid sökning med person-id så kommer i sådant fall en credentialInformation returneras per HSA-id (bl.a. eftersom kopplingen mellan personobjekt och vårdmedarbetaruppdrag görs via personens HSA-id).
*3) Vårdenhets- (healthCareUnit-) attribut
I det fall ett Vårdmedarbetaruppdrag ligger direkt under Vårdgivaren så returneras inga Vårdenhetsattribut, d.v.s. inga värden returneras för de attribut vars namn inleds med healthCareUnit.
*4) searchBase
För GetCredentialsForPersonIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter person: i anropet angiven sökbas
- Sök efter vårdmedarbetaruppdrag: i anropet angiven sökbas
- Sök efter vårdenheter: utgår från DN för resp. vårdmedarbetaruppdrag, dvs ingen sökning
- Sök efter vårdgivare: här används sökbasen c=SE
*5) Attribut som returneras då inparametern ”profile” är satt till ”extended1” och om de finns definierade i personposten:
- personalIdentity, person- eller samordningsnummer

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade vårdmedarbetaruppdrag | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| Person med 0-1 vårdmedarbetaruppdrag | 10 anrop/s | 150 ms |
| Person med 2-9 vårdmedarbetaruppdrag | 5 anrop/s | 300 ms |
| Person med 10-199 vårdmedarbetaruppdrag | 1 anrop/s | 2000 ms |

#### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt person inte kan hittas i katalogen, så returneras tomt svar.
Saknar personobjektet obligatorisk uppgift om HSA-id eller Efternamn så returneras tomt svar.
Om både personHsaId och personIdentityNumber har angetts som sökparametrar, så är anropet felaktigt och ett soap-fault returneras.
Om någon obligatorisk uppgift gällande vårdmedarbetaruppdraget, vårdenheten eller vårdgivaren, så returneras inte commission-elementet. Dvs ingen information om det vårdmedarbetaruppdraget eller den vårdenhet eller den vårdgivare som vårdmedarbetaruppdraget hör till, returneras för personen om någon av följande obligatoriska uppgifter saknas eller inte följer specificerad syntax:
Vårdmedarbetaruppdragets HSA-id
Vårdmedarbetaruppdragets Ändamål
Vårdmedarbetaruppdragets Namn
Vårdenhetens HSA-Id (om inte uppdraget ligger direkt under en Vårdgivare)
Vårdenhetens Namn (om inte uppdraget ligger direkt under en Vårdgivare)
Vårdgivaren inte är korrekt utpekad från vårdenheten (om inte uppdraget ligger direkt under en Vårdgivare)
Vårdgivarens Namn
Vårdgivarens organisationsnummer
Vårdgivarens HSA-Id
För komplexa returvärden som inte följer specificerad syntax m a p sammansättningen, returneras inte det aktuella värdet. Detta gäller för:
-  hsaSystemRole som ska innehålla två delar (system-id och roll) separerade med ”;”.
- hsaCommissionRights som ska innehålla tre delar (aktivitet, informationstyp och omfång) separerade med ”;”.
- nursePrescriptionRight ska innehålla två delar (kod för legitimation och flagga för förskrivningsrätt) separerade med ”;”.
- healthCareProfessionalLicenceSpeciality, som ska innehålla tre delar (kod för legitimerad yrkestitel, kod för specialitet samt klartext för specialitet) separerade med ”;”.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

### GetCredentialsForPerson
Metoden är identisk med GetCredentialsForPersonIncludingProtectedPerson, förutom att information om skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.1 GetCredentialsForPersonIncludingProtectedPerson ovan.

#### Version
Version på detta kontrakt är 2.2.

#### Fältregler
Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.1.2 Fältregler) aldrig kommer att returneras.

### GetAdminCredentialsForPersonIncludingProtectedPerson
GetAdminCredentialsForPersonIncludingProtectedPerson används för att söka ut en persons administrativa behörighetsegenskaper inom ett visst Behörighetsområde, dvs de behörighetsområdesegenskaper med tillhörande enheter / grenar som de gäller för. Syftet är att leverera de behörighetsgrundande egenskaper som krävs för att en användare ska få rätt behörigheter i en tjänst. Anropet sker normalt från en IdP (Identity Provider).
De behörighetsegenskaper som returneras är
Personliga egenskaper: Namn och HSA-Id
Personens Administrativa behörighetsegenskaper och för vilket organisatoriskt omfång de gäller
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.4 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 2.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personHsaId *1) | String | Unik identifierare för den person vars behörighetsegenskaper ska sökas ut. / Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| personalIdentityNumber *1) | String | Person-id för den person vars behörighetsegenskaper ska sökas ut. 
Ref. person-id (personalIdentityNumber) [R5] | 0..1 |
| authorizationScopeCode | String | Behörighetsområdeskod som ska ingå i sökt Administrativt medarbetaruppdrag. Optional. Om ej angiven returneras information från personens alla administrativa medarbetaruppdrag.
Ref Behörighetsområdeskod (hsaDomainCode) [R5] | 0..1 |
| authorizationScopePropertyCode | String | Kod för behörighetsområdesegenskap som ska ingå i sökt Administrativt medarbetaruppdrag. Optional. Om ej angiven returneras information från personens alla administrativa medarbetaruppdrag.
Ref Kod för Behörighetsområdesegenskap (hsaDomainAreaCode) [R5] | 0..1 |
| searchBase *2) | DN | Sökbas för behörighetsegenskaper. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| adminCredentialInformation | AdminCredentialInformationType |  | 0..n |
| ..personHsaId | String | Personens HSA-id. 
Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..givenName | String | Personens tilltalsnamn, returneras om personen har ett förnamn. Ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter. / Ref. tilltalsnamn (givenName, gn) [R5] | 0..1 |
| ..middleAndSurName | String | Personens mellannamn och efternamn.  Namnen är separerade med mellanslag. / Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5] | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddade personuppgifter / (om personen inte har skyddade personuppgifter kommer inget värde att returneras) / Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5] | 0..1 |
| ..feignedPerson | Boolean | true: om personen är ett fingerat objekt 
Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..authorizationScopeProperties | AuthorizationScopePropertyType | Administrativa behörighetsegenskaper för sökt person | 0..n |
| .. ..authorizationScopeCode | String | Behörighetsområdeskod, 
Ref Behörighetsområdeskod (hsaDomainCode) [R5] | 1..1 |
| .. ..authorizationScopeName | String | Behörighetsområdets namn, från behörighetsområdesobjektets namn. Ref Objektnamn (cn) [R5] | 1..1 |
| .. ..authorizationScopeDescription | String | Behörighetsområdets beskrivning. Ref Beskrivning (description) [R5] | 0..1 |
| .. ..authorizationScopePropertyCode | String | Behörighetsområdesegenskap. Består av behörighetsområdeskoden och en kod för behörighetsområdesegenskap. / Information från Administrativa medarbetaruppdrag som saknar angivelse av kod för behörighetsegenskap levereras inte alls.
Ref Kod för Behörighetsområdesegenskap (hsaDomainAreaCode) [R5] | 1..1 |
| .. ..authorizationScopePropertyName | String | Behörighetsområdesegenskapens namn, från behörighetsområdesegenskapsobjektets namn. Ref Objektnamn (cn) [R5] | 1..1 |
| .. ..authorizationScopePropertyDescription | String | Behörighetsområdesegenskapens beskrivning. Ref Beskrivning (description) [R5] | 0..1 |
| .. ..adminCommission | AdminCommissionType |  | 1..n |
| .. .. ..adminCommissionHsaId | String | HSA-id för det administrativa medarbetaruppdrag varifrån uppgifterna hämtats. Returneras främst för att få spårbarhet och underlätta hantering av supportärenden
Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. .. .. adminCommissionResponsibleOrganisation | String | Organisationsnummer för organisationen som ansvarar för det administrativa medarbetaruppdraget. | 1..1 |
| .. .. ..sector | SectorType | Organisationsomfång för behörighetsområdesegenskapen inom uppdraget. Utgörs av organisations- eller enhetsobjekt eller i ett fåtal fall av behörighetsområdesobjekt. / Ref Organisationsomfång (hsaAdminCommissionSector) [R5] | 0..n |
| .. .. .. ..unitHsaId | String | HSA-id för det objekt som pekas ut i organisationsomfånget.
Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. .. .. ..sectorFlag | Boolean | True innebär att objektets alla hierarkiskt underliggande objekt ingår, objektet representerar en hel organisationsgren
Ref Organisationsomfång (hsaAdminCommissionSector) [R5] | 0..1 |
| .. .. .. ..name | String | Namnet på det objekt som pekas ut i organisationsomfånget / Ref. organisationsnamn (o), enhetsnamn (ou) respektive objektnamn (cn) [R5] | 1..1 |
| .. .. .. ..feignedUnit | Boolean | True om det objekt som pekas ut i organisationsomfånget är ett fingerat objekt
Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| ..  .. ..feignedAdminCommission | Boolean | True om behörighetsområdesegenskapen kommer från ett fingerat administrativt medarbetaruppdrag.
Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
*2) searchBase, sökbas som används vid sökning efter administrativa medarbetaruppdrag, enhet samt personens uppgifter.

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade administrativa behörighetsegenskaper | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| Person med 0-1 administrativa medarbetaruppdrag | 10 anrop/s | 150 ms |
| Person med 2-9 administrativa medarbetaruppdrag | 5 anrop/s | 300 ms |
| Person med 10-199 administrativa medarbetaruppdrag | 1 anrop/s | 2000 ms |

#### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt person inte kan hittas i katalogen, så returneras tomt svar.
Saknar personobjektet obligatorisk uppgift om HSA-id eller Efternamn så returneras tomt svar.
Om både personHsaId och personIdentityNumber har angetts som sökparametrar, så är anropet felaktigt och ett soap-fault returneras.
Om någon obligatorisk uppgift gällande ett administrativt medarbetaruppdrag saknas, så returneras inte authorizationScopeProperties-elementet. Dvs ingen information om det administrativa medarbetaruppdraget returneras för personen om någon av följande obligatoriska uppgifter saknas eller inte följer specificerad syntax:
Behörighetsområdeskod
Kod för behörighetsområdesegenskaps
Det administrativa medarbetaruppdragets HSA-id
För uppdraget ansvarig organisations organisationsnummer
Sektorinformation, ej obligatorisk, men måste följa gällande syntax, dvs
Objektets HSA-Id
Objektets Namn
Sektor-flagga
För kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron som planeras tillhandahållas.

### GetAdminCredentialsForPerson
Metoden är identisk med GetAdminCredentialsForPersonIncludingProtectedPerson, förutom att skyddade personer aldrig returneras. Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.3 GetAdminCredentialsForPersonIncludingProtectedPerson ovan.

#### Version
Version på detta kontrakt är 2.0.

#### Fältregler
Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.3.2 Fältregler) aldrig kommer att returneras.

### GetHospLastUpdate
GetHospLastUpdate används för att hämta tidpunkt för då HOSP-informationen tillgängliggjorts efter det senaste utlämnandet från Socialstyrelsen. GetHospLastUpdate anropas lämpligen innan anrop till GetHospCredentialsForPerson så inte onödiga slagningar efter samma person görs innan ny HOSP-information utlämnats och tillgängliggjorts.

#### Version
Version på detta kontrakt är 1.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| - | - | Kontraktet har inga inparametrar | - |
| Svar |  |  |  |
| lastUpdate | dateTime | Tidpunkten då HOSP-informationen tillgängliggjorts efter det senaste utlämnandet | 1..1 |

#### Tjänstekontraktsspecifika krav och regler
-

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade vårdmedarbetaruppdrag | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| GetHospLastUpdate | 10 anrop/s | 100 ms |

#### Logiska fel
-

#### Annan information om kontraktet
-

### GetHospCredentialsForPerson
GetHospCredentialsForPerson används för att hämta från Socialstyrelsen utlämnad behörighetsgrundande HOSP-information för angiven person. Användning av GetHospCredentialsForPerson bör föregås av anrop till GetHospLastUpdate så att inte samma information hämtas i onödan innan ny utlämning tillgängliggjorts.

#### Version
Version på detta kontrakt är 1.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personalIdentityNumber | String | Person-id för den person vars HoSp-uppgifter ska sökas ut. 
Ref. person-id (personalIdentityNumber) [R5] | 1..1 |
| Svar |  |  |  |
| personalIdentityNumber | IIType | Personens person- eller samordningsnummer / Ref. Person-id (personalIdentityNumber) [R5] | 1..1 |
| .. root | String | Anger typ av personalIdentity som returneras, för personnummer: 1.2.752.129.2.1.3.1, och för / samordningsnummer: 1.2.752.129.2.1.3.3 | 1..1 |
| .. extension | String | Person eller samordningsnummer. / Ref. Person-id (personalIdentityNumber) [R5] | 1..1 |
| healthCareProfessionalLicence | healthCareProfessionalLicenceType | Personens Legitimerade yrkestitel(-lar) | 0..n |
| .. healthCareProfessionalLicenceCode | String | Kod för personens Legitimerade yrkestitel. / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. healtCareProfessionalLicenceName | String | Klartext för personens Legitimerade yrkestitel. / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| personalPrescriptionCode | String | Personlig förskrivarkod. Ref. Förskrivarkod (personalPrescriptionCode) [R5] | 0..1 |
| healthCareProfessionalLicenceSpeciality | HCPSpecialityCodesType | Personens specialistkod(er) kopplat till aktuell legitimerad yrkesgrupp. Ref. Leg. yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5] | 0..n |
| .. healthCareProfessionalLicenceCode | String | Kod för den legitimerade yrkestitel som specialistkoden hör till. Ref. Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. specialityCode | String | Specialistkod, enligt något av Socialstyrelsens följande kodverk: 1.2.752.116.3.1.6 (Läkare 1992), 1.2.752.116.3.1.7 (Läkare 1996), 1.2.752.116.3.1.8 (Läkare 2008), 1.2.752.116.3.1.9 (Läkare 2015), 1.2.752.116.3.1.10 (Tandläkare 1993), 1.2.752.116.3.1.15 (temporär behörighet läkare och tandläkare 2016). / Ref Socialstyrelsens kodverk [R7] och Specialitetskod (specialityCode) [R5] | 1..1 |
| .. specialityName | String | Specialitet i klartext. Klartext för specialityCode ovan. Ref Socialstyrelsens kodverk [R7] och Specialitet (specialityName) [R5] | 1..1 |
| nursePrescriptionRight | NursePrescriptionRightType | Förskrivningsrätt för barnmorska/sjuksköterska | 0..n |
| .. healthCareProfessionalLicence | String | Personens legitimerade yrkestitel inom vilken denne har förskrivningsrätt
BM för Barnmorska eller SJ för Sjuksköterska Ref. Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 och förskrivningsrätt för barnmorskor/sjuksköterskor (hsaSosNursePrescriptionRight) [R5] | 1..1 |
| .. prescriptionRight | Boolean | Personen har förskrivningsrätt inom den angivna Legitimerade yrkestiteln | 1..1 |
| healthcareProfessionalLicenseIdentityNumber | String | Personens HoSp-id. / Ref. HOSP-id (hospIdentityNumber) [R5] | 0..1 |
| educationCode | String | Utbildningskod. Ref. Socialstyrelsens kodverk [R7] HoSp utbildningskod 1.2.752.116.3.1.4 och Utbildningskod (hsaSosEducationCode) [R5] | 0..n |
| restrictions | RestrictionType |  | 0..n |
| .. healthCareProfessionalLicenceCode | String | Kod för den Legitimerade yrkestitel som restriktionskoden hör till. Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. restrictionCode | String | Restriktionskod. Ref Socialstyrelsens kodverk [R7] Behörighetsbegränsning 1.2.752.116.3.1.5 och Restriktionskod (hsaSosRestrictionsCode) [R5] | 1..1 |
| .. restrictionName | String | Restriktionskod i klartext. Ref Socialstyrelsens kodverk [R7] Behörighetsbegränsning 1.2.752.116.3.1.5 och Restriktionskod (hsaSosRestrictions) [R5] | 1..1 |
| feignedPerson | Boolean | true: om personen är en fingerad person 
Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
-

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade vårdmedarbetaruppdrag | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| GetHospCredentialsForPerson | 10 anrop/s | 100 ms |

#### Logiska fel
Logiska fel hanteras enligt:
Om sökt person inte kan hittas bland utlämnade HOSP-uppgifter returneras tomt svar.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

### HandleHospCertificationPerson
HandleHospCertificationPerson används för att lägga till eller ta bort personobjekt från kommande utlämningsförfrågningar av HoSp-information till Socialstyrelsen. När sedan en sådan utlämningsförfrågan behandlats, tillgängliggörs HoSp-informationen via GetHospCredentialsForPerson (se avsnitt 6.8). När personobjektet tagits bort garanteras inte HoSp-informationen längre finnas nåbar via GetHospCredentialsForPerson.

#### Version
Version på detta kontrakt är 1.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personalIdentityNumber | String | Person-id för den person vars HoSp-uppgifter ska begäras utlämnade från Socialstyrelsen. 
Ref. person-id (personalIdentityNumber) [R5] | 1..1 |
| operation | String | ”add” för att lägga till personen, ”remove” för att ta bort personen från utlämningsförfrågningar. | 1..1 |
| certificationId | String | Frivillig uppgift. Alternativ id för personposten | 0..1 |
| reason | String | Frivillig uppgift om anledning till avregistrering. Uppgiften sparas inte utan kommer bara loggas i tjänstekontraktets logg. | 0..1 |
| Svar |  |  |  |
| resultCode | String | Resultat av ett ”add” eller ”remove”-anrop (OK eller ERROR). | 1..1 |
| resultText | String | Beskrivning av fel vid resultCode=ERROR. | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
-

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade vårdmedarbetaruppdrag | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| HandleHospCertificationPerson | 5 anrop/s | 200 ms |

#### Logiska fel
Personposter som läggs till får en märkning unik för den anropande tjänsten, om personposten redan finns adderas bara märkningen till den befintliga posten. Märkningen syftar till att skydda personposter från borttag av annan tjänst. Vid borttag av personpost som lagts till av flera tjänster tas bara den anropande tjänstens märkning bort. Personposten tas bara bort i sin helhet när den bara är märkt med den tjänst som gör borttaget.
Logiska fel hanteras enligt:
Om personposten inte kan sparas eller tas bort returneras resultCode = ERROR
Om personposten som ska läggas till redan finns, så adderas bara en märkning om att den behövs för den anropande tjänsten (så att personposten inte tas bort av annan tjänst). Resp. om personposten ska tas bort och den är märkt med flera tjänster tas bara den aktuella tjänstens märkning bort.
Om en sådan operationen misslyckas returneras resultCode = ERROR.
Om personposten som ska läggas till redan finns och har märkts med den anropande tjänsten så returneras resultCode = OK.
Om personpost som ska tas bort redan är borttagen, eller om märkningen med anropande tjänsten inte finns på personposten så returneras resultCode = OK

#### Annan information om kontraktet
-
