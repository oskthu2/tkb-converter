// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DiscontinueMedicationFieldDescriptions
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista.

Se kapitel 5.2 för exempel och regler kring format."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1)."
* medicationPrescription ^definition = "Läkemedelsordination"
* medicationPrescription ^comment = "TKB-fält: `medicationPrescription` (`MedicationPrescription`, kardinalitet 1..1)."
* medicationPrescription.registrationData ^comment = "TKB-fält: `../registrationData` (`RegistrationData`, kardinalitet 1..1).

**Modellanteckning:** id, registrerad av och registreringstidpunkt."
* medicationPrescription.registrationData.id ^definition = "Unikt id för Läkemedelsordinationen.

Om Läkemedelsordinationen ursprungligen skapas i NOD ska värdet utelämnas (null) varvid värdet sätts av NOD.

Om det är fråga om att en befintlig läkemedelsordination flyttas (importeras) till NOD från ett vårdsystem ska dess ursprungliga id anges. Detta ger bl.a. möjlighet att upptäcka dubbletter. Måste då vara UUID eller kälsystem+lokalt id.

Notera att med \"flyttas\" (till skillnad från kopieras) avses att originalet (inte en kopia) överförs till NOD."
* medicationPrescription.registrationData.id ^comment = "TKB-fält: `../../id` (`Identifier`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* medicationPrescription.registrationData.registeredBy ^definition = "Den person som registrerat ordinationen."
* medicationPrescription.registrationData.registeredBy ^comment = "TKB-fält: `registeredBy` (`HealthcareProfessionalType`, kardinalitet 1..1).

**Modellanteckning:** Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationPrescription.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescription.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationPrescription.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescription.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationPrescription.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescription.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescription.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationPrescription.registrationData.registrationTime ^comment = "TKB-fält: `../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationPrescription.patientId ^definition = "Person- eller samordningsnummer enligt skatteverkets definition (12 tecken).

Se kapitel 5.2 för exempel och regler kring format."
* medicationPrescription.patientId ^comment = "TKB-fält: `patientId` (`Identifier`, kardinalitet 1..1).

**Modellanteckning:** Identifiering av patienten.För att registrera läkemedelsordinationer i NOD krävs svenskt personnummer eller samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer. Undantag: Person med enbart samordningsnummer kan inte registreras för Dos och följaktligen inte heller ordineras Dos.Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer."
* medicationPrescription.prescriber ^definition = "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.

Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext.

Se not 1."
* medicationPrescription.prescriber ^comment = "TKB-fält: `../prescriber` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationPrescription.prescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescription.prescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.prescriber.givenName ^definition = "Personens förnamn"
* medicationPrescription.prescriber.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescription.prescriber.familyName ^definition = "Personens efternamn"
* medicationPrescription.prescriber.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescription.prescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescription.prescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.responsiblePrescriber ^definition = "Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv."
* medicationPrescription.responsiblePrescriber ^comment = "TKB-fält: `../responsiblePrescriber` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.responsiblePrescriber.givenName ^definition = "Personens förnamn"
* medicationPrescription.responsiblePrescriber.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescription.responsiblePrescriber.familyName ^definition = "Personens efternamn"
* medicationPrescription.responsiblePrescriber.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.writeTime ^definition = "Tidpunkt då det medicinska beslutet fattades."
* medicationPrescription.writeTime ^comment = "TKB-fält: `writeTime` (`dateTime`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1.

**Modellanteckning:** Tidpunkt då det medicinska beslutet fattades. Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet). I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades."
* medicationPrescription.treatmentStartTime ^definition = "Tidpunkt från vilken patienten ska ta sitt läkemedel.

insättningstidpunkt utgör startpunkt för angiven dosering.

Vid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt."
* medicationPrescription.treatmentStartTime ^comment = "TKB-fält: `../ treatmentStartTime` (`dateTime`, kardinalitet 1)."
* medicationPrescription.treatmentEndTime ^definition = "Om utsättning sker i framtiden så måste denna skickas med, och går endast att använda för att förkorta en behandling."
* medicationPrescription.treatmentEndTime ^comment = "TKB-fält: `treatmentEndTime` (`dateTime`, kardinalitet 0..1).

