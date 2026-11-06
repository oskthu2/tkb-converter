// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMedicationHistoryFieldDescriptions
* medicationMedicalRecord ^definition = "Patientens läkemedelshistorik"
* medicationMedicalRecord ^comment = "TKB-fält: `medicationMedicalRecord` (`MedicationMedicalRecordType`, kardinalitet 0..*).

**Modellanteckning:** En läkemedelsjournalpost per ordination. En patient kan ha många poster."
* medicationMedicalRecord.medicationMedicalRecordHeader ^definition = "Innehåller basinformation om dokumentet, inklusive information om vid vilken vårdkontakt som ordinationen skedde.

Notera: accountableHealthCareProfessional anges till den som registrerat informationen. Ordinatör, förskrivare och administrerande vårdpersonal anges i Bodyn."
* medicationMedicalRecord.medicationMedicalRecordHeader ^comment = "TKB-fält: `../medicationMedicalRecordHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.documentId ^definition = "Identifierare för uppgift i patientjournal.

(**vanligtvis ordinations-id eller ordinations-id kompletterad med löpnummer i de fall där källsystemet har 1..N st förskrivningar knutna till en enskild ordination).

Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* medicationMedicalRecord.medicationMedicalRecordHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.sourceSystemHSAId ^definition = "Det källsystem som uppgiften lagras i. Sätts till källsystemets HSA-id."
* medicationMedicalRecord.medicationMedicalRecordHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.documentTitle ^definition = "Titel som beskriver den information som tillgängliggörs."
* medicationMedicalRecord.medicationMedicalRecordHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.patientId ^definition = "Personidentifierare för patienten."
* medicationMedicalRecord.medicationMedicalRecordHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional ^definition = "Information avseende dokumentation av uppgiften som tillgängliggörs.

Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då uppgiften dokumenterades eller senast uppdaterades."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.

Anges med HSAs kodverk Befattning  (OID: 1.2.752.129.2.2.1.4) [R6].

Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet.

I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på organisationsenhet."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "E-post till organisationsenhet."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress till organisationsenhet."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalcareUnitHSAId ^definition = "HSA-id för vårdenheten där uppgiften är dokumenterad. För mer information av vad som avses med vårdenhet, se [R17].

I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).

Regel 1.1"
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalcareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalcareUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalcareGiverHSAId ^definition = "Id för uppgiftsägande vårdgivare. För mer information av vad som avses med vårdgivare, se [R17].

I första hand HSA-id, i andra hand organisationsnummer.

Regel 1.1"
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalcareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalcareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator ^definition = "Information avseende signering av uppgiften som tillgängliggörs."
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt då uppgiften signerades."
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs."
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.approvedForPatient ^definition = "Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst).

Om uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient.

Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall ska källsystemet uppdatera engagemangsindex."
* medicationMedicalRecord.medicationMedicalRecordHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.careContactId ^definition = "Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet."
* medicationMedicalRecord.medicationMedicalRecordHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody ^comment = "TKB-fält: `../medicationMedicalRecordBody` (`MedicationMedicalRecordBodyType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription ^definition = "LÄKEMEDELSORDINATION.

Ordination som avser läkemedelsbehandling. De individuella läkemedelsordinationerna kan indelas i ordination som avser utsättning, förändrande läkemedelsordination, ordination som avser insättning och bekräftande läkemedelsordination. I slutenvård görs endast ordination, men i öppenvård krävs vanligtvis även en förskrivning (se nedan)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription ^comment = "TKB-fält: `../../medicationPrescription` (`MedicationPrescriptionType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionId ^definition = "Ordinations-id.

Unik identifierare för aktuell läkemedelsordination. Fältet extension motsvarar värdet documentId i headern, om inte ordinations-id är en UUID, då root-elementet istället motsvarar documentId i headern."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionId ^comment = "TKB-fält: `../../../prescriptionId` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** Unik identifierare för aktuell läkemedelsordination.
root = UUID eller OID som pekar på källsystem.
extension = ordinations-id unikt inom källsystemet."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription ^definition = "Ordinationstyp.

