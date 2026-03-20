## Tjänstekontrakt

### GetVaccinationHistory
Tjänsten returnerar ordinerade och/eller administrerade vaccinationer för en patient.

#### Version
2.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_8.pdf” [R5]

#### Särskilda förutsättningar beroende på typ av konsument med hänsyn till historisk information (i äldre system)
Relaterat till notering ovan i avsnittet ”Informationssäkerhet och juridik” är att vid konsumtion av tjänstekontraktet från en patient-/invånartjänst så kan fält som är valfria i kontraktet utelämnas i svaret i de fall som information saknas i producerande system.
Observera att utelämnat HSA-id för Vårdgivare eller Vårdenhet begränsar verksamhetens möjlighet att tillgängliggöra information för egna och andras medarbetare genom olika etjänster riktade till professionen.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i kapitel 7.1.5 Övriga regler.

| Namn | Typ | Kommentar | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| careUnitHSAid | HSAIdType | Begränsar sökningen till angivna informationsägande vårdenheter. Anges med HSA-id. Motsvarar careUnitHSAid i HealthCareProfessionalType i svaret. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). / extension sätts till HSA-id för informationsägande vårdenhet. | 0..* |
| patientId | PersonIdType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplade till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / type sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts type till aktuell OID. | 1..1 |
| timePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där tidpunkterna documentTime, authorTime, signatureTime eller registrationrecord.date i svaret ligger inom sökintervallets start- och slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse med tidpunkter ska hela det dygn som anges i slutdatum betraktas som en del av sökintervallet. | 0..1 |
| sourceSystemHSAid | HSAIdType | Begränsar sökningen till journalposter som är skapade i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på LRID. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..* |
| Svar | Svar | Svar | Svar |
| vaccinationMedicalRecord | VaccinationMedicalRecordType | En strukturerad vaccinationsjournal. | 0..* |
| ../vaccinationMedicalRecordHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet. | 1..1 |
| ../../documentId | string | Identifierare för uppgift i patientjournal. / Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | Det källsystem som uppgiften lagras i. / Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som tillgängliggörs. | 0..1 |
| ../../documentTime | TimeStampType | Händelsetidpunkt. Tidsangivelse för den vaccinationstidpunkt dokumentet gäller. | 0..1 |
| ../../patientId | PersonIdType | Personidentifierare för patienten. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts type till aktuell OID. | 1..1 |
| ../../accountableHealthCareProfessional | HealthCareProfessionalType | Information avseende dokumentation av uppgiften som tillgängliggörs. / Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då uppgiften dokumenterades eller senast uppdaterades. / I de fall då uppgiften ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där uppgiften ursprungligen dokumenterades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs. / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. / Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4) [R6]. / Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText. | 0..1 |
| ../../../../code | string | Befattningskod. / Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. / Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges. | 0..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | E-post till organisationsenhet | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenheten där uppgiften är dokumenterad. För mer information av vad som avses med vårdenhet, se [R17]. / I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). / Regel 1.1 | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | Id för uppgiftsägande vårdgivare. För mer information av vad som avses med vårdgivare, se [R17]. / I första hand HSA-id, i andra hand organisationsnummer. / Regel 1.1 | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information avseende signering av uppgiften som tillgängliggörs. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt då uppgiften signerades. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs. / I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges. | 0..1 |
| ../../../legalAuthenticatorName | string | Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn. | 0..1 |
| ../../approvedForPatient | boolean | Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst). / Om uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient. / Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex. | 1..1 |
| ../../careContactId | string | Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 1..1 |
| ../../nullifiedReason | string | Anger orsak till makulering. Får endast anges i kombination med att nullified = true | 0..1 |
| ../vaccinationMedicalRecordBody | VaccinationMedicalRecordBodyType | Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData om utförda vaccinationer vid vaccinationstillfället. | 1..1 |
| ../../registrationRecord | RegistrationRecordType | Annan information än ovan som registreras vid eller relaterat till vaccinationstillfället | 1..1 |
| ../../../date | DateType | Datum då nedan vaccination(er) gavs | 1..1 |
| ../../../patientPostalCode | string | Postnummer för patientens senast kända bostadsadress | 0..1 |
| ../../../vaccinationUnstructuredNote | string | Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda här. / Not: Om endast ostrukturerad vaccinationsinformation finns, kan, detta kontrakt produceras men i så fall inga administrationRecords nedan returneras. | 0..1 |
| ../../../riskCategory | CVType | Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i förekommande fall patientens hälsodeklaration | 0..* |
| ../../../patientAdverseEffect | CVType | Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej specifik vaccination (i fall som när flera vaccin givits vid samma tillfälle) | 0..* |
| ../../../careGiverOrg | OrgUnitType | Information om juridisk vårdgivare; hsaid (om finns) och kontaktuppgifter namn, e-post, tel, adress etc. | 1..1 |
| ../../../careGiverContact | ActorType | Kontaktperson hos juridiskt ansvarig vårdgivare | 0..1 |
| ../../../sourceSystemName | String | Klartextnamn på källsystemet. / Detta fält fylls med namnet på den organisationen som ansvarar för vaccinationen, till exempel privat företag eller vårdgivarens huvudman. | 1..1 |
| ../../../sourceSystemProductName | String | Klartextnamn på källsystemets produktnamn | 0..1 |
| ../../../sourceSystemProductVersion | String | Klartextnamn på källsystemets produktversion | 0..1 |
| ../../../sourceSystemContact | ActorType | Kontaktuppgifter till källsystemsansvarig | 1..1 |
| ../../../careUnitSmiId | String | Utförande vårdenhetens registreringsId hos SMI | 0..1 |
| ../../administrationRecord | AdministrationRecordType | Information om utförd(a) vaccination(er) vid tillfället. Ordinerad men av någon anledning ej given vaccination kan inkluderas. | 0..* |
| ../../../vaccinationProgramName | CVType | Information om vaccinationsprogram om vaccinationen är del av sådant program. Tillåter kodat värde liksom endast namn genom bruk av originalText i CVType. | 0..1 |
| ../../../prescriberOrg | OrgUnitType | Information om var vaccinationen ordinerats (eller i fallet med förskrivna vaccinationsläkemedel, förskrivits) | 0..1 |
| ../../../prescriberPerson | ActorType | Information om vem som ordinerat/förskrivit vaccinationen | 0..1 |
| ../../../performerOrg | OrgUnitType | Information om vårdenhet som utfört vaccinationen | 0..1 |
| ../../../performer | ActorType | Information om vem som utfört (administrerat) vaccineringen | 0..1 |
| ../../../anatomicalSite | CVType | Information om var på kroppen vaccinet givits. | 0..1 |
| ../../../route | CVType | Information om hur vaccinet givits. Ibland kallat ”administrationsväg” | 0..1 |
| ../../../dose | DoseType | Mängd vaccin som givits | 0..1 |
| ../../../../quantity | PQType | Mängd preparat som givits dvs 1 ml etc. / Ska anges om möjligt i denna strukturerade form med värde(float) samt enhet. Annars i nästa fält om det endast finns angivet som text. | 0..1 |
| ../../../../displayName | string | Fritextbeskrivning av mängd vaccin som givits. T ex ”1 ml” / Anges även om quantity angivits ovan. | 1..1 |
| ../../../isDoseComplete | boolean | True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd. Annars false (dvs för de fall som ytterligare delvaccinationer ska ges innan full dos är uppnådd) | 0..1 |
| ../../../doseOrdinalNumber | integer | Anger vilken dos i ordningen som administrerats då vaccineringen är en del av flera vaccinationer som ska utföras för att räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos. / Exempel: om tre doser krävs för att vaccinationen ska uppnå full dos och patient erhåller den andra i ordningen anges detta värde som 2. | 0..1 |
| ../../../numberOfPrescribedDoses | integer | Anger antalet delvaccinationer som ska utföras för att vaccinationen ska räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos / Exempel: om tre doser krävs för att vaccinationen ska uppnå full dos anges detta värde som 3. | 0..1 |
| ../../../sourceDescription | string | Fritextinformation som anger källa för vaccinering som efterregistrerats. T ex namn på annan vårdenhet, intyg, land el. dyl. | 0..1 |
| ../../../commentPrescription | string | Fritextinformation. T.ex. instruktioner som noterats i ordinationen av vaccineringen | 0..1 |
| ../../../commentAdministration | string | Fritextinformation. Generella kommentarer gjorde vid vaccineringen av den som utfört den | 0..1 |
| ../../../patientAdverseEffect | CVType | Information om patienten erfarit någon eller några reaktioner hänför bara till den specifika administreringen | 0..* |
| ../../../typeOfVaccine | CVType | Information om givet vaccin. Beskriver vaccintyp i praktiken genom att beskriva vilka sjukdomar som vaccinet skyddar emot (exempel på koder: Hep A, MPR och säsongsinfluensa). | 0..1 |
| ../../../vaccineName | CVType | Information om givet vaccins produktnamn. I code ska anges företrädelsevis NPL-id (codeSystem =1.2.752.129.2.1.5.1, codeSystemName = ”NPL”). Om standardkodverk ej används anges endast namnet på vaccinet i attributet originalText. | 0..1 |
| ../../../vaccineBatchId | string | Identifiering av batchnummer för vaccinets tillverkning | 0..1 |
| ../../../vaccineManufacturer | string | Namn på tillverkaren av vaccinet. | 0..1 |
| ../../../vaccineTargetDisease | CVType | Information om den/de sjukdomar vaccinet skyddar emot. | 0..* |
| ../../../vaccinationUniqueReference | IIType | Unika referensen till källsystemets vaccinationsinformation. | 0..1 |
| ../../../../root | string | Om identiteten i källsystemet är globalt unik kan den anges här (t.ex. om den är en UUID). Annars anges källsystemets HSA-id här och källsystemets lokala ID för vaccinationen anges i ”extention”. | 1..1 |
| ../../../../extension | string | Används vid behov. Se beskrivning för ”root”. | 0..1 |
| ../../additionalPatientInformation | AdditionalPatientInformationType | Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning. | 0..1 |
| ../../../dateOfBirth | DateType | Patientens födelsedatum. | 1..1 |
| ../../../gender | CVType | Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas. | 0..1 |
| ../../../../code | string | Kod som anger kön. | 1..1 |
| ../../../../codeSystem | string | OID för kodsystem för kön. | 1..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för kön. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för kön. | 0..1 |
| ../../../../displayName | string | Könet i klartext. | 1..1 |
| ../../../../originalText | string | originalText får ej användas för kön. | 0..0 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. I kolumnen ”Namn i schematron” finns namnet på motsvarande regel i schematron (constraints).