**Modellanteckning:** Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel.Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad.Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare. Tidpunkten får, om den anges, inte vara före insättningstidpunkt."
* medicationPrescription.evaluationTime ^definition = "Tidpunkt då läkemedelsbehandlingen senast bör utvärderas.

Tidpunkten får, om den anges, inte vara före insättningstidpunkt.

Syftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig."
* medicationPrescription.evaluationTime ^comment = "TKB-fält: `../evaluationTime` (`dateTime`, kardinalitet 0..1)."
* medicationPrescription.evaluatedBy ^definition = "Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering.

Om ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen.

Om endast vårdenhet och vårdgivare är kända kan information om personen utlämnas."
* medicationPrescription.evaluatedBy ^comment = "TKB-fält: `../evaluatedBy` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicationPrescription.evaluatedBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescription.evaluatedBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.evaluatedBy.givenName ^definition = "Personens förnamn"
* medicationPrescription.evaluatedBy.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescription.evaluatedBy.familyName ^definition = "Personens efternamn"
* medicationPrescription.evaluatedBy.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.reason ^definition = "Utsättningsorsak i kodad form."
* medicationPrescription.reason ^comment = "TKB-fält: `reason` (`Reason`, kardinalitet 1..*).

Obs: modellen anger 0..1 där TKB:n anger 1..*.

**Modellanteckning:** Orsaken till beslutet.Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen.Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering. Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak."
* medicationPrescription.reason.code ^definition = "Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.

Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO)."
* medicationPrescription.reason.code ^comment = "TKB-fält: `../code` (`CodeableConcept`, kardinalitet 1).

**Modellanteckning:** Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Om ordinationsorsak anges till Annan orsak är det obligatorisk att ange orsaken som fritext (i fältet CodeableConcept.text) i annat fall ska fritext inte anges."
* medicationPrescription.reason.primaryReason ^definition = "Uppgift om huruvida orsaken är \"huvudorsak\", dvs. viktigare än andra angivna orsaker"
* medicationPrescription.reason.primaryReason ^comment = "TKB-fält: `../primaryReason` (`boolean`, kardinalitet 1)."
* medicationPrescription.annotation ^definition = "Ordinatörens kommentarer i fritext kopplade till en specifik ordination.

Syftet är t.ex. att ordinatören i fritext ska kunna ange sådant som inte framgår av beslutsorsak eller ordinationsorsak och som är av intresse för annan vård- och omsorgspersonal.

Fältet är avsett att beskriva nuläget för läkemedelsbehandlingen utan att användaren ska behöva ta del av notatfältet i tidigare läkemedelsordinationer.

Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering."
* medicationPrescription.annotation ^comment = "TKB-fält: `../annotation` (`string`, kardinalitet 0..1)."
* medicationPrescription.use ^definition = "Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. \"sväljes hela\", \"påstrykes i armvecket\". Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs).

Ett förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt.

Ingår i Expedieringsunderlag som en del av doseringstext 1."
* medicationPrescription.use ^comment = "TKB-fält: `../use` (`string`, kardinalitet 0..1)."
* medicationPrescription.purpose ^definition = "Behandlingsändamål i klartext.

Ingår i Expedieringsunderlag som Ändamål klartext"
* medicationPrescription.purpose ^comment = "TKB-fält: `../purpose` (`string`, kardinalitet 0..1)."
* medicationPrescription.medication ^definition = "Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser.

Det finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet.

Vid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen."
* medicationPrescription.medication ^comment = "TKB-fält: `../medication` (`Medication_virtual`, kardinalitet 1)."
* medicationPrescription.medication.DistributedDrug_attr ^comment = "TKB-fält: `../../DistributedDrug_attr` (`DistributedDrug`, kardinalitet 0..1)."
* medicationPrescription.medication.DistributedDrug_attr.NPLid ^definition = "id som identifierar läkemedelsprodukt.

Hämtas från SIL.

Ex. Alvedon tablett 500 mg.

Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).

NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.

Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.

Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)

