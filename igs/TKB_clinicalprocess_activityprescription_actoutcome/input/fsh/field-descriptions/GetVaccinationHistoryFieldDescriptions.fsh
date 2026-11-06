// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetVaccinationHistoryFieldDescriptions
* vaccinationMedicalRecord ^definition = "En strukturerad vaccinationsjournal."
* vaccinationMedicalRecord ^comment = "TKB-fält: `vaccinationMedicalRecord` (`VaccinationMedicalRecordType`, kardinalitet 0..*).

**Modellanteckning:** En strukturerad vaccinationsjournal. Kan innehålla en eller flera administreringsposter."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader ^definition = "Innehåller basinformation om dokumentet."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader ^comment = "TKB-fält: `../vaccinationMedicalRecordHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId ^definition = "Identifierare för uppgift i patientjournal.

Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId ^definition = "Det källsystem som uppgiften lagras i.

Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle ^definition = "Titel som beskriver den information som tillgängliggörs."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime ^definition = "Händelsetidpunkt. Tidsangivelse för den vaccinationstidpunkt dokumentet gäller."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId ^definition = "Personidentifierare för patienten."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** id = patientens identifierare (12 tecken utan avskiljare).
type = OID för typ av personidentifierare."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional ^definition = "Information avseende dokumentation av uppgiften som tillgängliggörs.

Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional ^comment = "TKB-fält: `../../accountableHealthCareProfessional` (`HealthCareProfessionalType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.authorTime ^definition = "Tidpunkt då uppgiften dokumenterades eller senast uppdaterades.

I de fall då uppgiften ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där uppgiften ursprungligen dokumenterades."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalHSAId ^definition = "HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs.

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalName ^definition = "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalRoleCode ^definition = "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.

Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4) [R6].

Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet.

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "E-post till organisationsenhet"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för vårdenheten där uppgiften är dokumenterad. För mer information av vad som avses med vårdenhet, se [R17].

I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).

Regel 1.1"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "Id för uppgiftsägande vårdgivare. För mer information av vad som avses med vårdgivare, se [R17].

I första hand HSA-id, i andra hand organisationsnummer.

Regel 1.1"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator ^definition = "Information avseende signering av uppgiften som tillgängliggörs."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt då uppgiften signerades."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs.

I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient ^definition = "Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst).

