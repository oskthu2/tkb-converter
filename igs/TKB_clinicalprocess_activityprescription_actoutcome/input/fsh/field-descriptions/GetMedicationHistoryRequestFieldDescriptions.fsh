// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMedicationHistoryRequestFieldDescriptions
* careUnitHSAId ^definition = "Begränsar sökningen till angivna informationsägande vårdenheter. Anges med HSA-id. Motsvarar careUnitHSAId i healthcareProfessionalType i svaret.

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1).

extension sätts till HSA-id för informationsägande vårdenhet."
* careUnitHSAId ^comment = "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*)."
* careGiverHSAId ^definition = "Begränsar sökningen till angivna informationsägande vårdgivare. Anges I första hand HSAid, i andra hand organisationsnummer. Motsvarar careGiverHSAId i healthcareProfessionalType i svaret.

Om HSAid används:

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)

extension sätts till HSA-id

Om organisationsnummer används:

root sätts till OID för organisationsnummer (1.2.752.29.4.3)

extension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer."
* careGiverHSAId ^comment = "TKB-fält: `careGiverHSAId` (`HSAIdType`, kardinalitet 0..*)."
* patientId ^definition = "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.

id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

type sätts till OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För andra typer av personidentifierare sätts type till aktuell OID."
* patientId ^comment = "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1)."
* datePeriod ^definition = "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av ordinationstidpunkt (medicationMedicalRecordBody/medicationPrescription/prescriber/authorTime) och utsättningstidpunkt (medicationMedicalRecordBody/endOfTreatment) i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs.

det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum

det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum

det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum

I de fall ordinationstidpunkt inte är angivet ersätts denna tidpunkt med insättningstidpunkt (medicationMedicalRecordBody/startOfTreatment). Om även insättningstidpunkt saknas ersätts denna tidpunkt med registreringstidpunkt (medicationMedicalRecordHeader/accountableHealthcareProfessional/authorTime).

I de fall utsättningstidpunkt inte finns angivet är det bildade intervallet öppet från ordinationstidpunkten och framåt i tiden.

Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum."
* datePeriod ^comment = "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* sourceSystemHSAId ^definition = "Begränsar sökningen till journalposter som är skapade i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

Ska anges om careContactId angivits.

Ska anges vid begäran på LRID.

Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST

Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContactId ^definition = "Begränsar sökningen till den läkemedelsinformation som föranletts av den vård- och omsorgskontakt som anges. Identiteten är unik inom källsystemet. Alla typer av ordinationer (insättningar, ändringar och utsättningar) som gjorts vid vård-och omsorgskontakten omfattas här."
* careContactId ^comment = "TKB-fält: `careContactId` (`string`, kardinalitet 0..*)."
* prescriptionChainId ^definition = "Ordinationskedje-id.

Används för att endast ge poster avseende en viss ordinationskedja. Om producenten saknar stöd för kedjor, så returneras alla poster med angiven status (och som möter övriga sökvillkor)"
* prescriptionChainId ^comment = "TKB-fält: `prescriptionChainId` (`IIType`, kardinalitet 0..1).

**Modellanteckning:** Om producenten inte hittar angiven ordinationskedja ska ett tomt svar returneras."
* prescriptionStatus ^definition = "Begränsar sökningen till endast de ordinationer som är aktiva eller inaktiva, om inget anges ska alla ordinationer returneras, om den är satt till Active ska enbart den ”aktuella läkemedelslistan” returneras."
* prescriptionStatus ^comment = "TKB-fält: `prescriptionStatus` (`PrescriptionStatusEnum`, kardinalitet 0..1)."