Ingår i Expedieringsunderlag."
* medicationPrescription.medication.DistributedDrug_attr.NPLid ^comment = "TKB-fält: `../../../NPLid` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.medication.DistributedDrug_attr.tradeName ^definition = "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Möjlighet att utnyttja detta fält för \"fritextordination\" måste testas (t.ex. för studieläkemedel eller \"okänt läkemedel\")."
* medicationPrescription.medication.DistributedDrug_attr.tradeName ^comment = "TKB-fält: `../../../tradeName` (`string`, kardinalitet 1)."
* medicationPrescription.medication.DistributedDrug_attr.notInterchangable ^definition = "Markering att ordinerad vara ej får bytas ut vid expediering

Falskt = Får bytas ut

Sant = Får ej bytas ut

Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget."
* medicationPrescription.medication.DistributedDrug_attr.notInterchangable ^comment = "TKB-fält: `../../../notInterchangable` (`boolean`, kardinalitet 1)."
* medicationPrescription.medication.DrugArticle_attr ^comment = "TKB-fält: `../../DrugArticle_attr` (`DrugArticle`, kardinalitet 0..1)."
* medicationPrescription.medication.DrugArticle_attr.NPLPackid ^definition = "Id som identifierar läkemedelsartikel.

Hämtas från SIL.

Anger läkemedel på nivån : Alvedon tablett 500 mg, 16 st blister."
* medicationPrescription.medication.DrugArticle_attr.NPLPackid ^comment = "TKB-fält: `../../../NPLPackid` (`Identifier`, kardinalitet 1)."
* medicationPrescription.medication.DrugArticle_attr.distributedTradeName ^definition = "Produktnamn + förpackning

Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Kallas artikel hos apoteksaktörerna"
* medicationPrescription.medication.DrugArticle_attr.distributedTradeName ^comment = "TKB-fält: `../../../distributedTradeName` (`string`, kardinalitet 1)."
* medicationPrescription.medication.DrugArticle_attr.distributedDrug ^definition = "Den Läkemedelsprodukt som Läkemedelsartikeln baseras på.(se not 1)"
* medicationPrescription.medication.DrugArticle_attr.distributedDrug ^comment = "TKB-fält: `../../../distributedDrug` (`DistributedDrug`, kardinalitet 1)."
* medicationPrescription.medication.DrugArticle_attr.distributedDrug.NPLid ^definition = "id som identifierar läkemedelsprodukt.

Hämtas från SIL.

Ex. Alvedon tablett 500 mg.

Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).

NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.

Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.

Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)

Ingår i Expedieringsunderlag."
* medicationPrescription.medication.DrugArticle_attr.distributedDrug.NPLid ^comment = "TKB-fält: `../../../../NPLid` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.medication.DrugArticle_attr.distributedDrug.tradeName ^definition = "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Möjlighet att utnyttja detta fält för \"fritextordination\" måste testas (t.ex. för studieläkemedel eller \"okänt läkemedel\")."
* medicationPrescription.medication.DrugArticle_attr.distributedDrug.tradeName ^comment = "TKB-fält: `../../../../tradeName` (`string`, kardinalitet 1)."
* medicationPrescription.medication.DrugArticle_attr.distributedDrug.notInterchangable ^definition = "Markering att ordinerad vara ej får bytas ut vid expediering

Falskt = Får bytas ut

Sant = Får ej bytas ut

Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget."
* medicationPrescription.medication.DrugArticle_attr.distributedDrug.notInterchangable ^comment = "TKB-fält: `../../../../notInterchangable` (`boolean`, kardinalitet 1)."
* medicationPrescription.medication.ExTempore_attr ^comment = "TKB-fält: `../../ExTempore_attr` (`ExTempore`, kardinalitet 0..1)."
* medicationPrescription.medication.ExTempore_attr.description ^definition = "Beskriver komposition mm.

Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget."
* medicationPrescription.medication.ExTempore_attr.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 1)."
* medicationPrescription.medication.LicensedDrug_attr ^comment = "TKB-fält: `../../LicensedDrug_attr` (`LicensedDrug`, kardinalitet 0..1)."
* medicationPrescription.medication.LicensedDrug_attr.productName ^definition = "Namn på läkemedlet i fri text.

