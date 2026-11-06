// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetImagingOutcomeFieldDescriptions
* imagingOutcome ^definition = "De Bild-resultat(dokument) som matchar begäran."
* imagingOutcome ^comment = "TKB-fält: `imagingOutcome` (`ImagingOutcomeType`, kardinalitet 0..*)."
* imagingOutcome.imagingOutcomeHeader ^definition = "Innehåller basinformation om dokumentet"
* imagingOutcome.imagingOutcomeHeader ^comment = "TKB-fält: `../imagingOutcomeHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* imagingOutcome.imagingOutcomeHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeHeader.sourceSystemHSAId ^definition = "HSA-id för det system som dokumentet är skapat i."
* imagingOutcome.imagingOutcomeHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeHeader.documentTitle ^definition = "Titel som beskriver den information som sänds i dokumentet."
* imagingOutcome.imagingOutcomeHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.documentTime ^definition = "Händelsetidpunkt, om sådan finns. Tidpunkten bör vara då undersökningen gjordes inte när bilden skapades (t.ex. skannad bild)."
* imagingOutcome.imagingOutcomeHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.patientId ^definition = "Identifierare för patient."
* imagingOutcome.imagingOutcomeHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional ^definition = "Ansvarig hälso- och sjukvårdsperson. Ansvarig för undersökningsresultatet. Avser person som är ansvarig för det samlade dokumentet."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet. Om tillgängligt ska detta anges."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namn på organisationsenhet. Om tillgängligt ska detta anges."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till organisationsenhet."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för informationsägande vårdenhet. Ska anges om tillgänglig."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).

**Regel 1:** se Övriga regler för kontraktet.

**Modellanteckning:** Regel 1: Används för spärrhantering och åtkomstkontroll."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för informationsägande vårdgivare."
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).

**Regel 1:** se Övriga regler för kontraktet.

**Modellanteckning:** Regel 1: Används för spärrhantering och åtkomstkontroll."
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet. Det är normalt radiologen som signerar bilddiagnostiska svar. Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn."
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering."
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig"
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* imagingOutcome.imagingOutcomeHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeHeader.careContactId ^definition = "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* imagingOutcome.imagingOutcomeHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.nullified ^definition = "Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten."
* imagingOutcome.imagingOutcomeHeader.nullified ^comment = "TKB-fält: `../../nullified` (`boolean`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeHeader.nullifiedReason ^definition = "Anger orsak till makulering"
* imagingOutcome.imagingOutcomeHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody ^comment = "TKB-fält: `../imagingOutcomeBody` (`ImagingOutcomeBodyType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.examinationSpeciality ^definition = "Undersökningstyp. Bör anges med kod enligt SNOMED.

Text som beskriver vilken specialitet som utlåtandet gäller.Exempel:

Typen av specialitet som anlitats anges i text Exempel: Patologi, Klinisk fysiologi, Logopedi"
* imagingOutcome.imagingOutcomeBody.examinationSpeciality ^comment = "TKB-fält: `../../examinationSpeciality` (`CVType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.typeOfResult ^definition = "Svarstyp.

PREL = Preliminärsvar, denna typ är ny och finns ej i NPÖ:s riv-specifikation.

DEF = Definitivsvar, ett svar som har kommit tillbaka till beställaren från utföraren.

TILL = Tilläggssvar, kan avse två typer av svar:

Det fynd som gjorts enligt beställd undersökning, och som beskrivs i definitivsvaret, var så intressant att ytterligare undersökningar gjorts och svaret således behöver kompletteras.

Slutsvaret behöver av någon anledning korrigeras, och skickas således i ett tilläggssvar.