Uppgift som anger om aktuell ordination ska räknas som en insättningsordination eller utsättningsordination (utsättningsordination = ordination som beskriver avslut av läkemedelsbehandling). Insättning används när läkemedlet är insatt, dvs. även en ändrad eller förnyad ordination har typen insättning. Kodverk: I, U."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription ^comment = "TKB-fält: `../../../typeOfPrescription` (`TypeOfPrescriptionEnum`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionStatus ^definition = "Ordinationsstatus.

Anger ordinationens aktuella status [Active, Inactive]

En aktiv ordination är den sista i sin ordinationskedja. Alla andra ordinationer i samma ordinationskedja är inaktiva."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionStatus ^comment = "TKB-fält: `../../../prescriptionStatus` (`PrescriptionStatusEnum`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionNote ^definition = "Notat.

Text som beskriver läkemedelsordinationen som utgör del av Läkemedelsberättelse. Exempel: Text som beskriver varför man satt in eller gjort dosändringar."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionNote ^comment = "TKB-fält: `../../../prescriptionNote` (`String`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason ^definition = "Ordinationshuvudorsak.

Den eller de viktigaste av de ordinationsorsaker som anges, om fler än en."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason ^comment = "TKB-fält: `../../../principalPrescriptionReason` (`PrescriptionReasonType`, kardinalitet 0..*)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.reason ^definition = "Ordinationsorsak.

Skäl till en viss ordination. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO, Nationell källa för ordinationsorsak). Se [R8]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.reason ^comment = "TKB-fält: `../../../../reason` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.otherReason ^definition = "Om koden för ”Annan ordinationsorsak” (SNOMED: 46021000052104) väljs för föregående kod så anges beskrivning här."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.otherReason ^comment = "TKB-fält: `../../../../otherReason` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason ^definition = "Övriga ordinationsorsaker.

Anges en övrig ordinationsorsak måste minst en ordinationshuvudorsak vara angiven."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason ^comment = "TKB-fält: `../../../additionalPrescriptionReason` (`PrescriptionReasonType`, kardinalitet 0..*)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.reason ^definition = "Ordinationsorsak.

Skäl till en viss ordination. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Se [R8]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.reason ^comment = "TKB-fält: `../../../../reason` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.otherReason ^definition = "Om koden för ”Annan ordinationsorsak” (SNOMED: 46021000052104) väljs för föregående kod så anges beskrivning här."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.otherReason ^comment = "TKB-fält: `../../../../otherReason` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluationTime ^definition = "Utvärderingstidpunkt (nästa planerade utvärderingstidpunkt).

Tidpunkt vid vilken behandlingen ska utvärderas."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluationTime ^comment = "TKB-fält: `../../../evaluationTime` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.treatmentPurpose ^definition = "Behandlingsändamål.

Text som beskriver avsikten med läkemedelsbehandlingen för vård- och omsorgstagaren. Exempel: Mot högt blodtryck."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.treatmentPurpose ^comment = "TKB-fält: `../../../treatmentPurpose` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionChainId ^definition = "Ordinationskedje-id.

Lokal identifierare för den ordinationskedja i vilken aktuell ordination ingår. Serie av läkemedelsordinationer med gemensam indikation, gemensam verksam substans och gemensam läkemedelsform"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionChainId ^comment = "TKB-fält: `../../../prescriptionChainId` (`IIType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.precedingPrescriptionId ^definition = "Föregående ordinations-id.

Referens till föregående ordination i ordinationskedja."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.precedingPrescriptionId ^comment = "TKB-fält: `../../../precedingPrescriptionId` (`IIType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.succeedingPrescriptionId ^definition = "Efterföljande ordinations-id.

Referens till efterföljande ordination i ordinationskedja."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.succeedingPrescriptionId ^comment = "TKB-fält: `../../../succeedingPrescriptionId` (`IIType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber ^definition = "Ordinatör.

Icke att beblanda med den person som den som registrerat informationen, och som är den person som återfinns i accountableHealthcareProfessional i medicationMedicalRecordHeader.

Måste anges om selfMedication = false."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber ^comment = "TKB-fält: `../../../prescriber` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.authorTime ^definition = "Beslutstidpunkt/ordinationstidpunkt.

Tidpunkt då beslut fattas om läkemedelsbehandling (gäller för insättning, utsättning, makulering etc)

Inte nödvändigtvis samma som behandlingsstart."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.authorTime ^comment = "TKB-fält: `../../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalHSAId ^definition = "Ordinatörens HSA-id."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalName ^definition = "Namn på ordinatören. Om tillgängligt ska detta anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalName ^comment = "TKB-fält: `../../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalRoleCode ^definition = "Information om ordinatörens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit ^definition = "Den organisation som ordinatören är uppdragstagare på."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet.

I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../../orgUnitName` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "E-post till organisationsenhet."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator ^definition = "”Utvärderat av”.

Den hälso- och sjukvårdsperson/-enhet som utvärderat utfallet av ordinationen/förskrivningen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator ^comment = "TKB-fält: `../../../evaluator` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.authorTime ^definition = "Utvärderingstidpunkt (faktisk utvärderingstidpunkt).

Tidpunkt vid vilken ordinationen har utvärderats."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.authorTime ^comment = "TKB-fält: `../../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalHSAId ^definition = "Utvärderande persons HSA-id."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalName ^definition = "Namn på utvärderande person. Om tillgängligt ska detta anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalName ^comment = "TKB-fält: `../../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalRoleCode ^definition = "Information om utvärderande persons befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit ^definition = "Den organisation som utvärderande person är uppdragstagare på."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet.

I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som utvärderande person är uppdragstagare på."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../../orgUnitName` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfFirstTreatment ^definition = "Första insättningstidpunkt.

Beräknas som insättningstidpunkt för första ordinationen i ordinationskedjan."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfFirstTreatment ^comment = "TKB-fält: `../../../startOfFirstTreatment` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfTreatment ^definition = "Insättningstidpunkt.

Datum då patienten ska börja ta sitt läkemedel/läkemedlet ska administreras för första gången. Vid ordinationstyp ”Insättning” sätts detta till samma som registreringstidpunkt (authorTime i  headern) om inget annat anges här.

Är obligatorisk vid ordinationstyp ”Insättning”."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfTreatment ^comment = "TKB-fält: `../../../startOfTreatment` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatment ^definition = "Utsättningstidpunkt.

Datum då patienten ska upphöra ta sitt läkemedel/då läkemedlet ska sluta administreras. OBS, kan anges både vid ordinationer av typ ”Insättning” och ”Utsättning”."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatment ^comment = "TKB-fält: `../../../endOfTreatment` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatmentReason ^definition = "Utsättningsorsak.

Orsak som ordinatör anger för utsättning."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatmentReason ^comment = "TKB-fält: `../../../endOfTreatmentReason` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.selfMedication ^definition = "Egenmedicinering.

Anger om ordinationen är utfärdad av patienten själv"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.selfMedication ^comment = "TKB-fält: `../../../selfMedication` (`boolean`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug ^definition = "Läkemedelsval.

OBS: Ett och endast ett av följande alternativ:

unstructuredDrugInformation (fritextval/extemporeberedning)

merchandise (handelsvara)

drugArticle (läkemedelsartikel)

drug (läkemedelsprodukt)

generics (generika/utbytesgrupp)"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug ^comment = "TKB-fält: `../../../drug` (`DrugChoiceType`, kardinalitet 0..1).

**Modellanteckning:** OBS: Ett och endast ett av följande alternativ ska anges.
Regeln är modellerad som invarianten getmedicationhistory-drug-choice."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.comment ^definition = "Kommentar om läkemedelsval.

Text som innehåller en kommentar till det ordinerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.comment ^comment = "TKB-fält: `../../../../comment` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation ^definition = "Fritextval.

Används för extemporeberedning, licensläkemedel etc."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation ^comment = "TKB-fält: `../../../../unstructuredDrugInformation` (`UnstructuredDrugInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation.unstructuredInformation ^definition = "Fritextbeskrivning."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation.unstructuredInformation ^comment = "TKB-fält: `../../../../../unstructuredInformation` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise ^definition = "Handelsvara."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise ^comment = "TKB-fält: `../../../../merchandise` (`MerchandiseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise.articleNumber ^definition = "Varunummer.

Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1.

Får ej anges för läkemedel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise.articleNumber ^comment = "TKB-fält: `../../../../../articleNumber` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle ^definition = "Läkemedelsartikel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle ^comment = "TKB-fält: `../../../../drugArticle` (`DrugArticleType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle.nplPackId ^definition = "NPL pack-id.

Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle.nplPackId ^comment = "TKB-fält: `../../../../../nplPackId` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug ^definition = "Läkemedelsprodukt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug ^comment = "TKB-fält: `../../../../drug` (`DrugType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.nplId ^definition = "NPL-id.

Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1.

Alla producenter av kontraktet ska skicka code, codeSystem samt displayName.

Antingen nplId eller atcCode måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.nplId ^comment = "TKB-fält: `../../../../../nplId` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.atcCode ^definition = "ATC-kod.

atcKod + atcKodBeskrivning i SIL.

Klassificeringskod för läkemedlet på sjuställig nivå. OID:

1.2.752.129.2.2.3.1.1.

Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/

I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/

ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde.

Antingen nplId eller atcCode måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.atcCode ^comment = "TKB-fält: `../../../../../atcCode` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.routeOfAdministration ^definition = "Administreringssätt.

Hur produkten ska intas/administreras. Kan anges med SNOMED-kod."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.routeOfAdministration ^comment = "TKB-fält: `../../../../../routeOfAdministration` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.pharmaceuticalForm ^definition = "Läkemedelsform enligt SIL, t.ex Tablett"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.pharmaceuticalForm ^comment = "TKB-fält: `../../../../../pharmaceuticalForm` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strength ^definition = "Styrka enligt SIL, t.ex 20.0

I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strength ^comment = "TKB-fält: `../../../../../strength` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strengthUnit ^definition = "Enhet på styrka enligt SIL, t.ex mg.

I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strengthUnit ^comment = "TKB-fält: `../../../../../strengthUnit` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics ^definition = "Generiskt läkemedelsval."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics ^comment = "TKB-fält: `../../../../generics` (`GenericsType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.substance ^definition = "Substansgrupp.

Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.substance ^comment = "TKB-fält: `../../../../../substance` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength ^definition = "Styrka.

Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength ^comment = "TKB-fält: `../../../../../strength` (`PQType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.form ^definition = "Läkemedelsform.

Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.form ^comment = "TKB-fält: `../../../../../form` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.lengthOfTreatment ^definition = "Behandlingstid."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.lengthOfTreatment ^comment = "TKB-fält: `../../../../../lengthOfTreatment` (`LengthOfTreatmentType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.lengthOfTreatment.treatmentInterval ^definition = "Behandlingstid.

Tidsintervall under vilket läkemedlet ska användas enligt ordination. Exempel: 5-6 veckor."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.lengthOfTreatment.treatmentInterval ^comment = "TKB-fält: `../../../../../../treatmentInterval` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.lengthOfTreatment.isMaximumTreatmentTime ^definition = "Logiskt villkor som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas.

Sant = Behandlingstiden är en maxtid

Falskt = Behandlingstiden är inte en maxtid."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.lengthOfTreatment.isMaximumTreatmentTime ^comment = "TKB-fält: `../../../../../../isMaximumTreatmentTime` (`boolean`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.dosageInstruction ^definition = "Doseringsanvisning.

Källa: Socialstyrelsens termbank: Terminologirådet; beskrivning av dosering, användning och ändamål riktad till patient.

Text som beskriver doseringen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.dosageInstruction ^comment = "TKB-fält: `../../../../../dosageInstruction` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.unitDose ^definition = "Doseringsenhet.

Kod som anger den enhet som doseringen avser.

Exempel: tablett, ml, droppe

I dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod.

Via SIL kan doseringsenhet som text erhållas för vissa läkemedel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.unitDose ^comment = "TKB-fält: `../../../../../unitDose` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.shortNotation ^definition = "Kortnotation.

Text som ger en kort beskrivning av doseringen.

Exempel: 1x2"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.shortNotation ^comment = "TKB-fält: `../../../../../shortNotation` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.setDosage ^definition = "Fastdosering.

Dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger

dagligen.

Fastdosering kan utgöra Frekvensdosering, Perioddosering, Tillfällesdosering, Rampdosering, Engångsdosering och

Fritextdosering. Dessa alla har det gemensamt att de anger mängd och periodicitet, men på lite olika sätt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.setDosage ^comment = "TKB-fält: `../../../../../setDosage` (`SetDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.maximumDosage ^definition = "Maxdosering.

Dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.maximumDosage ^comment = "TKB-fält: `../../../../../maximumDosage` (`MaximumDosageTyp`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.conditionalDosage ^definition = "Villkorsdosering.

Ordinerad mängd och periodicitet som gäller

om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.conditionalDosage ^comment = "TKB-fält: `../../../../../conditionalDosage` (`ConditionalDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.conditionalDosage.conditionDescription ^definition = "Villkorstext.

Text som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".

Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dosage.conditionalDosage.conditionDescription ^comment = "TKB-fält: `../../../../../../conditionDescription` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization ^definition = "Förskrivning.

Källa: Socialstyrelsens termbank, Terminologirådet: recept, rekvisition, livsmedelsanvisning, hjälpmedelskort eller dosrecept.

En förskrivning föregås alltid av en ordination. Varje förskrivning (förutom den första) är per definition ett nytt beslut, och därmed en ny ordination. I slutenvård görs endast ordination, men i öppenvård krävs även en förskrivning.

Utelämnas alltid om ordinationstypen är Utsättning."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization ^comment = "TKB-fält: `../../../dispensationAuthorization` (`DispensationAuthorizationType`, kardinalitet 0..1).

**Modellanteckning:** Se XSD DispensationAuthorizationType för fullständig struktur.
// SAKNAS I KÄLLDOKUMENT - endast delvis extraherat — kontrollera manuellt"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration ^definition = "Information om administrering av läkemedel. Bara administreringstillfällen som faktiskt ägt rum kan anges, planerade administreringstillfällen kan inte anges i detta kontrakt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration ^comment = "TKB-fält: `../../../administration` (`AdministrationType`, kardinalitet 0..*).

**Modellanteckning:** Bara administreringstillfällen som faktiskt ägt rum kan anges.
Se XSD AdministrationType för fullständig struktur.
// SAKNAS I KÄLLDOKUMENT - endast delvis extraherat — kontrollera manuellt"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation ^definition = "Sambandsklass

Alla de meddelandeposter (angivna med referredInformation.id) som i ordinationen pekas ut med samma relation.code ska anges i samma relation (teknisk aggregering)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation ^comment = "TKB-fält: `../../../relation` (`RelationType`, kardinalitet 0..*).

**Modellanteckning:** Alla meddelandeposter som i ordinationen pekas ut med samma relationstyp.
Se XSD RelationType för fullständig struktur.
// SAKNAS I KÄLLDOKUMENT - endast delvis extraherat — kontrollera manuellt"
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation ^definition = "Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning."
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation ^comment = "TKB-fält: `../../additionalPatientInformation` (`AdditionalPatientInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.dateOfBirth ^definition = "Patientens födelsedatum."
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.dateOfBirth ^comment = "TKB-fält: `../../../dateOfBirth` (`DateType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.gender ^definition = "Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas (se referens [R6])."
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.gender ^comment = "TKB-fält: `../../../gender` (`CVType`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1)."
* result.subcode ^definition = "Inga subkoder är specificerade."
* result.subcode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1)."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
