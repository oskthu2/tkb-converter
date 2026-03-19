# 7 Tjänstekontrakt


## 7.1 GetMedicationPrescriptions


### 7.1.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationPrescriptions:2`


### 7.1.2 Beskrivning

Tjänstekontrakt **GetMedicationPrescriptions** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.1.3 Fältregler


**Request — GetMedicationPrescriptionsRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationPrescriptionSequenceId* | Identifier | Unikt id för Läkemedelsbehandlingen. Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras. Se kapitel 5.2 för exempel och regler kring format. | 0..* |
| includeMedicalDispenseAuthorizations | boolean | Inkludera expedieringsunderlag eller ej i svaret. | 1..1 |
| medicationStatus | code | Inkludera enligt status enligt http://www.hl7.org/FHIR/medication-prescription-status.html | 1..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 0..1 |
| currentVersion* | boolean | Sätts till true om "senaste version" skall returneras. Senaste version av en Läkmedelsbehandling omfattar det senaste hela beslutet dvs läkemedelsordinationen. | 1..1 |
| validTimePeriod* | DateTimePeriodType |  | 0..1 |
| registrationTime* | dateTime | Hämtar listan med Medications såsom den såg ut vid angiven registreringstidpunkt. | 0..1 |

**Response — GetMedicationPrescriptionsResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationList | MedicationList |  | 0..1 |
| ../patientId | Identifier | Identifiering av patienten.  Patienter i NOD identifieras initialt med svenskt personnummer och samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer.  Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer.  Vid enbart förskrivning, vilket är möjligt för patienter utan personnummer, används istället klassen Patientinformation. | 1 |
| ../version | Identifier | Version på patientens samlade läkemedelslista. Ändras av NOD vid varje förändring i någon av de ingående Läkemedelsbehandlingarna dvs. då en ny Läkemedelsordination eller ett nytt Expedieringsunderlag kopplat till en Läkemedelsbehandling registreras. Däremot medför inte statusförändringar kopplade till ett Expedieringsunderlag eller expediering av läkemedel att underlagsversion ändras. Ej heller registrering av lösa Expedieringsunderlag, dvs sådana som ej är kopplade till en Läkemedelsbehandling Syftet med underlagsversion är att vårdsystemet ska kunna säkerställa att det har rätt underlag vid ordination.  Vårdsystemet ska inte basera någon logik på underlagsversionens format, utan endast på kontroll av likhet. Det bör noteras att underlagsversion alltid baseras på patientens samlade läkemedelslista, oberoende av eventuella urvalskriterier. | 1 |
| ../lastModified | dateTime | Tidpunkt för senaste ändring i läkemedelslistan. Ändras samtidigt med underlagsversion. | 1 |
| ../medicationPrescriptionSequences | MedicationPrescriptionSequence | Patientens Läkemedelsbehandlingar (i urvalet). | 0..* |
| ../../id | Identifier | Unikt id för Läkemedelsbehandlingen. Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras. | 1 |
| ../../patientId | Identifier | Identifiering av patienten. | 1 |
| ../../startOfTreatment | dateTime | Motsvarar insättningstidpunkt för första ordinationen i Läkemedelsbehandlingen | 1 |
| ../../medicationPrescriptions | MedicationPrescription | Läkemedelsordinationer (inom Läkemedelsbehandlingen) såväl gällande som historiska. Eftersom klassen används som retur i urval kan dessa vara begränsade pga. urval. De instanser som refereras från returnerade expedieringsärenden eller behandlingssteg kommer dock alltid att finnas med. | 0..* |
| ../../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. | 1 |
| ../../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../../patientId | Identifier | Identifiering av patienten. För att registrera läkemedelsordinationer i NOD krävs svenskt personnummer eller samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer.  Undantag: Person med enbart samordningsnummer kan inte registreras för Dos och följaktligen inte heller ordineras Dos. Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer. | 1 |
| ../../../prescriber | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext. Se not 1. | 1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../responsiblePrescriber | HealthcareProfessionalType | Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv. | 0..1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../writeTime | dateTime | Tidpunkt då det medicinska beslutet fattades.  Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet).  I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades. | 1 |
| ../../../treatmentStartTime | dateTime | Tidpunkt från vilken patienten ska ta sitt läkemedel. insättningstidpunkt utgör startpunkt för angiven dosering. Vid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt. | 1 |
| ../../../treatmentEndTime | dateTime | Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel. Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad. Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. | 0..1 |
| ../../../evaluationTime | dateTime | Tidpunkt då läkemedelsbehandlingen senast bör utvärderas.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. Syftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig. | 0..1 |
| ../../../evaluatedBy | HealthcareProfessionalType | Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering. Om ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen. Om endast vårdenhet och vårdgivare är kända kan information om personen utlämnas. | 0..1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../reason | Reason | Orsaken till beslutet. Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen. Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering.  Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak. | 0..1 |
| ../../../../code | CodeableConcept | Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.  Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). | 1 |
| ../../../../primaryReason | boolean | Uppgift om huruvida orsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| ../../../annotation | string | Ordinatörens kommentarer i fritext kopplade till en specifik ordination. Syftet är t.ex. att ordinatören i fritext ska kunna ange sådant som inte framgår av beslutsorsak eller ordinationsorsak och som är av intresse för annan vård- och omsorgspersonal. Fältet är avsett att beskriva nuläget för läkemedelsbehandlingen utan att användaren ska behöva ta del av notatfältet i tidigare läkemedelsordinationer. Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering. | 0..1 |
| ../../../use | string | Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. "sväljes hela", "påstrykes i armvecket". Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs). Ett förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt. Ingår i Expedieringsunderlag som en del av doseringstext 1. | 0..1 |
| ../../../purpose | string | Behandlingsändamål i klartext.  Ingår i Expedieringsunderlag som Ändamål klartext | 0..1 |
| ../../../medication | Medication_virtual | Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser. Det finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet. Vid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen. | 1 |
| ../../../../DistributedDrug_attr | DistributedDrug |  | 0..1 |
| ../../../../../NPLid | Identifier | id som identifierar läkemedelsprodukt. Hämtas från SIL. Ex. Alvedon tablett 500 mg. Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara). NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket. Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id. Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx) Ingår i Expedieringsunderlag. | 0..1 |
| ../../../../../tradeName | string | Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Möjlighet att utnyttja detta fält för "fritextordination" måste testas (t.ex. för studieläkemedel eller "okänt läkemedel"). | 1 |
| ../../../../../notInterchangable | boolean | Markering att ordinerad vara ej får bytas ut vid expediering Falskt = Får bytas ut Sant = Får ej bytas ut Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget. | 1 |
| ../../../../DrugArticle_attr | DrugArticle |  | 0..1 |
| ../../../../../NPLPackid | Identifier | Id som identifierar läkemedelsartikel.  Hämtas från SIL. Anger läkemedel på nivån : Alvedon tablett 500 mg, 16 st blister. | 1 |
| ../../../../../distributedTradeName | string | Produktnamn + förpackning Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Kallas artikel hos apoteksaktörerna | 1 |
| ../../../../../distributedDrug | DistributedDrug | Den Läkemedelsprodukt som Läkemedelsartikeln baseras på.(se not 1) | 1 |
| ../../../../../../NPLid | Identifier | id som identifierar läkemedelsprodukt. Hämtas från SIL. Ex. Alvedon tablett 500 mg. Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara). NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket. Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id. Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx) Ingår i Expedieringsunderlag. | 0..1 |
| ../../../../../../tradeName | string | Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Möjlighet att utnyttja detta fält för "fritextordination" måste testas (t.ex. för studieläkemedel eller "okänt läkemedel"). | 1 |
| ../../../../../../notInterchangable | boolean | Markering att ordinerad vara ej får bytas ut vid expediering Falskt = Får bytas ut Sant = Får ej bytas ut Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget. | 1 |
| ../../../../ExTempore_attr | ExTempore |  | 0..1 |
| ../../../../../description | string | Beskriver komposition mm.  Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget. | 1 |
| ../../../../LicensedDrug_attr | LicensedDrug |  | 0..1 |
| ../../../../../productName | string | Namn på läkemedlet i fri text. Ingår i Expedieringsunderlag.doseringstext 2. | 1 |
| ../../../../../strength | string | Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../../../../drugForm | string | Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../../../../licenseInformation | string | t.ex. vilket apotek som har den beviljade licensen Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../../../NonDrugArticle_attr | NonDrugArticle |  | 0..1 |
| ../../../../../articleId | Identifier | Identitet på ordinerad handelsvara.  Obligatorisk parameter för handelsvaror som ska hämtas ut på apotek.  Får ej anges för läkemedel. Ingår i Expedieringsunderlag. | 0..1 |
| ../../../../FreeTextMedication_attr | FreeTextMedication |  | 0..1 |
| ../../../../../description | string | beskrivning av läkemedlet. Fritextval används t.ex. då patienten själv anger sina läkemedel (egenmedicinering) samt vid studieläkemedel, dvs. när patienten deltar i en forskningsstudie och inte själv vet om aktiv substans används. | 1 |
| ../../../../../atcCode | code | ATC-kod Om angivet kan kontroller utföras (interaktion, amning mm). Se not 1. | 0..1 |
| ../../../dosage | Dosage | Dosering enligt vårdens doseringsmodell. Doseringen ska anges i relation till insättningstidpunkt. Vid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas - inte doseringen. I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas. | 0..1 |
| ../../../treamentReason | Reason | Ordinationsorsak enligt separat struktur. Det bör påpekas att ordinationsorsak (i förekommande fall) ska anges av vårdsystemet för ny instans av Läkemedelsordination inom samma läkemedelsbehandling.  Principen att det senast beslutet ska innehålla en komplett beskrivning av den pågående läkemedelsbehandlingen gäller även här. Även vid utsättning ska följaktligen ordinationsorsak anges. Även om det är ovanligt att ordinationsorsaken ändras inom en läkemedelsbehandling så finns det inget hinder (i modellen) för detta. Om ordinationsorsak anges ska minst en, eventuellt flera, anges som huvudorsak.  Se även not 4. | 1..* |
| ../../../../code | CodeableConcept | Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.  Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). | 1 |
| ../../../../primaryReason | boolean | Uppgift om huruvida orsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| ../../../site | CodeableConcept | Den plats på kroppen genom vilket läkemedlet intas eller appliceras. En SNOMED-kod under SCTID:91723000 "anatomical structure" | 0..1 |
| ../../../route | CodeableConcept | Den väg som läkemedlet tar sig in i kroppen. En SNOMED-kod under SCTID: 284009009 "route of administration value" | 0..1 |
| ../../../method | CodeableConcept | Den teknik med vilken läkemedlet administreras. En SNOMED-kod under SCTID: 107733003 "introduction (procedure)" | 0..1 |
| ../../medicationDispenseCase | MedicationDispenseCase | Expedieringsärenden inom den pågående Läkemedelsbehandlingen. Exakt vilka beror på hur urvalet sker i NOD-tjänsterna. Expedieringsärendena är inte en del av Läkemedelsbehandlingen i formell mening, dvs. inte ett äkta aggregat. Ändringar i Expedieringsärendena påverkar inte heller underlagsversionen för läkemedelslistan. | 0..* |
| ../../../medicationDispenseAuthorizations | MedicationDispenseAuthorization_virtual | Beskriver en förskrivning och eventuellt ändrade versioner som gjorts på apotekssidan. Multipliciteten avser följaktligen eventuella versioner, inte den ursprungliga förskrivningen vilken alltid är exakt en.  Utsättning och makulering på apotekssidan ger inga nya versioner, enbart förändring av expedieringsstatus. Ändrade versioner saknar initialt registreringsuppgifter. Först när ändringarna accepterats i NOD (AttachMedicationDispenseAuthorization) fylls dessa i. | 1..* |
| ../../../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. Saknas initialt om ändringar gjorts på apotekssidan. | 0..1 |
| ../../../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../../../id | Identifier | Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR) | 1 |
| ../../../../medicationPrescriptionId | Identifier | Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid. Om expedieringsunderlaget skapas av vårdsystemet "löst", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter. Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten. | 0..1 |
| ../../../../prescriber | MedicalPrescriber | Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad. | 1 |
| ../../../../../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod | 0..1 |
| ../../../../../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. Yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod | 0..1 |
| ../../../../../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod | 1..1 |
| ../../../../../hsaTitle | string | Förskrivarens yrke i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..1 |
| ../../../../../speciallityCodes | string | Förskrivarens specialiteter i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..* |
| ../../../../../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod | 0..1 |
| ../../../../../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn | 1..1 |
| ../../../../../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn | 1..1 |
| ../../../../../placeOfWork | PlaceOfWork |  | 0..1 |
| ../../../../../../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../../../../../../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../../../../../../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../../../../../../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../../../../../../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../../../../../../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../../../../../../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| ../../../../patientInformation | PatientInformation | I första hand ska svenskt personnummer användas.  Vid Expedieringsunderlag för helförpackning gäller dessutom: Om samordningsnummer finns kan detta användas tillsammans med födelsetid. Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges. | 1 |
| ../../../../../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../../../../../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../../../../../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../../../../../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../../../../../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../../../../../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../../../../../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../../../../../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../../../../../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../../../../../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../../../../../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| ../../../../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../../../../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../../../../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../../../../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../../../../treatmentEndTime | dateTime | Datum och tid när patienten skall avsluta intag. Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).  Mappas från Läkemedelsordination.utsättningstidpunkt | 0..1 |
| ../../../../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../../../../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../../../../articleId | string | Identitet på förskrivet livsmedel eller handelsvara. Obligatorisk parameter om NPL-id och NPL pack-id saknas.  Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF. Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr | 0..1 |
| ../../../../dosageText1 | string | Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.  Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning. | 1..1 |
| ../../../../dosageText2 | string | Kompletterande doseringstext till patienten Mappas från endera av Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation  eller  Ex tempore. beskrivning | 0..1 |
| ../../../../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../../../pupose | string | (Ändamål klartext) Mappas från Läkemedelsordination.behandlingsändamål | 1 |
| ../../../../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../../../../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| ../../../revocations | Revocation | Beskriver beslut om makulering av förskrivningen samt eventuella makuleringar som gjorts direkt i RR. | 0..* |
| ../../../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. | 1 |
| ../../../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../../../revocationCode | RevocationEnum | 1 = Fel patient 2 = Fel läkemedel/vara /dosering/styrka/ändamål. Patienten informerad 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad 4 = Annan orsak. Patienten informerad {1,2,3,4} Se även Läkemedelsordination.utsättningsorsak | 1 |
| ../../../../revocationComment | string | Fritextbeskrivning som preciserar makuleringsorsak som angivits som "annan orsak". Obligatorisk parameter för Orsakskod = 4 Får ej anges för Orsakskod = 1, 2 eller 3. | 0..1 |
| ../../../../revocationConsent | boolean | Inhämtat samtycke av patienten vid makulering.  Måste anges till true då förskrivare makulerar Expedieringsunderlag med orsakskod 2, 3 eller 4. Ignoreras för dospatienter, eftersom de har samtyckt via dossamtycket. I användargränssnittet uttrycks samtycket som att "patienten är informerad". Notera att makulering av Expedieringsunderlag i vissa fall sker automatiskt som en nödvändig del för att realisera ändringar (t.ex. dosändringar) och utsättning i ordinationen. | 1 |
| ../../../../time | dateTime | Tidpunkt för makulering (då det skickades till RR). Sätts av NOD. | 0..1 |
| ../../../dispenseReference | string | Identifierar motsvarande recept i RR.  Då ett pappersrecept registreras i RR anges förskrivningens ursprungliga id.  Kan vara ett UUID eller GUID.  Valideras i AFF | 0..1 |
| ../../../medicationPrescriptionSequenceId | Identifier | Id på den Läkemedlelsbehandling som Expedieringsärendet hör till.  Detta är nödvändigt för att kunna hantera Expedieringsärenden som fristående delar. Saknas då för s.k. "lösa Expedieringsunderlag", dvs. sådana som kommer från apotekssidan utan koppling till någon Läkemedlelsbehandling i NOD. | 0..1 |
| ../../../dispenseStatus | DispenseStatus | Se not 1. | 0..1 |
| ../../../../numberOfRemainingDispenses | int | Resterande antal uttag. | 0..1 |
| ../../../../totalQuantity | Quantity | Den förskrivna totalmängden som beräknas när expedieringsunderlaget skapas.  Mängden anges i förpackningsenheter, dvs. den enhet som förpackningen innehåller, t.ex. tabletter. Beräknas som (antal uttag) x (antal förpackningar som ska expedieras per uttag ) x (förpackningsmängd ). Anges ej för dosdispenserat. | 0..1 |
| ../../../../remainingQuantity | Quantity | Resterande mängd som finns kvar på expedieringsunderlaget (i förpackningsenheter, t.ex. tabletter).  Beräknas vid mottagande av expedieringsunderlaget samt vid expediering, borttag och kreditering. | 0..1 |
| ../../../../nextDispenseWithReimbursement | dateTime | Beräknas efter gjorda uttag och anger när patienten kan ta ut nästa uttag inom högkostnadsskyddet. Det går att hämta ut läkemedlet tidigare (om förskrivaren inte har angett ett expeditionsintervall) men patienten får då betala hela kostnaden. | 0..1 |
| ../../../../nextAllowedDispense | dateTime | Nästa tillåtna uttag om förskrivaren har angivit expedieringsintervall (i Expedieringsunderlag för helförpackning). | 0..1 |
| ../../../../available | boolean | Flagga för om expedieringsunderlaget är aktuellt. För att vara aktuellt måste det finnas uttag kvar och sista giltighetsdag får inte vara passerad. Det får heller inte vara makulerat, utsatt (endast dosdispenserat) omvandlat till pappersrecept (utskrivet). | 1 |
| ../../../../medicalRecordStatus | RecordStatusEnum | Journalstatus för expedieringsunderlag som hämtas från RR  {IN_NOD, NOT_IN_NOD} | 1 |
| ../../../../changed | boolean | Anger att senaste versionen av expedieringsunderlaget är förändrat på apotekssidan.  (Se fältet Ordination.forandring i RDH) | 1 |
| ../../../dispensedDrugs | DispensedDrug | För att expedieringar anges endast för dos-patienter (från OR) och för övriga med samtycke till läkemedelsförteckningen i kombination med att expedieringar efterfrågas från NOD (i den aktuella tjänsten). Se även not 1. | 0..* |
| ../../../../dispenseId | string |  | 1 |
| ../../../../dispenseDate | date | Datum för expediering på apotek. | 1 |
| ../../../../numberOfPackages | int | Antal förpackningar av utlämnad vara. Obligatorisk parameter om posten ej är en dosdispenserad artikel | 1 |
| ../../../../numberOfTablets | string | Summa antal avdelade doser inklusive enhet. Angiven om posten är en dosdispenserad artikel. | 1 |
| ../../../../removed | boolean | Markering om posten är borttagen. Sant om posten är borttagen, annars falskt. | 1 |
| ../../../../quantity | string | Mängd i klartext | 1 |
| ../../../../dosage | string | Dosering i klartext så som den returneras från LF (Krav på presentation i handboken) | 1 |
| ../../../../articleInformation | ArticleInformation |  | 0..1 |
| ../../../../../nplPackid | string | Identitet på förskrivet läkemedel som har NPL Pack-id alternativt SB Pack-id. | 1 |
| ../../../../../distributedTradeName | string | Läkemedelsnamn vid inläsningstillfället. | 1 |
| ../../../../../drugForm | string | Läkemedelsform vid inläsningstillfället. | 1 |
| ../../../../../strength | string | Styrka i klartext vid inläsningstillfället. | 1 |
| ../../../../../atcCode | code | ATC-kod vid inläsningstillfället | 1 |
| ../../../../../atcText | string | Verksamt ämne vid inläsningstillfället. | 1 |
| ../../../../../packageSize | string | Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar. | 1 |
| ../../../../../packageType | string | Beskrivning av artikelns förpackningstyp vid inläsningstillfället. | 1 |
| ../../../../presciber | MedicalPrescriber | Förskrivarens namn, yrke, specialiteter och arbetsplats (Krav på presentation i handboken) | 1 |
| ../../../../../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod | 0..1 |
| ../../../../../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod | 0..1 |
| ../../../../../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod | 1..1 |
| ../../../../../hsaTitle | string | Förskrivarens yrke i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..1 |
| ../../../../../speciallityCodes | string | Förskrivarens specialiteter i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..* |
| ../../../../../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod | 0..1 |
| ../../../../../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn | 1..1 |
| ../../../../../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn | 1..1 |
| ../../../../../placeOfWork | PlaceOfWork | Arbetsplats | 0..1 |
| ../../../../../../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../../../../../../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../../../../../../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../../../../../../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../../../../../../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../../../../../../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../../../../../../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| ../../treatmentSteps | TreatmentStep | Behandlingssteg (inom Läkemedelsbehandlingen).  Eftersom klassen används som retur i urval kan dessa vara begränsade pga. urval. | 0..* |
| ../../../startTime | dateTime | Tidpunkt då behandlingssteget startar. Tidpunkten är inkluderande vilket innebär att behandlingssteget räknas som pågående vid starttidpunkten. | 1 |
| ../../../endTime | dateTime | Tidpunkt då behandlingssteget slutar. Utelämnat värde innebär att behandlingssteget planeras att pågå tills vidare. Tidpunkten är exkluderande vilket innebär att behandlingssteget inte räknas som pågående vid sluttidpunkten. | 0..1 |
| ../../../medication | Medication_virtual | Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser. | 1 |
| ../../../dosage | Dosage | Dosering enligt vårdens doseringsmodell. I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas. | 0..1 |
| ../../../medicationPrescriptionId | Identifier | Referens till den bakomliggande läkemedelsordinationen eller Egenmedicineringen. Notera att i de fall insättningstidpunkten skiljer sig från ordinationstidpunkten är det den aktuella ordinationen som refereras, vilket inte med nödvändighet är densamma från vilken dosering och ordinerat läkemedel hämtas. | 1 |
| ../../status | code | Aktuell status på behandlingen. Någon av: active , on hold,  completed, entered in error, stopped, superceded Se fullständig beskrivning http://hl7.org/implement/standards/fhir/medication-prescription-status.html | 1 |
| ../medicationStatements | MedicationStatement | Patientens Egenmedicineringar (i urvalet) | 0..* |
| ../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. | 1 |
| ../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../patientId | Identifier | Identifiering av patienten. | 1 |
| ../../treatmentStartTime | dateTime | Tidpunkt då patienten uppger att behandlingen påbörjats. | 1 |
| ../../treatmentEndTime | dateTime | Tidpunkt då patienten uppger att Egenmedicineringen avslutats eller planerar att avsluta den. Om attributet inte anges innebär det att Egenmedicineringen pågår tills vidare utan känd sluttid.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. | 0..1 |
| ../../annotation | string | Kommentarer i fritext av registrerande Hälso- och sjukvårdspersonal, t.ex. bedömning av medicineringens verkan samt av patienten uppgivna effekter eller biverkningar. | 0..1 |
| ../../purpose | string | Av patienten uppgivet behandlingsändamål i klartext. | 0..1 |
| ../../medication | Medication_virtual | Det läkemedel (eller handelsvara) som Egenmedicineringen avser. Det är kanske inte troligt att patienten kan uppge läkemedlet så exakt att en det kan kopplas till en Läkemedelsartikel eller Läkemedelsprodukt, även om möjligheten finns. Istället är det troligare att det anges som Fritextläkemedel varvid även ATC-kod kan registreras om det är känt. | 1 |
| ../../dosage | Dosage | I möjligaste mån bör doseringen anges strukturerat enligt vårdens doseringsmodell. Där så inte är möjligt finns alltid möjligheten att (i doseringsmodellen) ange doseringen som fri text. I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas. | 0..1 |
| ../../informationSource | string | Uppgift om den person som tillhandahållit uppgiften, vanligtvis patienten själv, annan behandlande läkare eller någon närstående. Om inget värde anges antas uppgiften komma från patienten själv. | 0..1 |
| ../fullfilledReviews | Review | Information om genomförda genomgångar av listan som helhet, dvs. vem som genomfört och när. | 0..* |
| ../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. | 1 |
| ../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../reviewedBy | HealthcareProfessionalType | Den som ansvarat för genomgången, vilket inte nödvändigtvis är densamma som registrerat den. | 1 |
| ../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../givenName | string | Personens förnamn | 0..1 |
| ../../../familyName | string | Personens efternamn | 0..1 |
| ../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../time | dateTime | Tidpunkt då genomgången genomfördes. | 1 |
| ../requestedReviews | Review | Information om de genomgångar som begärts av listan som helhet, dvs. vem som begärt och när. | 0..* |
| ../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. | 1 |
| ../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../reviewedBy | HealthcareProfessionalType | Den som ansvarat för genomgången, vilket inte nödvändigtvis är densamma som registrerat den. | 1 |
| ../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../givenName | string | Personens förnamn | 0..1 |
| ../../../familyName | string | Personens efternamn | 0..1 |
| ../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../time | dateTime | Tidpunkt då genomgången genomfördes. | 1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.1.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: validTimePeriod kan inte användas med fält registrationTime. ResultCode sätts till ERROR och errorCode till INVALID_REQUEST.