Om uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient.

Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId ^definition = "Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified ^definition = "Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified ^comment = "TKB-fält: `../../nullified` (`boolean`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason ^definition = "Anger orsak till makulering. Får endast anges i kombination med att nullified = true"
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody ^definition = "Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData om utförda vaccinationer vid vaccinationstillfället."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody ^comment = "TKB-fält: `../vaccinationMedicalRecordBody` (`VaccinationMedicalRecordBodyType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord ^definition = "Annan information än ovan som registreras vid eller relaterat till vaccinationstillfället"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord ^comment = "TKB-fält: `../../registrationRecord` (`RegistrationRecordType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date ^definition = "Datum då nedan vaccination(er) gavs"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date ^comment = "TKB-fält: `../../../date` (`DateType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode ^definition = "Postnummer för patientens senast kända bostadsadress"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode ^comment = "TKB-fält: `../../../patientPostalCode` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote ^definition = "Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda här.

Not: Om endast ostrukturerad vaccinationsinformation finns, kan, detta kontrakt produceras men i så fall inga administrationRecords nedan returneras."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote ^comment = "TKB-fält: `../../../vaccinationUnstructuredNote` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory ^definition = "Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i förekommande fall patientens hälsodeklaration"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory ^comment = "TKB-fält: `../../../riskCategory` (`CVType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect ^definition = "Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej specifik vaccination (i fall som när flera vaccin givits vid samma tillfälle)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect ^comment = "TKB-fält: `../../../patientAdverseEffect` (`CVType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg ^definition = "Information om juridisk vårdgivare; hsaid (om finns) och kontaktuppgifter namn, e-post, tel, adress etc."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg ^comment = "TKB-fält: `../../../careGiverOrg` (`OrgUnitType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact ^definition = "Kontaktperson hos juridiskt ansvarig vårdgivare"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact ^comment = "TKB-fält: `../../../careGiverContact` (`ActorType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName ^definition = "Klartextnamn på källsystemet.

Detta fält fylls med namnet på den organisationen som ansvarar för vaccinationen, till exempel privat företag eller vårdgivarens huvudman."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName ^comment = "TKB-fält: `../../../sourceSystemName` (`String`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName ^definition = "Klartextnamn på källsystemets produktnamn"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName ^comment = "TKB-fält: `../../../sourceSystemProductName` (`String`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion ^definition = "Klartextnamn på källsystemets produktversion"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion ^comment = "TKB-fält: `../../../sourceSystemProductVersion` (`String`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact ^definition = "Kontaktuppgifter till källsystemsansvarig"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact ^comment = "TKB-fält: `../../../sourceSystemContact` (`ActorType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId ^definition = "Utförande vårdenhetens registreringsId hos SMI"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId ^comment = "TKB-fält: `../../../careUnitSmiId` (`String`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord ^definition = "Information om utförd(a) vaccination(er) vid tillfället. Ordinerad men av någon anledning ej given vaccination kan inkluderas."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord ^comment = "TKB-fält: `../../administrationRecord` (`AdministrationRecordType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName ^definition = "Information om vaccinationsprogram om vaccinationen är del av sådant program. Tillåter kodat värde liksom endast namn genom bruk av originalText i CVType."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName ^comment = "TKB-fält: `../../../vaccinationProgramName` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg ^definition = "Information om var vaccinationen ordinerats (eller i fallet med förskrivna vaccinationsläkemedel, förskrivits)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg ^comment = "TKB-fält: `../../../prescriberOrg` (`OrgUnitType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson ^definition = "Information om vem som ordinerat/förskrivit vaccinationen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson ^comment = "TKB-fält: `../../../prescriberPerson` (`ActorType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg ^definition = "Information om vårdenhet som utfört vaccinationen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg ^comment = "TKB-fält: `../../../performerOrg` (`OrgUnitType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer ^definition = "Information om vem som utfört (administrerat) vaccineringen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer ^comment = "TKB-fält: `../../../performer` (`ActorType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite ^definition = "Information om var på kroppen vaccinet givits."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite ^comment = "TKB-fält: `../../../anatomicalSite` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route ^definition = "Information om hur vaccinet givits. Ibland kallat ”administrationsväg”"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route ^comment = "TKB-fält: `../../../route` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose ^definition = "Mängd vaccin som givits"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose ^comment = "TKB-fält: `../../../dose` (`DoseType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity ^definition = "Mängd preparat som givits dvs 1 ml etc.

Ska anges om möjligt i denna strukturerade form med värde(float) samt enhet. Annars i nästa fält om det endast finns angivet som text."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity ^comment = "TKB-fält: `../../../../quantity` (`PQType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName ^definition = "Fritextbeskrivning av mängd vaccin som givits. T ex ”1 ml”

Anges även om quantity angivits ovan."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete ^definition = "True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd. Annars false (dvs för de fall som ytterligare delvaccinationer ska ges innan full dos är uppnådd)"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete ^comment = "TKB-fält: `../../../isDoseComplete` (`boolean`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber ^definition = "Anger vilken dos i ordningen som administrerats då vaccineringen är en del av flera vaccinationer som ska utföras för att räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos.

Exempel: om tre doser krävs för att vaccinationen ska uppnå full dos och patient erhåller den andra i ordningen anges detta värde som 2."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber ^comment = "TKB-fält: `../../../doseOrdinalNumber` (`integer`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses ^definition = "Anger antalet delvaccinationer som ska utföras för att vaccinationen ska räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos

Exempel: om tre doser krävs för att vaccinationen ska uppnå full dos anges detta värde som 3."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses ^comment = "TKB-fält: `../../../numberOfPrescribedDoses` (`integer`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription ^definition = "Fritextinformation som anger källa för vaccinering som efterregistrerats. T ex namn på annan vårdenhet, intyg, land el. dyl."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription ^comment = "TKB-fält: `../../../sourceDescription` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription ^definition = "Fritextinformation. T.ex. instruktioner som noterats i ordinationen av vaccineringen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription ^comment = "TKB-fält: `../../../commentPrescription` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration ^definition = "Fritextinformation. Generella kommentarer gjorde vid vaccineringen av den som utfört den"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration ^comment = "TKB-fält: `../../../commentAdministration` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect ^definition = "Information om patienten erfarit någon eller några reaktioner hänför bara till den specifika administreringen"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect ^comment = "TKB-fält: `../../../patientAdverseEffect` (`CVType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine ^definition = "Information om givet vaccin. Beskriver vaccintyp i praktiken genom att beskriva vilka sjukdomar som vaccinet skyddar emot (exempel på koder: Hep A, MPR och säsongsinfluensa)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine ^comment = "TKB-fält: `../../../typeOfVaccine` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName ^definition = "Information om givet vaccins produktnamn. I code ska anges företrädelsevis NPL-id (codeSystem =1.2.752.129.2.1.5.1, codeSystemName = ”NPL”). Om standardkodverk ej används anges endast namnet på vaccinet i attributet originalText."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName ^comment = "TKB-fält: `../../../vaccineName` (`CVType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId ^definition = "Identifiering av batchnummer för vaccinets tillverkning"
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId ^comment = "TKB-fält: `../../../vaccineBatchId` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer ^definition = "Namn på tillverkaren av vaccinet."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer ^comment = "TKB-fält: `../../../vaccineManufacturer` (`string`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease ^definition = "Information om den/de sjukdomar vaccinet skyddar emot."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease ^comment = "TKB-fält: `../../../vaccineTargetDisease` (`CVType`, kardinalitet 0..*)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference ^definition = "Unika referensen till källsystemets vaccinationsinformation."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference ^comment = "TKB-fält: `../../../vaccinationUniqueReference` (`IIType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation ^definition = "Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation ^comment = "TKB-fält: `../../additionalPatientInformation` (`AdditionalPatientInformationType`, kardinalitet 0..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth ^definition = "Patientens födelsedatum."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth ^comment = "TKB-fält: `../../../dateOfBirth` (`DateType`, kardinalitet 1..1)."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender ^definition = "Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas."
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender ^comment = "TKB-fält: `../../../gender` (`CVType`, kardinalitet 0..1)."
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
