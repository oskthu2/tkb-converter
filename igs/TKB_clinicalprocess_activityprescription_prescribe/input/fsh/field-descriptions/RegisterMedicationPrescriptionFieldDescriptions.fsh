// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicationPrescriptionFieldDescriptions
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1)."
* medicationPrescriptionList ^definition = "Övergripande objekt som håller ihop"
* medicationPrescriptionList ^comment = "TKB-fält: `medicationPrescriptionList` (`MedicationPrescriptionListType`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationPrescription ^comment = "TKB-fält: `medicationPrescription` (`MedicationPrescription`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationPrescription.registrationData ^definition = "id, registrerad av och registreringstidpunkt."
* medicationPrescriptionList.medicationPrescription.registrationData ^comment = "TKB-fält: `../registrationData` (`RegistrationData`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationPrescriptionList.medicationPrescription.registrationData.id ^comment = "TKB-fält: `../../id` (`Identifier`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy ^comment = "TKB-fält: `../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationPrescriptionList.medicationPrescription.registrationData.registrationTime ^comment = "TKB-fält: `../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.patientId ^definition = "Identifiering av patienten.

För att registrera läkemedelsordinationer i NOD krävs svenskt personnummer eller samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer.

Undantag: Person med enbart samordningsnummer kan inte registreras för Dos och följaktligen inte heller ordineras Dos.

Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer."
* medicationPrescriptionList.medicationPrescription.patientId ^comment = "TKB-fält: `../patientId` (`Identifier`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.prescriber ^definition = "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.

Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext.

Se not 1."
* medicationPrescriptionList.medicationPrescription.prescriber ^comment = "TKB-fält: `../prescriber` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationPrescription.prescriber.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationPrescription.prescriber.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber ^definition = "Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber ^comment = "TKB-fält: `../responsiblePrescriber` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.writeTime ^definition = "Tidpunkt då det medicinska beslutet fattades.

Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet).

I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades."
* medicationPrescriptionList.medicationPrescription.writeTime ^comment = "TKB-fält: `../writeTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.treatmentStartTime ^definition = "Tidpunkt från vilken patienten ska ta sitt läkemedel.

insättningstidpunkt utgör startpunkt för angiven dosering.

Vid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt."
* medicationPrescriptionList.medicationPrescription.treatmentStartTime ^comment = "TKB-fält: `../treatmentStartTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.treatmentEndTime ^definition = "Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel.

Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad.

Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare.

Tidpunkten får, om den anges, inte vara före insättningstidpunkt."
* medicationPrescriptionList.medicationPrescription.treatmentEndTime ^comment = "TKB-fält: `../treatmentEndTime` (`dateTime`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluationTime ^definition = "Tidpunkt då läkemedelsbehandlingen senast bör utvärderas.

Tidpunkten får, om den anges, inte vara före insättningstidpunkt.

Syftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig."
* medicationPrescriptionList.medicationPrescription.evaluationTime ^comment = "TKB-fält: `../evaluationTime` (`dateTime`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy ^definition = "Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering.

Om ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen.

Om endast vårdenhet och vårdgivare är kända kan information om personen utlämnas."
* medicationPrescriptionList.medicationPrescription.evaluatedBy ^comment = "TKB-fält: `../evaluatedBy` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationPrescription.evaluatedBy.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationPrescription.evaluatedBy.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.reason ^definition = "Orsaken till beslutet.

Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen.

Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering.

Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak."
* medicationPrescriptionList.medicationPrescription.reason ^comment = "TKB-fält: `../reason` (`Reason`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.reason.code ^definition = "Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.

Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO)."
* medicationPrescriptionList.medicationPrescription.reason.code ^comment = "TKB-fält: `../../code` (`code`, kardinalitet 1).

**Modellanteckning:** Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Om ordinationsorsak anges till Annan orsak är det obligatorisk att ange orsaken som fritext (i fältet CodeableConcept.text) i annat fall ska fritext inte anges."
* medicationPrescriptionList.medicationPrescription.reason.primaryReason ^definition = "Uppgift om huruvida orsaken är \"huvudorsak\", dvs. viktigare än andra angivna orsaker"
* medicationPrescriptionList.medicationPrescription.reason.primaryReason ^comment = "TKB-fält: `../../primaryReason` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.annotation ^definition = "Ordinatörens kommentarer i fritext kopplade till en specifik ordination.

Syftet är t.ex. att ordinatören i fritext ska kunna ange sådant som inte framgår av beslutsorsak eller ordinationsorsak och som är av intresse för annan vård- och omsorgspersonal.

Fältet är avsett att beskriva nuläget för läkemedelsbehandlingen utan att användaren ska behöva ta del av notatfältet i tidigare läkemedelsordinationer.

Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering."
* medicationPrescriptionList.medicationPrescription.annotation ^comment = "TKB-fält: `../annotation` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.use ^definition = "Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. \"sväljes hela\", \"påstrykes i armvecket\". Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs).

Ett förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt.

Ingår i Expedieringsunderlag som en del av doseringstext 1."
* medicationPrescriptionList.medicationPrescription.use ^comment = "TKB-fält: `../use` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.purpose ^definition = "Behandlingsändamål i klartext.

Ingår i Expedieringsunderlag som Ändamål klartext"
* medicationPrescriptionList.medicationPrescription.purpose ^comment = "TKB-fält: `../purpose` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.medication ^definition = "Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser.

Det finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet.

Vid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen."
* medicationPrescriptionList.medicationPrescription.medication ^comment = "TKB-fält: `../medication` (`Medication_virtual`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.dosage ^definition = "Dosering enligt vårdens doseringsmodell.

Doseringen ska anges i relation till insättningstidpunkt.

Vid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas - inte doseringen.

I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas."
* medicationPrescriptionList.medicationPrescription.dosage ^comment = "TKB-fält: `../dosage` (`Dosage`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.treamentReason ^definition = "Ordinationsorsak enligt separat struktur.

Det bör påpekas att ordinationsorsak (i förekommande fall) ska anges av vårdsystemet för ny instans av Läkemedelsordination inom samma läkemedelsbehandling.

Principen att det senast beslutet ska innehålla en komplett beskrivning av den pågående läkemedelsbehandlingen gäller även här. Även vid utsättning ska följaktligen ordinationsorsak anges.

Även om det är ovanligt att ordinationsorsaken ändras inom en läkemedelsbehandling så finns det inget hinder (i modellen) för detta.

Om ordinationsorsak anges ska minst en, eventuellt flera, anges som huvudorsak.

Se även not 4."
* medicationPrescriptionList.medicationPrescription.treamentReason ^comment = "TKB-fält: `../treamentReason` (`Reason`, kardinalitet 1..*)."
* medicationPrescriptionList.medicationPrescription.treamentReason.code ^definition = "Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.

Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO)."
* medicationPrescriptionList.medicationPrescription.treamentReason.code ^comment = "TKB-fält: `../../code` (`code`, kardinalitet 1).