| ID | Namn i schematron | Kontext | Beskrivning |
| :--- | :--- | :--- | :--- |
| Svar | Svar | Svar | Svar |
| 1.1 | - | vaccinationMedicalRecordHeader / accountableHealthcareProfessional/ healthcareProfessionalCareUnitHSAId / vaccinationMedicalRecordHeader / accountableHealthcareProfessional/ healthcareProfessionalcareGiverHSAId | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring. |
| 1.2 | Verify unique id:s | documentId / vaccinationUniqueReference | ID:t måste vara unikt inom källsystemet. |
|  |  |  |  |
| 1.3 | vaccinationMedicalRecordHeader | nullifiedReason | nullifiedReason får inte anges om nullified = false |
| Allmänna regler | Allmänna regler | Allmänna regler | Allmänna regler |
| 2.1 | pattern.CvType | healthcareProfessionalRoleCode / riskCategory / patientAdverseEffect / vaccinationProgramName / anatomicalSite / route / patientAdverseEffect / typeOfVaccine / vaccineName / vaccineTargetDisease / gender | code ELLER originaltext SKALL anges / Om code anges SKA codeSystem OCH displayName anges / Om codeSystem anges SKA code OCH displayName anges / codeSystem SKA vara en OID / Om displayName anges SKA code OCH codeSystem anges / Om originalText anges SKA INTE code, codeSystem eller displayName anges. |
| 2.2 | Verify non-empty elements | Alla attribut i svaret. | Tomma värden får inte anges. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.

### GetMedicationHistory
Tjänsten returnerar ordinerade, förskrivna och/eller administrerade läkemedel för en patient.
Då tjänstekontraktet är tämligen omfattande rekommenderas den som har tänkt att implementera kontraktet, antingen som producent eller konsument, starkt att ta en titt på referens [R13].
I detta tjänstekontrakt hanteras endast en patient per gång det innebär att vi hanterar aktiviteter och därmed inte har behov av aktivitetsgrupper.
I den nya sambandsklassen hanteras endas aktiviteter. Idag finns inga behov av att hantera observationer i sambandsklassen.

#### Version
2.1

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_8.pdf” [R5]

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i kapitel 7.2.4 Övriga regler.

| Namn | Typ | Kommentar | Kardi- / nalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| careUnitHSAId | HSAIdType | Begränsar sökningen till angivna informationsägande vårdenheter. Anges med HSA-id. Motsvarar careUnitHSAId i healthcareProfessionalType i svaret. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1). / extension sätts till HSA-id för informationsägande vårdenhet. | 0..* |
| careGiverHSAId | HSAIdType | Begränsar sökningen till angivna informationsägande vårdgivare. Anges I första hand HSAid, i andra hand organisationsnummer. Motsvarar careGiverHSAId i healthcareProfessionalType i svaret. / Om HSAid används: / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till HSA-id / Om organisationsnummer används: / root sätts till OID för organisationsnummer (1.2.752.29.4.3) / extension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. | 0..* |
| patientId | PersonIdType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / type sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts type till aktuell OID. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av ordinationstidpunkt (medicationMedicalRecordBody/medicationPrescription/prescriber/authorTime) och utsättningstidpunkt (medicationMedicalRecordBody/endOfTreatment) i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / I de fall ordinationstidpunkt inte är angivet ersätts denna tidpunkt med insättningstidpunkt (medicationMedicalRecordBody/startOfTreatment). Om även insättningstidpunkt saknas ersätts denna tidpunkt med registreringstidpunkt (medicationMedicalRecordHeader/accountableHealthcareProfessional/authorTime). / I de fall utsättningstidpunkt inte finns angivet är det bildade intervallet öppet från ordinationstidpunkten och framåt i tiden. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till journalposter som är skapade i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på LRID. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den läkemedelsinformation som föranletts av den vård- och omsorgskontakt som anges. Identiteten är unik inom källsystemet. Alla typer av ordinationer (insättningar, ändringar och utsättningar) som gjorts vid vård-och omsorgskontakten omfattas här. | 0..* |
| prescriptionChainId | IIType | Ordinationskedje-id. / Används för att endast ge poster avseende en viss ordinationskedja. Om producenten saknar stöd för kedjor, så returneras alla poster med angiven status (och som möter övriga sökvillkor) | 0..1 |
| prescriptionStatus | PrescriptionStatusEnum | Begränsar sökningen till endast de ordinationer som är aktiva eller inaktiva, om inget anges ska alla ordinationer returneras, om den är satt till Active ska enbart den ”aktuella läkemedelslistan” returneras. | 0..1 |