Ingår i Expedieringsunderlag.doseringstext 2."
* medicationPrescription.medication.LicensedDrug_attr.productName ^comment = "TKB-fält: `../../../productName` (`string`, kardinalitet 1)."
* medicationPrescription.medication.LicensedDrug_attr.strength ^definition = "Ingår i Expedieringsunderlag.doseringstext 2."
* medicationPrescription.medication.LicensedDrug_attr.strength ^comment = "TKB-fält: `../../../strength` (`string`, kardinalitet 0..1)."
* medicationPrescription.medication.LicensedDrug_attr.drugForm ^definition = "Ingår i Expedieringsunderlag.doseringstext 2."
* medicationPrescription.medication.LicensedDrug_attr.drugForm ^comment = "TKB-fält: `../../../drugForm` (`string`, kardinalitet 0..1)."
* medicationPrescription.medication.LicensedDrug_attr.licenseInformation ^definition = "t.ex. vilket apotek som har den beviljade licensen

Ingår i Expedieringsunderlag.doseringstext 2."
* medicationPrescription.medication.LicensedDrug_attr.licenseInformation ^comment = "TKB-fält: `../../../licenseInformation` (`string`, kardinalitet 0..1)."
* medicationPrescription.medication.NonDrugArticle_attr ^comment = "TKB-fält: `../../NonDrugArticle_attr` (`NonDrugArticle`, kardinalitet 0..1)."
* medicationPrescription.medication.NonDrugArticle_attr.articleId ^definition = "Identitet på ordinerad handelsvara.

Obligatorisk parameter för handelsvaror som ska hämtas ut på apotek.

Får ej anges för läkemedel.

Ingår i Expedieringsunderlag."
* medicationPrescription.medication.NonDrugArticle_attr.articleId ^comment = "TKB-fält: `../../../articleId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescription.medication.FreeTextMedication_attr ^comment = "TKB-fält: `../../FreeTextMedication_attr` (`FreeTextMedication`, kardinalitet 0..1)."
* medicationPrescription.medication.FreeTextMedication_attr.description ^definition = "beskrivning av läkemedlet.

Fritextval används t.ex. då patienten själv anger sina läkemedel (egenmedicinering) samt vid studieläkemedel, dvs. när patienten deltar i en forskningsstudie och inte själv vet om aktiv substans används."
* medicationPrescription.medication.FreeTextMedication_attr.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 1)."
* medicationPrescription.medication.FreeTextMedication_attr.atcCode ^definition = "ATC-kod

Om angivet kan kontroller utföras (interaktion, amning mm). Se not 1."
* medicationPrescription.medication.FreeTextMedication_attr.atcCode ^comment = "TKB-fält: `../../../atcCode` (`code`, kardinalitet 0..1)."
* medicationPrescription.dosage ^definition = "Dosering enligt vårdens doseringsmodell.

Doseringen ska anges i relation till insättningstidpunkt.

Vid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas - inte doseringen.

I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas."
* medicationPrescription.dosage ^comment = "TKB-fält: `../dosage` (`Dosage`, kardinalitet 0..1)."
* medicationPrescription.site ^definition = "Den plats på kroppen genom vilket läkemedlet intas eller appliceras."
* medicationPrescription.site ^comment = "TKB-fält: `../site` (`CodeableConcept`, kardinalitet 0..1).

**Modellanteckning:** Den plats på kroppen genom vilket läkemedlet intas eller appliceras.En SNOMED-kod under SCTID:91723000 \"anatomical structure\""
* medicationPrescription.route ^definition = "Den väg som läkemedlet tar sig in i kroppen."
* medicationPrescription.route ^comment = "TKB-fält: `../route` (`CodeableConcept`, kardinalitet 0..1)."
* medicationPrescription.method ^definition = "Den teknik med vilken läkemedlet administreras."
* medicationPrescription.method ^comment = "TKB-fält: `../method` (`CodeableConcept`, kardinalitet 0..1)."
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