R2: validTimePeriod väljer ut behandlingssteg (utfall från ordination där ordinationen varit/är aktiv) som faller inom tidsfönstret. För de selekterade behandlingsstegen så returneras hela ordinationen inkl alla behandlingssteg. Om en ordination "döljs" genom att den aldrig haft aktiva behandlingssteg, så returneras den endast om dess beslutstidpunkt faller inom tidsfönstret.

R3: validTimePeriod.start måste vara < validTimePeriod.end

R4: När validTimePeriodanvänds tillsammans med latestVersion så returneras den senaste ordinationen för varje behandling där något behandlingssteg varit aktivt inom tidsfönstret.

R5: medicationPrescriptionSequenceId fungerar tillsammans med de andra filtren genom att slutligen alltid filtrera ut resultatet till endast en behandling (om inte bortfiltrerad av övriga parametrar).

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

---


## 7.2 RegisterMedicationPrescription


### 7.2.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationPrescription:2`


### 7.2.2 Beskrivning

Tjänstekontrakt **RegisterMedicationPrescription** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.2.3 Fältregler


**Request — RegisterMedicationPrescriptionRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientInformation* | PatientInformation_setter | patientId eller patientInformation måste anges. | 1..1 |
| ../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| prescribedBy | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| accountablePrescriber | HealthcareProfessionalType | Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv. | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| medicalPrescriber | HealthcareProfessionalType | Förskrivare | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| authHeader | EHMAuthenticationSupplement | enbart då NOD anropar underliggande tjänster som tillhandahålls av EHM (RR/OR(LF). | 1..1 |
| ../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod argos: forskrivarkod | 0..1 |
| ../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod argos: legitimationskod | 0..1 |
| ../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod argos: yrkesgrupp | 0..1 |
| ../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod argos: befattningskod | 0..1 |
| ../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn argos: fornamn | 0..1 |
| ../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn argos: efternamn | 0..1 |
| ../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod argos: arbetsplatskod | 0..1 |
| ../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn argos: arbetsplatsnamn | 0..1 |
| ../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort argos: postort | 0..1 |
| ../phoneNumber | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 argos: telefonnummer | 0..1 |
| ../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress argos: postadress | 0..1 |
| ../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer argos: postnummer | 0..1 |
| ../organizationCode | string | Användarens organisationsnummer HSA: careGiverOrgNo argos: organisationsnummer | 0..1 |
| ../requestId | string | argos: requestId | 0..1 |
| ../roleName | string | Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL. argos: rollnamn | 0..1 |
| ../hsaID | string | HSA-id för användaren. argos: hsaID | 0..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationPrescriptionSequenceId | Identifier | Unikt id för Läkemedelsbehandlingen. Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationPrescriptionList | MedicationPrescriptionListType_setter | Lista med läkemedelsbehandlingar. | 1..1 |
| ../medicationPrescription | MedicationPrescription_setter | Läkemedelsbehandling. | 1..1 |
| ../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. | 1 |
| ../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../givenName | string | Personens förnamn | 0..1 |
| ../../../familyName | string | Personens efternamn | 0..1 |
| ../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../prescriber | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext. Se not 1. | 1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../responsiblePrescriber | HealthcareProfessionalType | Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv. | 0..1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../writeTime | dateTime | Tidpunkt då det medicinska beslutet fattades.  Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet).  I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades. | 1 |
| ../treatmentStartTime | dateTime | Tidpunkt från vilken patienten ska ta sitt läkemedel. insättningstidpunkt utgör startpunkt för angiven dosering. Vid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt. | 1 |
| ../treatmentEndTime | dateTime | Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel. Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad. Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. | 0..1 |
| ../evaluationTime | dateTime | Tidpunkt då läkemedelsbehandlingen senast bör utvärderas.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. Syftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig. | 0..1 |
| ../evaluatedBy | HealthcareProfessionalType | Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering. Om ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen. Om endast vårdenhet och vårdgivare är kända kan information om personen utlämnas. | 0..1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../reason | Reason | Orsaken till beslutet. Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen. Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering.  Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak.  http://www.inera.se/Documents/TJANSTER_PROJEKT/Svensk_informationsdatabas_for_lakemedel/Verksamhet%20ny/Verksamhetshandledning%20f%C3%B6r%20Uts%C3%A4ttningsorsaker.pdf | 0..1 |
| ../../code | CodeableConcept | Snomed CT-koden för vald ordinationsorsak.  Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO).  Ordinationsorsak anges alltid i kodad form. Det finns därför en kod med innebörden Annan orsak Om denna kod används, används attributet annan orsak text för att ange denna orsak i fritext. | 1 |
| ../../primaryReason | boolean | Uppgift om huruvida ordinationsorsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| ../use | string | Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. "sväljes hela", "påstrykes i armvecket". Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs). Ett förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt. Ingår i Expedieringsunderlag som en del av doseringstext 1. | 0..1 |
| ../purpose | string | Behandlingsändamål i klartext.  Ingår i Expedieringsunderlag som Ändamål klartext | 0..1 |
| ../medication | Medication_virtual | Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser. Det finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet. Vid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen. | 1 |
| ../dosage | Dosage | Dosering enligt vårdens doseringsmodell. Doseringen ska anges i relation till insättningstidpunkt. Vid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas - inte doseringen. I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas. | 0..1 |
| ../treatmentReason | TreatmentReason | Ordinationsorsak enligt separat struktur. Det bör påpekas att ordinationsorsak (i förekommande fall) ska anges av vårdsystemet för ny instans av Läkemedelsordination inom samma läkemedelsbehandling.  Principen att det senast beslutet ska innehålla en komplett beskrivning av den pågående läkemedelsbehandlingen gäller även här. Även vid utsättning ska följaktligen ordinationsorsak anges. Även om det är ovanligt att ordinationsorsaken ändras inom en läkemedelsbehandling så finns det inget hinder (i modellen) för detta. Om ordinationsorsak anges ska minst en, eventuellt flera, anges som huvudorsak.  Se även not 4. | 1..* |
| ../../code | code | Snomed CT-koden för vald ordinationsorsak.  Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO).  Ordinationsorsak anges alltid i kodad form. Det finns därför en kod med innebörden Annan orsak Om denna kod används, används attributet annan orsak text för att ange denna orsak i fritext. | 1 |
| ../../primaryReason | boolean | Uppgift om huruvida ordinationsorsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| ../site | CodeableConcept | Den plats på kroppen genom vilket läkemedlet intas eller appliceras. En SNOMED-kod under SCTID:91723000 "anatomical structure" | 0..1 |
| ../route | CodeableConcept | Den väg som läkemedlet tar sig in i kroppen. En SNOMED-kod under SCTID: 284009009 "route of administration value" | 0..1 |
| ../method | CodeableConcept | Den teknik med vilken läkemedlet administreras. En SNOMED-kod under SCTID: 107733003 "introduction (procedure)" | 0..1 |
| ../MedicationDispenseAuthorizationForDoseDispensing_setter_attr | MedicationDispenseAuthorizationForDoseDispensing_setter | Expedieringsunderlag dos | 0..1 |
| ../../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| ../../substitutionNotAllowedByPatient | boolean | Anger att patienten angett att förskriven artikel ej får bytas ut. | 1 |
| ../../substitutionNotAllowedByPrescriber | boolean | Anger att förskrivare angett att förskriven artikel ej får bytas ut . | 1 |
| ../MedicationDispenseAuthorizationForPackage_setter_attr | MedicationDispenseAuthorizationForPackage_setter | Expedieringsunderlag paketerat | 0..1 |
| ../../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| ../../startPackage | boolean | Markering om startförpackning ska expedieras vid första uttag | 1 |
| ../../firstDispenseBefore | dateTime | Datum inom vilken första uttag av läkemedel måste göras. | 0..1 |
| ../../dispenseInterval | int | Absolut expedieringsintervall. Av förskrivaren angiven kortaste tid mellan två expedieringar.  Endast dagar används då expedieringsintervall sätts via NOD. | 0..1 |
| ../../numberOfDispenses | int | Förskrivet antal uttag Valideras i RR att värde är > 0 | 1 |
| ../../numberOfPackages | int | Antal förpackningar som ska expedieras per uttag  Valideras i RR att värde är > 0 | 1 |
| ../../EPrescription | boolean | Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper) | 1 |
| acute | boolean | Akutflaggan påverkar endast dosdispenserade expedieringsunderlag.  När ett dosdispenserat expedieringsunderlag markeras med akutflagga, begärs en ny akut produktion av patientens dospåsar. För underlag utan akutmarkering produceras nytt innehåll i dospåsarna vid nästa ordinarie produktionstillfälle. | 1 |

**Response — RegisterMedicationPrescriptionResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. | 1..1 |
| medicationPrescriptionList | MedicationPrescriptionListType | Övergripande objekt som håller ihop | 1..1 |
| medicationPrescription | MedicationPrescription |  | 1..1 |
| ../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. | 1 |
| ../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../givenName | string | Personens förnamn | 0..1 |
| ../../../familyName | string | Personens efternamn | 0..1 |
| ../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../patientId | Identifier | Identifiering av patienten. För att registrera läkemedelsordinationer i NOD krävs svenskt personnummer eller samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer.  Undantag: Person med enbart samordningsnummer kan inte registreras för Dos och följaktligen inte heller ordineras Dos. Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer. | 1 |
| ../prescriber | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext. Se not 1. | 1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../responsiblePrescriber | HealthcareProfessionalType | Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv. | 0..1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../writeTime | dateTime | Tidpunkt då det medicinska beslutet fattades.  Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet).  I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades. | 1 |
| ../treatmentStartTime | dateTime | Tidpunkt från vilken patienten ska ta sitt läkemedel. insättningstidpunkt utgör startpunkt för angiven dosering. Vid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt. | 1 |
| ../treatmentEndTime | dateTime | Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel. Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad. Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. | 0..1 |
| ../evaluationTime | dateTime | Tidpunkt då läkemedelsbehandlingen senast bör utvärderas.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. Syftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig. | 0..1 |
| ../evaluatedBy | HealthcareProfessionalType | Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering. Om ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen. Om endast vårdenhet och vårdgivare är kända kan information om personen utlämnas. | 0..1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../reason | Reason | Orsaken till beslutet. Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen. Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering.  Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak. | 0..1 |
| ../../code | code | Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.  Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). | 1 |
| ../../otherReasonText | string | Beslutsorsak angiven i fritext om värdet Annan orsak väljs för ordinationsorsak SCT.  Obligatorisk då ordinationsorsak SCT anges till Annan orsak (därmed obligatorisk i v. 1.0). Får ej anges om ordinationsorsak kod anges till något annat än Annan orsak. Not: Detta attribut får inte överföras till receptregistret eller finnas på recept/expedieringsunderlag.  Ordinationsorsak i fritext får inte lagras i receptregistret. | 0..1 |
| ../../primaryReason | boolean | Uppgift om huruvida orsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| ../annotation | string | Ordinatörens kommentarer i fritext kopplade till en specifik ordination. Syftet är t.ex. att ordinatören i fritext ska kunna ange sådant som inte framgår av beslutsorsak eller ordinationsorsak och som är av intresse för annan vård- och omsorgspersonal. Fältet är avsett att beskriva nuläget för läkemedelsbehandlingen utan att användaren ska behöva ta del av notatfältet i tidigare läkemedelsordinationer. Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering. | 0..1 |
| ../use | string | Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. "sväljes hela", "påstrykes i armvecket". Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs). Ett förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt. Ingår i Expedieringsunderlag som en del av doseringstext 1. | 0..1 |
| ../purpose | string | Behandlingsändamål i klartext.  Ingår i Expedieringsunderlag som Ändamål klartext | 0..1 |
| ../medication | Medication_virtual | Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser. Det finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet. Vid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen. | 1 |
| ../dosage | Dosage | Dosering enligt vårdens doseringsmodell. Doseringen ska anges i relation till insättningstidpunkt. Vid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas - inte doseringen. I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas. | 0..1 |
| ../treamentReason | Reason | Ordinationsorsak enligt separat struktur. Det bör påpekas att ordinationsorsak (i förekommande fall) ska anges av vårdsystemet för ny instans av Läkemedelsordination inom samma läkemedelsbehandling.  Principen att det senast beslutet ska innehålla en komplett beskrivning av den pågående läkemedelsbehandlingen gäller även här. Även vid utsättning ska följaktligen ordinationsorsak anges. Även om det är ovanligt att ordinationsorsaken ändras inom en läkemedelsbehandling så finns det inget hinder (i modellen) för detta. Om ordinationsorsak anges ska minst en, eventuellt flera, anges som huvudorsak.  Se även not 4. | 1..* |
| ../../code | code | Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.  Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). | 1 |
| ../../otherReasonText | string | Beslutsorsak angiven i fritext om värdet Annan orsak väljs för ordinationsorsak SCT.  Obligatorisk då ordinationsorsak SCT anges till Annan orsak (därmed obligatorisk i v. 1.0). Får ej anges om ordinationsorsak kod anges till något annat än Annan orsak. Not: Detta attribut får inte överföras till receptregistret eller finnas på recept/expedieringsunderlag.  Ordinationsorsak i fritext får inte lagras i receptregistret. | 0..1 |
| ../../primaryReason | boolean | Uppgift om huruvida orsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| ../site | CodeableConcept | Den plats på kroppen genom vilket läkemedlet intas eller appliceras. En SNOMED-kod under SCTID:91723000 "anatomical structure" | 0..1 |
| ../route | CodeableConcept | Den väg som läkemedlet tar sig in i kroppen. En SNOMED-kod under SCTID: 284009009 "route of administration value" | 0..1 |
| ../method | CodeableConcept | Den teknik med vilken läkemedlet administreras. En SNOMED-kod under SCTID: 107733003 "introduction (procedure)" | 0..1 |
| ../MedicationDispenseAuthorizationForDoseDispensing_attr | MedicationDispenseAuthorizationForDoseDispensing | Expedieringsunderlg | 0..1 |
| ../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. Saknas initialt om ändringar gjorts på apotekssidan. | 0..1 |
| ../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../id | Identifier | Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR) | 1 |
| ../../medicationPrescriptionId | Identifier | Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid. Om expedieringsunderlaget skapas av vårdsystemet "löst", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter. Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten. | 0..1 |
| ../../prescriber | MedicalPrescriber | Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad. | 1 |
| ../../../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod | 0..1 |
| ../../../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod | 0..1 |
| ../../../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod | 1..1 |
| ../../../hsaTitle | string | Förskrivarens yrke i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..1 |
| ../../../speciallityCodes | string | Förskrivarens specialiteter i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..* |
| ../../../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod | 0..1 |
| ../../../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn | 1..1 |
| ../../../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn | 1..1 |
| ../../../placeOfWork | PlaceOfWork | arbetsplats | 0..1 |
| ../../../../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../../../../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../../../../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../../../../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../../../../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../../../../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../../../../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| ../../patientInformation | PatientInformation | I första hand ska svenskt personnummer användas.  Vid Expedieringsunderlag för helförpackning gäller dessutom: Om samordningsnummer finns kan detta användas tillsammans med födelsetid. Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges. | 1 |
| ../../../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../../../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../../../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../../../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../../../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../../../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../../../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../../../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../../../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../../../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../../../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| ../../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../../treatmentEndTime | dateTime | Datum och tid när patienten skall avsluta intag. Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).  Mappas från Läkemedelsordination.utsättningstidpunkt | 0..1 |
| ../../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../../articleId | string | Identitet på förskrivet livsmedel eller handelsvara. Obligatorisk parameter om NPL-id och NPL pack-id saknas.  Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF. Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr | 0..1 |
| ../../dosageText1 | string | Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.  Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning. | 1..1 |
| ../../dosageText2 | string | Kompletterande doseringstext till patienten Mappas från endera av Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation  eller  Ex tempore. beskrivning | 0..1 |
| ../../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../pupose | string | (Ändamål klartext) Mappas från Läkemedelsordination.behandlingsändamål | 1 |
| ../../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| ../../acute | boolean | Markering om dispenserad ordination är gjord akut. Flaggan sätts vid anrop av tjänsten och påverkar då alla expedieringsunderlag som skapas vid samma tillfälle. | 1 |
| ../../substitutionNotAllowedByPatient | boolean | Anger att patienten angett att förskriven artikel ej får bytas ut. | 1 |
| ../../substitutionNotAllowedByPrescriber | boolean | Anger att förskrivare angett att förskriven artikel ej får bytas ut . | 1 |
| ../../dosage | DosageByOccasion | Angivande av intagstillfällen, intagsmängd, dag i period och periodlängd. Fylls i av NOD baserat på dosering i Ordinationen. | 1 |
| ../../treatmentStartTime | dateTime | Anger när doseringsschemat ska börja gälla. Fylls i av NOD baserat på Läkemedelsordination.insättningstidpunkt | 0..1 |
| ../../endComment | string | Kommentar varför ordinationen blev utsatt  Fylls i av NOD baserat på Läkemedelsordination.utsättningsorsak text | 0..1 |
| ../../treatmentEndTime | dateTime | Räknas ut av NOD.  Tidpunkten kan komma att ändras om behandlingstiden ändras. | 0..1 |
| ../MedicationDispenseAuthorizationForPackage_attr | MedicationDispenseAuthorizationForPackage | Expedieringsundelag | 0..1 |
| ../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. Saknas initialt om ändringar gjorts på apotekssidan. | 0..1 |
| ../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../id | Identifier | Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR) | 1 |
| ../../medicationPrescriptionId | Identifier | Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid. Om expedieringsunderlaget skapas av vårdsystemet "löst", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter. Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten. | 0..1 |
| ../../prescriber | MedicalPrescriber | Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad. | 1 |
| ../../../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod | 0..1 |
| ../../../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod | 0..1 |
| ../../../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod | 1..1 |
| ../../../hsaTitle | string | Förskrivarens yrke i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..1 |
| ../../../speciallityCodes | string | Förskrivarens specialiteter i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..* |
| ../../../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod | 0..1 |
| ../../../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn | 1..1 |
| ../../../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn | 1..1 |
| ../../../placeOfWork | PlaceOfWork | arbetsplats | 0..1 |
| ../../../../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../../../../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../../../../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../../../../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../../../../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../../../../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../../../../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| ../../patientInformation | PatientInformation | I första hand ska svenskt personnummer användas.  Vid Expedieringsunderlag för helförpackning gäller dessutom: Om samordningsnummer finns kan detta användas tillsammans med födelsetid. Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges. | 1 |
| ../../../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../../../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../../../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../../../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../../../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../../../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../../../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../../../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../../../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../../../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../../../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| ../../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../../treatmentEndTime | dateTime | Datum och tid när patienten skall avsluta intag. Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).  Mappas från Läkemedelsordination.utsättningstidpunkt | 0..1 |
| ../../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../../articleId | string | Identitet på förskrivet livsmedel eller handelsvara. Obligatorisk parameter om NPL-id och NPL pack-id saknas.  Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF. Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr | 0..1 |
| ../../dosageText1 | string | Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.  Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning. | 1..1 |
| ../../dosageText2 | string | Kompletterande doseringstext till patienten Mappas från endera av Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation  eller  Ex tempore. beskrivning | 0..1 |
| ../../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../pupose | string | (Ändamål klartext) Mappas från Läkemedelsordination.behandlingsändamål | 1 |
| ../../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| ../../substitutionNotAllowed | boolean | Markering om ordinerad vara ej får bytas ut vid expediering Endast tillämpligt vid ordination av Läkemedelsartikel. Falskt = Får ersättas Sant = Får ej ersättas Sätts av förskrivare. Fylls i av NOD baserat på Läkemedelsartikel.ej tillåten substitution | 1 |
| ../../startPackage | boolean | Markering om startförpackning ska expedieras vid första uttag | 1 |
| ../../firstDispenseBefore | dateTime | Datum inom vilken första uttag av läkemedel måste göras. | 0..1 |
| ../../dispenseInterval | int | Absolut expedieringsintervall. Av förskrivaren angiven kortaste tid mellan två expedieringar.  Endast dagar används då expedieringsintervall sätts via NOD. | 0..1 |
| ../../intervalUnit | string | Enhet för det absoluta expedieringsintervallet. Kan anges i dagar, veckor eller månader. Sätts till dagar då expedieringsintervall sätts via NOD. | 0..1 |
| ../../numberOfDispenses | int | Förskrivet antal uttag Valideras i RR att värde är > 0 | 1 |
| ../../numberOfPackages | int | Antal förpackningar som ska expedieras per uttag  Valideras i RR att värde är > 0 | 1 |
| ../../EPrescription | boolean | Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper) | 1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.2.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Vid registrering av ordination med hjälp av RegisterMedicationPrescription så kan samtidigt en begäran för dosdispenserade expedieringsunderlag skickas med. Tjänsten ser till att inga dosdispenserade expedieringsunderlag kopplade till behandlingen överlappar i tid, genom att korta av eventuella redan existerande dosdispenserade expedieringsunderlag. Detta för att säkerställa att det inte blir dubbla leveranser.

