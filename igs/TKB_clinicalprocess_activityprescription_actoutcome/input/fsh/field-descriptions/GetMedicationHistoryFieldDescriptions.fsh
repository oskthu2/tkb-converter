// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMedicationHistoryFieldDescriptions
* medicationMedicalRecord ^definition = "Patientens läkemedelshistorik"
* medicationMedicalRecord ^comment = "TKB-fält: `medicationMedicalRecord` (`MedicationMedicalRecordType`, kardinalitet 0..*)."
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
* medicationMedicalRecord.medicationMedicalRecordHeader.documentTime ^definition = "Ska ej anges"
* medicationMedicalRecord.medicationMedicalRecordHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (kardinalitet 0..0)."
* medicationMedicalRecord.medicationMedicalRecordHeader.patientId ^definition = "Personidentifierare för patienten."
* medicationMedicalRecord.medicationMedicalRecordHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional ^definition = "Information avseende dokumentation av uppgiften som tillgängliggörs.

Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses."
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
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
* medicationMedicalRecord.medicationMedicalRecordHeader.nullified ^definition = "Ska ej anges."
* medicationMedicalRecord.medicationMedicalRecordHeader.nullified ^comment = "TKB-fält: `../../nullified` (kardinalitet 0..0)."
* medicationMedicalRecord.medicationMedicalRecordHeader.nullifiedReason ^definition = "Ska ej anges."
* medicationMedicalRecord.medicationMedicalRecordHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0)."
* medicationMedicalRecord.medicationMedicalRecordBody ^comment = "TKB-fält: `../medicationMedicalRecordBody` (`MedicationMedicalRecordBodyType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription ^definition = "LÄKEMEDELSORDINATION.

Ordination som avser läkemedelsbehandling. De individuella läkemedelsordinationerna kan indelas i ordination som avser utsättning, förändrande läkemedelsordination, ordination som avser insättning och bekräftande läkemedelsordination. I slutenvård görs endast ordination, men i öppenvård krävs vanligtvis även en förskrivning (se nedan)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription ^comment = "TKB-fält: `../../medicationPrescription` (`MedicationPrescriptionType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionId ^definition = "Ordinations-id.

