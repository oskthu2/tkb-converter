// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicationPrescriptionRequestFieldDescriptions
* patientInformation ^definition = "patientId eller patientInformation måste anges."
* patientInformation ^comment = "TKB-fält: `patientInformation*` (`PatientInformation_setter`, kardinalitet 1..1).

**Modellanteckning:** Antingen patientId eller kombinationen givenName+familyName+dateOfBirth måste anges.
ASSUME-PRESC-001: villkorlig kardinalitet — modellerad som 0..1 per underfält med notering."
* patientInformation.patientId ^definition = "Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet)

Endast om det är känt.

PU: personid

RR: personnummer"
* patientInformation.patientId ^comment = "TKB-fält: `../patientId` (`Identifier`, kardinalitet 0..1)."
* patientInformation.givenName ^definition = "Patientens förnamn.

PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn.

RR: förnamn"
* patientInformation.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* patientInformation.familyName ^definition = "Patientens efternamn.

PU: efternamn

RR: efternamn"
* patientInformation.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* patientInformation.dateOfBirth ^definition = "Födelsedatum (8 siffror).

Anges för patient som saknar giltigt personnummer.

Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag.

PU: födelsetid

RR: födelsedatum"
* patientInformation.dateOfBirth ^comment = "TKB-fält: `../dateOfBirth` (`date`, kardinalitet 0..1)."
* patientInformation.gender ^definition = "Patientens kön.

Obligatorisk parameter om Personnummer saknas.

{Male, Female, Unspecified}

PU: kön

RR: kön"
* patientInformation.gender ^comment = "TKB-fält: `../gender` (`GenderEnum`, kardinalitet 0..1)."
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista.

Se kapitel 5.2 för exempel och regler kring format."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1)."
* medicationPrescriptionList ^definition = "Lista med läkemedelsbehandlingar."
* medicationPrescriptionList ^comment = "TKB-fält: `medicationPrescriptionList` (`MedicationPrescriptionListType_setter`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy ^definition = "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.

Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext"
* medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy ^comment = "TKB-fält: `prescribedBy` (`HealthcareProfessionalType`, kardinalitet 1..1)."