I vissa fall så kan en begäran om dosdispenserad expedieringsunderlag resultera i att tjänsten skapar ett eller flera dosdispenserade expedieringsunderlag i NOD och i receptdepån hos eHM. Detta kan t.ex. ske när doseringsanvisningen för ordinationen innehåller ett schema för upp- eller nertrappning som sträcker sig över mer än 28 dagar (max för ett dosdispenserat expedieringsunderlag i receptdepån hos eHM). Tumregeln är att de dosdispenserade expedieringsunderlagen som hör till en behandling ska mappa exakt mot de faktiska behandlingssteg som blivit resultatet av de ordinationer som skapats med knutna dosdispenserade expedieringsunderlag.

Tjänstekonsumenten behöver själv se till att det läkemedel som ordinerats går att dosdispenserade, utgående från lokalt dossortiment för det aktuella dosapoteket och från doseringsanvisningen. Även insättningsdatum behöver sättas korrekt enligt/efter stopptid för dosperiod, eller så ska begäran göras med akutflagga satt.

R2: Reason (beslutsorsak) måste sättas om MedicationPrescriptionSequenceId är satt, dvs vid en ändring av behandling. Detta pga att orsak till ändringen måste anges.

R3: Vid registrering av expedieringsunderlag som ska expedieras på apotek krävs antingen att patienten har svenskt personnummer, eller att begäran inkluderar de personuppgifter som krävs för att få registrera på födelsedatum.

R4: Endast expedieringsunderlag som är registrerade på patient med svenskt personnummer kan makuleras genom denna tjänst.

R5: Dosdispenserat expedieringsunderlag kan endast registreras på patient med svenskt personnummer.

R6: Vid registering av expedieringsunderlag för helförpackning så kan läkemedel som anges på ordination och expedieringsunderlag inte vara samma. T.ex. kan ordination vara på generisk substansnivå, medan expedieringsunderlag pekar ut en specifik produkt.

---


## 7.3 DiscontinueMedication


### 7.3.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2`


### 7.3.2 Beskrivning

Tjänstekontrakt **DiscontinueMedication** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.3.3 Fältregler


**Request — DiscontinueMedicationRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationPrescriptionSequenceId | Identifier | Unikt id för Läkemedelsbehandlingen. Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras. Se kapitel 5.2 för exempel och regler kring format. | 1..* |
| authHeader | EHMAuthenticationSupplement | Används enbart då NOD anropar underliggande tjänster som tillhandahålls av EHM (RR/OR(LF). | 0..1 |
| ../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod argos: forskrivarkod | 0..1 |
| ../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod argos: legitimationskod | 0..1 |
| ../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod argos: yrkesgrupp | 0..1 |
| ../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod argos: befattningskod | 0..1 |
| ../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn argos: fornamn | 0..1 |
| ../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn argos: efternamn | 0..1 |
| ../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod argos: arbetsplatskod | 0..1 |
| ../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn argos: arbetsplatsnamn | 0..1 |
| ../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort argos: postort | 0..1 |
| ../phoneNumber | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 argos: telefonnummer | 0..1 |
| ../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress argos: postadress | 0..1 |
| ../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer argos: postnummer | 0..1 |
| ../organizationCode | string | Användarens organisationsnummer HSA: careGiverOrgNo argos: organisationsnummer | 0..1 |
| ../requestId | string | argos: requestId | 0..1 |
| ../roleName | string | Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL. argos: rollnamn | 0..1 |
| ../hsaID | string | HSA-id för användaren. argos: hsaID | 0..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| prescribedBy | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| medicalPrescriber | HealthcareProfessionalType | Förskrivare | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| accountablePrescriber | HealthcareProfessionalType |  | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| reason | Reason | Utsättningsorsak i kodad form. | 1..* |
| ../code | CodeableConcept | Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.  Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). | 1 |
| ../primaryReason | boolean | Uppgift om huruvida orsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| writeTime | dateTime | Tidpunkt då det medicinska beslutet fattades. | 0..1 |
| treatmentEndTime | dateTime | Om utsättning sker i framtiden så måste denna skickas med, och går endast att använda för att förkorta en behandling. | 0..1 |
| revokeMedicationDispenseAuthorizations | boolean | Återkalla expedieringsunderlag eller ej. | 1..1 |
| acute | boolean | Akutflaggan påverkar endast dosdispenserade expedieringsunderlag.  När ett dosdispenserat expedieringsunderlag markeras med akutflagga, begärs en ny akut produktion av patientens dospåsar. För underlag utan akutmarkering produceras nytt innehåll i dospåsarna vid nästa ordinarie produktionstillfälle. | 1..1 |

