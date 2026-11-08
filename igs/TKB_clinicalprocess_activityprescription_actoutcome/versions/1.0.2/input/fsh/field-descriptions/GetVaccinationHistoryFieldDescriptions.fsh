// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetVaccinationHistoryFieldDescriptions
* vaccinationMedicalRecord ^definition = "En strukturerad vaccinationsjournal."
* vaccinationMedicalRecord ^comment = "TKB-fält: `vaccinationMedicalRecord` (`VaccinationMedicalRecordType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader ^definition = "Innehåller basinformation om dokumentet."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader ^comment = "TKB-fält: `../vaccinationMedicalRecordHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId ^definition = "HSA-id för det system som dokumentet är skapat i."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle ^definition = "Titel som beskriver den information som sänds i dokumentet."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime ^definition = "Händelsetidpunkt. Tidsangivelse för den vaccinationstidpunkt dokumentet gäller."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId ^definition = "Identifierare för patient."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthCareProfessional` (`HealthCareProfessionalType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "Hälso- och sjukvårdspersonens HSA-id. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på hälso- och sjukvårdspersonen. Om tillgängligt skall detta anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4), se

http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAid ^definition = "HSA-id för organisationsenhet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAid ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till enhet"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för Vårdenhet"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonen är uppdragstagare för."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAid ^definition = "HSA-id för person som signerat dokumentet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAid ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId ^definition = "Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified ^definition = "Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified ^comment = "TKB-fält: `../../nullified` (`boolean`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason ^definition = "Anger orsak till makulering. Får endast anges i kombination med att nullified = true"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody ^definition = "Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData om utförda vaccinationer vid vaccinationstillfället."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody ^comment = "TKB-fält: `../vaccinationMedicalRecordBody` (`VaccinationMedicalRecordBodyType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord ^definition = "Annan information än ovan som registreras vid eller relaterat till vaccinationstillfället"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord ^comment = "TKB-fält: `../../registrationRecord` (`RegistrationRecordType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg ^definition = "Information om juridisk vårdgivare; hsaid (om finns) och kontaktuppgifter namn,epost,tel,adress etc"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg ^comment = "TKB-fält: `../../../careGiverOrg` (`OrgUnitType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAid ^definition = "HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAid ^comment = "TKB-fält i OrgUnitType: `orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName ^definition = "Namn på organisationsenhet. Om tillgängligt skall detta anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName ^comment = "TKB-fält i OrgUnitType: `orgUnitName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom ^comment = "TKB-fält i OrgUnitType: `orgUnitTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail ^definition = "Epost till organisationsenhet."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail ^comment = "TKB-fält i OrgUnitType: `orgUnitEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress ^definition = "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress ^comment = "TKB-fält i OrgUnitType: `orgUnitAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation ^comment = "TKB-fält i OrgUnitType: `orgUnitLocation` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact ^definition = "Kontaktperson hos juridiskt ansvarig vårdgivare"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact ^comment = "TKB-fält: `../../../careGiverContact` (`ActorType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid ^definition = "HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid ^comment = "TKB-fält i ActorType: `hsaId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName ^definition = "Namn på personen. Minst ett av dessa två fält ska anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName ^comment = "TKB-fält i ActorType: `name` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail ^definition = "Epostadress till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail ^comment = "TKB-fält i ActorType: `personEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom ^definition = "Telefon till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom ^comment = "TKB-fält i ActorType: `personTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress ^definition = "Adress till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress ^comment = "TKB-fält i ActorType: `personAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName ^definition = "Klartextnamn på källsystemet"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName ^comment = "TKB-fält: `../../../sourceSystemName` (`String`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName ^definition = "Klartextnamn på källsystemets produktnamn"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName ^comment = "TKB-fält: `../../../sourceSystemProductName` (`String`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion ^definition = "Klartextnamn på källsystemets produktversion"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion ^comment = "TKB-fält: `../../../sourceSystemProductVersion` (`String`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact ^definition = "Kontaktuppgifter till källsystemsansvarig"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact ^comment = "TKB-fält: `../../../sourceSystemContact` (`ActorType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid ^definition = "HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid ^comment = "TKB-fält i ActorType: `hsaId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName ^definition = "Namn på personen. Minst ett av dessa två fält ska anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName ^comment = "TKB-fält i ActorType: `name` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail ^definition = "Epostadress till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail ^comment = "TKB-fält i ActorType: `personEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom ^definition = "Telefon till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom ^comment = "TKB-fält i ActorType: `personTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress ^definition = "Adress till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress ^comment = "TKB-fält i ActorType: `personAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId ^definition = "Utförande vårdenhetens registreringsId hos SMI"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId ^comment = "TKB-fält: `../../../careUnitSmiId` (`String`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date ^definition = "Datum då nedan vaccination(er) gavs"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date ^comment = "TKB-fält: `../../../date` (`DateType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode ^definition = "Postnummer för patientens senast kända bostadsadress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode ^comment = "TKB-fält: `../../../patientPostalCode` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote ^definition = "Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda här.

Kan formateras enligt HL7NarrativeBlock.

Not: Om endast ostrukturerad vaccinationsinformation finns, kan, detta kontrakt produceras men i så fall inga administrationRecords nedan returneras."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote ^comment = "TKB-fält: `../../../vaccinationUnstructuredNote` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory ^definition = "Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i förekommande fall patientens hälsodeklaration"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory ^comment = "TKB-fält: `../../../riskCategory` (`CVType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect ^definition = "Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej specifik vaccination (i fall som när flera vaccin givits vid samma tillfälle)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect ^comment = "TKB-fält: `../../../patientAdverseEffect` (`CVType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord ^definition = "Information om utförd(a) vaccination(er) vid tillfället. Ordinerad men av någon anledning ej given vaccination kan inkluderas."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord ^comment = "TKB-fält: `../../administrationRecord` (`AdministrationRecordType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName ^definition = "Information om vaccinationsprogram om vaccinationen är del av sådant program. Tillåter kodat värde liksom endast namn genom bruk av DisplayName i CVType."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName ^comment = "TKB-fält: `../../../vaccinationProgramName` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg ^definition = "Information om var vaccinationen ordinerats (eller i fallet med förskrivna vaccinationsläkemedel, förskrivits)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg ^comment = "TKB-fält: `../../../prescriberOrg` (`OrgUnitType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAid ^definition = "HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAid ^comment = "TKB-fält i OrgUnitType: `orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName ^definition = "Namn på organisationsenhet. Om tillgängligt skall detta anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName ^comment = "TKB-fält i OrgUnitType: `orgUnitName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom ^comment = "TKB-fält i OrgUnitType: `orgUnitTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail ^definition = "Epost till organisationsenhet."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail ^comment = "TKB-fält i OrgUnitType: `orgUnitEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress ^definition = "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress ^comment = "TKB-fält i OrgUnitType: `orgUnitAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation ^comment = "TKB-fält i OrgUnitType: `orgUnitLocation` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson ^definition = "Information om vem som ordinerat/förskrivit vaccinationen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson ^comment = "TKB-fält: `../../../prescriberPerson` (`ActorType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid ^definition = "HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid ^comment = "TKB-fält i ActorType: `hsaId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName ^definition = "Namn på personen. Minst ett av dessa två fält ska anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName ^comment = "TKB-fält i ActorType: `name` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail ^definition = "Epostadress till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail ^comment = "TKB-fält i ActorType: `personEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom ^definition = "Telefon till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom ^comment = "TKB-fält i ActorType: `personTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress ^definition = "Adress till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress ^comment = "TKB-fält i ActorType: `personAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg ^definition = "Information om vårdenhet som utfört vaccinationen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg ^comment = "TKB-fält: `../../../performerOrg` (`OrgUnitType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAid ^definition = "HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAid ^comment = "TKB-fält i OrgUnitType: `orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName ^definition = "Namn på organisationsenhet. Om tillgängligt skall detta anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName ^comment = "TKB-fält i OrgUnitType: `orgUnitName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom ^comment = "TKB-fält i OrgUnitType: `orgUnitTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail ^definition = "Epost till organisationsenhet."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail ^comment = "TKB-fält i OrgUnitType: `orgUnitEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress ^definition = "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress ^comment = "TKB-fält i OrgUnitType: `orgUnitAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation ^comment = "TKB-fält i OrgUnitType: `orgUnitLocation` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer ^definition = "Information om vem som utfört (administrerat) vaccineringen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer ^comment = "TKB-fält: `../../../performer` (`ActorType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid ^definition = "HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid ^comment = "TKB-fält i ActorType: `hsaId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName ^definition = "Namn på personen. Minst ett av dessa två fält ska anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName ^comment = "TKB-fält i ActorType: `name` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail ^definition = "Epostadress till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail ^comment = "TKB-fält i ActorType: `personEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom ^definition = "Telefon till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom ^comment = "TKB-fält i ActorType: `personTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress ^definition = "Adress till personen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress ^comment = "TKB-fält i ActorType: `personAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite ^definition = "Information om var på kroppen vaccinet givits."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite ^comment = "TKB-fält: `../../../anatomicalSite` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route ^definition = "Information om hur vaccinet givits. Ibland kallat ”administrationsväg”"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route ^comment = "TKB-fält: `../../../route` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage ^definition = "Mängd vaccin som givits"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage ^comment = "TKB-fält: `../../../dosage` (`DosageType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity ^definition = "Mängd preparat som givits dvs 1 ml etc.

Skall anges om möjligt i denna strukturerade form med värde(float) samt enhet. Annars i nästa fält om det endast finns angivet som text"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity ^comment = "TKB-fält i DosageType: `quantity` (`PQType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.displayName ^definition = "Fritextbeskrivning av preparat och mängd som givits. T ex ”Twinrix 1 ml, 1 av 3”, ”2 ml” odyl.

Anges även om quantity angivits ovan"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.displayName ^comment = "TKB-fält i DosageType: `displayName` (`string`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete ^definition = "True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd. Annars false (dvs för de fall som ytterligare delvaccinationer skall ges innan full dos är uppnådd)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete ^comment = "TKB-fält: `../../../isDoseComplete` (`boolean`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber ^definition = "Anger i förekommande fall om vaccineringen är en del av flera vaccinationer som skall utföras, värden 1,2,3… 1 om endast en"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber ^comment = "TKB-fält: `../../../doseOrdinalNumber` (`integer`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses ^definition = "Anger antalet delvaccinationer som skall utföras för att vaccinationen skall räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses ^comment = "TKB-fält: `../../../numberOfPrescribedDoses` (`integer`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription ^definition = "Fritextinformation som anger källa för vaccinering som efterregistrerats. T ex namn på annan vårdenhet, intyg, land el. dyl."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription ^comment = "TKB-fält: `../../../sourceDescription` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription ^definition = "Fritextinformation. T.ex. instruktioner som noterats i ordinationen av vaccineringen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription ^comment = "TKB-fält: `../../../commentPrescription` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration ^definition = "Fritextinformation. Generella kommentarer gjorde vid vaccineringen av den som utfört den"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration ^comment = "TKB-fält: `../../../commentAdministration` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect ^definition = "Information om patienten erfarit någon eller några reaktioner hänför bara till den specifika administreringen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect ^comment = "TKB-fält: `../../../patientAdverseEffect` (`CVType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineType ^definition = "Information om givet vaccin"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineType ^comment = "TKB-fält: `../../../vaccineType` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName ^definition = "Information om givet vaccins produktnamn. I Code skall då anges exempelvis NPL-id om det finns och kodverk ”npl”. Om standardkodverk ej används, ej anges lokal kod, se CVType ovan. Namnet i klartext ges i DisplayName."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName ^comment = "TKB-fält: `../../../vaccineName` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId ^definition = "Identifiering av batchnummer för vaccinets tillverkning"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId ^comment = "TKB-fält: `../../../vaccineBatchId` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer ^definition = "Namn på tillverkaren av vaccinet"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer ^comment = "TKB-fält: `../../../vaccineManufacturer` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease ^definition = "Information om den/de sjukdomar vaccinet skyddar emot"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease ^comment = "TKB-fält: `../../../vaccineTargetDisease` (`CVType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference ^definition = "Unika referensen till källsystemets vaccinationsinformation"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference ^comment = "TKB-fält: `../../../vaccinationUniqueReference` (`IIType`, kardinalitet 0..1)."