**Modellanteckning:** Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Om ordinationsorsak anges till Annan orsak är det obligatorisk att ange orsaken som fritext (i fältet CodeableConcept.text) i annat fall ska fritext inte anges."
* medicationPrescriptionList.medicationPrescription.treamentReason.primaryReason ^definition = "Uppgift om huruvida orsaken är \"huvudorsak\", dvs. viktigare än andra angivna orsaker"
* medicationPrescriptionList.medicationPrescription.treamentReason.primaryReason ^comment = "TKB-fält: `../../primaryReason` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.site ^definition = "Den plats på kroppen genom vilket läkemedlet intas eller appliceras.

En SNOMED-kod under SCTID:91723000 \"anatomical structure\""
* medicationPrescriptionList.medicationPrescription.site ^comment = "TKB-fält: `../site` (`CodeableConcept`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.route ^definition = "Den väg som läkemedlet tar sig in i kroppen.

En SNOMED-kod under SCTID: 284009009 \"route of administration value\""
* medicationPrescriptionList.medicationPrescription.route ^comment = "TKB-fält: `../route` (`CodeableConcept`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.method ^definition = "Den teknik med vilken läkemedlet administreras.

En SNOMED-kod under SCTID: 107733003 \"introduction (procedure)\""
* medicationPrescriptionList.medicationPrescription.method ^comment = "TKB-fält: `../method` (`CodeableConcept`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData ^definition = "id, registrerad av och registreringstidpunkt.