**Response — DiscontinueMedicationResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationPrescription | MedicationPrescription | Läkemedelsordination | 1..1 |
| ../registrationData | RegistrationData |  | 1..1 |
| ../../id | Identifier | Unikt id för Läkemedelsordinationen. Om Läkemedelsordinationen ursprungligen skapas i NOD ska värdet utelämnas (null) varvid värdet sätts av NOD. Om det är fråga om att en befintlig läkemedelsordination flyttas (importeras) till NOD från ett vårdsystem ska dess ursprungliga id anges. Detta ger bl.a. möjlighet att upptäcka dubbletter. Måste då vara UUID eller kälsystem+lokalt id. Notera att med "flyttas" (till skillnad från kopieras) avses att originalet (inte en kopia) överförs till NOD. | 0..1 |
| ../../registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används.  Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för Läkemedelsordinationen som helhet. | 1 |
| ../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../givenName | string | Personens förnamn | 0..1 |
| ../../../familyName | string | Personens efternamn | 0..1 |
| ../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer |  |
| ../prescriber | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext. Se not 1. | 1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../responsiblePrescriber | HealthcareProfessionalType | Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv. | 0..1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../writeTime | dateTime | Tidpunkt då det medicinska beslutet fattades.  Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringsstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet).  I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades. | 1 |
| ../ treatmentStartTime | dateTime | Tidpunkt från vilken patienten ska ta sitt läkemedel. insättningstidpunkt utgör startpunkt för angiven dosering. Vid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt. | 1 |
| ../ treatmentEndTime | dateTime | Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel. Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad. Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. | 0..1 |
| ../evaluationTime | dateTime | Tidpunkt då läkemedelsbehandlingen senast bör utvärderas.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. Syftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig. | 0..1 |
| ../evaluatedBy | HealthcareProfessionalType | Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering. Om ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen. Om endast vårdenhet och vårdgivare är kända kan information om personen utlämnas. | 0..1 |
| ../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../givenName | string | Personens förnamn | 0..1 |
| ../../familyName | string | Personens efternamn | 0..1 |
| ../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../reason | Reason | Orsaken till beslutet. Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen. Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering.  Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak. | 0..1 |
| ../../code | CodeableConcept | Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.  Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). | 1 |
| ../../primaryReason | boolean | Uppgift om huruvida orsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| ../annotation | string | Ordinatörens kommentarer i fritext kopplade till en specifik ordination. Syftet är t.ex. att ordinatören i fritext ska kunna ange sådant som inte framgår av beslutsorsak eller ordinationsorsak och som är av intresse för annan vård- och omsorgspersonal. Fältet är avsett att beskriva nuläget för läkemedelsbehandlingen utan att användaren ska behöva ta del av notatfältet i tidigare läkemedelsordinationer. Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering. | 0..1 |
| ../use | string | Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. "sväljes hela", "påstrykes i armvecket". Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs). Ett förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt. Ingår i Expedieringsunderlag som en del av doseringstext 1. | 0..1 |
| ../purpose | string | Behandlingsändamål i klartext.  Ingår i Expedieringsunderlag som Ändamål klartext | 0..1 |
| ../medication | Medication_virtual | Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser. Det finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet. Vid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen. | 1 |
| ../../DistributedDrug_attr | DistributedDrug |  | 0..1 |
| ../../../NPLid | Identifier | id som identifierar läkemedelsprodukt. Hämtas från SIL. Ex. Alvedon tablett 500 mg. Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara). NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket. Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id. Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx) Ingår i Expedieringsunderlag. | 0..1 |
| ../../../tradeName | string | Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Möjlighet att utnyttja detta fält för "fritextordination" måste testas (t.ex. för studieläkemedel eller "okänt läkemedel"). | 1 |
| ../../../notInterchangable | boolean | Markering att ordinerad vara ej får bytas ut vid expediering Falskt = Får bytas ut Sant = Får ej bytas ut Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget. | 1 |
| ../../DrugArticle_attr | DrugArticle |  | 0..1 |
| ../../../NPLPackid | Identifier | Id som identifierar läkemedelsartikel.  Hämtas från SIL. Anger läkemedel på nivån : Alvedon tablett 500 mg, 16 st blister. | 1 |
| ../../../distributedTradeName | string | Produktnamn + förpackning Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Kallas artikel hos apoteksaktörerna | 1 |
| ../../../distributedDrug | DistributedDrug | Den Läkemedelsprodukt som Läkemedelsartikeln baseras på.(se not 1) | 1 |
| ../../../../NPLid | Identifier | id som identifierar läkemedelsprodukt. Hämtas från SIL. Ex. Alvedon tablett 500 mg. Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara). NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket. Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id. Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx) Ingår i Expedieringsunderlag. | 0..1 |
| ../../../../tradeName | string | Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Möjlighet att utnyttja detta fält för "fritextordination" måste testas (t.ex. för studieläkemedel eller "okänt läkemedel"). | 1 |
| ../../../../notInterchangable | boolean | Markering att ordinerad vara ej får bytas ut vid expediering Falskt = Får bytas ut Sant = Får ej bytas ut Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget. | 1 |
| ../../ExTempore_attr | ExTempore |  | 0..1 |
| ../../../description | string | Beskriver komposition mm.  Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget. | 1 |
| ../../LicensedDrug_attr | LicensedDrug |  | 0..1 |
| ../../../productName | string | Namn på läkemedlet i fri text. Ingår i Expedieringsunderlag.doseringstext 2. | 1 |
| ../../../strength | string | Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../../drugForm | string | Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../../licenseInformation | string | t.ex. vilket apotek som har den beviljade licensen Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../NonDrugArticle_attr | NonDrugArticle |  | 0..1 |
| ../../../articleId | Identifier | Identitet på ordinerad handelsvara.  Obligatorisk parameter för handelsvaror som ska hämtas ut på apotek.  Får ej anges för läkemedel. Ingår i Expedieringsunderlag. | 0..1 |
| ../../FreeTextMedication_attr | FreeTextMedication |  | 0..1 |
| ../../../description | string | beskrivning av läkemedlet. Fritextval används t.ex. då patienten själv anger sina läkemedel (egenmedicinering) samt vid studieläkemedel, dvs. när patienten deltar i en forskningsstudie och inte själv vet om aktiv substans används. | 1 |
| ../../../atcCode | code | ATC-kod Om angivet kan kontroller utföras (interaktion, amning mm). Se not 1. | 0..1 |
| ../dosage | Dosage | Dosering enligt vårdens doseringsmodell. Doseringen ska anges i relation till insättningstidpunkt. Vid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas - inte doseringen. I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas. | 0..1 |
| ../treatmentReason | TreatmentReason | Ordinationsorsak enligt separat struktur. Det bör påpekas att ordinationsorsak (i förekommande fall) ska anges av vårdsystemet för ny instans av Läkemedelsordination inom samma läkemedelsbehandling.  Principen att det senast beslutet ska innehålla en komplett beskrivning av den pågående läkemedelsbehandlingen gäller även här. Även vid utsättning ska följaktligen ordinationsorsak anges. Även om det är ovanligt att ordinationsorsaken ändras inom en läkemedelsbehandling så finns det inget hinder (i modellen) för detta. Om ordinationsorsak anges ska minst en, eventuellt flera, anges som huvudorsak.  Se även not 4. | 1..* |
| ../../code | code | Snomed CT-koden för vald ordinationsorsak.  Anges enligt Socialstyrelsens kodsystem för ordinations-orsaker (NKOO).  Ordinationsorsak anges alltid i kodad form. Det finns därför en kod med innebörden Annan orsak Om denna kod används, används attributet annan orsak text för att ange denna orsak i fritext. | 1 |
| ../../primaryReason | boolean | Uppgift om huruvida ordinationsorsaken är "huvudorsak", dvs. viktigare än andra angivna orsaker | 1 |
| ../site | CodeableConcept | Den plats på kroppen genom vilket läkemedlet intas eller appliceras. | 0..1 |
| ../route | CodeableConcept | Den väg som läkemedlet tar sig in i kroppen. | 0..1 |
| ../method | CodeableConcept | Den teknik med vilken läkemedlet administreras. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.3.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Man kan inte förlänga behandlingstiden för en behandling med denna tjänst (nytt utsättningsdatum bortom nuvarande utsättningsdatum för behandlingen).

R2: Den ordination som skapas när en behandling sätts ut med denna tjänst har insättningsdatum = utsättningsdatum.

R3: Endast expedieringsunderlag som är registrerade på patient med svenskt personnummer kan makuleras genom denna tjänst.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.4 RegisterMedicationStatement


### 7.4.1 Version

Version: 1.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1`


### 7.4.2 Beskrivning

Tjänstekontrakt **RegisterMedicationStatement** version 1.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.4.3 Fältregler


**Request — RegisterMedicationStatementRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| medicationStatementSequenceId | Identifier | Unikt id för egenmedicineringsbehandlingen. | 1..1 |
| medicationStatement | MedicationStatement_setter | Egenmedicineringsbehandling. | 1..* |
| ../treatmentStartTime | dateTime | Tidpunkt då patienten uppger att behandlingen påbörjats. | 1 |
| ../treatmentEndTime | dateTime | Tidpunkt då patienten uppger att Egenmedicineringen avslutats eller planerar att avsluta den. Om attributet inte anges innebär det att Egenmedicineringen pågår tills vidare utan känd sluttid.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. | 0..1 |
| ../annotation | string | Kommentarer i fritext av registrerande Hälso- och sjukvårdspersonal, t.ex. bedömning av medicineringens verkan samt av patienten uppgivna effekter eller biverkningar. | 0..1 |
| ../purpose | string | Av patienten uppgivet behandlingsändamål i klartext. | 0..1 |
| ../medication | Medication_virtual | Det läkemedel (eller handelsvara) som Egenmedicineringen avser. Det är kanske inte troligt att patienten kan uppge läkemedlet så exakt att en det kan kopplas till en Läkemedelsartikel eller Läkemedelsprodukt, även om möjligheten finns. Istället är det troligare att det anges som Fritextläkemedel varvid även ATC-kod kan registreras om det är känt. | 1 |
| ../../DistributedDrug_attr | DistributedDrug |  | 0..1 |
| ../../../NPLid | Identifier | id som identifierar läkemedelsprodukt. Hämtas från SIL. Ex. Alvedon tablett 500 mg. Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara). NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket. Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id. Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx) Ingår i Expedieringsunderlag. | 0..1 |
| ../../../tradeName | string | Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Möjlighet att utnyttja detta fält för "fritextordination" måste testas (t.ex. för studieläkemedel eller "okänt läkemedel"). | 1 |
| ../../../notInterchangable | boolean | Markering att ordinerad vara ej får bytas ut vid expediering Falskt = Får bytas ut Sant = Får ej bytas ut Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget. | 1 |
| ../../DrugArticle_attr | DrugArticle |  | 0..1 |
| ../../../NPLPackid | Identifier | Id som identifierar läkemedelsartikel.  Hämtas från SIL. Anger läkemedel på nivån : Alvedon tablett 500 mg, 16 st blister. | 1 |
| ../../../distributedTradeName | string | Produktnamn + förpackning Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Kallas artikel hos apoteksaktörerna | 1 |
| ../../../distributedDrug | DistributedDrug | Den Läkemedelsprodukt som Läkemedelsartikeln baseras på.(se not 1) | 1 |
| ../../../../NPLid | Identifier | id som identifierar läkemedelsprodukt. Hämtas från SIL. Ex. Alvedon tablett 500 mg. Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara). NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket. Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id. Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx) Ingår i Expedieringsunderlag. | 0..1 |
| ../../../../tradeName | string | Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid. Möjlighet att utnyttja detta fält för "fritextordination" måste testas (t.ex. för studieläkemedel eller "okänt läkemedel"). | 1 |
| ../../../../notInterchangable | boolean | Markering att ordinerad vara ej får bytas ut vid expediering Falskt = Får bytas ut Sant = Får ej bytas ut Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget. | 1 |
| ../../ExTempore_attr | ExTempore |  | 0..1 |
| ../../../description | string | Beskriver komposition mm.  Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget. | 1 |
| ../../LicensedDrug_attr | LicensedDrug |  | 0..1 |
| ../../../productName | string | Namn på läkemedlet i fri text. Ingår i Expedieringsunderlag.doseringstext 2. | 1 |
| ../../../strength | string | Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../../drugForm | string | Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../../licenseInformation | string | t.ex. vilket apotek som har den beviljade licensen Ingår i Expedieringsunderlag.doseringstext 2. | 0..1 |
| ../../NonDrugArticle_attr | NonDrugArticle |  | 0..1 |
| ../../../articleId | Identifier | Identitet på ordinerad handelsvara.  Obligatorisk parameter för handelsvaror som ska hämtas ut på apotek.  Får ej anges för läkemedel. Ingår i Expedieringsunderlag. | 0..1 |
| ../../FreeTextMedication_attr | FreeTextMedication |  | 0..1 |
| ../../../description | string | beskrivning av läkemedlet. Fritextval används t.ex. då patienten själv anger sina läkemedel (egenmedicinering) samt vid studieläkemedel, dvs. när patienten deltar i en forskningsstudie och inte själv vet om aktiv substans används. | 1 |
| ../../../atcCode | code | ATC-kod Om angivet kan kontroller utföras (interaktion, amning mm). Se not 1. | 0..1 |
| ../dosage | Dosage | I möjligaste mån bör doseringen anges strukturerat enligt vårdens doseringsmodell. Där så inte är möjligt finns alltid möjligheten att (i doseringsmodellen) ange doseringen som fri text. I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas. | 0..1 |
| ../../dosageSteps | DosageStep | Ett eller flera doseringssteg. | 1..* |
| ../../../duration | Period | den tid under vilket läkemedlet ska användas enligt ordination, t.ex. 4 veckor, 5-6 veckor | 0..1 |
| ../../../../value | Interval |  | 1 |
| ../../../../../min | NumericValue | Intervallets min-värde | 1..1 |
| ../../../../../../decimalNumber | DecimalNumber |  | 0..1 |
| ../../../../../../../value | decimal |  | 1..1 |
| ../../../../../../../decimals | int |  | 1..1 |
| ../../../../../../fraction | Fraktion |  | 0..1 |
| ../../../../../../../numerator | int |  | 1..1 |
| ../../../../../../../denominator | int |  | 1..1 |
| ../../../../../max | NumericValue | Intervallets max-värde. Om utelämnat tolkas som att max=min, dvs. en skalär. | 0..1 |
| ../../../../../../decimalNumber | DecimalNumber |  | 0..1 |
| ../../../../../../../value | decimal |  | 1..1 |
| ../../../../../../../decimals | int |  | 1..1 |
| ../../../../../../fraction | Fraktion |  | 0..1 |
| ../../../../../../../numerator | int |  | 1..1 |
| ../../../../../../../denominator | int |  | 1..1 |
| ../../../../unit | TimeUnitEnum | {Minute, Hour, Day, Week, Month, Year} | 1 |
| ../../../isMaxDuration | boolean | flagga som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas. Flaggan är satt till FALSE som förvalt värde, dvs. den anger att behandlingstiden inte är en maxtid. | 0..1 |
| ../../../doseUnit | string | den enhet som doseringen avser, t.ex. tablett, ml eller droppe | 1 |
| ../../../regularDosage | DosageType_virtual | dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger dagligen | 0..1 |
| ../../../maxDosage | DosageType_virtual | dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka | 0..1 |
| ../../../conditionalDosage | DosageType_virtual | ordinerad mängd och periodicitet som gäller om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten | 0..1 |
| ../../../condition | string | text som anger villkor kopplat till en villkorsdosering, t.ex. "vid behov". Anges endast om attributet villkorsdosering förekommer. | 0..1 |
| ../../../shortNotation | string | angiven kortnotation som beskriver doseringen | 0..1 |
| ../informationSource | string | Uppgift om den person som tillhandahållit uppgiften, vanligtvis patienten själv, annan behandlande läkare eller någon närstående. Om inget värde anges antas uppgiften komma från patienten själv. | 0..1 |

**Response — RegisterMedicationStatementResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationStatement | MedicationStatement | Egenmedicinering. | 1..* |
| ../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. | 1..1 |
| ../../id | Identifier | Unikt id för det omgivande objektet. | 1..1 |
| ../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1..1 |
| ../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../givenName | string | Personens förnamn | 0..1 |
| ../../../familyName | string | Personens efternamn | 0..1 |
| ../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1..1 |
| ../patientId | Identifier | Identifiering av patienten. För att registrera läkemedelsordinationer i NOD krävs svenskt personnummer eller samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer.  Undantag: Person med enbart samordningsnummer kan inte registreras för Dos och följaktligen inte heller ordineras Dos. Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer. | 1..1 |
| ../treatmentStartTime | dateTime | Tidpunkt då patienten uppger att behandlingen påbörjats. | 1..1 |
| ../treatmentEndTime | dateTime | Tidpunkt då patienten uppger att Egenmedicineringen avslutats eller planerar att avsluta den. Om attributet inte anges innebär det att Egenmedicineringen pågår tills vidare utan känd sluttid.  Tidpunkten får, om den anges, inte vara före insättningstidpunkt. | 0..1 |
| ../annotation | string | Kommentarer i fritext av registrerande Hälso- och sjukvårdspersonal, t.ex. bedömning av medicineringens verkan samt av patienten uppgivna effekter eller biverkningar. | 0..1 |
| ../purpose | string | Av patienten uppgivet behandlingsändamål i klartext. | 0..1 |
| ../medication | Medication | Det läkemedel (eller handelsvara) som Egenmedicineringen avser. Det är kanske inte troligt att patienten kan uppge läkemedlet så exakt att en det kan kopplas till en Läkemedelsartikel eller Läkemedelsprodukt, även om möjligheten finns. Istället är det troligare att det anges som Fritextläkemedel varvid även ATC-kod kan registreras om det är känt. | 1..1 |
| ../dosage | Dosage | I möjligaste mån bör doseringen anges strukturerat enligt vårdens doseringsmodell. Där så inte är möjligt finns alltid möjligheten att (i doseringsmodellen) ange doseringen som fri text. I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas. | 0..1 |
| ../informationSource | string | Uppgift om den person som tillhandahållit uppgiften, vanligtvis patienten själv, annan behandlande läkare eller någon närstående. Om inget värde anges antas uppgiften komma från patienten själv. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.4.4 Övriga regler

Inga specifika regler för detta tjänstekontrakt.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.5 GetMedicationDispenseAuthorizations


### 7.5.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2`


