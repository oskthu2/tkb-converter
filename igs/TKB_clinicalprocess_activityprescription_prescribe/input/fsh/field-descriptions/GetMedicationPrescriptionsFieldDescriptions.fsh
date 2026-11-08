// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMedicationPrescriptionsFieldDescriptions
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista.

Se kapitel 5.2 för exempel och regler kring format."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1)."
* medicationList ^comment = "TKB-fält: `medicationList` (`MedicationList`, kardinalitet 0..1)."
* medicationList.patientId ^definition = "Identifiering av patienten.

Patienter i NOD identifieras initialt med svenskt personnummer och samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer.

Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer.

Vid enbart förskrivning, vilket är möjligt för patienter utan personnummer, används istället klassen Patientinformation."
* medicationList.patientId ^comment = "TKB-fält: `../patientId` (`Identifier`, kardinalitet 1)."
* medicationList.version ^definition = "Version på patientens samlade läkemedelslista.

Ändras av NOD vid varje förändring i någon av de ingående Läkemedelsbehandlingarna dvs. då en ny Läkemedelsordination eller ett nytt Expedieringsunderlag kopplat till en Läkemedelsbehandling registreras.

Däremot medför inte statusförändringar kopplade till ett Expedieringsunderlag eller expediering av läkemedel att underlagsversion ändras. Ej heller registrering av lösa Expedieringsunderlag, dvs sådana som ej är kopplade till en Läkemedelsbehandling

Syftet med underlagsversion är att vårdsystemet ska kunna säkerställa att det har rätt underlag vid ordination.

Vårdsystemet ska inte basera någon logik på underlagsversionens format, utan endast på kontroll av likhet.

Det bör noteras att underlagsversion alltid baseras på patientens samlade läkemedelslista, oberoende av eventuella urvalskriterier."
* medicationList.version ^comment = "TKB-fält: `../version` (`Identifier`, kardinalitet 1)."
* medicationList.lastModified ^definition = "Tidpunkt för senaste ändring i läkemedelslistan. Ändras samtidigt med underlagsversion."
* medicationList.lastModified ^comment = "TKB-fält: `../lastModified` (`dateTime`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences ^definition = "Patientens Läkemedelsbehandlingar (i urvalet)."
* medicationList.medicationPrescriptionSequences ^comment = "TKB-fält: `../medicationPrescriptionSequences` (`MedicationPrescriptionSequence`, kardinalitet 0..*)."
* medicationList.medicationPrescriptionSequences.id ^definition = "Unikt id för Läkemedelsbehandlingen.

Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras."
* medicationList.medicationPrescriptionSequences.id ^comment = "TKB-fält: `../../id` (`Identifier`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.patientId ^definition = "Identifiering av patienten."
* medicationList.medicationPrescriptionSequences.patientId ^comment = "TKB-fält: `../../patientId` (`Identifier`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.startOfTreatment ^definition = "Motsvarar insättningstidpunkt för första ordinationen i Läkemedelsbehandlingen"
* medicationList.medicationPrescriptionSequences.startOfTreatment ^comment = "TKB-fält: `../../startOfTreatment` (`dateTime`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions ^definition = "Läkemedelsordinationer (inom Läkemedelsbehandlingen) såväl gällande som historiska.

Eftersom klassen används som retur i urval kan dessa vara begränsade pga. urval. De instanser som refereras från returnerade expedieringsärenden eller behandlingssteg kommer dock alltid att finnas med."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions ^comment = "TKB-fält: `../../medicationPrescriptions` (`MedicationPrescription`, kardinalitet 0..*)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData ^definition = "id, registrerad av och registreringstidpunkt."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData ^comment = "TKB-fält: `../../../registrationData` (`RegistrationData`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.id ^comment = "TKB-fält: `../../../../id` (`Identifier`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy ^comment = "TKB-fält: `../../../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.registrationData.registrationTime ^comment = "TKB-fält: `../../../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.patientId ^definition = "Identifiering av patienten.

För att registrera läkemedelsordinationer i NOD krävs svenskt personnummer eller samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer.

Undantag: Person med enbart samordningsnummer kan inte registreras för Dos och följaktligen inte heller ordineras Dos.

Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.patientId ^comment = "TKB-fält: `../../../patientId` (`Identifier`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber ^definition = "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.

Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext.

Se not 1."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber ^comment = "TKB-fält: `../../../prescriber` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.givenName ^definition = "Personens förnamn"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.givenName ^comment = "TKB-fält: `../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.familyName ^definition = "Personens efternamn"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.familyName ^comment = "TKB-fält: `../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.prescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber ^definition = "Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber ^comment = "TKB-fält: `../../../responsiblePrescriber` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.givenName ^definition = "Personens förnamn"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.givenName ^comment = "TKB-fält: `../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.familyName ^definition = "Personens efternamn"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.familyName ^comment = "TKB-fält: `../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.responsiblePrescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.writeTime ^definition = "Tidpunkt då det medicinska beslutet fattades.

Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet).

I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.writeTime ^comment = "TKB-fält: `../../../writeTime` (`dateTime`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treatmentStartTime ^definition = "Tidpunkt från vilken patienten ska ta sitt läkemedel.

insättningstidpunkt utgör startpunkt för angiven dosering.

