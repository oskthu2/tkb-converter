# GetMedicationHistory - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMedicationHistory**

## Logical Model: GetMedicationHistory 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getmedicationhistory | *Version*:2.2 |
| Active as of 2026-11-09 | *Computable Name*:GetMedicationHistory |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetMedicationHistory (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetMedicationHistoryResponder:2). Representerar responsens informationsstruktur — läkemedelshistorik per patient. 
OBS: Kontraktet är tämligen omfattande. Se tillämpningsanvisningen (AB_clinicalprocess_activityprescription_actoutcome.docx) för implementationsdetaljer. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-actoutcome|current/StructureDefinition/StructureDefinition-getmedicationhistory.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmedicationhistory.csv), [Excel](StructureDefinition-getmedicationhistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmedicationhistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getmedicationhistory",
  "version" : "2.2",
  "name" : "GetMedicationHistory",
  "title" : "GetMedicationHistory",
  "status" : "active",
  "date" : "2026-11-09T03:15:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetMedicationHistory\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetMedicationHistoryResponder:2).\nRepresenterar responsens informationsstruktur — läkemedelshistorik per patient.\n\nOBS: Kontraktet är tämligen omfattande. Se tillämpningsanvisningen\n(AB_clinicalprocess_activityprescription_actoutcome.docx) för implementationsdetaljer.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getmedicationhistory",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmedicationhistory",
      "path" : "getmedicationhistory",
      "short" : "GetMedicationHistory",
      "definition" : "Logisk modell för tjänstekontraktet GetMedicationHistory\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetMedicationHistoryResponder:2).\nRepresenterar responsens informationsstruktur — läkemedelshistorik per patient.\n\nOBS: Kontraktet är tämligen omfattande. Se tillämpningsanvisningen\n(AB_clinicalprocess_activityprescription_actoutcome.docx) för implementationsdetaljer."
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord",
      "path" : "getmedicationhistory.medicationMedicalRecord",
      "short" : "MedicationMedicalRecordType",
      "definition" : "Patientens läkemedelshistorik",
      "comment" : "TKB-fält: `medicationMedicalRecord` (`MedicationMedicalRecordType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader",
      "short" : "PatientSummaryHeaderType",
      "definition" : "Innehåller basinformation om dokumentet, inklusive information om vid vilken vårdkontakt som ordinationen skedde.\n\nNotera: accountableHealthCareProfessional anges till den som registrerat informationen. Ordinatör, förskrivare och administrerande vårdpersonal anges i Bodyn.",
      "comment" : "TKB-fält: `../medicationMedicalRecordHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.documentId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.documentId",
      "short" : "documentId",
      "definition" : "Identifierare för uppgift i patientjournal.\n\n(**vanligtvis ordinations-id eller ordinations-id kompletterad med löpnummer i de fall där källsystemet har 1..N st förskrivningar knutna till en enskild ordination).\n\nIdentifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.sourceSystemHSAId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "Det källsystem som uppgiften lagras i. Sätts till källsystemets HSA-id.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.documentTitle",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.documentTitle",
      "short" : "documentTitle",
      "definition" : "Titel som beskriver den information som tillgängliggörs.",
      "comment" : "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.documentTime",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.documentTime",
      "short" : "documentTime",
      "definition" : "Ska ej anges",
      "comment" : "TKB-fält: `../../documentTime` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.patientId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.patientId",
      "short" : "patientId",
      "definition" : "Personidentifierare för patienten.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional",
      "short" : "accountableHealthcareProfessional",
      "definition" : "Information avseende dokumentation av uppgiften som tillgängliggörs.\n\nNotera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses.",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator",
      "short" : "LegalAuthenticatorType",
      "definition" : "Information avseende signering av uppgiften som tillgängliggörs.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.signatureTime",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.signatureTime",
      "short" : "signatureTime",
      "definition" : "Tidpunkt då uppgiften signerades.",
      "comment" : "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "legalAuthenticatorHSAId",
      "definition" : "HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "legalAuthenticatorName",
      "definition" : "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.approvedForPatient",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.approvedForPatient",
      "short" : "approvedForPatient",
      "definition" : "Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst).\n\nOm uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient.\n\nNotera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall ska källsystemet uppdatera engagemangsindex.",
      "comment" : "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.careContactId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.careContactId",
      "short" : "careContactId",
      "definition" : "Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.nullified",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.nullified",
      "short" : "nullified",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../nullified` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.nullifiedReason",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordHeader.nullifiedReason",
      "short" : "nullifiedReason",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody",
      "short" : "MedicationMedicalRecordBodyType",
      "definition" : "medicationMedicalRecordBody",
      "comment" : "TKB-fält: `../medicationMedicalRecordBody` (`MedicationMedicalRecordBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription",
      "short" : "MedicationPrescriptionType",
      "definition" : "LÄKEMEDELSORDINATION.\n\nOrdination som avser läkemedelsbehandling. De individuella läkemedelsordinationerna kan indelas i ordination som avser utsättning, förändrande läkemedelsordination, ordination som avser insättning och bekräftande läkemedelsordination. I slutenvård görs endast ordination, men i öppenvård krävs vanligtvis även en förskrivning (se nedan).",
      "comment" : "TKB-fält: `../../medicationPrescription` (`MedicationPrescriptionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionId",
      "short" : "prescriptionId",
      "definition" : "Ordinations-id.\n\nUnik identifierare för aktuell läkemedelsordination. Fältet extension motsvarar värdet documentId i headern, om inte ordinations-id är en UUID, då root-elementet istället motsvarar documentId i headern.",
      "comment" : "TKB-fält: `../../../prescriptionId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription",
      "short" : "typeOfPrescription",
      "definition" : "Ordinationstyp.\n\nUppgift som anger om aktuell ordination ska räknas som en insättningsordination eller utsättningsordination (utsättningsordination = ordination som beskriver avslut av läkemedelsbehandling). Insättning används när läkemedlet är insatt, dvs. även en ändrad eller förnyad ordination har typen insättning. Kodverk: I, U.",
      "comment" : "TKB-fält: `../../../typeOfPrescription` (`TypeOfPrescriptionEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** typeOfPrescription Tillåtna värden: I, U.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/ValueSet/typeofprescription-vs"
      }
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionStatus",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionStatus",
      "short" : "prescriptionStatus",
      "definition" : "Ordinationsstatus.\n\nAnger ordinationens aktuella status [Active, Inactive]\n\nEn aktiv ordination är den sista i sin ordinationskedja. Alla andra ordinationer i samma ordinationskedja är inaktiva.",
      "comment" : "TKB-fält: `../../../prescriptionStatus` (`PrescriptionStatusEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/ValueSet/prescriptionstatus-vs"
      }
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionNote",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionNote",
      "short" : "prescriptionNote",
      "definition" : "Notat.\n\nText som beskriver läkemedelsordinationen som utgör del av Läkemedelsberättelse. Exempel: Text som beskriver varför man satt in eller gjort dosändringar.",
      "comment" : "TKB-fält: `../../../prescriptionNote` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason",
      "short" : "PrescriptionReasonType",
      "definition" : "Ordinationshuvudorsak.\n\nDen eller de viktigaste av de ordinationsorsaker som anges, om fler än en.",
      "comment" : "TKB-fält: `../../../principalPrescriptionReason` (`PrescriptionReasonType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.reason",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.reason",
      "short" : "reason",
      "definition" : "Ordinationsorsak.\n\nSkäl till en viss ordination. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO, Nationell källa för ordinationsorsak). Se [R8].",
      "comment" : "TKB-fält: `../../../../reason` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.otherReason",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.otherReason",
      "short" : "otherReason",
      "definition" : "Om koden för ”Annan ordinationsorsak” (SNOMED: 46021000052104) väljs för föregående kod så anges beskrivning här.",
      "comment" : "TKB-fält: `../../../../otherReason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason",
      "short" : "PrescriptionReasonType",
      "definition" : "Övriga ordinationsorsaker.\n\nAnges en övrig ordinationsorsak måste minst en ordinationshuvudorsak vara angiven.",
      "comment" : "TKB-fält: `../../../additionalPrescriptionReason` (`PrescriptionReasonType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.reason",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.reason",
      "short" : "reason",
      "definition" : "Ordinationsorsak.\n\nSkäl till en viss ordination. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Se [R8].",
      "comment" : "TKB-fält: `../../../../reason` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.otherReason",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.otherReason",
      "short" : "otherReason",
      "definition" : "Om koden för ”Annan ordinationsorsak” (SNOMED: 46021000052104) väljs för föregående kod så anges beskrivning här.",
      "comment" : "TKB-fält: `../../../../otherReason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluationTime",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluationTime",
      "short" : "evaluationTime",
      "definition" : "Utvärderingstidpunkt (nästa planerade utvärderingstidpunkt).\n\nTidpunkt vid vilken behandlingen ska utvärderas.",
      "comment" : "TKB-fält: `../../../evaluationTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.treatmentPurpose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.treatmentPurpose",
      "short" : "treatmentPurpose",
      "definition" : "Behandlingsändamål.\n\nText som beskriver avsikten med läkemedelsbehandlingen för vård- och omsorgstagaren. Exempel: Mot högt blodtryck.",
      "comment" : "TKB-fält: `../../../treatmentPurpose` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionChainId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionChainId",
      "short" : "prescriptionChainId",
      "definition" : "Ordinationskedje-id.\n\nLokal identifierare för den ordinationskedja i vilken aktuell ordination ingår. Serie av läkemedelsordinationer med gemensam indikation, gemensam verksam substans och gemensam läkemedelsform",
      "comment" : "TKB-fält: `../../../prescriptionChainId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.precedingPrescriptionId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.precedingPrescriptionId",
      "short" : "precedingPrescriptionId",
      "definition" : "Föregående ordinations-id.\n\nReferens till föregående ordination i ordinationskedja.",
      "comment" : "TKB-fält: `../../../precedingPrescriptionId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.succeedingPrescriptionId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.succeedingPrescriptionId",
      "short" : "succeedingPrescriptionId",
      "definition" : "Efterföljande ordinations-id.\n\nReferens till efterföljande ordination i ordinationskedja.",
      "comment" : "TKB-fält: `../../../succeedingPrescriptionId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber",
      "short" : "prescriber",
      "definition" : "Ordinatör.\n\nIcke att beblanda med den person som den som registrerat informationen, och som är den person som återfinns i accountableHealthcareProfessional i medicationMedicalRecordHeader.\n\nMåste anges om selfMedication = false.",
      "comment" : "TKB-fält: `../../../prescriber` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator",
      "short" : "evaluator",
      "definition" : "”Utvärderat av”.\n\nDen hälso- och sjukvårdsperson/-enhet som utvärderat utfallet av ordinationen/förskrivningen.",
      "comment" : "TKB-fält: `../../../evaluator` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfFirstTreatment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfFirstTreatment",
      "short" : "startOfFirstTreatment",
      "definition" : "Första insättningstidpunkt.\n\nBeräknas som insättningstidpunkt för första ordinationen i ordinationskedjan.",
      "comment" : "TKB-fält: `../../../startOfFirstTreatment` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfTreatment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfTreatment",
      "short" : "startOfTreatment",
      "definition" : "Insättningstidpunkt.\n\nDatum då patienten ska börja ta sitt läkemedel/läkemedlet ska administreras för första gången. Vid ordinationstyp ”Insättning” sätts detta till samma som registreringstidpunkt (authorTime i  headern) om inget annat anges här.\n\nÄr obligatorisk vid ordinationstyp ”Insättning”.",
      "comment" : "TKB-fält: `../../../startOfTreatment` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatment",
      "short" : "endOfTreatment",
      "definition" : "Utsättningstidpunkt.\n\nDatum då patienten ska upphöra ta sitt läkemedel/då läkemedlet ska sluta administreras. OBS, kan anges både vid ordinationer av typ ”Insättning” och ”Utsättning”.",
      "comment" : "TKB-fält: `../../../endOfTreatment` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatmentReason",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatmentReason",
      "short" : "endOfTreatmentReason",
      "definition" : "Utsättningsorsak.\n\nOrsak som ordinatör anger för utsättning.",
      "comment" : "TKB-fält: `../../../endOfTreatmentReason` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.selfMedication",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.selfMedication",
      "short" : "selfMedication",
      "definition" : "Egenmedicinering.\n\nAnger om ordinationen är utfärdad av patienten själv",
      "comment" : "TKB-fält: `../../../selfMedication` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug",
      "short" : "DrugChoiceType",
      "definition" : "Läkemedelsval.\n\nOBS: Ett och endast ett av följande alternativ:\n\nunstructuredDrugInformation (fritextval/extemporeberedning)\n\nmerchandise (handelsvara)\n\ndrugArticle (läkemedelsartikel)\n\ndrug (läkemedelsprodukt)\n\ngenerics (generika/utbytesgrupp)",
      "comment" : "TKB-fält: `../../../drug` (`DrugChoiceType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getmedicationhistory-drug-choice",
        "severity" : "error",
        "human" : "Exakt ett av unstructuredDrugInformation, merchandise, drugArticle, drug och generics ska anges i läkemedelsvalet (DrugChoiceType, TKB 7.2).",
        "expression" : "unstructuredDrugInformation.count() + merchandise.count() + drugArticle.count() + drug.count() + generics.count() = 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getmedicationhistory"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.comment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.comment",
      "short" : "comment",
      "definition" : "Kommentar om läkemedelsval.\n\nText som innehåller en kommentar till det ordinerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges.",
      "comment" : "TKB-fält: `../../../../comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation",
      "short" : "UnstructuredDrugInformationType",
      "definition" : "Fritextval.\n\nAnvänds för extemporeberedning, licensläkemedel etc.",
      "comment" : "TKB-fält: `../../../../unstructuredDrugInformation` (`UnstructuredDrugInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation.unstructuredInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation.unstructuredInformation",
      "short" : "unstructuredInformation",
      "definition" : "Fritextbeskrivning.",
      "comment" : "TKB-fält: `../../../../../unstructuredInformation` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise",
      "short" : "MerchandiseType",
      "definition" : "Handelsvara.",
      "comment" : "TKB-fält: `../../../../merchandise` (`MerchandiseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise.articleNumber",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise.articleNumber",
      "short" : "articleNumber",
      "definition" : "Varunummer.\n\nFrån SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1.\n\nFår ej anges för läkemedel.",
      "comment" : "TKB-fält: `../../../../../articleNumber` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle",
      "short" : "DrugArticleType",
      "definition" : "Läkemedelsartikel.",
      "comment" : "TKB-fält: `../../../../drugArticle` (`DrugArticleType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle.nplPackId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle.nplPackId",
      "short" : "nplPackId",
      "definition" : "NPL pack-id.\n\nUnik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2.",
      "comment" : "TKB-fält: `../../../../../nplPackId` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug",
      "short" : "DrugType",
      "definition" : "Läkemedelsprodukt.",
      "comment" : "TKB-fält: `../../../../drug` (`DrugType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.nplId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.nplId",
      "short" : "nplId",
      "definition" : "NPL-id.\n\nNationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1.\n\nAlla producenter av kontraktet ska skicka code, codeSystem samt displayName.\n\nAntingen nplId eller atcCode måste anges.",
      "comment" : "TKB-fält: `../../../../../nplId` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.atcCode",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.atcCode",
      "short" : "atcCode",
      "definition" : "ATC-kod.\n\natcKod + atcKodBeskrivning i SIL.\n\nKlassificeringskod för läkemedlet på sjuställig nivå. OID:\n\n1.2.752.129.2.2.3.1.1.\n\nUnderhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/\n\nI Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/\n\nATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde.\n\nAntingen nplId eller atcCode måste anges.",
      "comment" : "TKB-fält: `../../../../../atcCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.routeOfAdministration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.routeOfAdministration",
      "short" : "routeOfAdministration",
      "definition" : "Administreringssätt.\n\nHur produkten ska intas/administreras. Kan anges med SNOMED-kod.",
      "comment" : "TKB-fält: `../../../../../routeOfAdministration` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.pharmaceuticalForm",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.pharmaceuticalForm",
      "short" : "pharmaceuticalForm",
      "definition" : "Läkemedelsform enligt SIL, t.ex Tablett",
      "comment" : "TKB-fält: `../../../../../pharmaceuticalForm` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strength",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strength",
      "short" : "strength",
      "definition" : "Styrka enligt SIL, t.ex 20.0\n\nI de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1.",
      "comment" : "TKB-fält: `../../../../../strength` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strengthUnit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strengthUnit",
      "short" : "strengthUnit",
      "definition" : "Enhet på styrka enligt SIL, t.ex mg.\n\nI de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”",
      "comment" : "TKB-fält: `../../../../../strengthUnit` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics",
      "short" : "GenericsType",
      "definition" : "Generiskt läkemedelsval.",
      "comment" : "TKB-fält: `../../../../generics` (`GenericsType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.substance",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.substance",
      "short" : "substance",
      "definition" : "Substansgrupp.\n\nText som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination.",
      "comment" : "TKB-fält: `../../../../../substance` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength",
      "short" : "PQType",
      "definition" : "Styrka.\n\nÖnskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination.",
      "comment" : "TKB-fält: `../../../../../strength` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength.value",
      "short" : "value",
      "definition" : "Värde för styrka.\n\nI de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1.",
      "comment" : "TKB-fält: `../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength.unit",
      "short" : "unit",
      "definition" : "Enhet för styrka. Anges enligt UCUM [R3].\n\nI de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck, styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”",
      "comment" : "TKB-fält: `../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.form",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.form",
      "short" : "form",
      "definition" : "Läkemedelsform.\n\nText som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination",
      "comment" : "TKB-fält: `../../../../../form` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage",
      "short" : "DosageType",
      "definition" : "Dosering.\n\nSocialstyrelsens termbank: Terminologirådet; uppgift om mängd och periodicitet.\n\nsetDosage (fastdosering), maxiumumDosage (maxdosering) och conditionalDosage (villkorsdosering) anger samtliga mängd och periodicitet under en avgränsad tid, men med olika syfte. Normalt består en dosering av ett av dessa val men den kan även bestå av flera stycken, t.ex. vid upp- och nedtrappning av läkemedel. Dessa följer då varandra i tiden och utgör tillsammans den kompletta doseringen. De tre angivna attributen kan alltså, men behöver inte, förekomma samtidigt. Däremot måste minst ett av attributen fast dosering eller villkorsdosering alltid anges.\n\nAnges ej vid ordinationstyp Utsättning.",
      "comment" : "TKB-fält: `../../../../dosage` (`DosageType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment",
      "short" : "LengthOfTreatmentType",
      "definition" : "Behandlingstid.",
      "comment" : "TKB-fält: `../../../../../lengthOfTreatment` (`LengthOfTreatmentType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval",
      "short" : "PQIntervalType",
      "definition" : "Behandlingstid.\n\nTidsintervall under vilket läkemedlet ska användas enligt ordination. Exempel: 5-6 veckor.",
      "comment" : "TKB-fält: `../../../../../../treatmentInterval` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime",
      "short" : "isMaximumTreatmentTime",
      "definition" : "Logiskt villkor som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas.\n\nSant = Behandlingstiden är en maxtid\n\nFalskt = Behandlingstiden är inte en maxtid.",
      "comment" : "TKB-fält: `../../../../../../isMaximumTreatmentTime` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.dosageInstruction",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.dosageInstruction",
      "short" : "dosageInstruction",
      "definition" : "Doseringsanvisning.\n\nKälla: Socialstyrelsens termbank: Terminologirådet; beskrivning av dosering, användning och ändamål riktad till patient.\n\nText som beskriver doseringen.",
      "comment" : "TKB-fält: `../../../../../dosageInstruction` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.unitDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.unitDose",
      "short" : "unitDose",
      "definition" : "Doseringsenhet.\n\nKod som anger den enhet som doseringen avser.\n\nExempel: tablett, ml, droppe\n\nI dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod.\n\nVia SIL kan doseringsenhet som text erhållas för vissa läkemedel.",
      "comment" : "TKB-fält: `../../../../../unitDose` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.shortNotation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.shortNotation",
      "short" : "shortNotation",
      "definition" : "Kortnotation.\n\nText som ger en kort beskrivning av doseringen.\n\nExempel: 1x2",
      "comment" : "TKB-fält: `../../../../../shortNotation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage",
      "short" : "SetDosageType",
      "definition" : "Fastdosering.\n\nDosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger\n\ndagligen.\n\nFastdosering kan utgöra Frekvensdosering, Perioddosering, Tillfällesdosering, Rampdosering, Engångsdosering och\n\nFritextdosering. Dessa alla har det gemensamt att de anger mängd och periodicitet, men på lite olika sätt.",
      "comment" : "TKB-fält: `../../../../../setDosage` (`SetDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "rampedDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "doseStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "timeStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "rampStart",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "rampEnd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage",
      "short" : "MaximumDosageType",
      "definition" : "Maxdosering.\n\nDosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka",
      "comment" : "TKB-fält: `../../../../../maximumDosage` (`MaximumDosageTyp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "rampedDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "doseStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "timeStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "rampStart",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "rampEnd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage",
      "short" : "ConditionalDosageType",
      "definition" : "Villkorsdosering.\n\nOrdinerad mängd och periodicitet som gäller\n\nom ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten",
      "comment" : "TKB-fält: `../../../../../conditionalDosage` (`ConditionalDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.conditionDescription",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.conditionDescription",
      "short" : "conditionDescription",
      "definition" : "Villkorstext.\n\nText som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".\n\nDet finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta.",
      "comment" : "TKB-fält: `../../../../../../conditionDescription` (`string`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "Frekvensdosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.",
      "comment" : "TKB-fält: `../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).",
      "comment" : "TKB-fält: `../../../../../../../frequency` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "Perioddosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.",
      "comment" : "TKB-fält: `../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).",
      "comment" : "TKB-fält: `../../../../../../../period` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "Rampdosering.\n\nInnehåller uppgifter om en successiv ökning eller minskning av läkemedelsdosen under en angiven tid. Detta innebär i praktiken att en trappstegsfunktion skapas i den slutliga doseringsanvisningen.",
      "comment" : "TKB-fält: `../../../../../../rampedDosage` (`RampedDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "Den mängd som dosen ska ökas eller minskas med vid varje tidssteg (vid varje ”trappsteg”).",
      "comment" : "TKB-fält: `../../../../../../../doseStep` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "Värdet.\n\nDet finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta.",
      "comment" : "TKB-fält: `../../../../../../../../value` (`double`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "Den tid som ska förflyta mellan varje ändring av dosen (längden på ”trappsteget”).",
      "comment" : "TKB-fält: `../../../../../../../timeStep` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "Den dosering som gäller vid doseringsstegets start.",
      "comment" : "TKB-fält: `../../../../../../../rampStart` (`RampEndpointType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "Frekvensdosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.",
      "comment" : "TKB-fält: `../../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).",
      "comment" : "TKB-fält: `../../../../../../../../../frequency` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "Perioddosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.",
      "comment" : "TKB-fält: `../../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).",
      "comment" : "TKB-fält: `../../../../../../../../../period` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "Engångsdosering.\n\nBeskriver att intag eller applicering ska ske vid ett enda tillfälle.",
      "comment" : "TKB-fält: `../../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras.",
      "comment" : "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\".",
      "comment" : "TKB-fält: `../../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "Fritextdosering\n\nBeskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna",
      "comment" : "TKB-fält: `../../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "Dosering angiven i klartext",
      "comment" : "TKB-fält: `../../../../../../../../../text` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "Den dosering som gäller vid doseringsstegets slut.",
      "comment" : "TKB-fält: `../../../../../../../rampEnd` (`RampEndpointType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "Frekvensdosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.",
      "comment" : "TKB-fält: `../../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).",
      "comment" : "TKB-fält: `../../../../../../../../../frequency` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "Perioddosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.",
      "comment" : "TKB-fält: `../../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).",
      "comment" : "TKB-fält: `../../../../../../../../../period` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "Engångsdosering.\n\nBeskriver att intag eller applicering ska ske vid ett enda tillfälle.",
      "comment" : "TKB-fält: `../../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras.",
      "comment" : "TKB-fält: `../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\".",
      "comment" : "TKB-fält: `../../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "Fritextdosering\n\nBeskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna",
      "comment" : "TKB-fält: `../../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "Dosering angiven i klartext",
      "comment" : "TKB-fält: `../../../../../../../../../text` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "Engångsdosering.\n\nBeskriver att intag eller applicering ska ske vid ett enda tillfälle.",
      "comment" : "TKB-fält: `../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras.",
      "comment" : "TKB-fält: `../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.time",
      "short" : "time",
      "definition" : "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\".",
      "comment" : "TKB-fält: `../../../../../../../time` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "Fritextdosering\n\nBeskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna",
      "comment" : "TKB-fält: `../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "Dosering angiven i klartext",
      "comment" : "TKB-fält: `../../../../../../../text` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization",
      "short" : "DispensationAuthorizationType",
      "definition" : "Förskrivning.\n\nKälla: Socialstyrelsens termbank, Terminologirådet: recept, rekvisition, livsmedelsanvisning, hjälpmedelskort eller dosrecept.\n\nEn förskrivning föregås alltid av en ordination. Varje förskrivning (förutom den första) är per definition ett nytt beslut, och därmed en ny ordination. I slutenvård görs endast ordination, men i öppenvård krävs även en förskrivning.\n\nUtelämnas alltid om ordinationstypen är Utsättning.",
      "comment" : "TKB-fält: `../../../dispensationAuthorization` (`DispensationAuthorizationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizationId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizationId",
      "short" : "dispensationAuthorizationId",
      "definition" : "Förskrivnings-id.\n\nUnik identifierare för aktuell förskrivning",
      "comment" : "TKB-fält: `../../../../dispensationAuthorizationId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.validUntil",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.validUntil",
      "short" : "validUntil",
      "definition" : "Sista giltighetsdag.\n\nExpeditionsunderlagets sista giltighetsdag.",
      "comment" : "TKB-fält: `../../../../validUntil` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.receivingPharmacy",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.receivingPharmacy",
      "short" : "receivingPharmacy",
      "definition" : "Mottagande apotek.\n\nApoteks-id (GLN eller EAN) vid direktadressering av expedieringsunderlag.",
      "comment" : "TKB-fält: `../../../../receivingPharmacy` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval",
      "short" : "PQType",
      "definition" : "Utlämningsintervall.\n\nMinsta tidsintervall, i dagar, som ska förflyta mellan två utlämningar. Minsta värde: 1 dag\n\nStörsta värde: 12 månader.",
      "comment" : "TKB-fält: `../../../../minimumDispensationInterval` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval.value",
      "short" : "value",
      "definition" : "Utlämningsintervall värde.",
      "comment" : "TKB-fält: `../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval.unit",
      "short" : "unit",
      "definition" : "Utlämningsintervall enhet.\n\nEnhet för det utlämningsintervall. Kan anges i dagar, veckor eller månader.",
      "comment" : "TKB-fält: `../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.totalAmount",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.totalAmount",
      "short" : "totalAmount",
      "definition" : "Totalmängd.\n\nDen totala mängd (i förpackningsenheter) av ordinerat läkemedel som får lämnas ut enligt denna förskrivning oavsett om det sker vid ett eller flera tillfällen. Om totalAmount anges måste också packageUnit anges.",
      "comment" : "TKB-fält: `../../../../totalAmount` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.packageUnit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.packageUnit",
      "short" : "packageUnit",
      "definition" : "Förpackningsenhet.\n\nText som anger den enhet som används för att uttrycka mängd i de förpackningar som säljs. Exempel: styck, ml, mg. Om packageUnit anges måste också totalAmount anges.",
      "comment" : "TKB-fält: `../../../../packageUnit` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.distributionMethod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.distributionMethod",
      "short" : "distributionMethod",
      "definition" : "Distributionssätt.\n\nText som beskriver hur det förskrivna läkemedlet ska distribueras till vård- och omsorgstagaren. Exempel Apodos, Hemleverans, Hämtas.",
      "comment" : "TKB-fält: `../../../../distributionMethod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer",
      "short" : "dispensationAuthorizer",
      "definition" : "Förskrivare.\n\nHälso- och sjukvårdspersonal med förskrivningsrätt.",
      "comment" : "TKB-fält: `../../../../dispensationAuthorizer` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizerComment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizerComment",
      "short" : "dispensationAuthorizerComment",
      "definition" : "Förskrivares kommentar.\n\nKommentar till apoteket.",
      "comment" : "TKB-fält: `../../../../dispensationAuthorizerComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.firstDispensationBefore",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.firstDispensationBefore",
      "short" : "firstDispensationBefore",
      "definition" : "Första uttag före.\n\nDatum före vilket första uttag av läkemedel måste göras.",
      "comment" : "TKB-fält: `../../../../firstDispensationBefore` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.prescriptionSignatura",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.prescriptionSignatura",
      "short" : "prescriptionSignatura",
      "definition" : "Doseringstext på recept.\n\nInstruktion till patienten.",
      "comment" : "TKB-fält: `../../../../prescriptionSignatura` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.nonReplaceable",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.nonReplaceable",
      "short" : "nonReplaceable",
      "definition" : "Bytes ej.\n\nAnger att ordinatör eller patient beslutat att förskriven artikel ej får bytas ut.\n\nTillåtna värden: Prescriber, Patient\n\nLämnas fältet tomt antas det betyda att läkemedlet får bytas ut.",
      "comment" : "TKB-fält: `../../../../nonReplaceable` (`NonReplaceableEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug",
      "short" : "DrugChoiceType",
      "definition" : "Läkemedelsval.\n\nOBS: Ett och endast ett av följande alternativ:\n\nunstructuredDrugInformation (fritextval/extemporeberedning)\n\nmerchandise (handelsvara)\n\ndrugArticle (läkemedelsartikel)\n\ndrug (läkemedelsprodukt)\n\ngenerics (generika/utbytesgrupp)",
      "comment" : "TKB-fält: `../../../../drug` (`DrugChoiceType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.comment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.comment",
      "short" : "comment",
      "definition" : "Kommentar om läkemedelsval.\n\nText som innehåller en kommentar till det ordinerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges.",
      "comment" : "TKB-fält: `../../../../../comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation",
      "short" : "UnstructuredDrugInformationType",
      "definition" : "Fritextval.\n\nAnvänds för extemporeberedning, licensläkemedel etc.",
      "comment" : "TKB-fält: `../../../../../unstructuredDrugInformation` (`UnstructuredDrugInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation.unstructuredInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation.unstructuredInformation",
      "short" : "unstructuredInformation",
      "definition" : "Fritextbeskrivning.",
      "comment" : "TKB-fält: `../../../../../../unstructuredInformation` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise",
      "short" : "MerchandiseType",
      "definition" : "Handelsvara.",
      "comment" : "TKB-fält: `../../../../../merchandise` (`MerchandiseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise.articleNumber",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise.articleNumber",
      "short" : "articleNumber",
      "definition" : "Varunummer.\n\nFrån SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1.\n\nFår ej anges för läkemedel.",
      "comment" : "TKB-fält: `../../../../../../articleNumber` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle",
      "short" : "DrugArticleType",
      "definition" : "Läkemedelsartikel.",
      "comment" : "TKB-fält: `../../../../../drugArticle` (`DrugArticleType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle.nplPackId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle.nplPackId",
      "short" : "nplPackId",
      "definition" : "NPL pack-id.\n\nUnik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2.",
      "comment" : "TKB-fält: `../../../../../../nplPackId` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug",
      "short" : "DrugType",
      "definition" : "Läkemedelsprodukt.",
      "comment" : "TKB-fält: `../../../../../drug` (`DrugType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.nplId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.nplId",
      "short" : "nplId",
      "definition" : "NPL-id.\n\nNationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1.",
      "comment" : "TKB-fält: `../../../../../../nplId` (`CVType`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.atcCode",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.atcCode",
      "short" : "atcCode",
      "definition" : "ATC-kod.\n\natcKod + atcKodBeskrivning i SIL.\n\nKlassificeringskod för läkemedlet på sjuställig nivå. OID:\n\n1.2.752.129.2.2.3.1.1.\n\nUnderhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/\n\nI Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/\n\nATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde.",
      "comment" : "TKB-fält: `../../../../../../atcCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.routeOfAdministration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.routeOfAdministration",
      "short" : "routeOfAdministration",
      "definition" : "Administreringssätt.\n\nHur produkten ska intas/administreras. Kan anges med SNOMED-kod.",
      "comment" : "TKB-fält: `../../../../../../routeOfAdministration` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.pharmaceuticalForm",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.pharmaceuticalForm",
      "short" : "pharmaceuticalForm",
      "definition" : "Läkemedelsform enligt SIL, t.ex Tablett",
      "comment" : "TKB-fält: `../../../../../../pharmaceuticalForm` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strength",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strength",
      "short" : "strength",
      "definition" : "Styrka enligt SIL, t.ex 20.0\n\nI de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1.",
      "comment" : "TKB-fält: `../../../../../../strength` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strengthUnit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strengthUnit",
      "short" : "strengthUnit",
      "definition" : "Enhet på styrka enligt SIL, t.ex mg.\n\nI de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”",
      "comment" : "TKB-fält: `../../../../../../strengthUnit` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics",
      "short" : "GenericsType",
      "definition" : "Generiskt läkemedelsval.",
      "comment" : "TKB-fält: `../../../../../generics` (`GenericsType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.substance",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.substance",
      "short" : "substance",
      "definition" : "Substansgrupp.\n\nText som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination.",
      "comment" : "TKB-fält: `../../../../../../substance` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength",
      "short" : "PQType",
      "definition" : "Styrka.\n\nÖnskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination.",
      "comment" : "TKB-fält: `../../../../../../strength` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength.value",
      "short" : "value",
      "definition" : "Värde för styrka.\n\nI de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1.",
      "comment" : "TKB-fält: `../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength.unit",
      "short" : "unit",
      "definition" : "Enhet för styrka. Anges enligt UCUM [R3].\n\nI de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”",
      "comment" : "TKB-fält: `../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.form",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.form",
      "short" : "form",
      "definition" : "Läkemedelsform.\n\nText som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination",
      "comment" : "TKB-fält: `../../../../../../form` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage",
      "short" : "DosageType",
      "definition" : "dosage",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment",
      "short" : "LengthOfTreatmentType",
      "definition" : "lengthOfTreatment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval",
      "short" : "PQIntervalType",
      "definition" : "treatmentInterval",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime",
      "short" : "isMaximumTreatmentTime",
      "definition" : "isMaximumTreatmentTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.dosageInstruction",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.dosageInstruction",
      "short" : "dosageInstruction",
      "definition" : "dosageInstruction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.unitDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.unitDose",
      "short" : "unitDose",
      "definition" : "unitDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.shortNotation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.shortNotation",
      "short" : "shortNotation",
      "definition" : "shortNotation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage",
      "short" : "SetDosageType",
      "definition" : "setDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "rampedDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "doseStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "timeStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "rampStart",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "rampEnd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage",
      "short" : "MaximumDosageType",
      "definition" : "maximumDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "rampedDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "doseStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "timeStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "rampStart",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "rampEnd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage",
      "short" : "ConditionalDosageType",
      "definition" : "conditionalDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.conditionDescription",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.conditionDescription",
      "short" : "conditionDescription",
      "definition" : "conditionDescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "rampedDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "doseStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "timeStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "rampStart",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "rampEnd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration",
      "short" : "AdministrationType",
      "definition" : "Information om administrering av läkemedel. Bara administreringstillfällen som faktiskt ägt rum kan anges, planerade administreringstillfällen kan inte anges i detta kontrakt.",
      "comment" : "TKB-fält: `../../../administration` (`AdministrationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationId",
      "short" : "administrationId",
      "definition" : "Administrerings-id.\n\nUnik identifierare för aktuell administrering.",
      "comment" : "TKB-fält: `../../../../ administrationId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationTime",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationTime",
      "short" : "administrationTime",
      "definition" : "Tidsintervall för läkemedelsadministreringen. Om administreringen sker vid en viss tidpunkt sätts start och end till samma tidpunkt.",
      "comment" : "TKB-fält: `../../../../administrationTime` (`TimePeriodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationComment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationComment",
      "short" : "administrationComment",
      "definition" : "Kommentar till administrering av vårdpersonal. Exempelvis ”patienten kräktes 30 minuter efter administrering”.",
      "comment" : "TKB-fält: `../../../../administrationComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.routeOfAdministration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.routeOfAdministration",
      "short" : "routeOfAdministration",
      "definition" : "Administreringssätt.\n\nHur produkten ska intas/administreras.\n\nKan anges med SNOMED-kod.",
      "comment" : "TKB-fält: `../../../../routeOfAdministration` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional",
      "short" : "administeringHealthcareProfessional",
      "definition" : "Information om administrerande vårdpersonal och -organisation.",
      "comment" : "TKB-fält: `../../../../administeringHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug",
      "short" : "DrugChoiceType",
      "definition" : "Läkemedelsval.\n\nOBS: Ett och endast ett av följande alternativ:\n\nunstructuredDrugInformation (fritextval/extemporeberedning)\n\nmerchandise (handelsvara)\n\ndrugArticle (läkemedelsartikel)\n\ndrug (läkemedelsprodukt)\n\ngenerics (generika/utbytesgrupp)",
      "comment" : "TKB-fält: `../../../../drug` (`DrugChoiceType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.comment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.comment",
      "short" : "comment",
      "definition" : "Kommentar om läkemedelsval.\n\nText som innehåller en kommentar till det administrerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges.",
      "comment" : "TKB-fält: `../../../../../comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation",
      "short" : "UnstructuredDrugInformationType",
      "definition" : "Fritextval.\n\nAnvänds för extemporeberedning, licensläkemedel etc.",
      "comment" : "TKB-fält: `../../../../../unstructuredDrugInformation` (`UnstructuredDrugInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation.unstructuredInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation.unstructuredInformation",
      "short" : "unstructuredInformation",
      "definition" : "Fritextbeskrivning.",
      "comment" : "TKB-fält: `../../../../../../unstructuredInformation` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise",
      "short" : "MerchandiseType",
      "definition" : "Handelsvara.",
      "comment" : "TKB-fält: `../../../../../merchandise` (`MerchandiseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise.articleNumber",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise.articleNumber",
      "short" : "articleNumber",
      "definition" : "Varunummer.\n\nFrån SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1.\n\nFår ej anges för läkemedel.",
      "comment" : "TKB-fält: `../../../../../../articleNumber` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle",
      "short" : "DrugArticleType",
      "definition" : "Läkemedelsartikel.",
      "comment" : "TKB-fält: `../../../../../drugArticle` (`DrugArticleType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle.nplPackId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle.nplPackId",
      "short" : "nplPackId",
      "definition" : "NPL pack-id.\n\nUnik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2.",
      "comment" : "TKB-fält: `../../../../../../nplPackId` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug",
      "short" : "DrugType",
      "definition" : "Läkemedelsprodukt.",
      "comment" : "TKB-fält: `../../../../../drug` (`DrugType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.nplId",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.nplId",
      "short" : "nplId",
      "definition" : "NPL-id.\n\nNationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1.",
      "comment" : "TKB-fält: `../../../../../../nplId` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.atcCode",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.atcCode",
      "short" : "atcCode",
      "definition" : "ATC-kod.\n\natcKod + atcKodBeskrivning i SIL.\n\nKlassificeringskod för läkemedlet på sjuställig nivå. OID:\n\n1.2.752.129.2.2.3.1.1.\n\nUnderhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/\n\nI Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/\n\nATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde.",
      "comment" : "TKB-fält: `../../../../../../atcCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.routeOfAdministration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.routeOfAdministration",
      "short" : "routeOfAdministration",
      "definition" : "Administreringssätt.\n\nHur produkten ska intas/administreras. Kan anges med SNOMED-kod.",
      "comment" : "TKB-fält: `../../../../../../routeOfAdministration` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.pharmaceuticalForm",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.pharmaceuticalForm",
      "short" : "pharmaceuticalForm",
      "definition" : "Läkemedelsform enligt SIL, t.ex Tablett",
      "comment" : "TKB-fält: `../../../../../../pharmaceuticalForm` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strength",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strength",
      "short" : "strength",
      "definition" : "Styrka enligt SIL, t.ex 20.0\n\nI de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1.",
      "comment" : "TKB-fält: `../../../../../../strength` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strengthUnit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strengthUnit",
      "short" : "strengthUnit",
      "definition" : "Enhet på styrka enligt SIL, t.ex mg.\n\nI de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”",
      "comment" : "TKB-fält: `../../../../../../strengthUnit` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics",
      "short" : "GenericsType",
      "definition" : "Generiskt läkemedelsval.",
      "comment" : "TKB-fält: `../../../../../generics` (`GenericsType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.substance",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.substance",
      "short" : "substance",
      "definition" : "Substansgrupp.\n\nText som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination.",
      "comment" : "TKB-fält: `../../../../../../substance` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength",
      "short" : "PQType",
      "definition" : "Styrka.\n\nÖnskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination.",
      "comment" : "TKB-fält: `../../../../../../strength` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength.value",
      "short" : "value",
      "definition" : "Värde för styrka.\n\nI de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1.",
      "comment" : "TKB-fält: `../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength.unit",
      "short" : "unit",
      "definition" : "Enhet för styrka. Anges enligt UCUM [R3].\n\nI de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck,  styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”",
      "comment" : "TKB-fält: `../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.form",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.form",
      "short" : "form",
      "definition" : "Läkemedelsform.\n\nText som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination",
      "comment" : "TKB-fält: `../../../../../../form` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage",
      "short" : "DosageType",
      "definition" : "Dosering.\n\nSocialstyrelsens termbank: Terminologirådet; uppgift om mängd och periodicitet.\n\nsetDosage (fastdosering), maxiumumDosage (maxdosering) och conditionalDosage (villkorsdosering) anger samtliga mängd och periodicitet under en avgränsad tid, men med olika syfte. Normalt består en dosering av ett av dessa val men den kan även bestå av flera stycken, t.ex. vid upp- och nedtrappning av läkemedel. Dessa följer då varandra i tiden och utgör tillsammans den kompletta doseringen. De tre angivna attributen kan alltså, men behöver inte, förekomma samtidigt. Däremot måste minst ett av attributen fast dosering eller villkorsdosering alltid anges.",
      "comment" : "TKB-fält: `../../../../../dosage` (`DosageType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment",
      "short" : "LengthOfTreatmentType",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../../../../../lengthOfTreatment` (`LengthOfTreatmentType`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval",
      "short" : "PQIntervalType",
      "definition" : "treatmentInterval",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime",
      "short" : "isMaximumTreatmentTime",
      "definition" : "isMaximumTreatmentTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.dosageInstruction",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.dosageInstruction",
      "short" : "dosageInstruction",
      "definition" : "dosageInstruction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.unitDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.unitDose",
      "short" : "unitDose",
      "definition" : "Doseringsenhet.\n\nKod som anger den enhet som doseringen avser.\n\nExempel: tablett, ml, droppe\n\nI dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod.\n\nVia SIL kan doseringsenhet som text erhållas för vissa läkemedel.",
      "comment" : "TKB-fält: `../../../../../../unitDose` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.shortNotation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.shortNotation",
      "short" : "shortNotation",
      "definition" : "Kortnotation.\n\nText som ger en kort beskrivning av doseringen.\n\nExempel: 1x2",
      "comment" : "TKB-fält: `../../../../../../shortNotation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage",
      "short" : "SetDosageType",
      "definition" : "Fastdosering.\n\nDosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger\n\ndagligen.\n\nFastdosering kan utgöra Frekvensdosering, Perioddosering, Tillfällesdosering, Rampdosering, Engångsdosering och\n\nFritextdosering. Dessa alla har det gemensamt att de anger mängd och periodicitet, men på lite olika sätt.",
      "comment" : "TKB-fält: `../../../../../../setDosage` (`SetDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "rampedDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "doseStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "timeStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "rampStart",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "rampEnd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage",
      "short" : "MaximumDosageType",
      "definition" : "Maxdosering.\n\nDosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka",
      "comment" : "TKB-fält: `../../../../../../maximumDosage` (`MaximumDosageTyp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "rampedDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "doseStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "timeStep",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "rampStart",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "rampEnd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "frequencyDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "frequency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "periodDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "singleDose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "unstructuredDosageInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage",
      "short" : "ConditionalDosageType",
      "definition" : "Villkorsdosering.\n\nOrdinerad mängd och periodicitet som gäller\n\nom ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten",
      "comment" : "TKB-fält: `../../../../../../conditionalDosage` (`ConditionalDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.conditionDescription",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.conditionDescription",
      "short" : "conditionDescription",
      "definition" : "Villkorstext.\n\nText som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".\n\nDet finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta.",
      "comment" : "TKB-fält: `../../../../../../../conditionDescription` (`string`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "Frekvensdosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.",
      "comment" : "TKB-fält: `../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).",
      "comment" : "TKB-fält: `../../../../../../../../frequency` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "Perioddosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.",
      "comment" : "TKB-fält: `../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).",
      "comment" : "TKB-fält: `../../../../../../../../period` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage",
      "short" : "RampedDosageType",
      "definition" : "Rampdosering.\n\nInnehåller uppgifter om en successiv ökning eller minskning av läkemedelsdosen under en angiven tid.",
      "comment" : "TKB-fält: `../../../../../../../rampedDosage` (`RampedDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep",
      "short" : "PQType",
      "definition" : "Den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "comment" : "TKB-fält: `../../../../../../../../doseStep` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep.value",
      "short" : "value",
      "definition" : "Värdet.",
      "comment" : "TKB-fält: `../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep",
      "short" : "PQType",
      "definition" : "Den tid som ska förflyta mellan varje ändring av dosen",
      "comment" : "TKB-fält: `../../../../../../../../timeStep` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart",
      "short" : "RampEndpointType",
      "definition" : "den dosering som gäller vid Doseringsstegets start",
      "comment" : "TKB-fält: `../../../../../../../../rampStart` (`RampEndpointType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "Frekvensdosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.",
      "comment" : "TKB-fält: `../../../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).",
      "comment" : "TKB-fält: `../../../../../../../../../../frequency` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "Perioddosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.",
      "comment" : "TKB-fält: `../../../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).",
      "comment" : "TKB-fält: `../../../../../../../../../../period` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose",
      "short" : "SingleDoseType",
      "definition" : "Engångsdosering.\n\nBeskriver att intag eller applicering ska ske vid ett enda tillfälle.",
      "comment" : "TKB-fält: `../../../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras.",
      "comment" : "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time",
      "short" : "time",
      "definition" : "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\".",
      "comment" : "TKB-fält: `../../../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "Fritextdosering\n\nBeskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna",
      "comment" : "TKB-fält: `../../../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "Dosering angiven i klartext",
      "comment" : "TKB-fält: `../../../../../../../../../../text` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd",
      "short" : "RampEndpointType",
      "definition" : "den dosering som gäller vid Doseringsstegets slut",
      "comment" : "TKB-fält: `../../../../../../../../rampEnd` (`RampEndpointType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage",
      "short" : "FrequencyDosageType",
      "definition" : "Frekvensdosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.",
      "comment" : "TKB-fält: `../../../../../../../../../frequencyDosage` (`FrequencyDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).",
      "comment" : "TKB-fält: `../../../../../../../../../../frequency` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage",
      "short" : "PeriodDosageType",
      "definition" : "Perioddosering.\n\nBeskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.",
      "comment" : "TKB-fält: `../../../../../../../../../periodDosage` (`PeriodDosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "comment" : "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period",
      "short" : "PQType",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).",
      "comment" : "TKB-fält: `../../../../../../../../../../period` (`PQType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.value",
      "short" : "value",
      "definition" : "Värde.",
      "comment" : "TKB-fält: `../../../../../../../../../../../value` (`double`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period.unit",
      "short" : "unit",
      "definition" : "Enhet. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage",
      "short" : "OccasionDosageType",
      "definition" : "occasionDosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period",
      "short" : "PQType",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration",
      "short" : "AdministrationOccurrenceType",
      "definition" : "administration",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose",
      "short" : "PQIntervalType",
      "definition" : "dose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod",
      "short" : "dayOfPeriod",
      "definition" : "dayOfPeriod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose",
      "short" : "SingleDoseType",
      "definition" : "Engångsdosering.\n\nBeskriver att intag eller applicering ska ske vid ett enda tillfälle.",
      "comment" : "TKB-fält: `../../../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras.",
      "comment" : "TKB-fält: `../../../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time",
      "short" : "time",
      "definition" : "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\".",
      "comment" : "TKB-fält: `../../../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "Fritextdosering\n\nBeskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna",
      "comment" : "TKB-fält: `../../../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "Dosering angiven i klartext",
      "comment" : "TKB-fält: `../../../../../../../../../../text` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose",
      "short" : "SingleDoseType",
      "definition" : "Engångsdosering.\n\nBeskriver att intag eller applicering ska ske vid ett enda tillfälle.",
      "comment" : "TKB-fält: `../../../../../../../singleDose` (`SingleDoseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose",
      "short" : "PQIntervalType",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras.",
      "comment" : "TKB-fält: `../../../../../../../../dose` (`PQIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.low",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.low",
      "short" : "low",
      "definition" : "Det lägre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../low` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.high",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.high",
      "short" : "high",
      "definition" : "Det högre värdet i intervallet. Minst ett av fälten low och high måste anges.",
      "comment" : "TKB-fält: `../../../../../../../../../high` (`double`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.unit",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose.unit",
      "short" : "unit",
      "definition" : "Enheten. Anges enligt UCUM [R3].",
      "comment" : "TKB-fält: `../../../../../../../../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.time",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.time",
      "short" : "time",
      "definition" : "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal. dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som \"omgående\".",
      "comment" : "TKB-fält: `../../../../../../../../time` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation",
      "short" : "UnstructuredDosageInformationType",
      "definition" : "Fritextdosering\n\nBeskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna",
      "comment" : "TKB-fält: `../../../../../../../unstructuredDosageInformation` (`UnstructuredDosageInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation.text",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation.text",
      "short" : "text",
      "definition" : "Dosering angiven i klartext",
      "comment" : "TKB-fält: `../../../../../../../../text` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation",
      "short" : "RelationType",
      "definition" : "Sambandsklass\n\nAlla de meddelandeposter (angivna med referredInformation.id) som i ordinationen pekas ut med samma relation.code ska anges i samma relation (teknisk aggregering).",
      "comment" : "TKB-fält: `../../../relation` (`RelationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.code",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.code",
      "short" : "code",
      "definition" : "Beskriver hur ordinationen relaterar till den refererade informationsmängden.\n\nDenna kod bör, i den mån det är tillämpligt, hämtas från den lista av sambandstyper som publiceras i senaste version av nationell informationsstruktur (NI) (ref R14).\n\nExempel: om ordinationsbeslutet baseras på en diagnosticerad postoperativ infektion, så bör detta anges genom användande av SNOMED CT-koden “416083004 | har orsak”.",
      "comment" : "TKB-fält: `../../../../code` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation",
      "short" : "ReferredInformationType",
      "definition" : "Information kring den refererade informationsmängden som tjänstekonsument behöver för att avgöra om och hur den refererade informationen ska hämtas.",
      "comment" : "TKB-fält: `../../../../referredInformation` (`ReferredInformationType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.id",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.id",
      "short" : "id",
      "definition" : "Id till den aktivitet eller observation som refereras.",
      "comment" : "TKB-fält: `../../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.type",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.type",
      "short" : "type",
      "definition" : "Typ av interaktion som behöver nyttjas för att ta del av den refererade informationen. Motsvarar fältet categorization i engagemangsindex.\n\nI skrivande stund finns inget OID-satt kodverk över olika categorization-typer, vilket betyder att fältet originalText behöver användas. Från den dag ett OID-satt kodverk finns tillgängligt bör detta användas istället.\n\ntype.originalText får enbart sättas till ett av följande\n\ncaa-ga för att referera till aktiviteter som tjänstekonsument kan hämta mha GetActivities\n\nchb-go för att referera till observationer som tjänstekonsument kan hämta mha GetObservations",
      "comment" : "TKB-fält: `../../../../../type` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner",
      "short" : "InformationOwnerType",
      "definition" : "Vårdgivare som är informationsägare av den refererade informationen.\n\nAnvänds av tjänstekonsument för spärrhantering.",
      "comment" : "TKB-fält: `../../../../../informationOwner` (`InformationOwnerType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner.id",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner.id",
      "short" : "id",
      "definition" : "Informationsägande vårdgivare",
      "comment" : "TKB-fält: `../../../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation",
      "short" : "AdditionalPatientInformationType",
      "definition" : "Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning.",
      "comment" : "TKB-fält: `../../additionalPatientInformation` (`AdditionalPatientInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.dateOfBirth",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Patientens födelsedatum.",
      "comment" : "TKB-fält: `../../../dateOfBirth` (`DateType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.gender",
      "path" : "getmedicationhistory.medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.gender",
      "short" : "gender",
      "definition" : "Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas (se referens [R6]).",
      "comment" : "TKB-fält: `../../../gender` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getmedicationhistory.result",
      "path" : "getmedicationhistory.result",
      "short" : "ResultType",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationhistory.result.resultCode",
      "path" : "getmedicationhistory.result.resultCode",
      "short" : "resultCode",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getmedicationhistory.result.errorCode",
      "path" : "getmedicationhistory.result.errorCode",
      "short" : "errorCode",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** errorCode Tillåtna värden: INVALID_REQUEST.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "getmedicationhistory.result.logId",
      "path" : "getmedicationhistory.result.logId",
      "short" : "logId",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.result.subCode",
      "path" : "getmedicationhistory.result.subCode",
      "short" : "subCode",
      "definition" : "Inga subkoder är specificerade.",
      "comment" : "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory.result.message",
      "path" : "getmedicationhistory.result.message",
      "short" : "message",
      "definition" : "En beskrivande text som kan visas för användaren.",
      "comment" : "TKB-fält: `../message` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