### 7.5.2 Beskrivning

Tjänstekontrakt **GetMedicationDispenseAuthorizations** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.5.3 Fältregler


**Request — GetMedicationDispenseAuthorizationsRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientInformation* | PatientInformation_setter | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| ../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| authHeader | EHMAuthenticationSupplement | Används enbart då NOD anropar underliggande tjänster som tillhandahålls av EHM (RR/OR(LF). | 1..1 |
| ../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod argos: forskrivarkod | 0..1 |
| ../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod argos: legitimationskod | 0..1 |
| ../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod argos: yrkesgrupp | 0..1 |
| ../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod argos: befattningskod | 0..1 |
| ../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn argos: fornamn | 0..1 |
| ../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn argos: efternamn | 0..1 |
| ../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod argos: arbetsplatskod | 0..1 |
| ../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn argos: arbetsplatsnamn | 0..1 |
| ../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort argos: postort | 0..1 |
| ../phoneNumber | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 argos: telefonnummer | 0..1 |
| ../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress argos: postadress | 0..1 |
| ../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer argos: postnummer | 0..1 |
| ../organizationCode | string | Användarens organisationsnummer HSA: careGiverOrgNo argos: organisationsnummer | 0..1 |
| ../requestId | string | argos: requestId | 0..1 |
| ../roleName | string | Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL. argos: rollnamn | 0..1 |
| ../hsaID | string | HSA-id för användaren. argos: hsaID | 0..1 |
| dispenseAuthorizationStatus | DispenseAuthorizationStatusEnum | Filtrerar ut endast de expedieringsunderlag som har den angivna statusen. Möjliga val är kopplade i NOD, ej kopplade i NOD, eller alla. | 1..1 |
| validTimePeriod | DateTimePeriodType | Filtrerar ut endast de expedieringsunderlag som var giltiga under den angivna perioden. | 0..1 |

**Response — GetMedicationDispenseAuthorizationsResponse**

| Svar |  |  |  |
| --- | --- | --- | --- |
| medicationDispenseCase | MedicationDispenseCase | Expedieringsunderlag | 0..* |
| medicationDispenseAuthorizations | MedicationDispenseAuthorization_virtual |  | 1..* |
| ../MedicationDispenseAuthorizationForDoseDispensing_attr | MedicationDispenseAuthorizationForDoseDispensing | .. | 0..1 |
| ../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. Saknas initialt om ändringar gjorts på apotekssidan. | 0..1 |
| ../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 1..1 |
| ../../../../familyName | string | Personens efternamn | 1..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../id | Identifier | Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR) | 1 |
| ../../medicationPrescriptionId | Identifier | Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid. Om expedieringsunderlaget skapas av vårdsystemet "löst", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter. Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten. | 0..1 |
| ../../prescriber | MedicalPrescriber | Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad. | 1 |
| ../../../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod | 0..1 |
| ../../../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod | 0..1 |
| ../../../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod | 1..1 |
| ../../../hsaTitle | string | Förskrivarens yrke i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..1 |
| ../../../speciallityCodes | string | Förskrivarens specialiteter i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..* |
| ../../../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod | 0..1 |
| ../../../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn | 1..1 |
| ../../../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn | 1..1 |
| ../../../placeOfWork | PlaceOfWork | Arbetsplats | 0..1 |
| ../../../../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../../../../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../../../../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../../../../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../../../../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../../../../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../../../../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| ../../patientInformation | PatientInformation | I första hand ska svenskt personnummer användas.  Vid Expedieringsunderlag för helförpackning gäller dessutom: Om samordningsnummer finns kan detta användas tillsammans med födelsetid. Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges. | 1 |
| ../../../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../../../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../../../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../../../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../../../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../../../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../../../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../../../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../../../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../../../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../../../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| ../../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../../treatmentEndTime | dateTime | Datum och tid när patienten skall avsluta intag. Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).  Mappas från Läkemedelsordination.utsättningstidpunkt | 0..1 |
| ../../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../../articleId | string | Identitet på förskrivet livsmedel eller handelsvara. Obligatorisk parameter om NPL-id och NPL pack-id saknas.  Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF. Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr | 0..1 |
| ../../dosageText1 | string | Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.  Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning. | 1..1 |
| ../../dosageText2 | string | Kompletterande doseringstext till patienten Mappas från endera av Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation  eller  Ex tempore. beskrivning | 0..1 |
| ../../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../pupose | string | (Ändamål klartext) Mappas från Läkemedelsordination.behandlingsändamål | 1 |
| ../../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| ../../acute | boolean | Markering om dispenserad ordination är gjord akut. Flaggan sätts vid anrop av tjänsten och påverkar då alla expedieringsunderlag som skapas vid samma tillfälle. | 1 |
| ../../substitutionNotAllowedByPatient | boolean | Anger att patienten angett att förskriven artikel ej får bytas ut. | 1 |
| ../../substitutionNotAllowedByPrescriber | boolean | Anger att förskrivare angett att förskriven artikel ej får bytas ut . | 1 |
| ../../dosage | DosageByOccasion | Angivande av intagstillfällen, intagsmängd, dag i period och periodlängd. Fylls i av NOD baserat på dosering i Ordinationen. | 1 |
| ../../treatmentStartTime | dateTime | Anger när doseringsschemat ska börja gälla. Fylls i av NOD baserat på Läkemedelsordination.insättningstidpunkt | 0..1 |
| ../../endComment | string | Kommentar varför ordinationen blev utsatt  Fylls i av NOD baserat på Läkemedelsordination.utsättningsorsak text | 0..1 |
| ../../treatmentEndTime | dateTime | Räknas ut av NOD.  Tidpunkten kan komma att ändras om behandlingstiden ändras. | 0..1 |
| ../MedicationDispenseAuthorizationForPackage_attr | MedicationDispenseAuthorizationForPackage | .. | 0..1 |
| ../../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. Saknas initialt om ändringar gjorts på apotekssidan. | 0..1 |
| ../../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../../givenName | string | Personens förnamn | 0..1 |
| ../../../../familyName | string | Personens efternamn | 0..1 |
| ../../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../../id | Identifier | Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR) | 1 |
| ../../medicationPrescriptionId | Identifier | Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid. Om expedieringsunderlaget skapas av vårdsystemet "löst", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter. Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten. | 0..1 |
| ../../prescriber | MedicalPrescriber | Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad. | 1 |
| ../../../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod | 0..1 |
| ../../../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod | 0..1 |
| ../../../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod | 1..1 |
| ../../../hsaTitle | string | Förskrivarens yrke i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..1 |
| ../../../speciallityCodes | string | Förskrivarens specialiteter i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..* |
| ../../../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod | 0..1 |
| ../../../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn | 1..1 |
| ../../../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn | 1..1 |
| ../../../placeOfWork | PlaceOfWork | Arbetsplats | 0..1 |
| ../../../../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../../../../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../../../../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../../../../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../../../../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../../../../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../../../../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| ../../patientInformation | PatientInformation | I första hand ska svenskt personnummer användas.  Vid Expedieringsunderlag för helförpackning gäller dessutom: Om samordningsnummer finns kan detta användas tillsammans med födelsetid. Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges. | 1 |
| ../../../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../../../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../../../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../../../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../../../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../../../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../../../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../../../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../../../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../../../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../../../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| ../../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../../treatmentEndTime | dateTime | Datum och tid när patienten skall avsluta intag. Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).  Mappas från Läkemedelsordination.utsättningstidpunkt | 0..1 |
| ../../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../../articleId | string | Identitet på förskrivet livsmedel eller handelsvara. Obligatorisk parameter om NPL-id och NPL pack-id saknas.  Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF. Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr | 0..1 |
| ../../dosageText1 | string | Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.  Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning. | 1..1 |
| ../../dosageText2 | string | Kompletterande doseringstext till patienten Mappas från endera av Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation  eller  Ex tempore. beskrivning | 0..1 |
| ../../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../pupose | string | (Ändamål klartext) Mappas från Läkemedelsordination.behandlingsändamål | 1 |
| ../../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| ../../substitutionNotAllowed | boolean | Markering om ordinerad vara ej får bytas ut vid expediering Endast tillämpligt vid ordination av Läkemedelsartikel. Falskt = Får ersättas Sant = Får ej ersättas Sätts av förskrivare. Fylls i av NOD baserat på Läkemedelsartikel.ej tillåten substitution | 1 |
| ../../startPackage | boolean | Markering om startförpackning ska expedieras vid första uttag | 1 |
| ../../firstDispenseBefore | dateTime | Datum inom vilken första uttag av läkemedel måste göras. | 0..1 |
| ../../dispenseInterval | int | Absolut expedieringsintervall. Av förskrivaren angiven kortaste tid mellan två expedieringar.  Endast dagar används då expedieringsintervall sätts via NOD. | 0..1 |
| ../../intervalUnit | string | Enhet för det absoluta expedieringsintervallet. Kan anges i dagar, veckor eller månader. Sätts till dagar då expedieringsintervall sätts via NOD. | 0..1 |
| ../../numberOfDispenses | int | Förskrivet antal uttag Valideras i RR att värde är > 0 | 1 |
| ../../numberOfPackages | int | Antal förpackningar som ska expedieras per uttag  Valideras i RR att värde är > 0 | 1 |
| ../../EPrescription | boolean | Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper) | 1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.5.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: validTimePeriod.start måste vara < validTimePeriod.end

R2: Tjänsteproducent avgör om slagning mot Receptdepå human (RR) ska göras baserat på den behörighetsdata som skickas av konsument i elementet authHeader.

Om behörighet finns kontrolleras om patienten har svenskt personnummer och dosunderlag, anrop görs sedan för att hämta data från eHälsomyndigheten.

Saknas dosunderlag ges meddelande av typ INFO i resultat; ”Patient inte dospatient. Uppgifter från Receptregistret har inte hämtats.”