DEF sätts som förvalt värde. Den senaste statusen är den som ska skickas med."
* imagingOutcome.imagingOutcomeBody.typeOfResult ^comment = "TKB-fält: `../../typeOfResult` (`TypeOfResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** Kodas enligt TypeOfResultCodeEnum. Se QUESTIONS.md ASSUME-003."
* imagingOutcome.imagingOutcomeBody.resultTime ^definition = "Svarstidpunkt. Tidpunkt då svar skickas till framställaren av remissen."
* imagingOutcome.imagingOutcomeBody.resultTime ^comment = "TKB-fält: `../../resultTime` (`TimeStampType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.resultReport ^definition = "Text som beskriver det sammanfattade utlåtandet kring undersökningsresultatet"
* imagingOutcome.imagingOutcomeBody.resultReport ^comment = "TKB-fält: `../../resultReport` (`string`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.resultComment ^definition = "Kommentar till det sammanfattande utlåtandet"
* imagingOutcome.imagingOutcomeBody.resultComment ^comment = "TKB-fält: `../../resultComment` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.radiationDose ^definition = "Ett dosvärde som härrör till undersökningen.

Dosen kan anges på flera olika sätt (t.ex. som effektiv dos i Sv) eller som KAP. Den totala dosen som härrör till underökningen är summan av alla redovisade radiationDose. Enheten ska vara SI-enhet (eller kombination av sådana). (För KAP ska värdet räknas om till Gy*m² istället för Gy*cm².)"
* imagingOutcome.imagingOutcomeBody.radiationDose ^comment = "TKB-fält: `../../radiationDose` (`PQType`, kardinalitet 0..*)."
* imagingOutcome.imagingOutcomeBody.patientData ^definition = "Ytterligare information om patienten med relevans för bedömningen. Kan typiskt anges i samband med givande av strukturerad bild-information enligt nedan"
* imagingOutcome.imagingOutcomeBody.patientData ^comment = "TKB-fält: `../../patientData` (`PatientDataType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.patientData.patientWeight ^definition = "Patientens vikt i kgvid undersökningstillfället."
* imagingOutcome.imagingOutcomeBody.patientData.patientWeight ^comment = "TKB-fält: `../../../patientWeight` (`PQType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.patientData.patientLength ^definition = "Patientens längd i cm vid undersökningstillfället."
* imagingOutcome.imagingOutcomeBody.patientData.patientLength ^comment = "TKB-fält: `../../../patientLength` (`PQType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording ^definition = "Beskrivning av bild-tagning(ar). Bild(er) tas som en eller flera tagningar (noll tillåts i fall då tillgång till bild saknas, utan endast (remiss och) sammanfattande utlåtande finns).