| Namn | Typ | Kommentar | Kardi- / nalitet |
| :--- | :--- | :--- | :--- |
| Svar | Svar | Svar | Svar |
| medicationMedicalRecord | MedicationMedicalRecordType | Patientens läkemedelshistorik | 0..* |
| ../medicationMedicalRecordHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet, inklusive information om vid vilken vårdkontakt som ordinationen skedde. / Notera: accountableHealthCareProfessional anges till den som registrerat informationen. Ordinatör, förskrivare och administrerande vårdpersonal anges i Bodyn. | 1..1 |
| ../../documentId | string | Identifierare för uppgift i patientjournal. / (**vanligtvis ordinations-id eller ordinations-id kompletterad med löpnummer i de fall där källsystemet har 1..N st förskrivningar knutna till en enskild ordination). / Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | Det källsystem som uppgiften lagras i. Sätts till källsystemets HSA-id. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som tillgängliggörs. | 0..1 |
| ../../documentTime |  | Ska ej anges | 0..0 |
| ../../patientId | PersonIdType | Personidentifierare för patienten. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts type till aktuell OID. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information avseende dokumentation av uppgiften som tillgängliggörs. / Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då uppgiften dokumenterades eller senast uppdaterades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. / Anges med HSAs kodverk Befattning  (OID: 1.2.752.129.2.2.1.4) [R6]. / Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText. | 0..1 |
| ../../../../code | string | Befattningskod. / Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. / Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. / I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../orgUnitName | string | Namnet på organisationsenhet. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | E-post till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress till organisationsenhet. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalcareUnitHSAId | HSAIdType | HSA-id för vårdenheten där uppgiften är dokumenterad. För mer information av vad som avses med vårdenhet, se [R17]. / I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). / Regel 1.1 | 0..1 |
| ../../../healthcareProfessionalcareGiverHSAId | HSAIdType | Id för uppgiftsägande vårdgivare. För mer information av vad som avses med vårdgivare, se [R17]. / I första hand HSA-id, i andra hand organisationsnummer. / Regel 1.1 | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information avseende signering av uppgiften som tillgängliggörs. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt då uppgiften signerades. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs. | 0..1 |
| ../../../legalAuthenticatorName | string | Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn. | 0..1 |
| ../../../legalAuthenticatorRoleCode | CVType | legalAuthenticatorRoleCode är en del av den gemensamma datatypen LegalAuthenticatorType men används inte i denna tillämpning. | 0..0 |
| ../../approvedForPatient | boolean | Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst). / Om uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient. / Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall ska källsystemet uppdatera engagemangsindex. | 1..1 |
| ../../careContactId | string | Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified |  | Ska ej anges. | 0..0 |
| ../../nullifiedReason |  | Ska ej anges. | 0..0 |
| ../medicationMedicalRecordBody | MedicationMedicalRecordBodyType |  | 1..1 |
| ../../medicationPrescription | MedicationPrescriptionType | LÄKEMEDELSORDINATION. / Ordination som avser läkemedelsbehandling. De individuella läkemedelsordinationerna kan indelas i ordination som avser utsättning, förändrande läkemedelsordination, ordination som avser insättning och bekräftande läkemedelsordination. I slutenvård görs endast ordination, men i öppenvård krävs vanligtvis även en förskrivning (se nedan). | 1..1 |
| ../../../prescriptionId | IIType | Ordinations-id. / Unik identifierare för aktuell läkemedelsordination. Fältet extension motsvarar värdet documentId i headern, om inte ordinations-id är en UUID, då root-elementet istället motsvarar documentId i headern. | 1..1 |
| ../../../../root | String | Antingen en UUID som utgör hela ordinations-id, eller en OID som pekar på källsystem. Om ingendera finns används nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | 1..1 |
| ../../../../extension | String | Ordinations-id som är unikt inom källsystemet. Används nationell OID för lokala id:n (se fältet ovan) ska detta värde anges som HSA-id för det system inom vilket ordinations-id är unikt + ”:” +  det lokala id:t. | 0..1 |
| ../../../typeOfPrescription | TypeOfPrescriptionEnum | Ordinationstyp. / Uppgift som anger om aktuell ordination ska räknas som en insättningsordination eller utsättningsordination (utsättningsordination = ordination som beskriver avslut av läkemedelsbehandling). Insättning används när läkemedlet är insatt, dvs. även en ändrad eller förnyad ordination har typen insättning. Kodverk: I, U. | 1..1 |
| ../../../prescriptionStatus | PrescriptionStatusEnum | Ordinationsstatus. / Anger ordinationens aktuella status [Active, Inactive] / En aktiv ordination är den sista i sin ordinationskedja. Alla andra ordinationer i samma ordinationskedja är inaktiva. | 1..1 |
| ../../../prescriptionNote | String | Notat. / Text som beskriver läkemedelsordinationen som utgör del av Läkemedelsberättelse. Exempel: Text som beskriver varför man satt in eller gjort dosändringar. | 0..1 |
| ../../../principalPrescriptionReason | PrescriptionReasonType | Ordinationshuvudorsak. / Den eller de viktigaste av de ordinationsorsaker som anges, om fler än en. | 0..* |
| ../../../../reason | CVType | Ordinationsorsak. / Skäl till en viss ordination. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO, Nationell källa för ordinationsorsak). Se [R8]. | 1..1 |
| ../../../../../code | string | Kod för ordinationsorsak. | 1..1 |
| ../../../../../codeSystem | string | Kodsystem för ordinationsorsakskod. | 1..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för ordinationsorsakskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för ordinationsorsakskod. | 0..1 |
| ../../../../../displayName | string | Ordinationsorsakskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 1..1 |
| ../../../../../originalText | string | originalText får ej användas för ordinationsorsak. | 0..0 |
| ../../../../otherReason | string | Om koden för ”Annan ordinationsorsak” (SNOMED: 46021000052104) väljs för föregående kod så anges beskrivning här. | 0..1 |
| ../../../additionalPrescriptionReason | PrescriptionReasonType | Övriga ordinationsorsaker. / Anges en övrig ordinationsorsak måste minst en ordinationshuvudorsak vara angiven. | 0..* |
| ../../../../reason | CVType | Ordinationsorsak. / Skäl till en viss ordination. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Se [R8]. | 1..1 |
| ../../../../../code | string | Kod för ordinationsorsak. | 1..1 |
| ../../../../../codeSystem | string | Kodsystem för ordinationsorsakskod. | 1..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för ordinationsorsakskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för ordinationsorsakskod. | 0..1 |
| ../../../../../displayName | string | Ordinationsorsakskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 1..1 |
| ../../../../../originalText | string | originalText får ej användas för ordinationsorsak. | 0..0 |
| ../../../../otherReason | string | Om koden för ”Annan ordinationsorsak” (SNOMED: 46021000052104) väljs för föregående kod så anges beskrivning här. | 0..1 |
| ../../../evaluationTime | TimeStampType | Utvärderingstidpunkt (nästa planerade utvärderingstidpunkt). / Tidpunkt vid vilken behandlingen ska utvärderas. | 0..1 |
| ../../../treatmentPurpose | string | Behandlingsändamål. / Text som beskriver avsikten med läkemedelsbehandlingen för vård- och omsorgstagaren. Exempel: Mot högt blodtryck. | 0..1 |
| ../../../prescriptionChainId | IIType | Ordinationskedje-id. / Lokal identifierare för den ordinationskedja i vilken aktuell ordination ingår. Serie av läkemedelsordinationer med gemensam indikation, gemensam verksam substans och gemensam läkemedelsform | 0..1 |
| ../../../../root | string | Antingen en UUID som utgör hela ordinationskedje-id, eller en OID som pekar på källsystem. Om ingendera finns används nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | 1..1 |
| ../../../../extension | string | Ordinationskedje-id som är unikt inom källsystemet. Används nationell OID för lokala id:n (se fältet ovan) ska detta värde anges som HSA-id för det system inom vilket ordinationskedje-id är unikt + ”:” +  det lokala id:t. | 0..1 |
| ../../../precedingPrescriptionId | IIType | Föregående ordinations-id. / Referens till föregående ordination i ordinationskedja. | 0..1 |
| ../../../../root | string | Antingen en UUID som utgör hela ordinations-id, eller en OID som pekar på källsystem. Om ingendera finns används nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | 1..1 |
| ../../../../extension | string | Ordinations-id som är unikt inom källsystemet. Används nationell OID för lokala id:n (se fältet ovan) ska detta värde anges som HSA-id för det system inom vilket ordinations-id är unikt + ”:” +  det lokala id:t. | 0..1 |
| ../../../succeedingPrescriptionId | IIType | Efterföljande ordinations-id. / Referens till efterföljande ordination i ordinationskedja. | 0..1 |
| ../../../../root | string | Antingen en UUID som utgör hela ordinations-id, eller en OID som pekar på källsystem. Om ingendera finns används nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | 1..1 |
| ../../../../extension | string | Ordinations-id som är unikt inom källsystemet. Används nationell OID för lokala id:n (se fältet ovan) ska detta värde anges som HSA-id för det system inom vilket ordinations-id är unikt + ”:” +  det lokala id:t. | 0..1 |
| ../../../prescriber | HealthcareProfessionalType | Ordinatör. / Icke att beblanda med den person som den som registrerat informationen, och som är den person som återfinns i accountableHealthcareProfessional i medicationMedicalRecordHeader. / Måste anges om selfMedication = false. | 0..1 |
| ../../../../authorTime | TimeStampType | Beslutstidpunkt/ordinationstidpunkt. / Tidpunkt då beslut fattas om läkemedelsbehandling (gäller för insättning, utsättning, makulering etc) / Inte nödvändigtvis samma som behandlingsstart. | 1..1 |
| ../../../../healthcareProfessionalHSAId | HSAIdType | Ordinatörens HSA-id. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på ordinatören. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om ordinatörens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6]. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som ordinatören är uppdragstagare på. | 0..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. / I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../../orgUnitName | string | Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. | 0..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../../orgUnitEmail | string | E-post till organisationsenhet. | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../../healthcareProfessionalcareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalcareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../evaluator | HealthcareProfessionalType | ”Utvärderat av”. / Den hälso- och sjukvårdsperson/-enhet som utvärderat utfallet av ordinationen/förskrivningen. | 0..1 |
| ../../../../authorTime | TimeStampType | Utvärderingstidpunkt (faktisk utvärderingstidpunkt). / Tidpunkt vid vilken ordinationen har utvärderats. | 1..1 |
| ../../../../healthcareProfessionalHSAId | HSAIdType | Utvärderande persons HSA-id. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på utvärderande person. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om utvärderande persons befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6]. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som utvärderande person är uppdragstagare på. | 0..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. / I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../../orgUnitName | string | Namnet på den organisation som utvärderande person är uppdragstagare på. | 0..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../../orgUnitEmail | string | E-post till organisationsenhet. | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress för den organisation som utvärderande person är uppdragstagare på. | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../../healthcareProfessionalcareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalcareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../startOfFirstTreatment | TimeStampType | Första insättningstidpunkt. / Beräknas som insättningstidpunkt för första ordinationen i ordinationskedjan. | 0..1 |
| ../../../startOfTreatment | TimeStampType | Insättningstidpunkt. / Datum då patienten ska börja ta sitt läkemedel/läkemedlet ska administreras för första gången. Vid ordinationstyp ”Insättning” sätts detta till samma som registreringstidpunkt (authorTime i  headern) om inget annat anges här. / Är obligatorisk vid ordinationstyp ”Insättning”. | 0..1 |
| ../../../endOfTreatment | TimeStampType | Utsättningstidpunkt. / Datum då patienten ska upphöra ta sitt läkemedel/då läkemedlet ska sluta administreras. OBS, kan anges både vid ordinationer av typ ”Insättning” och ”Utsättning”. | 0..1 |
| ../../../endOfTreatmentReason | CVType | Utsättningsorsak. / Orsak som ordinatör anger för utsättning. | 0..1 |
| ../../../../code | string | Kod för utsättningsorsak. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för utsättningsorsakskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för utsättningsorsakskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för utsättningsorsakskod. | 0..1 |
| ../../../../displayName | string | Utsättningsorsakskod i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om utsättningsorsak är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i prescriptionStatus anges. | 0..1 |
| ../../../selfMedication | boolean | Egenmedicinering. / Anger om ordinationen är utfärdad av patienten själv | 1..1 |
| ../../../drug | DrugChoiceType | Läkemedelsval. / OBS: Ett och endast ett av följande alternativ: / unstructuredDrugInformation (fritextval/extemporeberedning) / merchandise (handelsvara) / drugArticle (läkemedelsartikel) / drug (läkemedelsprodukt) / generics (generika/utbytesgrupp) | 0..1 |
| ../../../../comment | string | Kommentar om läkemedelsval. / Text som innehåller en kommentar till det ordinerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges. | 0..1 |
| ../../../../unstructuredDrugInformation | UnstructuredDrugInformationType | Fritextval. / Används för extemporeberedning, licensläkemedel etc. | 0..1 |
| ../../../../../unstructuredInformation | string | Fritextbeskrivning. | 1..1 |
| ../../../../merchandise | MerchandiseType | Handelsvara. | 0..1 |
| ../../../../../articleNumber | CVType | Varunummer. / Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1. / Får ej anges för läkemedel. | 1..1 |
| ../../../../../../code | string | Varunummer. | 1..1 |
| ../../../../../../codeSystem | string | Kodsystem för varunummer. | 1..1 |
| ../../../../../../codeSystemName | string | Namn på kodsystem för varunummer. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på kodsystem för varunummer. | 0..1 |
| ../../../../../../displayName | string | Varunummer i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 1..1 |
| ../../../../../../originalText | string | originalText får ej användas för varunummer. | 0..0 |
| ../../../../drugArticle | DrugArticleType | Läkemedelsartikel. | 0..1 |
| ../../../../../nplPackId | CVType | NPL pack-id. / Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2. | 1..1 |
| ../../../../../../code | string | NPL-pack-id. | 1..1 |
| ../../../../../../codeSystem | string | Kodsystem för NPL-pack-id: 1.2.752.129.2.1.5.2. | 1..1 |
| ../../../../../../codeSystemName | string | ”NPL pack”. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på NPL-pack-id-kodsystem. | 0..1 |
| ../../../../../../displayName | string | Artikelnamn (varunamn). / Handelsnamn i SIL. Text som anger namnet på den aktuella läkemedelsartikeln (produktnamn + förpackning). | 1..1 |
| ../../../../../../originalText | string | originalText får ej användas för NPL pack-id. | 0..0 |
| ../../../../drug | DrugType | Läkemedelsprodukt. | 0..1 |
| ../../../../../nplId | CVType | NPL-id. / Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1. / Alla producenter av kontraktet ska skicka code, codeSystem samt displayName. / Antingen nplId eller atcCode måste anges. | 0..1 |
| ../../../../../../code | string | NPL-id. | 1..1 |
| ../../../../../../codeSystem | string | Kodsystem för NPL-id: 1.2.752.129.2.1.5.1. | 1..1 |
| ../../../../../../codeSystemName | string | ”NPL”. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på NPL-id-kodsystem. | 0..1 |
| ../../../../../../displayName | string | Produktnamn. / Handelsnamn i SIL. Text som anger namnet på den aktuella läkemedelsprodukten. | 1..1 |
| ../../../../../../originalText | string | originalText får ej användas för NPL-id. | 0..0 |
| ../../../../../atcCode | CVType | ATC-kod. / atcKod + atcKodBeskrivning i SIL. / Klassificeringskod för läkemedlet på sjuställig nivå. OID: / 1.2.752.129.2.2.3.1.1. / Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/ / I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/ / ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde. / Antingen nplId eller atcCode måste anges. | 0..1 |
| ../../../../../../code | string | ATC-kod. | 1..1 |
| ../../../../../../codeSystem | string | Kodsystem för ATC-kod: 1.2.752.129.2.2.3.1.1. | 1..1 |
| ../../../../../../codeSystemName | string | ”ATC”. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på ATC -kodsystem. | 0..1 |
| ../../../../../../displayName | string | Klartext på kemisk substansnivå (motsvarande sjuställig kod). | 1..1 |
| ../../../../../../originalText | string | originalText får ej användas för ATC-kod. | 0..0 |
| ../../../../../routeOfAdministration | CVType | Administreringssätt. / Hur produkten ska intas/administreras. Kan anges med SNOMED-kod. | 0..1 |
| ../../../../../../code | string | Kod för administreringssätt. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../../codeSystem | string | Kodsystem för administreringssättskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../../codeSystemName | string | Namn på kodsystem för administreringssättskod. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på kodsystem för administreringssättskod. | 0..1 |
| ../../../../../../displayName | string | Administreringssätt i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../../originalText | string | Om administreringssätt är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en administreringssättet anges i originalText. Om originalText anges ska inget annat värde i routeOfAdministration anges. | 0..1 |
| ../../../../../pharmaceuticalForm | string | Läkemedelsform enligt SIL, t.ex Tablett | 0..1 |
| ../../../../../strength | double | Styrka enligt SIL, t.ex 20.0 / I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1. | 0..1 |
| ../../../../../strengthUnit | string | Enhet på styrka enligt SIL, t.ex mg. / I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg” | 0..1 |
| ../../../../generics | GenericsType | Generiskt läkemedelsval. | 0..1 |
| ../../../../../substance | string | Substansgrupp. / Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination. | 0..1 |
| ../../../../../strength | PQType | Styrka. / Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination. | 0..1 |
| ../../../../../../value | double | Värde för styrka. / I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1. | 1..1 |
| ../../../../../../unit | string | Enhet för styrka. Anges enligt UCUM [R3]. / I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck, styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg” | 1..1 |
| ../../../../../form | string | Läkemedelsform. / Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination | 0..1 |
| ../../../../dosage | DosageType | Dosering. / Socialstyrelsens termbank: Terminologirådet; uppgift om mängd och periodicitet. / setDosage (fastdosering), maxiumumDosage (maxdosering) och conditionalDosage (villkorsdosering) anger samtliga mängd och periodicitet under en avgränsad tid, men med olika syfte. Normalt består en dosering av ett av dessa val men den kan även bestå av flera stycken, t.ex. vid upp- och nedtrappning av läkemedel. Dessa följer då varandra i tiden och utgör tillsammans den kompletta doseringen. De tre angivna attributen kan alltså, men behöver inte, förekomma samtidigt. Däremot måste minst ett av attributen fast dosering eller villkorsdosering alltid anges. / Anges ej vid ordinationstyp Utsättning. | 0..* |
| ../../../../../lengthOfTreatment | LengthOfTreatmentType | Behandlingstid. | 0..1 |
| ../../../../../../treatmentInterval | PQIntervalType | Behandlingstid. / Tidsintervall under vilket läkemedlet ska användas enligt ordination. Exempel: 5-6 veckor. | 1..1 |
| ../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../isMaximumTreatmentTime | boolean | Logiskt villkor som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas. / Sant = Behandlingstiden är en maxtid / Falskt = Behandlingstiden är inte en maxtid. | 1..1 |
| ../../../../../dosageInstruction | string | Doseringsanvisning. / Källa: Socialstyrelsens termbank: Terminologirådet; beskrivning av dosering, användning och ändamål riktad till patient. / Text som beskriver doseringen. | 1..1 |
| ../../../../../unitDose | CVType | Doseringsenhet. / Kod som anger den enhet som doseringen avser. / Exempel: tablett, ml, droppe / I dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod. / Via SIL kan doseringsenhet som text erhållas för vissa läkemedel. | 0..1 |
| ../../../../../../code | string | Kod för doseringsenhet. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../../codeSystem | string | Kodsystem för doseringsenhetskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../../codeSystemName | string | Namn på kodsystem för doseringsenhetskod. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på kodsystem för doseringsenhetskod. | 0..1 |
| ../../../../../../displayName | string | Doseringsenhet i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../../originalText | string | Om doseringsenhet är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en doseringsenheten anges i originalText. Om originalText anges ska inget annat värde i unitDose anges. | 0..1 |
| ../../../../../shortNotation | string | Kortnotation. / Text som ger en kort beskrivning av doseringen. / Exempel: 1x2 | 0..1 |
| ../../../../../setDosage | SetDosageType | Fastdosering. / Dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger / dagligen. / Fastdosering kan utgöra Frekvensdosering, Perioddosering, Tillfällesdosering, Rampdosering, Engångsdosering och / Fritextdosering. Dessa alla har det gemensamt att de anger mängd och periodicitet, men på lite olika sätt. | 0..1 |
| ../../../../../maximumDosage | MaximumDosageTyp | Maxdosering. / Dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka | 0..1 |
| ../../../../../conditionalDosage | ConditionalDosageType | Villkorsdosering. / Ordinerad mängd och periodicitet som gäller / om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten | 0..1 |
| ../../../../../../conditionDescription / [1.2] | string | Villkorstext. / Text som anger villkor kopplat till en villkorsdosering, t.ex. "vid behov". / Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta. | 0..1 |
| ../../../../../../frequencyDosage | FrequencyDosageType | Frekvensdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen. | 0..1 |
| ../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../frequency | PQType | Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag). | 1..1 |
| ../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../periodDosage | PeriodDosageType | Perioddosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering. | 0..1 |
| ../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../period | PQType | Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim). | 1..1 |
| ../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../occasionDose | OccasionDosageType | Tillfällesdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett eller flera enskilda Doseringstillfällen som är knutna till tidpunkter eller händelser inom en viss period, vanligtvis ett dygn. | 0..1 |
| ../../../../../../../period | PQType | Periodtid för intagen i dagar. Vid daglig dosering är periodlängd = 1 dag, vid intag varannan dag är periodlängd = 2 dagar osv. Värde är >0 och <= 28. | 1..1 |
| ../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../administration | AdministrationOccurrenceType | Det eller de doseringstillfällen som anger mängd och tidpunkt inom perioden. | 1..* |
| ../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../time | string | Den tidpunkt eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Exempelvis ”Klockan 19:30” eller ”innan lunch”. | 0..1 |
| ../../../../../../../../dayOfPeriod | int | Dag i perioden när intag ska ske. Tillåtna värden 1-14. | 1..1 |
| ../../../../../../rampedDosage | RampedDosageType | Rampdosering. / Innehåller uppgifter om en successiv ökning eller minskning av läkemedelsdosen under en angiven tid. Detta innebär i praktiken att en trappstegsfunktion skapas i den slutliga doseringsanvisningen. | 0..1 |
| ../../../../../../../doseStep | PQType | Den mängd som dosen ska ökas eller minskas med vid varje tidssteg (vid varje ”trappsteg”). | 1..1 |
| ../../../../../../../../value / [1.2] | double | Värdet. / Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta. | 0..1 |
| ../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../timeStep | PQType | Den tid som ska förflyta mellan varje ändring av dosen (längden på ”trappsteget”). | 1..1 |
| ../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../rampStart | RampEndpointType | Den dosering som gäller vid doseringsstegets start. | 1..1 |
| ../../../../../../../../frequencyDosage | FrequencyDosageType | Frekvensdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen. | 0..1 |
| ../../../../../../../../../dose | PQIntervalType | den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../frequency | PQType | Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag). | 1..1 |
| ../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../periodDosage | PeriodDosageType | Perioddosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering. | 0..1 |
| ../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../period | PQType | Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim). | 1..1 |
| ../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../occasionDose | OccasionDosageType | Tillfällesdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett eller flera enskilda Doseringstillfällen som är knutna till tidpunkter eller händelser inom en viss period, vanligtvis ett dygn. | 0..1 |
| ../../../../../../../../../period | PQType | Periodtid för intagen i dagar. Vid daglig dosering är periodlängd = 1 dag, vid intag varannan dag är periodlängd = 2 dagar osv. Värde är >0 och <= 28. | 1..1 |
| ../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../administration | AdministrationOccurrenceType | Det eller de doseringstillfällen som anger mängd och tidpunkt inom perioden. | 1..* |
| ../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../time | string | Den tidpunkt eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Exempelvis ”Klockan 19:30” eller ”innan lunch”. | 0..1 |
| ../../../../../../../../../../dayOfPeriod | int | Dag i perioden när intag ska ske. Tillåtna värden 1-14. | 1..1 |
| ../../../../../../../../rampedDosage |  | Ska ej anges. | 0..0 |
| ../../../../../../../../singleDose | SingleDoseType | Engångsdosering. / Beskriver att intag eller applicering ska ske vid ett enda tillfälle. | 0..1 |
| ../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../time | TimeStampType | Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående". | 0..1 |
| ../../../../../../../../unstructuredDosageInformation | UnstructuredDosageInformationType | Fritextdosering / Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna | 0..1 |
| ../../../../../../../../../text | string | Dosering angiven i klartext | 1..1 |
| ../../../../../../../rampEnd | RampEndpointType | Den dosering som gäller vid doseringsstegets slut. | 1..1 |
| ../../../../../../../../frequencyDosage | FrequencyDosageType | Frekvensdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen. | 0..1 |
| ../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../frequency | PQType | Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag). | 1..1 |
| ../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../periodDosage | PeriodDosageType | Perioddosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering. | 0..1 |
| ../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../period | PQType | Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim). | 1..1 |
| ../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../occasionDose | OccasionDosageType | Tillfällesdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett eller flera enskilda Doseringstillfällen som är knutna till tidpunkter eller händelser inom en viss period, vanligtvis ett dygn. | 0..1 |
| ../../../../../../../../../period | PQType | Periodtid för intagen i dagar. Vid daglig dosering är periodlängd = 1 dag, vid intag varannan dag är periodlängd = 2 dagar osv. Värde är >0 och <= 28. | 1..1 |
| ../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../administration | AdministrationOccurrenceType | Det eller de doseringstillfällen som anger mängd och tidpunkt inom perioden. | 1..* |
| ../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../time | string | Den tidpunkt eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Exempelvis ”Klockan 19:30” eller ”innan lunch”. | 0..1 |
| ../../../../../../../../../../dayOfPeriod | int | Dag i perioden när intag ska ske. Tillåtna värden 1-14. | 1..1 |
| ../../../../../../../../rampedDosage |  | Ska ej anges. | 0..0 |
| ../../../../../../../../singleDose | SingleDoseType | Engångsdosering. / Beskriver att intag eller applicering ska ske vid ett enda tillfälle. | 0..1 |
| ../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../time | TimeStampType | Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående". | 0..1 |
| ../../../../../../../../unstructuredDosageInformation | UnstructuredDosageInformationType | Fritextdosering / Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna | 0..1 |
| ../../../../../../../../../text | string | Dosering angiven i klartext | 1..1 |
| ../../../../../../singleDose | SingleDoseType | Engångsdosering. / Beskriver att intag eller applicering ska ske vid ett enda tillfälle. | 0..1 |
| ../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../time | TimeStampType | Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående". | 0..1 |
| ../../../../../../unstructuredDosageInformation | UnstructuredDosageInformationType | Fritextdosering / Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna | 0..1 |
| ../../../../../../../text | string | Dosering angiven i klartext | 1..1 |
| ../../../dispensationAuthorization | DispensationAuthorizationType | Förskrivning. / Källa: Socialstyrelsens termbank, Terminologirådet: recept, rekvisition, livsmedelsanvisning, hjälpmedelskort eller dosrecept. / En förskrivning föregås alltid av en ordination. Varje förskrivning (förutom den första) är per definition ett nytt beslut, och därmed en ny ordination. I slutenvård görs endast ordination, men i öppenvård krävs även en förskrivning. / Utelämnas alltid om ordinationstypen är Utsättning. | 0..1 |
| ../../../../dispensationAuthorizationId | IIType | Förskrivnings-id. / Unik identifierare för aktuell förskrivning | 1..1 |
| ../../../../../root | string | Antingen en UUID som utgör hela förskrivnings-id, eller en OID som pekar på källsystem. Om ingendera finns används nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | 1..1 |
| ../../../../../extension | string | Förskrivnings-id som är unikt inom källsystemet. Används nationell OID för lokala id:n (se fältet ovan) ska detta värde anges som HSA-id för det system inom vilket förskrivnings-id är unikt + ”:” +  det lokala id:t. | 0..1 |
| ../../../../validUntil | DateType | Sista giltighetsdag. / Expeditionsunderlagets sista giltighetsdag. | 0..1 |
| ../../../../receivingPharmacy | IIType | Mottagande apotek. / Apoteks-id (GLN eller EAN) vid direktadressering av expedieringsunderlag. | 0..1 |
| ../../../../../root | string | OID för GLN eller EAN. | 1..1 |
| ../../../../../extension | string | Apoteks-id som är unikt inom kodsystemet. | 1..1 |
| ../../../../minimumDispensationInterval | PQType | Utlämningsintervall. / Minsta tidsintervall, i dagar, som ska förflyta mellan två utlämningar. Minsta värde: 1 dag / Största värde: 12 månader. | 0..1 |
| ../../../../../value | double | Utlämningsintervall värde. | 1..1 |
| ../../../../../unit | string | Utlämningsintervall enhet. / Enhet för det utlämningsintervall. Kan anges i dagar, veckor eller månader. | 1..1 |
| ../../../../totalAmount | double | Totalmängd. / Den totala mängd (i förpackningsenheter) av ordinerat läkemedel som får lämnas ut enligt denna förskrivning oavsett om det sker vid ett eller flera tillfällen. Om totalAmount anges måste också packageUnit anges. | 0..1 |
| ../../../../packageUnit | string | Förpackningsenhet. / Text som anger den enhet som används för att uttrycka mängd i de förpackningar som säljs. Exempel: styck, ml, mg. Om packageUnit anges måste också totalAmount anges. | 0..1 |
| ../../../../distributionMethod | string | Distributionssätt. / Text som beskriver hur det förskrivna läkemedlet ska distribueras till vård- och omsorgstagaren. Exempel Apodos, Hemleverans, Hämtas. | 0..1 |
| ../../../../dispensationAuthorizer | HealthcareProfessionalType | Förskrivare. / Hälso- och sjukvårdspersonal med förskrivningsrätt. | 1..1 |
| ../../../../../authorTime | TimeStampType | Beslutstidpunkt/förskrivningsstidpunkt. / Tidpunkt då beslut fattas om förskrivning. | 1..1 |
| ../../../../../healthcareProfessionalHSAId | HSAIdType | Förskrivarens HSA-id. | 0..1 |
| ../../../../../healthcareProfessionalName | string | Namn på förskrivaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../healthcareProfessionalRoleCode | CVType | Information om förskrivarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6]. | 0..1 |
| ../../../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som förskrivaren är uppdragstagare på. | 0..1 |
| ../../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../../../orgUnitName | string | Namnet på den organisation som Hälso- och sjukvårdspersonalen är uppdragstagare på. | 0..1 |
| ../../../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../../../orgUnitEmail | string | E-post till organisationsenhet. | 0..1 |
| ../../../../../../orgUnitAddress | string | Postadress för den organisation som förskrivaren är uppdragstagare på. | 0..1 |
| ../../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../../../healthcareProfessionalcareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../../healthcareProfessionalcareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../../dispensationAuthorizerComment | string | Förskrivares kommentar. / Kommentar till apoteket. | 0..1 |
| ../../../../firstDispensationBefore | DateType | Första uttag före. / Datum före vilket första uttag av läkemedel måste göras. | 0..1 |
| ../../../../prescriptionSignatura | string | Doseringstext på recept. / Instruktion till patienten. | 1..1 |
| ../../../../nonReplaceable | NonReplaceableEnum | Bytes ej. / Anger att ordinatör eller patient beslutat att förskriven artikel ej får bytas ut. / Tillåtna värden: Prescriber, Patient / Lämnas fältet tomt antas det betyda att läkemedlet får bytas ut. | 0..1 |
| ../../../../drug | DrugChoiceType | Läkemedelsval. / OBS: Ett och endast ett av följande alternativ: / unstructuredDrugInformation (fritextval/extemporeberedning) / merchandise (handelsvara) / drugArticle (läkemedelsartikel) / drug (läkemedelsprodukt) / generics (generika/utbytesgrupp) | 0..1 |
| ../../../../../comment | string | Kommentar om läkemedelsval. / Text som innehåller en kommentar till det ordinerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges. | 0..1 |
| ../../../../../unstructuredDrugInformation | UnstructuredDrugInformationType | Fritextval. / Används för extemporeberedning, licensläkemedel etc. | 0..1 |
| ../../../../../../unstructuredInformation | string | Fritextbeskrivning. | 1..1 |
| ../../../../../merchandise | MerchandiseType | Handelsvara. | 0..1 |
| ../../../../../../articleNumber | CVType | Varunummer. / Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1. / Får ej anges för läkemedel. | 1..1 |
| ../../../../../../../code | string | Varunummer. | 1..1 |
| ../../../../../../../codeSystem | string | Kodsystem för varunummer. | 1..1 |
| ../../../../../../../codeSystemName | string | Namn på kodsystem för varunummer. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på kodsystem för varunummer. | 0..1 |
| ../../../../../../../displayName | string | Varunummer i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 1..1 |
| ../../../../../../../originalText | string | originalText får ej användas för varunummer. | 0..0 |
| ../../../../../drugArticle | DrugArticleType | Läkemedelsartikel. | 0..1 |
| ../../../../../../nplPackId | CVType | NPL pack-id. / Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2. | 1..1 |
| ../../../../../../../code | string | NPL-pack-id. | 1..1 |
| ../../../../../../../codeSystem | string | Kodsystem för NPL-pack-id: 1.2.752.129.2.1.5.2. | 1..1 |
| ../../../../../../../codeSystemName | string | ”NPL pack”. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på NPL-pack-id-kodsystem. | 0..1 |
| ../../../../../../../displayName | string | Artikelnamn (varunamn). / Handelsnamn i SIL. Text som anger namnet på den aktuella läkemedelsartikeln (produktnamn + förpackning). | 1..1 |
| ../../../../../../../originalText | string | originalText får ej användas för NPL pack-id. | 0..0 |
| ../../../../../drug | DrugType | Läkemedelsprodukt. | 0..1 |
| ../../../../../../nplId | CVType | NPL-id. / Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1. | 1..1 |
| ../../../../../../../code | string | NPL-id. | 1..1 |
| ../../../../../../../codeSystem | string | Kodsystem för NPL-id: 1.2.752.129.2.1.5.1. | 1..1 |
| ../../../../../../../codeSystemName | string | ”NPL”. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på NPL-id-kodsystem. | 0..1 |
| ../../../../../../../displayName | string | Produktnamn. / Handelsnamn i SIL. Text som anger namnet på den aktuella läkemedelsprodukten. | 1..1 |
| ../../../../../../../originalText | string | originalText får ej användas för NPL-id. | 0..0 |
| ../../../../../../atcCode | CVType | ATC-kod. / atcKod + atcKodBeskrivning i SIL. / Klassificeringskod för läkemedlet på sjuställig nivå. OID: / 1.2.752.129.2.2.3.1.1. / Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/ / I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/ / ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde. | 0..1 |
| ../../../../../../../code | string | ATC-kod. | 1..1 |
| ../../../../../../../codeSystem | string | Kodsystem för ATC-kod: 1.2.752.129.2.2.3.1.1. | 1..1 |
| ../../../../../../../codeSystemName | string | ”ATC”. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på ATC -kodsystem. | 0..1 |
| ../../../../../../../displayName | string | Klartext på kemisk substansnivå (motsvarande sjuställig kod). | 1..1 |
| ../../../../../../../originalText | string | originalText får ej användas för ATC-kod. | 0..0 |
| ../../../../../../routeOfAdministration | CVType | Administreringssätt. / Hur produkten ska intas/administreras. Kan anges med SNOMED-kod. | 0..1 |
| ../../../../../../../code | string | Kod för administreringssätt. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../../../codeSystem | string | Kodsystem för administreringssättskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../../../codeSystemName | string | Namn på kodsystem för administreringssättskod. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på kodsystem för administreringssättskod. | 0..1 |
| ../../../../../../../displayName | string | Administreringssätt i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../../../originalText | string | Om administreringssätt är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan administreringssätt anges i originalText. Om originalText anges ska inget annat värde i routeOfAdministration anges. | 0..1 |
| ../../../../../../pharmaceuticalForm | string | Läkemedelsform enligt SIL, t.ex Tablett | 0..1 |
| ../../../../../../strength | double | Styrka enligt SIL, t.ex 20.0 / I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1. | 0..1 |
| ../../../../../../strengthUnit | string | Enhet på styrka enligt SIL, t.ex mg. / I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg” | 0..1 |
| ../../../../../generics | GenericsType | Generiskt läkemedelsval. | 0..1 |
| ../../../../../../substance | string | Substansgrupp. / Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination. | 0..1 |
| ../../../../../../strength | PQType | Styrka. / Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination. | 0..1 |
| ../../../../../../../value | double | Värde för styrka. / I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1. | 1..1 |
| ../../../../../../../unit | string | Enhet för styrka. Anges enligt UCUM [R3]. / I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg” | 1..1 |
| ../../../../../../form | string | Läkemedelsform. / Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination | 0..1 |
| ../../../../../../dosage | DosageType | Ska ej anges (anges i ordinationen). | 0..0 |
| ../../../administration | AdministrationType | Information om administrering av läkemedel. Bara administreringstillfällen som faktiskt ägt rum kan anges, planerade administreringstillfällen kan inte anges i detta kontrakt. | 0..* |
| ../../../../ administrationId | IIType | Administrerings-id. / Unik identifierare för aktuell administrering. | 1..1 |
| ../../../../../root | string | Antingen en UUID som utgör hela administrerings-id, eller en OID som pekar på källsystem. Om ingendera finns används nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | 1..1 |
| ../../../../../extension | string | Administrerings-id som är unikt inom källsystemet. Används nationell OID för lokala id:n (se fältet ovan) ska detta värde anges som HSA-id för det system inom vilket administrerings-id är unikt + ”:” +  det lokala id:t. | 0..1 |
| ../../../../administrationTime | TimePeriodType | Tidsintervall för läkemedelsadministreringen. Om administreringen sker vid en viss tidpunkt sätts start och end till samma tidpunkt. | 1..1 |
| ../../../../../start | TimeStampType | Starttid för administrering. Minst ett av fälten start och end ska anges. | 0..1 |
| ../../../../../end | TimeStampType | Sluttid för administrering. Minst ett av fälten start och end ska anges. | 0..1 |
| ../../../../administrationComment | string | Kommentar till administrering av vårdpersonal. Exempelvis ”patienten kräktes 30 minuter efter administrering”. | 0..1 |
| ../../../../routeOfAdministration | CVType | Administreringssätt. / Hur produkten ska intas/administreras. / Kan anges med SNOMED-kod. | 0..1 |
| ../../../../../code | string | Kod för administreringssätt. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för administreringssättskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för administreringssättskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för administreringssättskod. | 0..1 |
| ../../../../../displayName | string | Administreringssätt i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../originalText | string | Om administreringssätt är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan administreringssätt anges i originalText. Om originalText anges ska inget annat värde i routeOfAdministration anges. | 0..1 |
| ../../../../administeringHealthcareProfessional | HealthcareProfessionalType | Information om administrerande vårdpersonal och -organisation. | 1..1 |
| ../../../../../authorTime | TimeStampType | Tidpunkt för signering av administrering. | 1..1 |
| ../../../../../healthcareProfessionalHSAId | HSAIdType | Administrerande personals HSA-id. | 0..1 |
| ../../../../../healthcareProfessionalName | string | Namn på administrerande personal. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../healthcareProfessionalRoleCode | CVType | Information om administrerande persons befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6]. | 0..1 |
| ../../../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som administrerande personal är uppdragstagare på. | 0..1 |
| ../../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../../../orgUnitName | string | Namnet på den organisation som administrerande personal är uppdragstagare på. | 0..1 |
| ../../../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../../../orgUnitEmail | string | E-post till organisationsenhet. | 0..1 |
| ../../../../../../orgUnitAddress | string | Postadress för den organisation som administrerande personal är uppdragstagare på. | 0..1 |
| ../../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../../../healthcareProfessionalcareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../../healthcareProfessionalcareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../../drug | DrugChoiceType | Läkemedelsval. / OBS: Ett och endast ett av följande alternativ: / unstructuredDrugInformation (fritextval/extemporeberedning) / merchandise (handelsvara) / drugArticle (läkemedelsartikel) / drug (läkemedelsprodukt) / generics (generika/utbytesgrupp) | 0..1 |
| ../../../../../comment | string | Kommentar om läkemedelsval. / Text som innehåller en kommentar till det administrerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges. | 0..1 |
| ../../../../../unstructuredDrugInformation | UnstructuredDrugInformationType | Fritextval. / Används för extemporeberedning, licensläkemedel etc. | 0..1 |
| ../../../../../../unstructuredInformation | string | Fritextbeskrivning. | 1..1 |
| ../../../../../merchandise | MerchandiseType | Handelsvara. | 0..1 |
| ../../../../../../articleNumber | CVType | Varunummer. / Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1. / Får ej anges för läkemedel. | 1..1 |
| ../../../../../../../code | string | Varunummer. | 1..1 |
| ../../../../../../../codeSystem | string | Kodsystem för varunummer. | 1..1 |
| ../../../../../../../codeSystemName | string | Namn på kodsystem för varunummer. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på kodsystem för varunummer. | 0..1 |
| ../../../../../../../displayName | string | Varunummer i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 1..1 |
| ../../../../../../../originalText | string | originalText får ej användas för varunummer. | 0..0 |
| ../../../../../drugArticle | DrugArticleType | Läkemedelsartikel. | 0..1 |
| ../../../../../../nplPackId | CVType | NPL pack-id. / Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2. | 1..1 |
| ../../../../../../../code | string | NPL-pack-id. | 1..1 |
| ../../../../../../../codeSystem | string | Kodsystem för NPL-pack-id: 1.2.752.129.2.1.5.2. | 1..1 |
| ../../../../../../../codeSystemName | string | ”NPL pack”. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på NPL-pack-id-kodsystem. | 0..1 |
| ../../../../../../../displayName | string | Artikelnamn (varunamn). / Handelsnamn i SIL. Text som anger namnet på den aktuella läkemedelsartikeln (produktnamn + förpackning). | 1..1 |
| ../../../../../../../originalText | string | originalText får ej användas för NPL pack-id. | 0..0 |
| ../../../../../drug | DrugType | Läkemedelsprodukt. | 0..1 |
| ../../../../../../nplId | CVType | NPL-id. / Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1. | 0..1 |
| ../../../../../../../code | string | NPL-id. | 1..1 |
| ../../../../../../../codeSystem | string | Kodsystem för NPL-id: 1.2.752.129.2.1.5.1. | 1..1 |
| ../../../../../../../codeSystemName | string | ”NPL”. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på NPL-id-kodsystem. | 0..1 |
| ../../../../../../../displayName | string | Produktnamn. / Handelsnamn i SIL. Text som anger namnet på den aktuella läkemedelsprodukten. | 1..1 |
| ../../../../../../../originalText | string | originalText får ej användas för NPL-id. | 0..0 |
| ../../../../../../atcCode | CVType | ATC-kod. / atcKod + atcKodBeskrivning i SIL. / Klassificeringskod för läkemedlet på sjuställig nivå. OID: / 1.2.752.129.2.2.3.1.1. / Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/ / I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/ / ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde. | 0..1 |
| ../../../../../../../code | string | ATC-kod. | 1..1 |
| ../../../../../../../codeSystem | string | Kodsystem för ATC-kod: 1.2.752.129.2.2.3.1.1. | 1..1 |
| ../../../../../../../codeSystemName | string | ATC. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på ATC -kodsystem. | 0..1 |
| ../../../../../../../displayName | string | Produktnamn. / Handelsnamn i SIL. Text som anger namnet på den aktuella läkemedelsprodukten. | 1..1 |
| ../../../../../../../originalText | string | originalText får ej användas för ATC-kod. | 0..0 |
| ../../../../../../routeOfAdministration | CVType | Administreringssätt. / Hur produkten ska intas/administreras. Kan anges med SNOMED-kod. | 0..1 |
| ../../../../../../../code | string | Kod för administreringssätt. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../../../codeSystem | string | Kodsystem för administreringssättskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../../../codeSystemName | string | Namn på kodsystem för administreringssättskod. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på kodsystem för administreringssättskod. | 0..1 |
| ../../../../../../../displayName | string | Administreringssätt i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../../../originalText | string | Om administreringssätt är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan administreringssätt anges i originalText. Om originalText anges ska inget annat värde i routeOfAdministration anges. | 0..1 |
| ../../../../../../pharmaceuticalForm | string | Läkemedelsform enligt SIL, t.ex Tablett | 0..1 |
| ../../../../../../strength | double | Styrka enligt SIL, t.ex 20.0 / I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1. | 0..1 |
| ../../../../../../strengthUnit | string | Enhet på styrka enligt SIL, t.ex mg. / I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg” | 0..1 |
| ../../../../../generics | GenericsType | Generiskt läkemedelsval. | 0..1 |
| ../../../../../../substance | string | Substansgrupp. / Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination. | 0..1 |
| ../../../../../../strength | PQType | Styrka. / Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination. | 0..1 |
| ../../../../../../../value | double | Värde för styrka. / I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1. | 1..1 |
| ../../../../../../../unit | string | Enhet för styrka. Anges enligt UCUM [R3]. / I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg” | 1..1 |
| ../../../../../../form | string | Läkemedelsform. / Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination | 0..1 |
| ../../../../../dosage | DosageType | Dosering. / Socialstyrelsens termbank: Terminologirådet; uppgift om mängd och periodicitet. / setDosage (fastdosering), maxiumumDosage (maxdosering) och conditionalDosage (villkorsdosering) anger samtliga mängd och periodicitet under en avgränsad tid, men med olika syfte. Normalt består en dosering av ett av dessa val men den kan även bestå av flera stycken, t.ex. vid upp- och nedtrappning av läkemedel. Dessa följer då varandra i tiden och utgör tillsammans den kompletta doseringen. De tre angivna attributen kan alltså, men behöver inte, förekomma samtidigt. Däremot måste minst ett av attributen fast dosering eller villkorsdosering alltid anges. | 0..* |
| ../../../../../../lengthOfTreatment | LengthOfTreatmentType | Ska ej anges. | 0..0 |
| ../../../../../../unitDose | CVType | Doseringsenhet. / Kod som anger den enhet som doseringen avser. / Exempel: tablett, ml, droppe / I dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod. / Via SIL kan doseringsenhet som text erhållas för vissa läkemedel. | 0..1 |
| ../../../../../../../code | string | Kod för doseringsenhet. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../../../codeSystem | string | Kodsystem för doseringsenhetskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../../../codeSystemName | string | Namn på kodsystem för doseringsenhetskod. | 0..1 |
| ../../../../../../../codeSystemVersion | string | Version på kodsystem för doseringsenhetskod. | 0..1 |
| ../../../../../../../displayName | string | Doseringsenhet i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../../../originalText | string | Om doseringsenhet är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en doseringsenheten anges i originalText. Om originalText anges ska inget annat värde i unitDose anges. | 0..1 |
| ../../../../../../shortNotation | string | Kortnotation. / Text som ger en kort beskrivning av doseringen. / Exempel: 1x2 | 0..1 |
| ../../../../../../setDosage | SetDosageType | Fastdosering. / Dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger / dagligen. / Fastdosering kan utgöra Frekvensdosering, Perioddosering, Tillfällesdosering, Rampdosering, Engångsdosering och / Fritextdosering. Dessa alla har det gemensamt att de anger mängd och periodicitet, men på lite olika sätt. | 0..1 |
| ../../../../../../maximumDosage | MaximumDosageTyp | Maxdosering. / Dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka | 0..1 |
| ../../../../../../conditionalDosage | ConditionalDosageType | Villkorsdosering. / Ordinerad mängd och periodicitet som gäller / om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten | 0..1 |
| ../../../../../../../conditionDescription / [1.2] | string | Villkorstext. / Text som anger villkor kopplat till en villkorsdosering, t.ex. "vid behov". / Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta. | 0..1 |
| ../../../../../../../frequencyDosage | FrequencyDosageType | Frekvensdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen. | 0..1 |
| ../../../../../../../../dose | PQIntervalType | den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../frequency | PQType | Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag). | 1..1 |
| ../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../periodDosage | PeriodDosageType | Perioddosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering. | 0..1 |
| ../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../period | PQType | Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim). | 1..1 |
| ../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../occasionDose | OccasionDosageType | Tillfällesdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett eller flera enskilda Doseringstillfällen som är knutna till tidpunkter eller händelser inom en viss period, vanligtvis ett dygn. | 0..1 |
| ../../../../../../../../period | PQType | Periodtid för intagen i dagar. Vid daglig dosering är periodlängd = 1 dag, vid intag varannan dag är periodlängd = 2 dagar osv. Värde är >0 och <= 28. | 1..1 |
| ../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../administration | AdministrationOccurrenceType | Det eller de doseringstillfällen som anger mängd och tidpunkt inom perioden. | 1..* |
| ../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../time | string | Den tidpunkt eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Exempelvis ”Klockan 19:30” eller ”innan lunch”. | 0..1 |
| ../../../../../../../../../dayOfPeriod | int | Dag i perioden när intag ska ske. Tillåtna värden 1-14. | 1..1 |
| ../../../../../../../rampedDosage | RampedDosageType | Rampdosering. / Innehåller uppgifter om en successiv ökning eller minskning av läkemedelsdosen under en angiven tid. | 0..1 |
| ../../../../../../../../doseStep | PQType | Den mängd som dosen ska ökas eller minskas med vid varje tidssteg | 1..1 |
| ../../../../../../../../../value | double | Värdet. | 1..1 |
| ../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../timeStep | PQType | Den tid som ska förflyta mellan varje ändring av dosen | 1..1 |
| ../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../rampStart | RampEndpointType | den dosering som gäller vid Doseringsstegets start | 1..1 |
| ../../../../../../../../../frequencyDosage | FrequencyDosageType | Frekvensdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen. | 0..1 |
| ../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../frequency | PQType | Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag). | 1..1 |
| ../../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../periodDosage | PeriodDosageType | Perioddosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering. | 0..1 |
| ../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../period | PQType | Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim). | 1..1 |
| ../../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../occasionDose | OccasionDosageType | Tillfällesdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett eller flera enskilda Doseringstillfällen som är knutna till tidpunkter eller händelser inom en viss period, vanligtvis ett dygn. | 0..1 |
| ../../../../../../../../../../period | PQType | Periodtid för intagen i dagar. Vid daglig dosering är periodlängd = 1 dag, vid intag varannan dag är periodlängd = 2 dagar osv. Värde är >0 och <= 28. | 1..1 |
| ../../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../administration | AdministrationOccurrenceType | Det eller de doseringstillfällen som anger mängd och tidpunkt inom perioden. | 1..* |
| ../../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../../time | string | Den tidpunkt eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Exempelvis ”Klockan 19:30” eller ”innan lunch”. | 0..1 |
| ../../../../../../../../../../../dayOfPeriod | int | Dag i perioden när intag ska ske. Tillåtna värden 1-14. | 1..1 |
| ../../../../../../../../../rampedDosage |  | Ska ej anges. | 0..0 |
| ../../../../../../../../../singleDose | SingleDoseType | Engångsdosering. / Beskriver att intag eller applicering ska ske vid ett enda tillfälle. | 0..1 |
| ../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../time | TimeStampType | Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående". | 0..1 |
| ../../../../../../../../../unstructuredDosageInformation | UnstructuredDosageInformationType | Fritextdosering / Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna | 0..1 |
| ../../../../../../../../../../text | string | Dosering angiven i klartext | 1..1 |
| ../../../../../../../../rampEnd | RampEndpointType | den dosering som gäller vid Doseringsstegets slut | 1..1 |
| ../../../../../../../../../frequencyDosage | FrequencyDosageType | Frekvensdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen. | 0..1 |
| ../../../../../../../../../../dose | PQIntervalType | den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../frequency | PQType | Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag). | 1..1 |
| ../../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../periodDosage | PeriodDosageType | Perioddosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering. | 0..1 |
| ../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter | 1..1 |
| ../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../period | PQType | Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim). | 1..1 |
| ../../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../occasionDose | OccasionDosageType | Tillfällesdosering. / Beskriver dosering uttryckt som mängd och periodicitet i form av ett eller flera enskilda Doseringstillfällen som är knutna till tidpunkter eller händelser inom en viss period, vanligtvis ett dygn. | 0..1 |
| ../../../../../../../../../../period | PQType | Periodtid för intagen i dagar. Vid daglig dosering är periodlängd = 1 dag, vid intag varannan dag är periodlängd = 2 dagar osv. Värde är >0 och <= 28. | 1..1 |
| ../../../../../../../../../../../value | double | Värde. | 1..1 |
| ../../../../../../../../../../../unit | string | Enhet. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../administration | AdministrationOccurrenceType | Det eller de doseringstillfällen som anger mängd och tidpunkt inom perioden. | 1..* |
| ../../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../../time | string | Den tidpunkt eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Exempelvis ”Klockan 19:30” eller ”innan lunch”. | 0..1 |
| ../../../../../../../../../../../dayOfPeriod | int | Dag i perioden när intag ska ske. Tillåtna värden 1-14. | 1..1 |
| ../../../../../../../../../rampedDosage |  | Ska ej anges. | 0..0 |
| ../../../../../../../../../singleDose | SingleDoseType | Engångsdosering. / Beskriver att intag eller applicering ska ske vid ett enda tillfälle. | 0..1 |
| ../../../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../../../time | TimeStampType | Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående". | 0..1 |
| ../../../../../../../../../unstructuredDosageInformation | UnstructuredDosageInformationType | Fritextdosering / Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna | 0..1 |
| ../../../../../../../../../../text | string | Dosering angiven i klartext | 1..1 |
| ../../../../../../../singleDose | SingleDoseType | Engångsdosering. / Beskriver att intag eller applicering ska ske vid ett enda tillfälle. | 0..1 |
| ../../../../../../../../dose | PQIntervalType | Den mängd läkemedel som ska intas eller appliceras. | 1..1 |
| ../../../../../../../../../low | double | Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../high | double | Det högre värdet i intervallet. Minst ett av fälten low och high måste anges. | 0..1 |
| ../../../../../../../../../unit | string | Enheten. Anges enligt UCUM [R3]. | 1..1 |
| ../../../../../../../../time | TimeStampType | Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal. dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående". | 0..1 |
| ../../../../../../../unstructuredDosageInformation | UnstructuredDosageInformationType | Fritextdosering / Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna | 0..1 |
| ../../../../../../../../text | string | Dosering angiven i klartext | 1..1 |
| ../../../relation | RelationType | Sambandsklass / Alla de meddelandeposter (angivna med referredInformation.id) som i ordinationen pekas ut med samma relation.code ska anges i samma relation (teknisk aggregering). | 0..* |
| ../../../../code | CVType | Beskriver hur ordinationen relaterar till den refererade informationsmängden. / Denna kod bör, i den mån det är tillämpligt, hämtas från den lista av sambandstyper som publiceras i senaste version av nationell informationsstruktur (NI) (ref R14). / Exempel: om ordinationsbeslutet baseras på en diagnosticerad postoperativ infektion, så bör detta anges genom användande av SNOMED CT-koden “416083004 \| har orsak”. | 1..1 |
| ../../../../../code | string | Kod för relationsangivelse. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för relationsangivelse. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för relationsangivelse. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för relationsangivelse. | 0..1 |
| ../../../../../displayName | string | Relationsangivelse i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../originalText | string | Om relationen är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i relation anges. / Detta alternativ bör användas med största försiktighet. | 0..1 |
| ../../../../referredInformation | ReferredInformationType | Information kring den refererade informationsmängden som tjänstekonsument behöver för att avgöra om och hur den refererade informationen ska hämtas. | 1..* |
| ../../../../../id | IIType | Id till den aktivitet eller observation som refereras. | 1..1 |
| ../../../../../id/root | string | Ska sättas till den logiska address som tjänstekonsumenten ska använda | 1..1 |
| ../../../../../id/extension | string | Ska sättas till det id som tjänstekonsumenten ska använda vid begäran. Dvs observationId för GetObservations eller activityId för GetActivities. | 1..1 |
| ../../../../../type | CVType | Typ av interaktion som behöver nyttjas för att ta del av den refererade informationen. Motsvarar fältet categorization i engagemangsindex. / I skrivande stund finns inget OID-satt kodverk över olika categorization-typer, vilket betyder att fältet originalText behöver användas. Från den dag ett OID-satt kodverk finns tillgängligt bör detta användas istället. / type.originalText får enbart sättas till ett av följande / caa-ga för att referera till aktiviteter som tjänstekonsument kan hämta mha GetActivities / chb-go för att referera till observationer som tjänstekonsument kan hämta mha GetObservations | 1..1 |
| ../../../../../../code | string | Kod för interaktion. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../../codeSystem | string | Kodsystem för interaktion. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../../codeSystemName | string | Namn på kodsystem för interaktion. | 0..1 |
| ../../../../../../codeSystemVersion | string | Version på kodsystem för interaktion. | 0..1 |
| ../../../../../../displayName | string | Interaktion i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../../originalText | string | Om interaktionen är beskriven i ett lokalt kodverk utan OID, eller när kodverk helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i type anges. / Detta alternativ bör användas med största försiktighet. | 0..1 |
| ../../../../../informationOwner | InformationOwnerType | Vårdgivare som är informationsägare av den refererade informationen. / Används av tjänstekonsument för spärrhantering. | 1..1 |
| ../../../../../../id | IIType | Informationsägande vårdgivare | 1..1 |
| ../../../../../../id/root | string | Sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| ../../../../../../id/extension | string | Vårdgivarens HSA-id. | 1..1 |
| ../../additionalPatientInformation | AdditionalPatientInformationType | Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning. | 0..1 |
| ../../../dateOfBirth | DateType | Patientens födelsedatum. | 1..1 |
| ../../../gender | CVType | Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas (se referens [R6]). | 0..1 |
| ../../../../code | string | Kod som anger kön. | 1..1 |
| ../../../../codeSystem | string | OID för kodsystem för kön. | 1..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för kön. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för kön. | 0..1 |
| ../../../../displayName | string | Könet i klartext. | 1..1 |
| ../../../../originalText | string | originalText får ej användas för kön. | 0..0 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. I kolumnen ”Namn i schematron” finns namnet på motsvarande regel i schematron (constraints).