Saknas behörighet ges meddelande av typ INFO i resultat; ”Behörighet till Receptregistret saknas” Uppgifter från Receptregistret har inte hämtats.”

Om behörighetsdata är komplett men inte giltig i kommunikation med eHälsomyndigheten ges resultat av typ ERROR.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.6 RegisterMedicationDispenseAuthorization


### 7.6.1 Version

Version: 1.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1`


### 7.6.2 Beskrivning

Tjänstekontrakt **RegisterMedicationDispenseAuthorization** version 1.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.6.3 Fältregler


**Request — RegisterMedicationDispenseAuthorizationRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientInformation | PatientInformation | patientId eller patientInformation måste anges. | 1..1 |
| ../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| authHeader | EHMAuthenticationSupplement | Används enbart då NOD anropar underliggande tjänster som tillhandahålls av EHM (RR/OR(LF). | 1..1 |
| ../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod argos: forskrivarkod | 0..1 |
| ../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod argos: legitimationskod | 0..1 |
| ../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod argos: yrkesgrupp | 0..1 |
| ../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod argos: befattningskod | 0..1 |
| ../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn argos: fornamn | 0..1 |
| ../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn argos: efternamn | 0..1 |
| ../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod argos: arbetsplatskod | 0..1 |
| ../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn argos: arbetsplatsnamn | 0..1 |
| ../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort argos: postort | 0..1 |
| ../phoneNumber | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 argos: telefonnummer | 0..1 |
| ../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress argos: postadress | 0..1 |
| ../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer argos: postnummer | 0..1 |
| ../organizationCode | string | Användarens organisationsnummer HSA: careGiverOrgNo argos: organisationsnummer | 0..1 |
| ../requestId | string | argos: requestId | 0..1 |
| ../roleName | string | Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL. argos: rollnamn | 0..1 |
| ../hsaID | string | HSA-id för användaren. argos: hsaID | 0..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| medicalPrescriber | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 0..1 |
| medicationPrescriptionSequenceId | Identifier | Unikt id för Läkemedelsbehandlingen. Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras. Se kapitel 5.2 för exempel och regler kring format. | 0..1 |
| medicationDispenseAuthorization | MedicationDispenseAuthorization_setter | Expedieringsunderlag | 1..1 |
| ../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. Saknas initialt om ändringar gjorts på apotekssidan. | 0..1 |
| ../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../givenName | string | Personens förnamn | 0..1 |
| ../../../familyName | string | Personens efternamn | 0..1 |
| ../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../patientInformation | PatientInformation | I första hand ska svenskt personnummer användas.  Vid Expedieringsunderlag för helförpackning gäller dessutom: Om samordningsnummer finns kan detta användas tillsammans med födelsetid. Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges. | 1 |
| ../../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| ../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| acute | boolean | Akutflaggan påverkar endast dosdispenserade expedieringsunderlag.  När ett dosdispenserat expedieringsunderlag markeras med akutflagga, begärs en ny akut produktion av patientens dospåsar. För underlag utan akutmarkering produceras nytt innehåll i dospåsarna vid nästa ordinarie produktionstillfälle. | 1..1 |

**Response — RegisterMedicationDispenseAuthorizationResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationDispenseAuthorization | MedicationDispenseAuthorization | Expedieringsunderlag | 1..1 |
| ../registrationData | RegistrationData | id, registrerad av och registreringstidpunkt. Saknas initialt om ändringar gjorts på apotekssidan. | 0..1 |
| ../../id | Identifier | Unikt id för det omgivande objektet. | 1 |
| ../../registeredBy | HealthcareProfessionalType | Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet. Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster. | 1 |
| ../../../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../../../givenName | string | Personens förnamn | 0..1 |
| ../../../familyName | string | Personens efternamn | 0..1 |
| ../../../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../../registrationTime | dateTime | Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka. | 1 |
| ../id | Identifier | Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR) | 1 |
| ../medicationPrescriptionId | Identifier | Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid. Om expedieringsunderlaget skapas av vårdsystemet "löst", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter. Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten. | 0..1 |
| ../prescriber | MedicalPrescriber | Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad. | 1 |
| ../../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod | 0..1 |
| ../../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod | 0..1 |
| ../../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod | 1..1 |
| ../../hsaTitle | string | Förskrivarens yrke i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..1 |
| ../../speciallityCodes | string | Förskrivarens specialiteter i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..* |
| ../../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod | 0..1 |
| ../../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn | 0..1 |
| ../../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn | 0..1 |
| ../../placeOfWork | PlaceOfWork | Arbetsplats | 0..1 |
| ../../../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../../../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../../../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../../../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../../../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../../../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../../../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| ../patientInformation | PatientInformation | I första hand ska svenskt personnummer användas.  Vid Expedieringsunderlag för helförpackning gäller dessutom: Om samordningsnummer finns kan detta användas tillsammans med födelsetid. Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges. | 1 |
| ../../patientId | Identifier | Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet) Endast om det är känt. PU: personid RR: personnummer | 0..1 |
| ../../givenName | string | Patientens förnamn. PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn. RR: förnamn | 0..1 |
| ../../familyName | string | Patientens efternamn. PU: efternamn  RR: efternamn | 0..1 |
| ../../dateOfBirth | date | Födelsedatum (8 siffror). Anges för patient som saknar giltigt personnummer. Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag. PU: födelsetid RR: födelsedatum | 0..1 |
| ../../gender | GenderEnum | Patientens kön. Obligatorisk parameter om Personnummer saknas.  {Male, Female, Unspecified} PU: kön RR: kön | 0..1 |
| ../../deliveryAdress1 | string | Patientens gatuadress 1. PU: utdelningsadress1 RR: adress1 | 0..1 |
| ../../deliveryAdress2 | string | Patientens adress 2. PU: utdelningsadress2 RR: adress2 | 0..1 |
| ../../postalCode | string | Patientens postnummer. PU: postnr RR: postnummer | 0..1 |
| ../../city | string | Patientens postort. PU: postort RR: postort | 0..1 |
| ../../phoneNumber1 | string | Patientens telefonnummer 1. PU: saknas RR: telefonnummer1 | 0..1 |
| ../../phoneNumber2 | string | Patientens telefonnummer 2. PU: saknas RR: telefonnummer2 | 0..1 |
| ../prescriptionWriteTime | dateTime | (f.d. Ordinationstidpunkt) Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).  När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån). | 1 |
| ../prescriberComment | string | Förskrivarens kommentar till farmaceut.  Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket) | 0..1 |
| ../receivingPharmacy | string | Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad. Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration. Valideras i AFF | 0..1 |
| ../deliveryMessage | string | Leveransinformation om ordinationen skickas till ett ombud | 0..1 |
| ../treatmentEndTime | dateTime | Datum och tid när patienten skall avsluta intag. Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).  Mappas från Läkemedelsordination.utsättningstidpunkt | 0..1 |
| ../NPLPackid | string | NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.  Valideras i AFF. Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id. Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id | 0..1 |
| ../NPLid | string | NPL-id alternativt SB-id som identifierar produkt. Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id. Valideras i AFF. Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id. Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id | 0..1 |
| ../articleId | string | Identitet på förskrivet livsmedel eller handelsvara. Obligatorisk parameter om NPL-id och NPL pack-id saknas.  Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF. Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr | 0..1 |
| ../dosageText1 | string | Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.  Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning. | 1..1 |
| ../dosageText2 | string | Kompletterande doseringstext till patienten Mappas från endera av Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation  eller  Ex tempore. beskrivning | 0..1 |
| ../languageCode | string | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../pupose | string | (Ändamål klartext) Mappas från Läkemedelsordination.behandlingsändamål | 1 |
| ../reimbursed | boolean | Förskrivaren uppgift om ordinationen ska innefattas i förmånen. Falskt = Utan förmån Sant =Med förmån Valideras i AFF | 1 |
| ../validUntil | date | Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag. Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen. Valideras i AFF | 1 |
| medicationListVersion | Identifier | Unikt id för läkemedelslistan. | 1..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.6.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Vid registrering av expedieringsunderlag som ska expedieras på apotek krävs antingen att patienten har svenskt personnummer, eller att begäran inkluderar de personuppgifter som krävs för att få registrera på födelsedatum. Dessutom måste förskrivande användare ha rätt att förskriva det aktuella läkemedlet.

R2: Dosdispenserat expedieringsunderlag kan endast registreras på patient med svenskt personnummer.

R3: Dosdispenserat expedieringsunderlag kan endast registreras mot redan existerande läkemedelsbehandling, och endast om behandlingen redan innehåller dosdispenserat expedieringsunderlag.

R4: Om tidigare dosdispenserat expedieringsunderlag blir ogiltigt under innevarande dosperiod krävs akutmarkering för att förnya. Detta för att läkemedlet annars inte kommer i dospåsarna förrän nästa dosperiod.

R5: Expedieringsunderlag som expedieras på apotek och registreras i Receptdepå human valideras genom eHälsomyndighetens AFF-kontroller.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

---


## 7.7 RevokeMedicationDispenseAuthorization


### 7.7.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2`


### 7.7.2 Beskrivning

Tjänstekontrakt **RevokeMedicationDispenseAuthorization** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.7.3 Fältregler


**Request — RevokeMedicationDispenseAuthorizationRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationDispenseAuthorizationId | Identifier | Id på expedieringsunderlaget. medicationDispenseAuthorizationId.system sätts till ”urn:riv:clinicalprocess:activityprescription:prescribe: medicationDispenseAuthorizationId”  medicationDispenseAuthorizationId.value sätts till id | 1..1 |
| reason | CodeableConcept | Utsättningsorsak i kodad form. | 1..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. Krävs i de fall där det expedieringsunderlag som ska makuleras är kopplat till en behandling. | 0..1 |
| authHeader | EHMAuthenticationSupplement |  | 0..1 |
| ../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod argos: forskrivarkod | 0..1 |
| ../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod argos: legitimationskod | 0..1 |
| ../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod argos: yrkesgrupp | 0..1 |
| ../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod argos: befattningskod | 0..1 |
| ../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn argos: fornamn | 0..1 |
| ../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn argos: efternamn | 0..1 |
| ../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod argos: arbetsplatskod | 0..1 |
| ../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn argos: arbetsplatsnamn | 0..1 |
| ../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort argos: postort | 0..1 |
| ../phoneNumber | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 argos: telefonnummer | 0..1 |
| ../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress argos: postadress | 0..1 |
| ../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer argos: postnummer | 0..1 |
| ../organizationCode | string | Användarens organisationsnummer HSA: careGiverOrgNo argos: organisationsnummer | 0..1 |
| ../requestId | string | argos: requestId | 0..1 |
| ../roleName | string | Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL. argos: rollnamn | 0..1 |
| ../hsaID | string | HSA-id för användaren. argos: hsaID | 0..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA. Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| medicalPrescriber | HealthcareProfessionalType | Förskrivare | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |

**Response — RevokeMedicationDispenseAuthorizationResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. Returneras endast i de fall där den först skickats in. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.7.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Det går ej att makulera ett dosdispenserat expedieringsunderlag som är kopplat till en behandling i NOD med denna tjänst. Använd istället ändra/sätt ut behandling.

R2: Det går att makulera dosdispenserade expedieringsunderlag, som inte är kopplade till en behandling i NOD. Dock sker makuleringen momentant, och det är inte möjligt att ange att akutproduktion önskas. För övriga scenarion, använd istället ändra/sätt ut behandling.

R3: Alla makuleringar av expedieringsunderlag sker momentant.

R4: Endast expedieringsunderlag som är registrerade på patient med svenskt personnummer kan makuleras genom denna tjänst.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.8 AttachMedicationDispenseAuthorization


### 7.8.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:AttachMedicationDispenseAuthorization:2`


### 7.8.2 Beskrivning

Tjänstekontrakt **AttachMedicationDispenseAuthorization** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.8.3 Fältregler


**Request — AttachMedicationDispenseAuthorizationRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationPrescriptionSequenceId | Identifier | Id på ursprunglig läkemedelsordination medicationPrescriptionSequenceId.system sätts till ”urn:riv:clinicalprocess:activityprescription:prescribe:medicationPrescriptionSequenceId”  medicationPrescriptionSequenceId.value sätts till id | 1..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| prescribedBy | HealthcareProfessionalType |  | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| accountablePrescriber | HealthcareProfessionalType |  | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |

**Response — AttachMedicationDispenseAuthorizationResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationListVersion | Identifier |  | 1..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.8.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Vid inkoppling av dispenserat expedieringsunderlag mot befintlig behandling får inte överlapp i behandlingstid mot eventuella andra dispenserade expedieringsunderlag finnas.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.9 GetDispensedDrugs


### 7.9.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugs:2`


### 7.9.2 Beskrivning

Tjänstekontrakt **GetDispensedDrugs** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.9.3 Fältregler


**Request — GetDispensedDrugsRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| typeOfConsent | LFConsentEnum | Anger typ av samtycke {ONETIME_CONSENT, CONSENT, EMERGENCY} | 1..1 |
| healthcareProfessional | HealthcareProfessionalType | Personal som begär hämtning av expediering. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| prescriberCode | Identifier | En för användaren unik förskrivarkod | 0..1 |
| placeOfWork | PlaceOfWork | Arbetsplats | 1..1 |
| ../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| typeOfResponse | DispensedDrugsTypeOfResponseEnum | Ange om listan skall returneras i strukturerad form, multimedia (t.ex pdf) eller både strukturerad och multimedia. {TEXT, MULTIMEDIA, BOTH} | 1..1 |