En bildtagning kan i sin tur ha flera bilder"
* imagingOutcome.imagingOutcomeBody.imageRecording ^comment = "TKB-fält: `../../imageRecording` (`ImageRecordingType`, kardinalitet 0..*)."
* imagingOutcome.imagingOutcomeBody.imageRecording.recordingId ^definition = "Id för Bild-tagningen som är unikt inom källsystemet."
* imagingOutcome.imagingOutcomeBody.imageRecording.recordingId ^comment = "TKB-fält: `../../../recordingId` (`IIType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationActivity ^definition = "Åtgärdskod för utförd typ av Bild. KRÅ91-kod eller i förekommande fall annat kodverk. Om inget gemensamt kodverk används, anges åtgärdsbeskrivning i originalText."
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationActivity ^comment = "TKB-fält: `../../../examinationActivity` (`CVType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationTimePeriod ^definition = "Tidpunkt då Bild-insamlingen startar och slutar"
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationTimePeriod ^comment = "TKB-fält: `../../../examinationTimePeriod` (`TimePeriodType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationStatus ^definition = "Text som anger åtgärdens status. Kommer från KV åtgärdsstatus i V-TIM 1.0. Tillåtna värden är: Initierad, Planerad (bevakad), Tidbokad, Uppskjuten, Annullerad, Pågående, Avvakta, Avbruten, Avklarad, Inaktuell, Makulerad."
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationStatus ^comment = "TKB-fält: `../../../examinationStatus` (`ExaminationStatusCodeEnum`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationUnit ^definition = "Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. T ex MR-lab, CT inom bild"
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationUnit ^comment = "TKB-fält: `../../../examinationUnit` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional ^definition = "Hälso- och sjukvårdsperson som är ansvarig för informationen som härstammar från insamlingstillfället. Den person som har den fysiska kontakten med patienten vid insamlandet av data."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional ^comment = "TKB-fält: `../../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades.

Attributet sätts till detsamma som examinationTimePeriod.end, eller .start i de fall som inget .end finns"
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5].

Om kodverk saknas anges befattning i originalText."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges."
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.numberOfImages ^definition = "Det totala antalet bilder i bildtagningen"
* imagingOutcome.imagingOutcomeBody.imageRecording.numberOfImages ^comment = "TKB-fält: `../../../numberOfImages` (`int`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData ^definition = "Information om bild-utrustningen som använts"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData ^comment = "TKB-fält: `../../../modalityData` (`ModalityDataType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.typeOfModality ^definition = "Modalitetstyp för bildfångande utrustning."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.typeOfModality ^comment = "TKB-fält: `../../../../typeOfModality` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.manufacturer ^definition = "Producerande utrustnings tillverkare."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.manufacturer ^comment = "TKB-fält: `../../../../manufacturer` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.modelName ^definition = "Producerande utrustnings modellnamn."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.modelName ^comment = "TKB-fält: `../../../../modelName` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.equipmentId ^definition = "Identifierare för utrustningen. Kan tex vara serienummer eller inventarienummer."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.equipmentId ^comment = "TKB-fält: `../../../../equipmentId` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.softwareVersion ^definition = "Text som anger tillverkarens version av den bildproducerande mjukvaran"
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.softwareVersion ^comment = "TKB-fält: `../../../../softwareVersion` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData ^definition = "DICOM-objekt. För att ge renderbar data som kan visas på det sätt som användaren önskar (med hjälp av en viewer/renderare) ges möjligheten att skicka med binärdata eller en URI till ett DICOM-objekt i någon av SOP-klasserna för Bild.

Både imageDicomData och ImageStaticData kan, och om möjligt bör anges för att underlätta för konsument."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData ^comment = "TKB-fält: `../../../imageDicomData` (`DicomDataType`, kardinalitet 0..*)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomSOP ^definition = "SOP UID för DICOM-objektet. Beskriver vilken information som kan förväntas i datan (jmf. mediaType nedan för statisk bild).