Saknas initialt om ändringar gjorts på apotekssidan."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData ^comment = "TKB-fält: `../../registrationData` (`RegistrationData`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.id ^comment = "TKB-fält: `../../../id` (`Identifier`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy ^comment = "TKB-fält: `../../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registrationTime ^comment = "TKB-fält: `../../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.id ^definition = "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.id ^comment = "TKB-fält: `../../id` (`Identifier`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.medicationPrescriptionId ^definition = "Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid.

Om expedieringsunderlaget skapas av vårdsystemet \"löst\", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter.

Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.medicationPrescriptionId ^comment = "TKB-fält: `../../medicationPrescriptionId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber ^definition = "Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber ^comment = "TKB-fält: `../../prescriber` (`MedicalPrescriber`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.personalPrescriptionCode ^definition = "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.

Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.

Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.

För användare som har gruppförskrivarkod gäller:

befattningskod är obligatorisk

För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.

Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska

Valideras i AFF

HSA: förskrivarkod, även kallat personalPrescriptionCode

RR: förskrivarkod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.personalPrescriptionCode ^comment = "TKB-fält: `../../../personalPrescriptionCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.legitimationCode ^definition = "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.

Se gruppförskrivarkod för villkor.

HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.

yrkeskod	Gruppkod	yrkeskod klartext

SJ	971000	Sjuksköterska

AP	972000	Apotekare

RC	973000	Receptarie

RR: legitimationskod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.legitimationCode ^comment = "TKB-fält: `../../../legitimationCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.hsaTitleCode ^definition = "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.

Se gruppförskrivarkod för villkor.

Kontrolleras i receptregistret att personen har angiven yrkeskod.

Valideras i AFF

HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:\"HSA Innehåll Legitimerad Yrkesgrupp\" på se www.inera.se/hsa.

Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.

RR: yrkeskod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.hsaTitleCode ^comment = "TKB-fält: `../../../hsaTitleCode` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.hsaTitle ^definition = "Förskrivarens yrke i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.hsaTitle ^comment = "TKB-fält: `../../../hsaTitle` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.speciallityCodes ^definition = "Förskrivarens specialiteter i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.speciallityCodes ^comment = "TKB-fält: `../../../speciallityCodes` (`string`, kardinalitet 0..*)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.paTitleCode ^definition = "Förskrivarens befattningskod.

Se gruppförskrivarkod för villkor.

HSA: befattningskod, även kallat paTitleCode.

Notera också att samma användare kan inneha flera befattningskoder.

RR: befattningskod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.paTitleCode ^comment = "TKB-fält: `../../../paTitleCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.givenName ^definition = "Förskrivarens tilltalsnamn.

HSA: tilltalsnamn (givenName)

RR: förnamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.givenName ^comment = "TKB-fält: `../../../givenName` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.familyName ^definition = "Förskrivarens efternamn.

Valideras i AFF

HSA: efternamn

RR: efternamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.familyName ^comment = "TKB-fält: `../../../familyName` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork ^definition = "arbetsplats"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork ^comment = "TKB-fält: `../../../placeOfWork` (`PlaceOfWork`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.unitPrescriptionCode ^definition = "Förskrivarens arbetsplatskod eller grupparbetsplatskod

Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.

Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.

Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.

Obligatorisk parameter om förmån angivits.

Valideras i AFF

HSA: arbetsplatskod, även kallat unitPrescriptionCode.

RR: arbetsplatskod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.unitPrescriptionCode ^comment = "TKB-fält: `../../../../unitPrescriptionCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.careUnitName ^definition = "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi

HSA: enhetsnamn (careUnitName )

RR: arbetsplatsnamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.careUnitName ^comment = "TKB-fält: `../../../../careUnitName` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.city ^definition = "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED

RR: arbetsplatsort"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.phoneNumber1 ^definition = "Förskrivarens eller vårdcentralens telefonnummer.

HSA: direkttelefon

RR: telefonnummer1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.phoneNumber1 ^comment = "TKB-fält: `../../../../phoneNumber1` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.phoneNumber2 ^definition = "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.

HSA:

RR: telefonnummer2"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.phoneNumber2 ^comment = "TKB-fält: `../../../../phoneNumber2` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.postalAdress ^definition = "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.

HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.

RR: postadress"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.postalAdress ^comment = "TKB-fält: `../../../../postalAdress` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.postalCode ^definition = "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45

HSA: postnummer (postalCode)

RR: postnummer"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation ^definition = "I första hand ska svenskt personnummer användas.

Vid Expedieringsunderlag för helförpackning gäller dessutom:

Om samordningsnummer finns kan detta användas tillsammans med födelsetid.

Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation ^comment = "TKB-fält: `../../patientInformation` (`PatientInformation`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.patientId ^definition = "Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet)

Endast om det är känt.

PU: personid

RR: personnummer"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.patientId ^comment = "TKB-fält: `../../../patientId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.givenName ^definition = "Patientens förnamn.

PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn.

RR: förnamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.givenName ^comment = "TKB-fält: `../../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.familyName ^definition = "Patientens efternamn.

PU: efternamn

RR: efternamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.familyName ^comment = "TKB-fält: `../../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.dateOfBirth ^definition = "Födelsedatum (8 siffror).

Anges för patient som saknar giltigt personnummer.

Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag.

PU: födelsetid

RR: födelsedatum"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.dateOfBirth ^comment = "TKB-fält: `../../../dateOfBirth` (`date`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.gender ^definition = "Patientens kön.

Obligatorisk parameter om Personnummer saknas.

{Male, Female, Unspecified}

PU: kön

RR: kön"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.gender ^comment = "TKB-fält: `../../../gender` (`GenderEnum`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.deliveryAdress1 ^definition = "Patientens gatuadress 1.

PU: utdelningsadress1

RR: adress1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.deliveryAdress1 ^comment = "TKB-fält: `../../../deliveryAdress1` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.deliveryAdress2 ^definition = "Patientens adress 2.

PU: utdelningsadress2

RR: adress2"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.deliveryAdress2 ^comment = "TKB-fält: `../../../deliveryAdress2` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.postalCode ^definition = "Patientens postnummer.

PU: postnr

RR: postnummer"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.postalCode ^comment = "TKB-fält: `../../../postalCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.city ^definition = "Patientens postort.

PU: postort

RR: postort"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.city ^comment = "TKB-fält: `../../../city` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.phoneNumber1 ^definition = "Patientens telefonnummer 1.

PU: saknas

RR: telefonnummer1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.phoneNumber1 ^comment = "TKB-fält: `../../../phoneNumber1` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.phoneNumber2 ^definition = "Patientens telefonnummer 2.

PU: saknas

RR: telefonnummer2"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.phoneNumber2 ^comment = "TKB-fält: `../../../phoneNumber2` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriptionWriteTime ^definition = "(f.d. Ordinationstidpunkt)

Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).

När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriptionWriteTime ^comment = "TKB-fält: `../../prescriptionWriteTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriberComment ^definition = "Förskrivarens kommentar till farmaceut.

Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriberComment ^comment = "TKB-fält: `../../prescriberComment` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.receivingPharmacy ^definition = "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.

Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.receivingPharmacy ^comment = "TKB-fält: `../../receivingPharmacy` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.deliveryMessage ^definition = "Leveransinformation om ordinationen skickas till ett ombud"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.deliveryMessage ^comment = "TKB-fält: `../../deliveryMessage` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.treatmentEndTime ^definition = "Datum och tid när patienten skall avsluta intag.

Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).

Mappas från Läkemedelsordination.utsättningstidpunkt"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.treatmentEndTime ^comment = "TKB-fält: `../../treatmentEndTime` (`dateTime`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.NPLPackid ^definition = "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.

Valideras i AFF.

Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.

Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.NPLPackid ^comment = "TKB-fält: `../../NPLPackid` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.NPLid ^definition = "NPL-id alternativt SB-id som identifierar produkt.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.

Valideras i AFF.

Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.

Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.NPLid ^comment = "TKB-fält: `../../NPLid` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.articleId ^definition = "Identitet på förskrivet livsmedel eller handelsvara.

Obligatorisk parameter om NPL-id och NPL pack-id saknas.

Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF.

Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.articleId ^comment = "TKB-fält: `../../articleId` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.dosageText1 ^definition = "Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.

Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.dosageText1 ^comment = "TKB-fält: `../../dosageText1` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.dosageText2 ^definition = "Kompletterande doseringstext till patienten

Mappas från endera av

Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation

eller

Ex tempore. beskrivning"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.dosageText2 ^comment = "TKB-fält: `../../dosageText2` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.languageCode ^definition = "Främmande språk för doseringstext enligt ISO-639-1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.languageCode ^comment = "TKB-fält: `../../languageCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.pupose ^definition = "(Ändamål klartext)

Mappas från Läkemedelsordination.behandlingsändamål"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.pupose ^comment = "TKB-fält: `../../pupose` (`string`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.reimbursed ^definition = "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.

Falskt = Utan förmån

Sant =Med förmån

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.reimbursed ^comment = "TKB-fält: `../../reimbursed` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.validUntil ^definition = "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.

Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.validUntil ^comment = "TKB-fält: `../../validUntil` (`date`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.acute ^definition = "Markering om dispenserad ordination är gjord akut. Flaggan sätts vid anrop av tjänsten och påverkar då alla expedieringsunderlag som skapas vid samma tillfälle."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.acute ^comment = "TKB-fält: `../../acute` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.substitutionNotAllowedByPatient ^definition = "Anger att patienten angett att förskriven artikel ej får bytas ut."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.substitutionNotAllowedByPatient ^comment = "TKB-fält: `../../substitutionNotAllowedByPatient` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.substitutionNotAllowedByPrescriber ^definition = "Anger att förskrivare angett att förskriven artikel ej får bytas ut ."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.substitutionNotAllowedByPrescriber ^comment = "TKB-fält: `../../substitutionNotAllowedByPrescriber` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage ^definition = "Angivande av intagstillfällen, intagsmängd, dag i period och periodlängd.

Fylls i av NOD baserat på dosering i Ordinationen."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage ^comment = "TKB-fält: `../../dosage` (`DosageByOccasion`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.treatmentStartTime ^definition = "Anger när doseringsschemat ska börja gälla.

Fylls i av NOD baserat på Läkemedelsordination.insättningstidpunkt"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.treatmentStartTime ^comment = "TKB-fält: `../../treatmentStartTime` (`dateTime`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.endComment ^definition = "Kommentar varför ordinationen blev utsatt

Fylls i av NOD baserat på Läkemedelsordination.utsättningsorsak text"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_attr.endComment ^comment = "TKB-fält: `../../endComment` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData ^definition = "id, registrerad av och registreringstidpunkt.

Saknas initialt om ändringar gjorts på apotekssidan."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData ^comment = "TKB-fält: `../../registrationData` (`RegistrationData`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.id ^comment = "TKB-fält: `../../../id` (`Identifier`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy ^comment = "TKB-fält: `../../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../../../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../../../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.registrationData.registrationTime ^comment = "TKB-fält: `../../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.id ^definition = "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.id ^comment = "TKB-fält: `../../id` (`Identifier`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.medicationPrescriptionId ^definition = "Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid.

Om expedieringsunderlaget skapas av vårdsystemet \"löst\", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter.

Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.medicationPrescriptionId ^comment = "TKB-fält: `../../medicationPrescriptionId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber ^definition = "Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber ^comment = "TKB-fält: `../../prescriber` (`MedicalPrescriber`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.personalPrescriptionCode ^definition = "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.

Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.

Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.

För användare som har gruppförskrivarkod gäller:

befattningskod är obligatorisk

För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.

Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska

Valideras i AFF

HSA: förskrivarkod, även kallat personalPrescriptionCode

RR: förskrivarkod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.personalPrescriptionCode ^comment = "TKB-fält: `../../../personalPrescriptionCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.legitimationCode ^definition = "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.

Se gruppförskrivarkod för villkor.

HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.

yrkeskod	Gruppkod	yrkeskod klartext

SJ	971000	Sjuksköterska

AP	972000	Apotekare

RC	973000	Receptarie

RR: legitimationskod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.legitimationCode ^comment = "TKB-fält: `../../../legitimationCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.hsaTitleCode ^definition = "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.

Se gruppförskrivarkod för villkor.

Kontrolleras i receptregistret att personen har angiven yrkeskod.

Valideras i AFF

HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:\"HSA Innehåll Legitimerad Yrkesgrupp\" på se www.inera.se/hsa.

Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.

RR: yrkeskod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.hsaTitleCode ^comment = "TKB-fält: `../../../hsaTitleCode` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.hsaTitle ^definition = "Förskrivarens yrke i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.hsaTitle ^comment = "TKB-fält: `../../../hsaTitle` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.speciallityCodes ^definition = "Förskrivarens specialiteter i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.speciallityCodes ^comment = "TKB-fält: `../../../speciallityCodes` (`string`, kardinalitet 0..*)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.paTitleCode ^definition = "Förskrivarens befattningskod.

Se gruppförskrivarkod för villkor.

HSA: befattningskod, även kallat paTitleCode.

Notera också att samma användare kan inneha flera befattningskoder.

RR: befattningskod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.paTitleCode ^comment = "TKB-fält: `../../../paTitleCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.givenName ^definition = "Förskrivarens tilltalsnamn.

HSA: tilltalsnamn (givenName)

RR: förnamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.givenName ^comment = "TKB-fält: `../../../givenName` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.familyName ^definition = "Förskrivarens efternamn.

Valideras i AFF

HSA: efternamn

RR: efternamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.familyName ^comment = "TKB-fält: `../../../familyName` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork ^definition = "arbetsplats"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork ^comment = "TKB-fält: `../../../placeOfWork` (`PlaceOfWork`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.unitPrescriptionCode ^definition = "Förskrivarens arbetsplatskod eller grupparbetsplatskod

Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.

Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.

Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.

Obligatorisk parameter om förmån angivits.

Valideras i AFF

HSA: arbetsplatskod, även kallat unitPrescriptionCode.

RR: arbetsplatskod"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.unitPrescriptionCode ^comment = "TKB-fält: `../../../../unitPrescriptionCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.careUnitName ^definition = "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi

HSA: enhetsnamn (careUnitName )

RR: arbetsplatsnamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.careUnitName ^comment = "TKB-fält: `../../../../careUnitName` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.city ^definition = "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED

RR: arbetsplatsort"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.phoneNumber1 ^definition = "Förskrivarens eller vårdcentralens telefonnummer.

HSA: direkttelefon

RR: telefonnummer1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.phoneNumber1 ^comment = "TKB-fält: `../../../../phoneNumber1` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.phoneNumber2 ^definition = "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.

HSA:

RR: telefonnummer2"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.phoneNumber2 ^comment = "TKB-fält: `../../../../phoneNumber2` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.postalAdress ^definition = "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.

HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.

RR: postadress"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.postalAdress ^comment = "TKB-fält: `../../../../postalAdress` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.postalCode ^definition = "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45

HSA: postnummer (postalCode)

RR: postnummer"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation ^definition = "I första hand ska svenskt personnummer användas.

Vid Expedieringsunderlag för helförpackning gäller dessutom:

Om samordningsnummer finns kan detta användas tillsammans med födelsetid.

Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att  födelsetid och kön anges."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation ^comment = "TKB-fält: `../../patientInformation` (`PatientInformation`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.patientId ^definition = "Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet)

Endast om det är känt.

PU: personid

RR: personnummer"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.patientId ^comment = "TKB-fält: `../../../patientId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.givenName ^definition = "Patientens förnamn.

PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn.

RR: förnamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.givenName ^comment = "TKB-fält: `../../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.familyName ^definition = "Patientens efternamn.

PU: efternamn

RR: efternamn"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.familyName ^comment = "TKB-fält: `../../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.dateOfBirth ^definition = "Födelsedatum (8 siffror).

Anges för patient som saknar giltigt personnummer.

Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag.

PU: födelsetid

RR: födelsedatum"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.dateOfBirth ^comment = "TKB-fält: `../../../dateOfBirth` (`date`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.gender ^definition = "Patientens kön.

Obligatorisk parameter om Personnummer saknas.

{Male, Female, Unspecified}

PU: kön

RR: kön"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.gender ^comment = "TKB-fält: `../../../gender` (`GenderEnum`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.deliveryAdress1 ^definition = "Patientens gatuadress 1.

PU: utdelningsadress1

RR: adress1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.deliveryAdress1 ^comment = "TKB-fält: `../../../deliveryAdress1` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.deliveryAdress2 ^definition = "Patientens adress 2.

PU: utdelningsadress2

RR: adress2"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.deliveryAdress2 ^comment = "TKB-fält: `../../../deliveryAdress2` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.postalCode ^definition = "Patientens postnummer.

PU: postnr

RR: postnummer"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.postalCode ^comment = "TKB-fält: `../../../postalCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.city ^definition = "Patientens postort.

PU: postort

RR: postort"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.city ^comment = "TKB-fält: `../../../city` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.phoneNumber1 ^definition = "Patientens telefonnummer 1.

PU: saknas

RR: telefonnummer1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.phoneNumber1 ^comment = "TKB-fält: `../../../phoneNumber1` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.phoneNumber2 ^definition = "Patientens telefonnummer 2.

PU: saknas

RR: telefonnummer2"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.patientInformation.phoneNumber2 ^comment = "TKB-fält: `../../../phoneNumber2` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriptionWriteTime ^definition = "(f.d. Ordinationstidpunkt)

Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).

När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriptionWriteTime ^comment = "TKB-fält: `../../prescriptionWriteTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriberComment ^definition = "Förskrivarens kommentar till farmaceut.

Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.prescriberComment ^comment = "TKB-fält: `../../prescriberComment` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.receivingPharmacy ^definition = "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.

Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.receivingPharmacy ^comment = "TKB-fält: `../../receivingPharmacy` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.deliveryMessage ^definition = "Leveransinformation om ordinationen skickas till ett ombud"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.deliveryMessage ^comment = "TKB-fält: `../../deliveryMessage` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.treatmentEndTime ^definition = "Datum och tid när patienten skall avsluta intag.

Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).

Mappas från Läkemedelsordination.utsättningstidpunkt"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.treatmentEndTime ^comment = "TKB-fält: `../../treatmentEndTime` (`dateTime`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.NPLPackid ^definition = "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.

Valideras i AFF.

Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.

Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.NPLPackid ^comment = "TKB-fält: `../../NPLPackid` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.NPLid ^definition = "NPL-id alternativt SB-id som identifierar produkt.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.

Valideras i AFF.

Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.

Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.NPLid ^comment = "TKB-fält: `../../NPLid` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.articleId ^definition = "Identitet på förskrivet livsmedel eller handelsvara.

Obligatorisk parameter om NPL-id och NPL pack-id saknas.

Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF.

Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.articleId ^comment = "TKB-fält: `../../articleId` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.dosageText1 ^definition = "Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.

Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.dosageText1 ^comment = "TKB-fält: `../../dosageText1` (`string`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.dosageText2 ^definition = "Kompletterande doseringstext till patienten

Mappas från endera av

Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation

eller

Ex tempore. beskrivning"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.dosageText2 ^comment = "TKB-fält: `../../dosageText2` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.languageCode ^definition = "Främmande språk för doseringstext enligt ISO-639-1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.languageCode ^comment = "TKB-fält: `../../languageCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.pupose ^definition = "(Ändamål klartext)

Mappas från Läkemedelsordination.behandlingsändamål"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.pupose ^comment = "TKB-fält: `../../pupose` (`string`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.reimbursed ^definition = "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.

Falskt = Utan förmån

Sant =Med förmån

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.reimbursed ^comment = "TKB-fält: `../../reimbursed` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.validUntil ^definition = "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.

Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.validUntil ^comment = "TKB-fält: `../../validUntil` (`date`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.substitutionNotAllowed ^definition = "Markering om ordinerad vara ej får bytas ut vid expediering

Endast tillämpligt vid ordination av Läkemedelsartikel.

Falskt = Får ersättas

Sant = Får ej ersättas

Sätts av förskrivare.

Fylls i av NOD baserat på Läkemedelsartikel.ej tillåten substitution"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.substitutionNotAllowed ^comment = "TKB-fält: `../../substitutionNotAllowed` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.startPackage ^definition = "Markering om startförpackning ska expedieras vid första uttag"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.startPackage ^comment = "TKB-fält: `../../startPackage` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.firstDispenseBefore ^definition = "Datum inom vilken första uttag av läkemedel måste göras."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.firstDispenseBefore ^comment = "TKB-fält: `../../firstDispenseBefore` (`dateTime`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.dispenseInterval ^definition = "Absolut expedieringsintervall. Av förskrivaren angiven kortaste tid mellan två expedieringar.

Endast dagar används då expedieringsintervall sätts via NOD."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.dispenseInterval ^comment = "TKB-fält: `../../dispenseInterval` (`int`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.intervalUnit ^definition = "Enhet för det absoluta expedieringsintervallet. Kan anges i dagar, veckor eller månader.

Sätts till dagar då expedieringsintervall sätts via NOD."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.intervalUnit ^comment = "TKB-fält: `../../intervalUnit` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.numberOfDispenses ^definition = "Förskrivet antal uttag

Valideras i RR att värde är > 0"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.numberOfDispenses ^comment = "TKB-fält: `../../numberOfDispenses` (`int`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.numberOfPackages ^definition = "Antal förpackningar som ska expedieras per uttag

Valideras i RR att värde är > 0"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.numberOfPackages ^comment = "TKB-fält: `../../numberOfPackages` (`int`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.EPrescription ^definition = "Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper)"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_attr.EPrescription ^comment = "TKB-fält: `../../EPrescription` (`boolean`, kardinalitet 1)."
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