**Response — GetDispensedDrugsResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| dispensedDrugs | DispensedDrug | Expedieringar. | 0..* |
| ../dispenseId | string | Unikt id för expediering. | 1 |
| ../dispenseDate | date | Datum för expediering på apotek. | 1 |
| ../numberOfPackages | int | Antal förpackningar av utlämnad vara. Obligatorisk parameter om posten ej är en dosdispenserad artikel | 1 |
| ../numberOfTablets | string | Summa antal avdelade doser inklusive enhet. Angiven om posten är en dosdispenserad artikel. | 1 |
| ../removed | boolean | Markering om posten är borttagen. Sant om posten är borttagen, annars falskt. | 1 |
| ../quantity | string | Mängd i klartext | 1 |
| ../dosage | string | Dosering i klartext så som den returneras från LF (Krav på presentation i handboken) | 1 |
| ../articleInformation | ArticleInformation | ArticleInformation | 0..1 |
| ../../nplPackid | string | Identitet på förskrivet läkemedel som har NPL Pack-id alternativt SB Pack-id. | 1 |
| ../../distributedTradeName | string | Läkemedelsnamn vid inläsningstillfället. | 1 |
| ../../drugForm | string | Läkemedelsform vid inläsningstillfället. | 1 |
| ../../strength | string | Styrka i klartext vid inläsningstillfället. | 1 |
| ../../atcCode | code | ATC-kod vid inläsningstillfället | 1 |
| ../../atcText | string | Verksamt ämne vid inläsningstillfället. | 1 |
| ../../packageSize | string | Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar. | 1 |
| ../../packageType | string | Beskrivning av artikelns förpackningstyp vid inläsningstillfället. | 1 |
| ../presciber | MedicalPrescriber | Förskrivarens namn, yrke, specialiteter och arbetsplats (Krav på presentation i handboken) | 1 |
| ../../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod | 0..1 |
| ../../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod | 0..1 |
| ../../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod | 1..1 |
| ../../hsaTitle | string | Förskrivarens yrke i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..1 |
| ../../speciallityCodes | string | Förskrivarens specialiteter i klartext.  Fylls i av NOD vid läsning från LF. Krav vid presentation. | 0..* |
| ../../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod | 0..1 |
| ../../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn | 1..1 |
| ../../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn | 1..1 |
| ../../placeOfWork | PlaceOfWork | PlaceOfWork | 0..1 |
| ../../../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod | 0..1 |
| ../../../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn | 1..1 |
| ../../../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort | 1..1 |
| ../../../phoneNumber1 | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 | 0..1 |
| ../../../phoneNumber2 | string | Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient. HSA:  RR: telefonnummer2 | 0..1 |
| ../../../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress | 0..1 |
| ../../../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.9.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Data från denna tjänst kommer från Läkemedelsförteckningen, och lyder under lagen om läkemedelsförteckning. För riktlinjer om hur data skall visas för användaren; se "Läkemedelsförteckningen för vårdaktörer 8_0.pdf".

R2: Om patient är avliden returneras inga rader ur Läkemedelsförteckningen. ResultType sätts till INFO med kompletterande information om att patienten är markerad som avliden.

R3: Behörighetskontroll ska ske i anropande system. Behöriga roller att anropa tjänsterna är:

Förskrivare av läkemedel

Legitimerad sjuksköterska

R4: Läkemedelsförteckningen lagrar endast information om expedieringar för patienter med svenskt personnummer.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.10 GetDispensedDrugsConsent


### 7.10.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2`


### 7.10.2 Beskrivning

Tjänstekontrakt **GetDispensedDrugsConsent** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.10.3 Fältregler


**Request — GetDispensedDrugsConsentRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| prescriberId | Identifier | Förskrivarkod | 0..1 |

**Response — GetDispensedDrugsConsentResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| hasConsent | boolean | Indikerar om samtycke finns eller ej. | 1..1 |
| Result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.10.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Läkemedelsförteckningen lagrar endast information om expedieringar för patienter med svenskt personnummer, och därmed kan inte samtycke finnas för övriga patientgrupper.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.11 RegisterDispensedDrugsConsent


### 7.11.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2`


### 7.11.2 Beskrivning

Tjänstekontrakt **RegisterDispensedDrugsConsent** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.11.3 Fältregler


**Request — RegisterDispensedDrugsConsentRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| authHeader | EHMAuthenticationSupplement | Används enbart då NOD anropar underliggande tjänster som tillhandahålls av EHM (RR/OR(LF). | 1..1 |
| ../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod argos: forskrivarkod | 0..1 |
| ../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod argos: legitimationskod | 0..1 |
| ../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod argos: yrkesgrupp | 0..1 |
| ../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod argos: befattningskod | 0..1 |
| ../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn argos: fornamn | 0..1 |
| ../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn argos: efternamn | 0..1 |
| ../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod argos: arbetsplatskod | 0..1 |
| ../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn argos: arbetsplatsnamn | 0..1 |
| ../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort argos: postort | 0..1 |
| ../phoneNumber | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 argos: telefonnummer | 0..1 |
| ../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress argos: postadress | 0..1 |
| ../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer argos: postnummer | 0..1 |
| ../organizationCode | string | Användarens organisationsnummer HSA: careGiverOrgNo argos: organisationsnummer | 0..1 |
| ../requestId | string | argos: requestId | 0..1 |
| ../roleName | string | Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL. argos: rollnamn | 0..1 |
| ../hsaID | string | HSA-id för användaren. argos: hsaID | 0..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| prescriberId | Identifier | En för användaren unik förskrivarkod | 1..1 |

**Response — RegisterDispensedDrugsConsentResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.11.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Läkemedelsförteckningen lagrar endast information om expedieringar för patienter med svenskt personnummer, och därmed kan inte samtycke finnas för övriga patientgrupper.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.12 RevokeDispensedDrugsConsent


### 7.12.1 Version

Version: 2.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:RevokeDispensedDrugsConsent:2`


### 7.12.2 Beskrivning

Tjänstekontrakt **RevokeDispensedDrugsConsent** version 2.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.12.3 Fältregler


**Request — RevokeDispensedDrugsConsentRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| prescriberId | Identifier | Förskrivarkod | 1..1 |
| authHeader | EHMAuthenticationSupplement | Används enbart då NOD anropar underliggande tjänster som tillhandahålls av EHM (RR/OR(LF). | 1..1 |
| ../personalPrescriptionCode | string | Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.  Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM. För användare som har gruppförskrivarkod gäller: befattningskod är obligatorisk  För läkare (LK) - yrkeskod (dvs LK) är obligatorisk. Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska  Valideras i AFF HSA: förskrivarkod, även kallat personalPrescriptionCode  RR: förskrivarkod argos: forskrivarkod | 0..1 |
| ../legitimationCode | string | Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden. Se gruppförskrivarkod för villkor. HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas. yrkeskod	Gruppkod	yrkeskod klartext SJ	971000	Sjuksköterska	 AP	972000	Apotekare	 RC	973000	Receptarie	 RR: legitimationskod argos: legitimationskod | 0..1 |
| ../hsaTitleCode | string | Yrkeskod som definierar vilken typ av legitimation som användaren innehar. Se gruppförskrivarkod för villkor. Kontrolleras i receptregistret att personen har angiven yrkeskod. Valideras i AFF HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:"HSA Innehåll Legitimerad Yrkesgrupp" på se www.inera.se/hsa. Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska. RR: yrkeskod argos: yrkesgrupp | 0..1 |
| ../paTitleCode | string | Förskrivarens befattningskod. Se gruppförskrivarkod för villkor. HSA: befattningskod, även kallat paTitleCode. Notera också att samma användare kan inneha flera befattningskoder. RR: befattningskod argos: befattningskod | 0..1 |
| ../givenName | string | Förskrivarens tilltalsnamn. HSA: tilltalsnamn (givenName) RR: förnamn argos: fornamn | 0..1 |
| ../familyName | string | Förskrivarens efternamn. Valideras i AFF  HSA: efternamn RR: efternamn argos: efternamn | 0..1 |
| ../unitPrescriptionCode | string | Förskrivarens arbetsplatskod eller grupparbetsplatskod Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.  Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.  Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.   Obligatorisk parameter om förmån angivits. Valideras i AFF HSA: arbetsplatskod, även kallat unitPrescriptionCode. RR: arbetsplatskod argos: arbetsplatskod | 0..1 |
| ../careUnitName | string | Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi HSA: enhetsnamn (careUnitName ) RR: arbetsplatsnamn argos: arbetsplatsnamn | 0..1 |
| ../city | string | Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED RR: arbetsplatsort argos: postort | 0..1 |
| ../phoneNumber | string | Förskrivarens eller vårdcentralens telefonnummer. HSA: direkttelefon  RR: telefonnummer1 argos: telefonnummer | 0..1 |
| ../postalAdress | string | Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B. HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken. RR: postadress argos: postadress | 0..1 |
| ../postalCode | string | Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45 HSA: postnummer (postalCode) RR: postnummer argos: postnummer | 0..1 |
| ../organizationCode | string | Användarens organisationsnummer HSA: careGiverOrgNo argos: organisationsnummer | 0..1 |
| ../requestId | string | argos: requestId | 0..1 |
| ../roleName | string | Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL. argos: rollnamn | 0..1 |
| ../hsaID | string | HSA-id för användaren. argos: hsaID | 0..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |

**Response — RevokeDispensedDrugsConsentResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.12.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Regler för Begäran

R1: Läkemedelsförteckningen lagrar endast information om expedieringar för patienter med svenskt personnummer, och därmed kan inte samtycke finnas för övriga patientgrupper.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.13 SetMedicationListReviewed


### 7.13.1 Version

Version: 1.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1`


### 7.13.2 Beskrivning

Tjänstekontrakt **SetMedicationListReviewed** version 1.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.13.3 Fältregler


**Request — SetMedicationListReviewedRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| reviewedBy | HealthcareProfessionalType | Den som ansvarat för genomgången, vilket inte nödvändigtvis är densamma som registrerat den. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| reviewedRequestedTime | dateTime | Tidpunkt då genomgången genomfördes. | 1..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| prescribedBy | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| accountablePrescriber | HealthcareProfessionalType | Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv. | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |

**Response — SetMedicationListReviewedResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.13.4 Övriga regler

Inga specifika regler för detta tjänstekontrakt.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.14 SetMedicationListReviewNeeded


### 7.14.1 Version

Version: 1.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewNeeded:1`


### 7.14.2 Beskrivning

Tjänstekontrakt **SetMedicationListReviewNeeded** version 1.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.14.3 Fältregler


**Request — SetMedicationListReviewNeededRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 0..1 |
| reviewedRequestedBy | HealthcareProfessionalType | Den som begärt genomgången. | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| registeredBy | HealthcareProfessionalType | Den person som registrerat ordinationen. | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| prescribedBy | HealthcareProfessionalType | Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den. Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext | 1..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| accountablePrescriber | HealthcareProfessionalType | Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv. | 0..1 |
| ../healthcareProfessionalHSAId | Identifier | HSA-id för personen. | 0..1 |
| ../givenName | string | Personens förnamn | 0..1 |
| ../familyName | string | Personens efternamn | 0..1 |
| ../healthcareProfessionalRoleCode | code | befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf | 0..1 |
| ../healthcareProfessionalCareUnitHSAId | Identifier | HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| ../healthcareProfessionalCareGiverHSAId | Identifier | HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för. | 0..1 |
| reviewRequestedTime | dateTime | Tidpunkt för begäran av genomgång. | 0..1 |

**Response — SetMedicationListReviewNeededResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| medicationListVersion | Identifier |  | 1..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.14.4 Övriga regler

Inga specifika regler för detta tjänstekontrakt.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---


## 7.15 CheckMedicationListVersion


### 7.15.1 Version

Version: 1.0

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1`


### 7.15.2 Beskrivning

Tjänstekontrakt **CheckMedicationListVersion** version 1.0 i domänen clinicalprocess:activityprescription:prescribe (Samlad läkemedelslista).


### 7.15.3 Fältregler


**Request — CheckMedicationListVersionRequest**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Begäran |  |  |  |
| patientId | Identifier | Person- eller samordningsnummer enligt skatteverkets definition (12 tecken). Se kapitel 5.2 för exempel och regler kring format. | 1..1 |
| medicationListVersion | Identifier | Version på patientens samlade läkemedelslista. Se kapitel 5.2 för exempel och regler kring format. | 1..1 |

**Response — CheckMedicationListVersionResponse**

| Namn | Typ | Beskrivning | Kardinalitet |
| --- | --- | --- | --- |
| Svar |  |  |  |
| isCurrentVersion | boolean | Sann om versionen som skickades in i begäran är den senaste versionen som finns registrerad i NOD. Annars falskt. | 1..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

### 7.15.4 Övriga regler

Inga specifika regler för detta tjänstekontrakt.

Icke funktionella krav

Inga specifika krav för detta tjänstekontrakt.

SLA-krav

Inga specifika krav för detta tjänstekontrakt.

---