T.ex. 1.2.840.10008.5.1.4.1.1.1.1 för digital x-ray for presentation"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomSOP ^comment = "TKB-fält: `../../../../dicomSOP` (`IIType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomValue ^definition = "Binärdata som representerar objektet. Ett och endast ett av DicomValue och DicomReference ska anges."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomValue ^comment = "TKB-fält: `../../../../dicomValue` (`base64Binary`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomReference ^definition = "Referens till externt DICOM-objekt med åtkomst enligt WADO. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomReference ^comment = "TKB-fält: `../../../../dicomReference` (`anyURI`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData ^definition = "Strukturerad mätdata för bild-tagningen med statiskt bildobjekt eller referens till bildfil."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData ^comment = "TKB-fält: `../../../imageStructuredData` (`ImageStructuredDataType`, kardinalitet 0..*)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture ^definition = "Anges som f/(enhetslöst)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture ^comment = "TKB-fält: `../../../../aperture` (`PQType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime ^definition = "I sekunder"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime ^comment = "TKB-fält: `../../../../exposureTime` (`PQType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageCreationTime ^definition = "Tid då bilden skapats."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageCreationTime ^comment = "TKB-fält: `../../../../imageCreationTime` (`TimeStampType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.bodyPartExamined ^definition = "Kroppsdel. Bör anges med kod ur SNOMED CT (OID: 1.2.752.116.2.1.1). Om kodverk saknas kan kroppsdel anges i originalText."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.bodyPartExamined ^comment = "TKB-fält: `../../../../bodyPartExamined` (`CVType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.contrastAgentUsed ^definition = "Kontrast som använts vid bildtagningen."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.contrastAgentUsed ^comment = "TKB-fält: `../../../../contrastAgentUsed` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength ^definition = "Magnetisk fältsyrka i T."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength ^comment = "TKB-fält: `../../../../magneticFieldStrength` (`PQType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.copyright ^definition = "Copyright-ägare av bilden"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.copyright ^comment = "TKB-fält: `../../../../copyright` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData ^definition = "Möjlighet att svara med en bild i något av de tillåtna formaten enligt HL7 multimediatyper (inkl. PDF)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData ^comment = "TKB-fält: `../../../../imageData` (`ImageDataType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.mediaType ^definition = "Mediatyper enligt HL7 MediaType"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.mediaType ^comment = "TKB-fält: `../../../../../mediaType` (`MediaTypeEnum`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.value ^definition = "Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.value ^comment = "TKB-fält: `../../../../../value` (`base64Binary`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.reference ^definition = "Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient"
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.reference ^comment = "TKB-fält: `../../../../../reference` (`anyURI`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.burnedInAnnotations ^definition = "True om patientdata finns i pixelinformationen."
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.burnedInAnnotations ^comment = "TKB-fält: `../../../../../burnedInAnnotations` (`boolean`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral ^definition = "Information om den remiss som ligger till grund för undersökningen och dess svar. Måste vara valfri eftersom tagning av Bild inte alltid remitteras"
* imagingOutcome.imagingOutcomeBody.referral ^comment = "TKB-fält: `../../referral` (`ReferralType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.referralId ^definition = "Remissens identitet som är unik inom det lokala avsändande systemet. Motsvarar vårdbegäran-id"
* imagingOutcome.imagingOutcomeBody.referral.referralId ^comment = "TKB-fält: `../../../referralId` (`string`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.referral.referralReason ^definition = "Text som anger frågeställningen"
* imagingOutcome.imagingOutcomeBody.referral.referralReason ^comment = "TKB-fält: `../../../referralReason` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.anamnesis ^definition = "Text som anger bakgrund till frågeställningen"
* imagingOutcome.imagingOutcomeBody.referral.anamnesis ^comment = "TKB-fält: `../../../anamnesis` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.careContactId ^definition = "Identitet för den hälso-och sjukvårdskontakt som föranlett remissen. Identiteten är unik inom producernade system."
* imagingOutcome.imagingOutcomeBody.referral.careContactId ^comment = "TKB-fält: `../../../careContactId` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional ^definition = "Information om den hälso-och sjukvårdspersonal som framställt remissen, nedan kallad remittent."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional ^comment = "TKB-fält: `../../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.authorTime ^definition = "Tid då remissen framställdes"
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalHSAid ^definition = "Remittentens HSA-id. HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalHSAid ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAid` (`HSAIdType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på remittenten. Om tillgängligt ska detta anges."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om remittentens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Om kodverk saknas anges befattning i originalText."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som remittenten är uppdragstagare på"
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som remittenten är uppdragstagare på"
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../../orgUnitName` (`string`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet"
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till enhet"
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som remittenten är uppdragstagare på"
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.attested ^definition = "Information om den som vidimerat mottaget svar på remissen"
* imagingOutcome.imagingOutcomeBody.referral.attested ^comment = "TKB-fält: `../../../attested` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.attested.signatureTime ^definition = "Tidpunkt för vidimering."
* imagingOutcome.imagingOutcomeBody.referral.attested.signatureTime ^comment = "TKB-fält: `../../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorHSAId ^definition = "HSA-id för person som vidimerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig."
* imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorName ^definition = "Namnen i klartext för vidimerande person."
* imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorName ^comment = "TKB-fält: `../../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