Unik identifierare för aktuell läkemedelsordination. Fältet extension motsvarar värdet documentId i headern, om inte ordinations-id är en UUID, då root-elementet istället motsvarar documentId i headern."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionId ^comment = "TKB-fält: `../../../prescriptionId` (`IIType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription ^definition = "Ordinationstyp.

Uppgift som anger om aktuell ordination ska räknas som en insättningsordination eller utsättningsordination (utsättningsordination = ordination som beskriver avslut av läkemedelsbehandling). Insättning används när läkemedlet är insatt, dvs. även en ändrad eller förnyad ordination har typen insättning. Kodverk: I, U."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription ^comment = "TKB-fält: `../../../typeOfPrescription` (`TypeOfPrescriptionEnum`, kardinalitet 1..1).

**Modellanteckning:** typeOfPrescription Tillåtna värden: I, U."
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
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator ^definition = "”Utvärderat av”.

Den hälso- och sjukvårdsperson/-enhet som utvärderat utfallet av ordinationen/förskrivningen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator ^comment = "TKB-fält: `../../../evaluator` (`HealthcareProfessionalType`, kardinalitet 0..1)."
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
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug ^comment = "TKB-fält: `../../../drug` (`DrugChoiceType`, kardinalitet 0..1)."
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
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength.value ^definition = "Värde för styrka.

I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength.value ^comment = "TKB-fält: `../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength.unit ^definition = "Enhet för styrka. Anges enligt UCUM [R3].

I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck, styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength.unit ^comment = "TKB-fält: `../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.form ^definition = "Läkemedelsform.

Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.form ^comment = "TKB-fält: `../../../../../form` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage ^definition = "Dosering.

Socialstyrelsens termbank: Terminologirådet; uppgift om mängd och periodicitet.

setDosage (fastdosering), maxiumumDosage (maxdosering) och conditionalDosage (villkorsdosering) anger samtliga mängd och periodicitet under en avgränsad tid, men med olika syfte. Normalt består en dosering av ett av dessa val men den kan även bestå av flera stycken, t.ex. vid upp- och nedtrappning av läkemedel. Dessa följer då varandra i tiden och utgör tillsammans den kompletta doseringen. De tre angivna attributen kan alltså, men behöver inte, förekomma samtidigt. Däremot måste minst ett av attributen fast dosering eller villkorsdosering alltid anges.

Anges ej vid ordinationstyp Utsättning."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage ^comment = "TKB-fält: `../../../../dosage` (`DosageType`, kardinalitet 0..*)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment ^definition = "Behandlingstid."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment ^comment = "TKB-fält: `../../../../../lengthOfTreatment` (`LengthOfTreatmentType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval ^definition = "Behandlingstid.

Tidsintervall under vilket läkemedlet ska användas enligt ordination. Exempel: 5-6 veckor."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval ^comment = "TKB-fält: `../../../../../../treatmentInterval` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.low ^comment = "TKB-fält: `../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.high ^comment = "TKB-fält: `../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.unit ^comment = "TKB-fält: `../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime ^definition = "Logiskt villkor som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas.

Sant = Behandlingstiden är en maxtid

Falskt = Behandlingstiden är inte en maxtid."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime ^comment = "TKB-fält: `../../../../../../isMaximumTreatmentTime` (`boolean`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.dosageInstruction ^definition = "Doseringsanvisning.

Källa: Socialstyrelsens termbank: Terminologirådet; beskrivning av dosering, användning och ändamål riktad till patient.

Text som beskriver doseringen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.dosageInstruction ^comment = "TKB-fält: `../../../../../dosageInstruction` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.unitDose ^definition = "Doseringsenhet.

Kod som anger den enhet som doseringen avser.

Exempel: tablett, ml, droppe

I dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod.

Via SIL kan doseringsenhet som text erhållas för vissa läkemedel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.unitDose ^comment = "TKB-fält: `../../../../../unitDose` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.shortNotation ^definition = "Kortnotation.

Text som ger en kort beskrivning av doseringen.

Exempel: 1x2"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.shortNotation ^comment = "TKB-fält: `../../../../../shortNotation` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage ^definition = "Fastdosering.

Dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger

dagligen.

Fastdosering kan utgöra Frekvensdosering, Perioddosering, Tillfällesdosering, Rampdosering, Engångsdosering och

Fritextdosering. Dessa alla har det gemensamt att de anger mängd och periodicitet, men på lite olika sätt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage ^comment = "TKB-fält: `../../../../../setDosage` (`SetDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage ^definition = "Maxdosering.

Dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage ^comment = "TKB-fält: `../../../../../maximumDosage` (`MaximumDosageTyp`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage ^definition = "Villkorsdosering.

Ordinerad mängd och periodicitet som gäller

om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage ^comment = "TKB-fält: `../../../../../conditionalDosage` (`ConditionalDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.conditionDescription ^definition = "Villkorstext.

Text som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".

Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.conditionDescription ^comment = "TKB-fält: `../../../../../../conditionDescription` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage ^definition = "Frekvensdosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage ^comment = "TKB-fält: `../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose ^comment = "TKB-fält: `../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency ^definition = "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency ^comment = "TKB-fält: `../../../../../../../frequency` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency.value ^comment = "TKB-fält: `../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit ^comment = "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage ^definition = "Perioddosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage ^comment = "TKB-fält: `../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose ^comment = "TKB-fält: `../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period ^definition = "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period ^comment = "TKB-fält: `../../../../../../../period` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period.value ^comment = "TKB-fält: `../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period.unit ^comment = "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage ^definition = "Rampdosering.

Innehåller uppgifter om en successiv ökning eller minskning av läkemedelsdosen under en angiven tid. Detta innebär i praktiken att en trappstegsfunktion skapas i den slutliga doseringsanvisningen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage ^comment = "TKB-fält: `../../../../../../rampedDosage` (`RampedDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep ^definition = "Den mängd som dosen ska ökas eller minskas med vid varje tidssteg (vid varje ”trappsteg”)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep ^comment = "TKB-fält: `../../../../../../../doseStep` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep.value ^definition = "Värdet.

Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep.value ^comment = "TKB-fält: `../../../../../../../../value` (`double`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit ^comment = "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep ^definition = "Den tid som ska förflyta mellan varje ändring av dosen (längden på ”trappsteget”)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep ^comment = "TKB-fält: `../../../../../../../timeStep` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep.value ^comment = "TKB-fält: `../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit ^comment = "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart ^definition = "Den dosering som gäller vid doseringsstegets start."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart ^comment = "TKB-fält: `../../../../../../../rampStart` (`RampEndpointType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage ^definition = "Frekvensdosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage ^comment = "TKB-fält: `../../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose ^definition = "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose ^comment = "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency ^definition = "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency ^comment = "TKB-fält: `../../../../../../../../../frequency` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value ^comment = "TKB-fält: `../../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage ^definition = "Perioddosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage ^comment = "TKB-fält: `../../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose ^comment = "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period ^definition = "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period ^comment = "TKB-fält: `../../../../../../../../../period` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value ^comment = "TKB-fält: `../../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose ^definition = "Engångsdosering.

Beskriver att intag eller applicering ska ske vid ett enda tillfälle."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose ^comment = "TKB-fält: `../../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose ^comment = "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low ^comment = "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high ^comment = "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time ^definition = "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\"."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time ^comment = "TKB-fält: `../../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation ^definition = "Fritextdosering

Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation ^comment = "TKB-fält: `../../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text ^definition = "Dosering angiven i klartext"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text ^comment = "TKB-fält: `../../../../../../../../../text` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd ^definition = "Den dosering som gäller vid doseringsstegets slut."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd ^comment = "TKB-fält: `../../../../../../../rampEnd` (`RampEndpointType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage ^definition = "Frekvensdosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage ^comment = "TKB-fält: `../../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose ^comment = "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency ^definition = "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency ^comment = "TKB-fält: `../../../../../../../../../frequency` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value ^comment = "TKB-fält: `../../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage ^definition = "Perioddosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage ^comment = "TKB-fält: `../../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose ^comment = "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period ^definition = "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period ^comment = "TKB-fält: `../../../../../../../../../period` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value ^comment = "TKB-fält: `../../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose ^definition = "Engångsdosering.

Beskriver att intag eller applicering ska ske vid ett enda tillfälle."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose ^comment = "TKB-fält: `../../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose ^comment = "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low ^comment = "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high ^comment = "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time ^definition = "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\"."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time ^comment = "TKB-fält: `../../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation ^definition = "Fritextdosering

Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation ^comment = "TKB-fält: `../../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text ^definition = "Dosering angiven i klartext"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text ^comment = "TKB-fält: `../../../../../../../../../text` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose ^definition = "Engångsdosering.

Beskriver att intag eller applicering ska ske vid ett enda tillfälle."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose ^comment = "TKB-fält: `../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose ^comment = "TKB-fält: `../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.low ^comment = "TKB-fält: `../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.high ^comment = "TKB-fält: `../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.unit ^comment = "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.time ^definition = "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\"."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.time ^comment = "TKB-fält: `../../../../../../../time` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation ^definition = "Fritextdosering

Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation ^comment = "TKB-fält: `../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation.text ^definition = "Dosering angiven i klartext"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation.text ^comment = "TKB-fält: `../../../../../../../text` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization ^definition = "Förskrivning.

Källa: Socialstyrelsens termbank, Terminologirådet: recept, rekvisition, livsmedelsanvisning, hjälpmedelskort eller dosrecept.

En förskrivning föregås alltid av en ordination. Varje förskrivning (förutom den första) är per definition ett nytt beslut, och därmed en ny ordination. I slutenvård görs endast ordination, men i öppenvård krävs även en förskrivning.

Utelämnas alltid om ordinationstypen är Utsättning."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization ^comment = "TKB-fält: `../../../dispensationAuthorization` (`DispensationAuthorizationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizationId ^definition = "Förskrivnings-id.

Unik identifierare för aktuell förskrivning"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizationId ^comment = "TKB-fält: `../../../../dispensationAuthorizationId` (`IIType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.validUntil ^definition = "Sista giltighetsdag.

Expeditionsunderlagets sista giltighetsdag."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.validUntil ^comment = "TKB-fält: `../../../../validUntil` (`DateType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.receivingPharmacy ^definition = "Mottagande apotek.

Apoteks-id (GLN eller EAN) vid direktadressering av expedieringsunderlag."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.receivingPharmacy ^comment = "TKB-fält: `../../../../receivingPharmacy` (`IIType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval ^definition = "Utlämningsintervall.

Minsta tidsintervall, i dagar, som ska förflyta mellan två utlämningar. Minsta värde: 1 dag

Största värde: 12 månader."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval ^comment = "TKB-fält: `../../../../minimumDispensationInterval` (`PQType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval.value ^definition = "Utlämningsintervall värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval.value ^comment = "TKB-fält: `../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval.unit ^definition = "Utlämningsintervall enhet.

Enhet för det utlämningsintervall. Kan anges i dagar, veckor eller månader."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval.unit ^comment = "TKB-fält: `../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.totalAmount ^definition = "Totalmängd.

Den totala mängd (i förpackningsenheter) av ordinerat läkemedel som får lämnas ut enligt denna förskrivning oavsett om det sker vid ett eller flera tillfällen. Om totalAmount anges måste också packageUnit anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.totalAmount ^comment = "TKB-fält: `../../../../totalAmount` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.packageUnit ^definition = "Förpackningsenhet.

Text som anger den enhet som används för att uttrycka mängd i de förpackningar som säljs. Exempel: styck, ml, mg. Om packageUnit anges måste också totalAmount anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.packageUnit ^comment = "TKB-fält: `../../../../packageUnit` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.distributionMethod ^definition = "Distributionssätt.

Text som beskriver hur det förskrivna läkemedlet ska distribueras till vård- och omsorgstagaren. Exempel Apodos, Hemleverans, Hämtas."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.distributionMethod ^comment = "TKB-fält: `../../../../distributionMethod` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer ^definition = "Förskrivare.

Hälso- och sjukvårdspersonal med förskrivningsrätt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer ^comment = "TKB-fält: `../../../../dispensationAuthorizer` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizerComment ^definition = "Förskrivares kommentar.

Kommentar till apoteket."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizerComment ^comment = "TKB-fält: `../../../../dispensationAuthorizerComment` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.firstDispensationBefore ^definition = "Första uttag före.

Datum före vilket första uttag av läkemedel måste göras."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.firstDispensationBefore ^comment = "TKB-fält: `../../../../firstDispensationBefore` (`DateType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.prescriptionSignatura ^definition = "Doseringstext på recept.

Instruktion till patienten."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.prescriptionSignatura ^comment = "TKB-fält: `../../../../prescriptionSignatura` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.nonReplaceable ^definition = "Bytes ej.

Anger att ordinatör eller patient beslutat att förskriven artikel ej får bytas ut.

Tillåtna värden: Prescriber, Patient

Lämnas fältet tomt antas det betyda att läkemedlet får bytas ut."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.nonReplaceable ^comment = "TKB-fält: `../../../../nonReplaceable` (`NonReplaceableEnum`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug ^definition = "Läkemedelsval.

OBS: Ett och endast ett av följande alternativ:

unstructuredDrugInformation (fritextval/extemporeberedning)

merchandise (handelsvara)

drugArticle (läkemedelsartikel)

drug (läkemedelsprodukt)

generics (generika/utbytesgrupp)"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug ^comment = "TKB-fält: `../../../../drug` (`DrugChoiceType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.comment ^definition = "Kommentar om läkemedelsval.

Text som innehåller en kommentar till det ordinerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.comment ^comment = "TKB-fält: `../../../../../comment` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation ^definition = "Fritextval.

Används för extemporeberedning, licensläkemedel etc."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation ^comment = "TKB-fält: `../../../../../unstructuredDrugInformation` (`UnstructuredDrugInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation.unstructuredInformation ^definition = "Fritextbeskrivning."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation.unstructuredInformation ^comment = "TKB-fält: `../../../../../../unstructuredInformation` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise ^definition = "Handelsvara."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise ^comment = "TKB-fält: `../../../../../merchandise` (`MerchandiseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise.articleNumber ^definition = "Varunummer.

Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1.

Får ej anges för läkemedel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise.articleNumber ^comment = "TKB-fält: `../../../../../../articleNumber` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle ^definition = "Läkemedelsartikel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle ^comment = "TKB-fält: `../../../../../drugArticle` (`DrugArticleType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle.nplPackId ^definition = "NPL pack-id.

Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle.nplPackId ^comment = "TKB-fält: `../../../../../../nplPackId` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug ^definition = "Läkemedelsprodukt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug ^comment = "TKB-fält: `../../../../../drug` (`DrugType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.nplId ^definition = "NPL-id.

Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.nplId ^comment = "TKB-fält: `../../../../../../nplId` (`CVType`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.atcCode ^definition = "ATC-kod.

atcKod + atcKodBeskrivning i SIL.

Klassificeringskod för läkemedlet på sjuställig nivå. OID:

1.2.752.129.2.2.3.1.1.

Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/

I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/

ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.atcCode ^comment = "TKB-fält: `../../../../../../atcCode` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.routeOfAdministration ^definition = "Administreringssätt.

Hur produkten ska intas/administreras. Kan anges med SNOMED-kod."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.routeOfAdministration ^comment = "TKB-fält: `../../../../../../routeOfAdministration` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.pharmaceuticalForm ^definition = "Läkemedelsform enligt SIL, t.ex Tablett"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.pharmaceuticalForm ^comment = "TKB-fält: `../../../../../../pharmaceuticalForm` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strength ^definition = "Styrka enligt SIL, t.ex 20.0

I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strength ^comment = "TKB-fält: `../../../../../../strength` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strengthUnit ^definition = "Enhet på styrka enligt SIL, t.ex mg.

I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strengthUnit ^comment = "TKB-fält: `../../../../../../strengthUnit` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics ^definition = "Generiskt läkemedelsval."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics ^comment = "TKB-fält: `../../../../../generics` (`GenericsType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.substance ^definition = "Substansgrupp.

Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.substance ^comment = "TKB-fält: `../../../../../../substance` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength ^definition = "Styrka.

Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength ^comment = "TKB-fält: `../../../../../../strength` (`PQType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength.value ^definition = "Värde för styrka.

I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength.value ^comment = "TKB-fält: `../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength.unit ^definition = "Enhet för styrka. Anges enligt UCUM [R3].

I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength.unit ^comment = "TKB-fält: `../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.form ^definition = "Läkemedelsform.

Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.form ^comment = "TKB-fält: `../../../../../../form` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration ^definition = "Information om administrering av läkemedel. Bara administreringstillfällen som faktiskt ägt rum kan anges, planerade administreringstillfällen kan inte anges i detta kontrakt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration ^comment = "TKB-fält: `../../../administration` (`AdministrationType`, kardinalitet 0..*)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationId ^definition = "Administrerings-id.

Unik identifierare för aktuell administrering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationId ^comment = "TKB-fält: `../../../../ administrationId` (`IIType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationTime ^definition = "Tidsintervall för läkemedelsadministreringen. Om administreringen sker vid en viss tidpunkt sätts start och end till samma tidpunkt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationTime ^comment = "TKB-fält: `../../../../administrationTime` (`TimePeriodType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationComment ^definition = "Kommentar till administrering av vårdpersonal. Exempelvis ”patienten kräktes 30 minuter efter administrering”."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationComment ^comment = "TKB-fält: `../../../../administrationComment` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.routeOfAdministration ^definition = "Administreringssätt.

Hur produkten ska intas/administreras.

Kan anges med SNOMED-kod."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.routeOfAdministration ^comment = "TKB-fält: `../../../../routeOfAdministration` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional ^definition = "Information om administrerande vårdpersonal och -organisation."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional ^comment = "TKB-fält: `../../../../administeringHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug ^definition = "Läkemedelsval.

OBS: Ett och endast ett av följande alternativ:

unstructuredDrugInformation (fritextval/extemporeberedning)

merchandise (handelsvara)

drugArticle (läkemedelsartikel)

drug (läkemedelsprodukt)

generics (generika/utbytesgrupp)"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug ^comment = "TKB-fält: `../../../../drug` (`DrugChoiceType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.comment ^definition = "Kommentar om läkemedelsval.

Text som innehåller en kommentar till det administrerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.comment ^comment = "TKB-fält: `../../../../../comment` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation ^definition = "Fritextval.

Används för extemporeberedning, licensläkemedel etc."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation ^comment = "TKB-fält: `../../../../../unstructuredDrugInformation` (`UnstructuredDrugInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation.unstructuredInformation ^definition = "Fritextbeskrivning."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation.unstructuredInformation ^comment = "TKB-fält: `../../../../../../unstructuredInformation` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise ^definition = "Handelsvara."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise ^comment = "TKB-fält: `../../../../../merchandise` (`MerchandiseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise.articleNumber ^definition = "Varunummer.

Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1.

Får ej anges för läkemedel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise.articleNumber ^comment = "TKB-fält: `../../../../../../articleNumber` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle ^definition = "Läkemedelsartikel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle ^comment = "TKB-fält: `../../../../../drugArticle` (`DrugArticleType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle.nplPackId ^definition = "NPL pack-id.

Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle.nplPackId ^comment = "TKB-fält: `../../../../../../nplPackId` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug ^definition = "Läkemedelsprodukt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug ^comment = "TKB-fält: `../../../../../drug` (`DrugType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.nplId ^definition = "NPL-id.

Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.nplId ^comment = "TKB-fält: `../../../../../../nplId` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.atcCode ^definition = "ATC-kod.

atcKod + atcKodBeskrivning i SIL.

Klassificeringskod för läkemedlet på sjuställig nivå. OID:

1.2.752.129.2.2.3.1.1.

Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/

I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/

ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.atcCode ^comment = "TKB-fält: `../../../../../../atcCode` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.routeOfAdministration ^definition = "Administreringssätt.

Hur produkten ska intas/administreras. Kan anges med SNOMED-kod."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.routeOfAdministration ^comment = "TKB-fält: `../../../../../../routeOfAdministration` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.pharmaceuticalForm ^definition = "Läkemedelsform enligt SIL, t.ex Tablett"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.pharmaceuticalForm ^comment = "TKB-fält: `../../../../../../pharmaceuticalForm` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strength ^definition = "Styrka enligt SIL, t.ex 20.0

I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strength ^comment = "TKB-fält: `../../../../../../strength` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strengthUnit ^definition = "Enhet på styrka enligt SIL, t.ex mg.

I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strengthUnit ^comment = "TKB-fält: `../../../../../../strengthUnit` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics ^definition = "Generiskt läkemedelsval."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics ^comment = "TKB-fält: `../../../../../generics` (`GenericsType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.substance ^definition = "Substansgrupp.

Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.substance ^comment = "TKB-fält: `../../../../../../substance` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength ^definition = "Styrka.

Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength ^comment = "TKB-fält: `../../../../../../strength` (`PQType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength.value ^definition = "Värde för styrka.

I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength.value ^comment = "TKB-fält: `../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength.unit ^definition = "Enhet för styrka. Anges enligt UCUM [R3].

I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength.unit ^comment = "TKB-fält: `../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.form ^definition = "Läkemedelsform.

Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.form ^comment = "TKB-fält: `../../../../../../form` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage ^definition = "Dosering.

Socialstyrelsens termbank: Terminologirådet; uppgift om mängd och periodicitet.

setDosage (fastdosering), maxiumumDosage (maxdosering) och conditionalDosage (villkorsdosering) anger samtliga mängd och periodicitet under en avgränsad tid, men med olika syfte. Normalt består en dosering av ett av dessa val men den kan även bestå av flera stycken, t.ex. vid upp- och nedtrappning av läkemedel. Dessa följer då varandra i tiden och utgör tillsammans den kompletta doseringen. De tre angivna attributen kan alltså, men behöver inte, förekomma samtidigt. Däremot måste minst ett av attributen fast dosering eller villkorsdosering alltid anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage ^comment = "TKB-fält: `../../../../../dosage` (`DosageType`, kardinalitet 0..*)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment ^definition = "Ska ej anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment ^comment = "TKB-fält: `../../../../../../lengthOfTreatment` (`LengthOfTreatmentType`, kardinalitet 0..0)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.unitDose ^definition = "Doseringsenhet.

Kod som anger den enhet som doseringen avser.

Exempel: tablett, ml, droppe

I dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod.

Via SIL kan doseringsenhet som text erhållas för vissa läkemedel."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.unitDose ^comment = "TKB-fält: `../../../../../../unitDose` (`CVType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.shortNotation ^definition = "Kortnotation.

Text som ger en kort beskrivning av doseringen.

Exempel: 1x2"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.shortNotation ^comment = "TKB-fält: `../../../../../../shortNotation` (`string`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage ^definition = "Fastdosering.

Dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger

dagligen.

Fastdosering kan utgöra Frekvensdosering, Perioddosering, Tillfällesdosering, Rampdosering, Engångsdosering och

Fritextdosering. Dessa alla har det gemensamt att de anger mängd och periodicitet, men på lite olika sätt."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage ^comment = "TKB-fält: `../../../../../../setDosage` (`SetDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage ^definition = "Maxdosering.

Dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage ^comment = "TKB-fält: `../../../../../../maximumDosage` (`MaximumDosageTyp`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage ^definition = "Villkorsdosering.

Ordinerad mängd och periodicitet som gäller

om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage ^comment = "TKB-fält: `../../../../../../conditionalDosage` (`ConditionalDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.conditionDescription ^definition = "Villkorstext.

Text som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".

Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.conditionDescription ^comment = "TKB-fält: `../../../../../../../conditionDescription` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage ^definition = "Frekvensdosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage ^comment = "TKB-fält: `../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose ^definition = "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose ^comment = "TKB-fält: `../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency ^definition = "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency ^comment = "TKB-fält: `../../../../../../../../frequency` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency.value ^comment = "TKB-fält: `../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit ^comment = "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage ^definition = "Perioddosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage ^comment = "TKB-fält: `../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose ^comment = "TKB-fält: `../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period ^definition = "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period ^comment = "TKB-fält: `../../../../../../../../period` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period.value ^comment = "TKB-fält: `../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period.unit ^comment = "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage ^definition = "Rampdosering.

Innehåller uppgifter om en successiv ökning eller minskning av läkemedelsdosen under en angiven tid."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage ^comment = "TKB-fält: `../../../../../../../rampedDosage` (`RampedDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep ^definition = "Den mängd som dosen ska ökas eller minskas med vid varje tidssteg"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep ^comment = "TKB-fält: `../../../../../../../../doseStep` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep.value ^definition = "Värdet."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep.value ^comment = "TKB-fält: `../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit ^comment = "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep ^definition = "Den tid som ska förflyta mellan varje ändring av dosen"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep ^comment = "TKB-fält: `../../../../../../../../timeStep` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep.value ^comment = "TKB-fält: `../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit ^comment = "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart ^definition = "den dosering som gäller vid Doseringsstegets start"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart ^comment = "TKB-fält: `../../../../../../../../rampStart` (`RampEndpointType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage ^definition = "Frekvensdosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage ^comment = "TKB-fält: `../../../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose ^comment = "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency ^definition = "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency ^comment = "TKB-fält: `../../../../../../../../../../frequency` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value ^comment = "TKB-fält: `../../../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage ^definition = "Perioddosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage ^comment = "TKB-fält: `../../../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose ^comment = "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period ^definition = "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period ^comment = "TKB-fält: `../../../../../../../../../../period` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value ^comment = "TKB-fält: `../../../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose ^definition = "Engångsdosering.

Beskriver att intag eller applicering ska ske vid ett enda tillfälle."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose ^comment = "TKB-fält: `../../../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose ^comment = "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low ^comment = "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high ^comment = "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time ^definition = "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\"."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time ^comment = "TKB-fält: `../../../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation ^definition = "Fritextdosering

Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation ^comment = "TKB-fält: `../../../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text ^definition = "Dosering angiven i klartext"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text ^comment = "TKB-fält: `../../../../../../../../../../text` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd ^definition = "den dosering som gäller vid Doseringsstegets slut"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd ^comment = "TKB-fält: `../../../../../../../../rampEnd` (`RampEndpointType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage ^definition = "Frekvensdosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage ^comment = "TKB-fält: `../../../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose ^definition = "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose ^comment = "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency ^definition = "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency ^comment = "TKB-fält: `../../../../../../../../../../frequency` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value ^comment = "TKB-fält: `../../../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage ^definition = "Perioddosering.

Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage ^comment = "TKB-fält: `../../../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose ^comment = "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low ^comment = "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high ^comment = "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period ^definition = "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period ^comment = "TKB-fält: `../../../../../../../../../../period` (`PQType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value ^definition = "Värde."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value ^comment = "TKB-fält: `../../../../../../../../../../../value` (`double`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit ^definition = "Enhet. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose ^definition = "Engångsdosering.

Beskriver att intag eller applicering ska ske vid ett enda tillfälle."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose ^comment = "TKB-fält: `../../../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose ^comment = "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low ^comment = "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high ^comment = "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit ^comment = "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time ^definition = "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\"."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time ^comment = "TKB-fält: `../../../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation ^definition = "Fritextdosering

Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation ^comment = "TKB-fält: `../../../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text ^definition = "Dosering angiven i klartext"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text ^comment = "TKB-fält: `../../../../../../../../../../text` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose ^definition = "Engångsdosering.

Beskriver att intag eller applicering ska ske vid ett enda tillfälle."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose ^comment = "TKB-fält: `../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose ^definition = "Den mängd läkemedel som ska intas eller appliceras."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose ^comment = "TKB-fält: `../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.low ^definition = "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.low ^comment = "TKB-fält: `../../../../../../../../../low` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.high ^definition = "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.high ^comment = "TKB-fält: `../../../../../../../../../high` (`double`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.unit ^definition = "Enheten. Anges enligt UCUM [R3]."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.unit ^comment = "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.time ^definition = "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal. dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\"."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.time ^comment = "TKB-fält: `../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation ^definition = "Fritextdosering

Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation ^comment = "TKB-fält: `../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation.text ^definition = "Dosering angiven i klartext"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation.text ^comment = "TKB-fält: `../../../../../../../../text` (`string`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation ^definition = "Sambandsklass

Alla de meddelandeposter (angivna med referredInformation.id) som i ordinationen pekas ut med samma relation.code ska anges i samma relation (teknisk aggregering)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation ^comment = "TKB-fält: `../../../relation` (`RelationType`, kardinalitet 0..*)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.code ^definition = "Beskriver hur ordinationen relaterar till den refererade informationsmängden.

Denna kod bör, i den mån det är tillämpligt, hämtas från den lista av sambandstyper som publiceras i senaste version av nationell informationsstruktur (NI) (ref R14).

Exempel: om ordinationsbeslutet baseras på en diagnosticerad postoperativ infektion, så bör detta anges genom användande av SNOMED CT-koden “416083004 | har orsak”."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.code ^comment = "TKB-fält: `../../../../code` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation ^definition = "Information kring den refererade informationsmängden som tjänstekonsument behöver för att avgöra om och hur den refererade informationen ska hämtas."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation ^comment = "TKB-fält: `../../../../referredInformation` (`ReferredInformationType`, kardinalitet 1..*)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.id ^definition = "Id till den aktivitet eller observation som refereras."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.id ^comment = "TKB-fält: `../../../../../id` (`IIType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.type ^definition = "Typ av interaktion som behöver nyttjas för att ta del av den refererade informationen. Motsvarar fältet categorization i engagemangsindex.

I skrivande stund finns inget OID-satt kodverk över olika categorization-typer, vilket betyder att fältet originalText behöver användas. Från den dag ett OID-satt kodverk finns tillgängligt bör detta användas istället.

type.originalText får enbart sättas till ett av följande

caa-ga för att referera till aktiviteter som tjänstekonsument kan hämta mha GetActivities

chb-go för att referera till observationer som tjänstekonsument kan hämta mha GetObservations"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.type ^comment = "TKB-fält: `../../../../../type` (`CVType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner ^definition = "Vårdgivare som är informationsägare av den refererade informationen.

Används av tjänstekonsument för spärrhantering."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner ^comment = "TKB-fält: `../../../../../informationOwner` (`InformationOwnerType`, kardinalitet 1..1)."
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner.id ^definition = "Informationsägande vårdgivare"
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner.id ^comment = "TKB-fält: `../../../../../../id` (`IIType`, kardinalitet 1..1)."
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
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.subCode ^definition = "Inga subkoder är specificerade."
* result.subCode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