Vid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treatmentStartTime ^comment = "TKB-fält: `../../../treatmentStartTime` (`dateTime`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treatmentEndTime ^definition = "Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel.

Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad.

Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare.

Tidpunkten får, om den anges, inte vara före insättningstidpunkt."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treatmentEndTime ^comment = "TKB-fält: `../../../treatmentEndTime` (`dateTime`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluationTime ^definition = "Tidpunkt då läkemedelsbehandlingen senast bör utvärderas.

Tidpunkten får, om den anges, inte vara före insättningstidpunkt.

Syftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluationTime ^comment = "TKB-fält: `../../../evaluationTime` (`dateTime`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy ^definition = "Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering.

Om ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen.

Om endast vårdenhet och vårdgivare är kända kan information om personen utlämnas."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy ^comment = "TKB-fält: `../../../evaluatedBy` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.givenName ^definition = "Personens förnamn"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.givenName ^comment = "TKB-fält: `../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.familyName ^definition = "Personens efternamn"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.familyName ^comment = "TKB-fält: `../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.evaluatedBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.reason ^definition = "Orsaken till beslutet.

Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen.

Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering.

Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.reason ^comment = "TKB-fält: `../../../reason` (`Reason`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.reason.code ^definition = "Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.

Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.reason.code ^comment = "TKB-fält: `../../../../code` (`CodeableConcept`, kardinalitet 1).

**Modellanteckning:** Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Om ordinationsorsak anges till Annan orsak är det obligatorisk att ange orsaken som fritext (i fältet CodeableConcept.text) i annat fall ska fritext inte anges."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.reason.primaryReason ^definition = "Uppgift om huruvida orsaken är \"huvudorsak\", dvs. viktigare än andra angivna orsaker"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.reason.primaryReason ^comment = "TKB-fält: `../../../../primaryReason` (`boolean`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.annotation ^definition = "Ordinatörens kommentarer i fritext kopplade till en specifik ordination.

Syftet är t.ex. att ordinatören i fritext ska kunna ange sådant som inte framgår av beslutsorsak eller ordinationsorsak och som är av intresse för annan vård- och omsorgspersonal.

Fältet är avsett att beskriva nuläget för läkemedelsbehandlingen utan att användaren ska behöva ta del av notatfältet i tidigare läkemedelsordinationer.

Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.annotation ^comment = "TKB-fält: `../../../annotation` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.use ^definition = "Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. \"sväljes hela\", \"påstrykes i armvecket\". Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs).

Ett förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt.

Ingår i Expedieringsunderlag som en del av doseringstext 1."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.use ^comment = "TKB-fält: `../../../use` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.purpose ^definition = "Behandlingsändamål i klartext.

Ingår i Expedieringsunderlag som Ändamål klartext"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.purpose ^comment = "TKB-fält: `../../../purpose` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication ^definition = "Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser.

Det finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet.

Vid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication ^comment = "TKB-fält: `../../../medication` (`Medication_virtual`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DistributedDrug_attr ^comment = "TKB-fält: `../../../../DistributedDrug_attr` (`DistributedDrug`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DistributedDrug_attr.NPLid ^definition = "id som identifierar läkemedelsprodukt.

Hämtas från SIL.

Ex. Alvedon tablett 500 mg.

Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).

NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.

Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.

Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)

Ingår i Expedieringsunderlag."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DistributedDrug_attr.NPLid ^comment = "TKB-fält: `../../../../../NPLid` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DistributedDrug_attr.tradeName ^definition = "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Möjlighet att utnyttja detta fält för \"fritextordination\" måste testas (t.ex. för studieläkemedel eller \"okänt läkemedel\")."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DistributedDrug_attr.tradeName ^comment = "TKB-fält: `../../../../../tradeName` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DistributedDrug_attr.notInterchangable ^definition = "Markering att ordinerad vara ej får bytas ut vid expediering

Falskt = Får bytas ut

Sant = Får ej bytas ut

Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DistributedDrug_attr.notInterchangable ^comment = "TKB-fält: `../../../../../notInterchangable` (`boolean`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr ^comment = "TKB-fält: `../../../../DrugArticle_attr` (`DrugArticle`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.NPLPackid ^definition = "Id som identifierar läkemedelsartikel.

Hämtas från SIL.

Anger läkemedel på nivån : Alvedon tablett 500 mg, 16 st blister."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.NPLPackid ^comment = "TKB-fält: `../../../../../NPLPackid` (`Identifier`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedTradeName ^definition = "Produktnamn + förpackning

Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Kallas artikel hos apoteksaktörerna"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedTradeName ^comment = "TKB-fält: `../../../../../distributedTradeName` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedDrug ^definition = "Den Läkemedelsprodukt som Läkemedelsartikeln baseras på.(se not 1)"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedDrug ^comment = "TKB-fält: `../../../../../distributedDrug` (`DistributedDrug`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedDrug.NPLid ^definition = "id som identifierar läkemedelsprodukt.

Hämtas från SIL.

Ex. Alvedon tablett 500 mg.

Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).

NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.

Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.

Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)

Ingår i Expedieringsunderlag."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedDrug.NPLid ^comment = "TKB-fält: `../../../../../../NPLid` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedDrug.tradeName ^definition = "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Möjlighet att utnyttja detta fält för \"fritextordination\" måste testas (t.ex. för studieläkemedel eller \"okänt läkemedel\")."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedDrug.tradeName ^comment = "TKB-fält: `../../../../../../tradeName` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedDrug.notInterchangable ^definition = "Markering att ordinerad vara ej får bytas ut vid expediering

Falskt = Får bytas ut

Sant = Får ej bytas ut

Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.DrugArticle_attr.distributedDrug.notInterchangable ^comment = "TKB-fält: `../../../../../../notInterchangable` (`boolean`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.ExTempore_attr ^comment = "TKB-fält: `../../../../ExTempore_attr` (`ExTempore`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.ExTempore_attr.description ^definition = "Beskriver komposition mm.

Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.ExTempore_attr.description ^comment = "TKB-fält: `../../../../../description` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr ^comment = "TKB-fält: `../../../../LicensedDrug_attr` (`LicensedDrug`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr.productName ^definition = "Namn på läkemedlet i fri text.

Ingår i Expedieringsunderlag.doseringstext 2."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr.productName ^comment = "TKB-fält: `../../../../../productName` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr.strength ^definition = "Ingår i Expedieringsunderlag.doseringstext 2."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr.strength ^comment = "TKB-fält: `../../../../../strength` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr.drugForm ^definition = "Ingår i Expedieringsunderlag.doseringstext 2."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr.drugForm ^comment = "TKB-fält: `../../../../../drugForm` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr.licenseInformation ^definition = "t.ex. vilket apotek som har den beviljade licensen

Ingår i Expedieringsunderlag.doseringstext 2."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.LicensedDrug_attr.licenseInformation ^comment = "TKB-fält: `../../../../../licenseInformation` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.NonDrugArticle_attr ^comment = "TKB-fält: `../../../../NonDrugArticle_attr` (`NonDrugArticle`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.NonDrugArticle_attr.articleId ^definition = "Identitet på ordinerad handelsvara.

Obligatorisk parameter för handelsvaror som ska hämtas ut på apotek.

Får ej anges för läkemedel.

Ingår i Expedieringsunderlag."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.NonDrugArticle_attr.articleId ^comment = "TKB-fält: `../../../../../articleId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.FreeTextMedication_attr ^comment = "TKB-fält: `../../../../FreeTextMedication_attr` (`FreeTextMedication`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.FreeTextMedication_attr.description ^definition = "beskrivning av läkemedlet.

Fritextval används t.ex. då patienten själv anger sina läkemedel (egenmedicinering) samt vid studieläkemedel, dvs. när patienten deltar i en forskningsstudie och inte själv vet om aktiv substans används."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.FreeTextMedication_attr.description ^comment = "TKB-fält: `../../../../../description` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.FreeTextMedication_attr.atcCode ^definition = "ATC-kod

Om angivet kan kontroller utföras (interaktion, amning mm). Se not 1."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.medication.FreeTextMedication_attr.atcCode ^comment = "TKB-fält: `../../../../../atcCode` (`code`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.dosage ^definition = "Dosering enligt vårdens doseringsmodell.

Doseringen ska anges i relation till insättningstidpunkt.

Vid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas - inte doseringen.

I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.dosage ^comment = "TKB-fält: `../../../dosage` (`Dosage`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treamentReason ^definition = "Ordinationsorsak enligt separat struktur.

Det bör påpekas att ordinationsorsak (i förekommande fall) ska anges av vårdsystemet för ny instans av Läkemedelsordination inom samma läkemedelsbehandling.

Principen att det senast beslutet ska innehålla en komplett beskrivning av den pågående läkemedelsbehandlingen gäller även här. Även vid utsättning ska följaktligen ordinationsorsak anges.

Även om det är ovanligt att ordinationsorsaken ändras inom en läkemedelsbehandling så finns det inget hinder (i modellen) för detta.

Om ordinationsorsak anges ska minst en, eventuellt flera, anges som huvudorsak.

Se även not 4."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treamentReason ^comment = "TKB-fält: `../../../treamentReason` (`Reason`, kardinalitet 1..*)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treamentReason.code ^definition = "Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.

Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treamentReason.code ^comment = "TKB-fält: `../../../../code` (`CodeableConcept`, kardinalitet 1).

**Modellanteckning:** Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Om ordinationsorsak anges till Annan orsak är det obligatorisk att ange orsaken som fritext (i fältet CodeableConcept.text) i annat fall ska fritext inte anges."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treamentReason.primaryReason ^definition = "Uppgift om huruvida orsaken är \"huvudorsak\", dvs. viktigare än andra angivna orsaker"
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.treamentReason.primaryReason ^comment = "TKB-fält: `../../../../primaryReason` (`boolean`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.site ^definition = "Den plats på kroppen genom vilket läkemedlet intas eller appliceras.

En SNOMED-kod under SCTID:91723000 \"anatomical structure\""
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.site ^comment = "TKB-fält: `../../../site` (`CodeableConcept`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.route ^definition = "Den väg som läkemedlet tar sig in i kroppen.

En SNOMED-kod under SCTID: 284009009 \"route of administration value\""
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.route ^comment = "TKB-fält: `../../../route` (`CodeableConcept`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.method ^definition = "Den teknik med vilken läkemedlet administreras.

En SNOMED-kod under SCTID: 107733003 \"introduction (procedure)\""
* medicationList.medicationPrescriptionSequences.medicationPrescriptions.method ^comment = "TKB-fält: `../../../method` (`CodeableConcept`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase ^definition = "Expedieringsärenden inom den pågående Läkemedelsbehandlingen. Exakt vilka beror på hur urvalet sker i NOD-tjänsterna.

Expedieringsärendena är inte en del av Läkemedelsbehandlingen i formell mening, dvs. inte ett äkta aggregat. Ändringar i Expedieringsärendena påverkar inte heller underlagsversionen för läkemedelslistan."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase ^comment = "TKB-fält: `../../medicationDispenseCase` (`MedicationDispenseCase`, kardinalitet 0..*)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.medicationDispenseAuthorizations ^definition = "Beskriver en förskrivning och eventuellt ändrade versioner som gjorts på apotekssidan.

Multipliciteten avser följaktligen eventuella versioner, inte den ursprungliga förskrivningen vilken alltid är exakt en.

Utsättning och makulering på apotekssidan ger inga nya versioner, enbart förändring av expedieringsstatus.

Ändrade versioner saknar initialt registreringsuppgifter. Först när ändringarna accepterats i NOD (AttachMedicationDispenseAuthorization) fylls dessa i."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.medicationDispenseAuthorizations ^comment = "TKB-fält: `../../../medicationDispenseAuthorizations` (`MedicationDispenseAuthorization_virtual`, kardinalitet 1..*)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations ^definition = "Beskriver beslut om makulering av förskrivningen samt eventuella makuleringar som gjorts direkt i RR."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations ^comment = "TKB-fält: `../../../revocations` (`Revocation`, kardinalitet 0..*)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData ^definition = "id, registrerad av och registreringstidpunkt."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData ^comment = "TKB-fält: `../../../../registrationData` (`RegistrationData`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.id ^comment = "TKB-fält: `../../../../../id` (`Identifier`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy ^comment = "TKB-fält: `../../../../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../../../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../../../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.registrationData.registrationTime ^comment = "TKB-fält: `../../../../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.revocationCode ^definition = "1 = Fel patient

2 = Fel läkemedel/vara /dosering/styrka/ändamål. Patienten informerad

3 = Utsatt lm/Inaktuell medicinering. Patienten informerad

4 = Annan orsak. Patienten informerad

{1,2,3,4}

Se även Läkemedelsordination.utsättningsorsak"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.revocationCode ^comment = "TKB-fält: `../../../../revocationCode` (`RevocationEnum`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.revocationComment ^definition = "Fritextbeskrivning som preciserar makuleringsorsak som angivits som \"annan orsak\".

Obligatorisk parameter för Orsakskod = 4

Får ej anges för Orsakskod = 1, 2 eller 3."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.revocationComment ^comment = "TKB-fält: `../../../../revocationComment` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.revocationConsent ^definition = "Inhämtat samtycke av patienten vid makulering.

Måste anges till true då förskrivare makulerar Expedieringsunderlag med orsakskod 2, 3 eller 4.

Ignoreras för dospatienter, eftersom de har samtyckt via dossamtycket.

I användargränssnittet uttrycks samtycket som att \"patienten är informerad\".

Notera att makulering av Expedieringsunderlag i vissa fall sker automatiskt som en nödvändig del för att realisera ändringar (t.ex. dosändringar) och utsättning i ordinationen."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.revocationConsent ^comment = "TKB-fält: `../../../../revocationConsent` (`boolean`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.time ^definition = "Tidpunkt för makulering (då det skickades till RR). Sätts av NOD."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.revocations.time ^comment = "TKB-fält: `../../../../time` (`dateTime`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseReference ^definition = "Identifierar motsvarande recept i RR.

Då ett pappersrecept registreras i RR anges förskrivningens ursprungliga id.

Kan vara ett UUID eller GUID.

Valideras i AFF"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseReference ^comment = "TKB-fält: `../../../dispenseReference` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.medicationPrescriptionSequenceId ^definition = "Id på den Läkemedlelsbehandling som Expedieringsärendet hör till.

Detta är nödvändigt för att kunna hantera Expedieringsärenden som fristående delar.

Saknas då för s.k. \"lösa Expedieringsunderlag\", dvs. sådana som kommer från apotekssidan utan koppling till någon Läkemedlelsbehandling i NOD."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.medicationPrescriptionSequenceId ^comment = "TKB-fält: `../../../medicationPrescriptionSequenceId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus ^definition = "Se not 1."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus ^comment = "TKB-fält: `../../../dispenseStatus` (`DispenseStatus`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.numberOfRemainingDispenses ^definition = "Resterande antal uttag."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.numberOfRemainingDispenses ^comment = "TKB-fält: `../../../../numberOfRemainingDispenses` (`int`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.totalQuantity ^definition = "Den förskrivna totalmängden som beräknas när expedieringsunderlaget skapas.

Mängden anges i förpackningsenheter, dvs. den enhet som förpackningen innehåller, t.ex. tabletter.

Beräknas som (antal uttag) x (antal förpackningar som ska expedieras per uttag ) x (förpackningsmängd ).

Anges ej för dosdispenserat."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.totalQuantity ^comment = "TKB-fält: `../../../../totalQuantity` (`Quantity`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.remainingQuantity ^definition = "Resterande mängd som finns kvar på expedieringsunderlaget (i förpackningsenheter, t.ex. tabletter).

Beräknas vid mottagande av expedieringsunderlaget samt vid expediering, borttag och kreditering."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.remainingQuantity ^comment = "TKB-fält: `../../../../remainingQuantity` (`Quantity`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.nextDispenseWithReimbursement ^definition = "Beräknas efter gjorda uttag och anger när patienten kan ta ut nästa uttag inom högkostnadsskyddet. Det går att hämta ut läkemedlet tidigare (om förskrivaren inte har angett ett expeditionsintervall) men patienten får då betala hela kostnaden."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.nextDispenseWithReimbursement ^comment = "TKB-fält: `../../../../nextDispenseWithReimbursement` (`dateTime`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.nextAllowedDispense ^definition = "Nästa tillåtna uttag om förskrivaren har angivit expedieringsintervall (i Expedieringsunderlag för helförpackning)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.nextAllowedDispense ^comment = "TKB-fält: `../../../../nextAllowedDispense` (`dateTime`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.available ^definition = "Flagga för om expedieringsunderlaget är aktuellt.

För att vara aktuellt måste det finnas uttag kvar och sista giltighetsdag får inte vara passerad. Det får heller inte vara makulerat, utsatt (endast dosdispenserat) omvandlat till pappersrecept (utskrivet)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.available ^comment = "TKB-fält: `../../../../available` (`boolean`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.medicalRecordStatus ^definition = "Journalstatus för expedieringsunderlag som hämtas från RR

{IN_NOD, NOT_IN_NOD}"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.medicalRecordStatus ^comment = "TKB-fält: `../../../../medicalRecordStatus` (`RecordStatusEnum`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.changed ^definition = "Anger att senaste versionen av expedieringsunderlaget är förändrat på apotekssidan.

(Se fältet Ordination.forandring i RDH)"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispenseStatus.changed ^comment = "TKB-fält: `../../../../changed` (`boolean`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs ^definition = "För att expedieringar anges endast för dos-patienter (från OR) och för övriga med samtycke till läkemedelsförteckningen i kombination med att expedieringar efterfrågas från NOD (i den aktuella tjänsten).

Se även not 1."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs ^comment = "TKB-fält: `../../../dispensedDrugs` (`DispensedDrug`, kardinalitet 0..*)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.dispenseId ^comment = "TKB-fält: `../../../../dispenseId` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.dispenseDate ^definition = "Datum för expediering på apotek."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.dispenseDate ^comment = "TKB-fält: `../../../../dispenseDate` (`date`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.numberOfPackages ^definition = "Antal förpackningar av utlämnad vara.

Obligatorisk parameter om posten ej är en dosdispenserad artikel"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.numberOfPackages ^comment = "TKB-fält: `../../../../numberOfPackages` (`int`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.numberOfTablets ^definition = "Summa antal avdelade doser inklusive enhet.

Angiven om posten är en dosdispenserad artikel."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.numberOfTablets ^comment = "TKB-fält: `../../../../numberOfTablets` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.removed ^definition = "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.removed ^comment = "TKB-fält: `../../../../removed` (`boolean`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.quantity ^definition = "Mängd i klartext"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.quantity ^comment = "TKB-fält: `../../../../quantity` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.dosage ^definition = "Dosering i klartext så som den returneras från LF (Krav på presentation i handboken)"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.dosage ^comment = "TKB-fält: `../../../../dosage` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation ^comment = "TKB-fält: `../../../../articleInformation` (`ArticleInformation`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.nplPackid ^definition = "Identitet på förskrivet läkemedel som har NPL

Pack-id alternativt SB Pack-id."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.nplPackid ^comment = "TKB-fält: `../../../../../nplPackid` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.distributedTradeName ^definition = "Läkemedelsnamn vid inläsningstillfället."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.distributedTradeName ^comment = "TKB-fält: `../../../../../distributedTradeName` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.drugForm ^definition = "Läkemedelsform vid inläsningstillfället."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.drugForm ^comment = "TKB-fält: `../../../../../drugForm` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.strength ^definition = "Styrka i klartext vid inläsningstillfället."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.strength ^comment = "TKB-fält: `../../../../../strength` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.atcCode ^definition = "ATC-kod vid inläsningstillfället"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.atcCode ^comment = "TKB-fält: `../../../../../atcCode` (`code`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.atcText ^definition = "Verksamt ämne vid inläsningstillfället."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.atcText ^comment = "TKB-fält: `../../../../../atcText` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.packageSize ^definition = "Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.packageSize ^comment = "TKB-fält: `../../../../../packageSize` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.packageType ^definition = "Beskrivning av artikelns förpackningstyp vid inläsningstillfället."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.articleInformation.packageType ^comment = "TKB-fält: `../../../../../packageType` (`string`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber ^definition = "Förskrivarens namn, yrke, specialiteter och arbetsplats (Krav på presentation i handboken)"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber ^comment = "TKB-fält: `../../../../presciber` (`MedicalPrescriber`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.personalPrescriptionCode ^definition = "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.

Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.

Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.

För användare som har gruppförskrivarkod gäller:

befattningskod är obligatorisk

För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.

Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska

Valideras i AFF

HSA: förskrivarkod, även kallat personalPrescriptionCode

RR: förskrivarkod"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.personalPrescriptionCode ^comment = "TKB-fält: `../../../../../personalPrescriptionCode` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.legitimationCode ^definition = "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.

Se gruppförskrivarkod för villkor.

HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.

yrkeskod	Gruppkod	yrkeskod klartext

SJ	971000	Sjuksköterska

AP	972000	Apotekare

RC	973000	Receptarie

RR: legitimationskod"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.legitimationCode ^comment = "TKB-fält: `../../../../../legitimationCode` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.hsaTitleCode ^definition = "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.

Se gruppförskrivarkod för villkor.

Kontrolleras i receptregistret att personen har angiven yrkeskod.

Valideras i AFF

HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:\"HSA Innehåll Legitimerad Yrkesgrupp\" på se www.inera.se/hsa.

Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.

RR: yrkeskod"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.hsaTitleCode ^comment = "TKB-fält: `../../../../../hsaTitleCode` (`string`, kardinalitet 1..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.hsaTitle ^definition = "Förskrivarens yrke i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.hsaTitle ^comment = "TKB-fält: `../../../../../hsaTitle` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.speciallityCodes ^definition = "Förskrivarens specialiteter i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.speciallityCodes ^comment = "TKB-fält: `../../../../../speciallityCodes` (`string`, kardinalitet 0..*)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.paTitleCode ^definition = "Förskrivarens befattningskod.

Se gruppförskrivarkod för villkor.

HSA: befattningskod, även kallat paTitleCode.

Notera också att samma användare kan inneha flera befattningskoder.

RR: befattningskod"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.paTitleCode ^comment = "TKB-fält: `../../../../../paTitleCode` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.givenName ^definition = "Förskrivarens tilltalsnamn.

HSA: tilltalsnamn (givenName)

RR: förnamn"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.givenName ^comment = "TKB-fält: `../../../../../givenName` (`string`, kardinalitet 1..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.familyName ^definition = "Förskrivarens efternamn.

Valideras i AFF

HSA: efternamn

RR: efternamn"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.familyName ^comment = "TKB-fält: `../../../../../familyName` (`string`, kardinalitet 1..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork ^definition = "Arbetsplats"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork ^comment = "TKB-fält: `../../../../../placeOfWork` (`PlaceOfWork`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.unitPrescriptionCode ^definition = "Förskrivarens arbetsplatskod eller grupparbetsplatskod

Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.

Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.

Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.

Obligatorisk parameter om förmån angivits.

Valideras i AFF

HSA: arbetsplatskod, även kallat unitPrescriptionCode.

RR: arbetsplatskod"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.unitPrescriptionCode ^comment = "TKB-fält: `../../../../../../unitPrescriptionCode` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.careUnitName ^definition = "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi

HSA: enhetsnamn (careUnitName )

RR: arbetsplatsnamn"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.careUnitName ^comment = "TKB-fält: `../../../../../../careUnitName` (`string`, kardinalitet 1..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.city ^definition = "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED

RR: arbetsplatsort"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.city ^comment = "TKB-fält: `../../../../../../city` (`string`, kardinalitet 1..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.phoneNumber1 ^definition = "Förskrivarens eller vårdcentralens telefonnummer.

HSA: direkttelefon

RR: telefonnummer1"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.phoneNumber1 ^comment = "TKB-fält: `../../../../../../phoneNumber1` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.phoneNumber2 ^definition = "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.

HSA:

RR: telefonnummer2"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.phoneNumber2 ^comment = "TKB-fält: `../../../../../../phoneNumber2` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.postalAdress ^definition = "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.

HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.

RR: postadress"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.postalAdress ^comment = "TKB-fält: `../../../../../../postalAdress` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.postalCode ^definition = "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45

HSA: postnummer (postalCode)

RR: postnummer"
* medicationList.medicationPrescriptionSequences.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.postalCode ^comment = "TKB-fält: `../../../../../../postalCode` (`string`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.treatmentSteps ^definition = "Behandlingssteg (inom Läkemedelsbehandlingen).

Eftersom klassen används som retur i urval kan dessa vara begränsade pga. urval."
* medicationList.medicationPrescriptionSequences.treatmentSteps ^comment = "TKB-fält: `../../treatmentSteps` (`TreatmentStep`, kardinalitet 0..*)."
* medicationList.medicationPrescriptionSequences.treatmentSteps.startTime ^definition = "Tidpunkt då behandlingssteget startar.

Tidpunkten är inkluderande vilket innebär att behandlingssteget räknas som pågående vid starttidpunkten."
* medicationList.medicationPrescriptionSequences.treatmentSteps.startTime ^comment = "TKB-fält: `../../../startTime` (`dateTime`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.treatmentSteps.endTime ^definition = "Tidpunkt då behandlingssteget slutar. Utelämnat värde innebär att behandlingssteget planeras att pågå tills vidare.

Tidpunkten är exkluderande vilket innebär att behandlingssteget inte räknas som pågående vid sluttidpunkten."
* medicationList.medicationPrescriptionSequences.treatmentSteps.endTime ^comment = "TKB-fält: `../../../endTime` (`dateTime`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.treatmentSteps.medication ^definition = "Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser."
* medicationList.medicationPrescriptionSequences.treatmentSteps.medication ^comment = "TKB-fält: `../../../medication` (`Medication_virtual`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.treatmentSteps.dosage ^definition = "Dosering enligt vårdens doseringsmodell.

I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas."
* medicationList.medicationPrescriptionSequences.treatmentSteps.dosage ^comment = "TKB-fält: `../../../dosage` (`Dosage`, kardinalitet 0..1)."
* medicationList.medicationPrescriptionSequences.treatmentSteps.medicationPrescriptionId ^definition = "Referens till den bakomliggande läkemedelsordinationen eller Egenmedicineringen.

Notera att i de fall insättningstidpunkten skiljer sig från ordinationstidpunkten är det den aktuella ordinationen som refereras, vilket inte med nödvändighet är densamma från vilken dosering och ordinerat läkemedel hämtas."
* medicationList.medicationPrescriptionSequences.treatmentSteps.medicationPrescriptionId ^comment = "TKB-fält: `../../../medicationPrescriptionId` (`Identifier`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequences.status ^definition = "Aktuell status på behandlingen. Någon av: active , on hold,  completed, entered in error, stopped, superceded

Se fullständig beskrivning http://hl7.org/implement/standards/fhir/medication-prescription-status.html"
* medicationList.medicationPrescriptionSequences.status ^comment = "TKB-fält: `../../status` (`code`, kardinalitet 1)."
* medicationList.medicationStatements ^definition = "Patientens Egenmedicineringar (i urvalet)"
* medicationList.medicationStatements ^comment = "TKB-fält: `../medicationStatements` (`MedicationStatement`, kardinalitet 0..*)."
* medicationList.medicationStatements.registrationData ^definition = "id, registrerad av och registreringstidpunkt."
* medicationList.medicationStatements.registrationData ^comment = "TKB-fält: `../../registrationData` (`RegistrationData`, kardinalitet 1)."
* medicationList.medicationStatements.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationList.medicationStatements.registrationData.id ^comment = "TKB-fält: `../../../id` (`Identifier`, kardinalitet 1)."
* medicationList.medicationStatements.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationList.medicationStatements.registrationData.registeredBy ^comment = "TKB-fält: `../../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.medicationStatements.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.medicationStatements.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationStatements.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationList.medicationStatements.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.medicationStatements.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationList.medicationStatements.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.medicationStatements.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.medicationStatements.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.medicationStatements.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationStatements.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationStatements.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.medicationStatements.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.medicationStatements.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationList.medicationStatements.registrationData.registrationTime ^comment = "TKB-fält: `../../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationList.medicationStatements.patientId ^definition = "Identifiering av patienten."
* medicationList.medicationStatements.patientId ^comment = "TKB-fält: `../../patientId` (`Identifier`, kardinalitet 1)."
* medicationList.medicationStatements.treatmentStartTime ^definition = "Tidpunkt då patienten uppger att behandlingen påbörjats."
* medicationList.medicationStatements.treatmentStartTime ^comment = "TKB-fält: `../../treatmentStartTime` (`dateTime`, kardinalitet 1)."
* medicationList.medicationStatements.treatmentEndTime ^definition = "Tidpunkt då patienten uppger att Egenmedicineringen avslutats eller planerar att avsluta den.

Om attributet inte anges innebär det att Egenmedicineringen pågår tills vidare utan känd sluttid.

Tidpunkten får, om den anges, inte vara före insättningstidpunkt."
* medicationList.medicationStatements.treatmentEndTime ^comment = "TKB-fält: `../../treatmentEndTime` (`dateTime`, kardinalitet 0..1)."
* medicationList.medicationStatements.annotation ^definition = "Kommentarer i fritext av registrerande Hälso- och sjukvårdspersonal, t.ex. bedömning av medicineringens verkan samt av patienten uppgivna effekter eller biverkningar."
* medicationList.medicationStatements.annotation ^comment = "TKB-fält: `../../annotation` (`string`, kardinalitet 0..1)."
* medicationList.medicationStatements.purpose ^definition = "Av patienten uppgivet behandlingsändamål i klartext."
* medicationList.medicationStatements.purpose ^comment = "TKB-fält: `../../purpose` (`string`, kardinalitet 0..1)."
* medicationList.medicationStatements.medication ^definition = "Det läkemedel (eller handelsvara) som Egenmedicineringen avser.

Det är kanske inte troligt att patienten kan uppge läkemedlet så exakt att en det kan kopplas till en Läkemedelsartikel eller Läkemedelsprodukt, även om möjligheten finns. Istället är det troligare att det anges som Fritextläkemedel varvid även ATC-kod kan registreras om det är känt."
* medicationList.medicationStatements.medication ^comment = "TKB-fält: `../../medication` (`Medication_virtual`, kardinalitet 1)."
* medicationList.medicationStatements.dosage ^definition = "I möjligaste mån bör doseringen anges strukturerat enligt vårdens doseringsmodell. Där så inte är möjligt finns alltid möjligheten att (i doseringsmodellen) ange doseringen som fri text.

I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas."
* medicationList.medicationStatements.dosage ^comment = "TKB-fält: `../../dosage` (`Dosage`, kardinalitet 0..1)."
* medicationList.medicationStatements.informationSource ^definition = "Uppgift om den person som tillhandahållit uppgiften, vanligtvis patienten själv, annan behandlande läkare eller någon närstående. Om inget värde anges antas uppgiften komma från patienten själv."
* medicationList.medicationStatements.informationSource ^comment = "TKB-fält: `../../informationSource` (`string`, kardinalitet 0..1)."
* medicationList.fullfilledReviews ^definition = "Information om genomförda genomgångar av listan som helhet, dvs. vem som genomfört och när."
* medicationList.fullfilledReviews ^comment = "TKB-fält: `../fullfilledReviews` (`Review`, kardinalitet 0..*)."
* medicationList.fullfilledReviews.registrationData ^definition = "id, registrerad av och registreringstidpunkt."
* medicationList.fullfilledReviews.registrationData ^comment = "TKB-fält: `../../registrationData` (`RegistrationData`, kardinalitet 1)."
* medicationList.fullfilledReviews.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationList.fullfilledReviews.registrationData.id ^comment = "TKB-fält: `../../../id` (`Identifier`, kardinalitet 1)."
* medicationList.fullfilledReviews.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationList.fullfilledReviews.registrationData.registeredBy ^comment = "TKB-fält: `../../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.fullfilledReviews.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.fullfilledReviews.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationList.fullfilledReviews.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationList.fullfilledReviews.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.fullfilledReviews.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.fullfilledReviews.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.fullfilledReviews.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationList.fullfilledReviews.registrationData.registrationTime ^comment = "TKB-fält: `../../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationList.fullfilledReviews.reviewedBy ^definition = "Den som ansvarat för genomgången, vilket inte nödvändigtvis är densamma som registrerat den."
* medicationList.fullfilledReviews.reviewedBy ^comment = "TKB-fält: `../../reviewedBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.fullfilledReviews.reviewedBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.fullfilledReviews.reviewedBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.reviewedBy.givenName ^definition = "Personens förnamn"
* medicationList.fullfilledReviews.reviewedBy.givenName ^comment = "TKB-fält: `../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.reviewedBy.familyName ^definition = "Personens efternamn"
* medicationList.fullfilledReviews.reviewedBy.familyName ^comment = "TKB-fält: `../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.reviewedBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.fullfilledReviews.reviewedBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.reviewedBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.fullfilledReviews.reviewedBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.reviewedBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.fullfilledReviews.reviewedBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.fullfilledReviews.time ^definition = "Tidpunkt då genomgången genomfördes."
* medicationList.fullfilledReviews.time ^comment = "TKB-fält: `../../time` (`dateTime`, kardinalitet 1)."
* medicationList.requestedReviews ^definition = "Information om de genomgångar som begärts av listan som helhet, dvs. vem som begärt och när."
* medicationList.requestedReviews ^comment = "TKB-fält: `../requestedReviews` (`Review`, kardinalitet 0..*)."
* medicationList.requestedReviews.registrationData ^definition = "id, registrerad av och registreringstidpunkt."
* medicationList.requestedReviews.registrationData ^comment = "TKB-fält: `../../registrationData` (`RegistrationData`, kardinalitet 1)."
* medicationList.requestedReviews.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationList.requestedReviews.registrationData.id ^comment = "TKB-fält: `../../../id` (`Identifier`, kardinalitet 1)."
* medicationList.requestedReviews.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationList.requestedReviews.registrationData.registeredBy ^comment = "TKB-fält: `../../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.requestedReviews.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.requestedReviews.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.requestedReviews.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationList.requestedReviews.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.requestedReviews.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationList.requestedReviews.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.requestedReviews.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.requestedReviews.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.requestedReviews.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.requestedReviews.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.requestedReviews.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.requestedReviews.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.requestedReviews.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationList.requestedReviews.registrationData.registrationTime ^comment = "TKB-fält: `../../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationList.requestedReviews.reviewedBy ^definition = "Den som ansvarat för genomgången, vilket inte nödvändigtvis är densamma som registrerat den."
* medicationList.requestedReviews.reviewedBy ^comment = "TKB-fält: `../../reviewedBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.requestedReviews.reviewedBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationList.requestedReviews.reviewedBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.requestedReviews.reviewedBy.givenName ^definition = "Personens förnamn"
* medicationList.requestedReviews.reviewedBy.givenName ^comment = "TKB-fält: `../../../givenName` (`string`, kardinalitet 0..1)."
* medicationList.requestedReviews.reviewedBy.familyName ^definition = "Personens efternamn"
* medicationList.requestedReviews.reviewedBy.familyName ^comment = "TKB-fält: `../../../familyName` (`string`, kardinalitet 0..1)."
* medicationList.requestedReviews.reviewedBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationList.requestedReviews.reviewedBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationList.requestedReviews.reviewedBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationList.requestedReviews.reviewedBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.requestedReviews.reviewedBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationList.requestedReviews.reviewedBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationList.requestedReviews.time ^definition = "Tidpunkt då genomgången genomfördes."
* medicationList.requestedReviews.time ^comment = "TKB-fält: `../../time` (`dateTime`, kardinalitet 1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED."
* result.subcode ^definition = "Inga subkoder är specificerade."
* result.subcode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).

**Modellanteckning:** subcode Tillåtna värden: SUB_RR_ERROR."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