| ID | Namn i schematron | Kontext | Beskrivning |
| :--- | :--- | :--- | :--- |
| Svar | Svar | Svar | Svar |
| 1.1 | - | medicationMedicalRecordHeader/ accountableHealthcareProfessional/ healthcareProfessionalCareUnitHSAId / medicationMedicalRecordHeader/ accountableHealthcareProfessional/ healthcareProfessionalcareGiverHSAId | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring |
| 1.2 | - | conditionDescription / rampedDosage/dosageStep/value | Dessa attribut är obligatoriska enligt XSD-schemat och ska således anges som obligatorisk vid nyanslutning, se arkitekturella beslut för domänen [R1]. |
| 1.3 | pattern.dosage | medicalPrescription/dosage / administration/dosage | Minst en av följande ska anges: / setDosage
conditionalDosage |
| 1.4 | pattern.drugChoiceType | medicationPrescription / administration / dispensationAuthorization | Endast en av följande får anges: / unstructuredDrugInformation / merchandise / drugArticle / drug / generics |
| 1.5 | pattern.IITypeStrict | receivingPharmacy / informationOwner/id | extension SKA anges |
| 1.6 | pattern.CvTypeStrict | reason / articleNumber / atcCode / nplId / nplPackId / gender | code SKA anges / codeSystem SKA anges / displayName SKA anges / originalText SKA INTE anges |
| 1.7 | Verify unique id:s | documentId / prescriptionId / dispensationAuthorizationId / administrationId | ID:t måste vara unikt inom källsystemet. |
| 1.8 | LogicalRules | prescriber | Fältet är obligatorisk om selfMedication = false |
| 1.8 | LogicalRules | typeOfPrescription | om typeOfPrescription = I är startOfTreatment obligatorisk |
| 1.8 | LogicalRules | administrationTime | Minst ett av fälten start och end ska anges. |
| 1.8 | LogicalRules | occasionDose | Elementet period/value måste vara mellan 1–28. / Elementet dayOfPeriod måste vara mellan 1–14. |
| 1.8 | LogicalRules | dispensationAuthorization | Om ett av elementen totalAmount och packageUnit anges måste också det andra anges. |
| 1.8 | LogicalRules | referredInformation/type/
originalText | Får enbart sättas till caa-ga eller chb-go |
| 1.9 | pattern.AccountableHealthcareProfessional | medicationPrescription.prescriber / dispensationAuthorizer / medicationPrescription.evaluator / administeringHealthcareProfessional | Följande fält får inte anges: / healthcareProfessionalCareUnitHSAId / healthcareProfessionalCareGiverHSAId |
| 1.10 | NotAllowed_medicationMedicalRecordHeader | documentTime / nullified / nullifiedReason | Får inte anges |
| 1.11 | NotAllowed_medicationMedicalRecordBody | administration/drug/dosage | Följande fält får inte anges: / lengthOfTreatment / isMaximumTreatmentTime / dosageInstruction |
| 1.11 | NotAllowed_medicationMedicalRecordBody | dispensationAuthorization/drug/generics | Följande fält få inte anges: / dosage |
| Allmänna regler | Allmänna regler | Allmänna regler | Allmänna regler |
| 2.1 | pattern.CvType | healthcareProfessionalRoleCode / legalAuthenticatorRoleCode / endOfTreatmentReason / relation / referredInformationType / routeOfAdministration / unitDose | Om code anges SKA codeSystem OCH displayName anges / Om codeSystem anges SKA code OCH displayName anges / codeSystem SKA vara en OID / Om originalText anges SKA INTE code, codeSystem, codeSystemName, codeSystemVersion eller displayName anges. |
| 2.2 | pattern.PQIntervalType | treatmentInterval / dose | Minst ett av elementen low eller high måste anges. |
| 2.3 | Verify non-empty elements | Alla attribut i svaret. | Tomma värden får inte anges. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.
