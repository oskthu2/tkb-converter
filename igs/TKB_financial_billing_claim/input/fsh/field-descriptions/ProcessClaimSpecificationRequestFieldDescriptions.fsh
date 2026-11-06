// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessClaimSpecificationRequestFieldDescriptions
* claimSpecification ^comment = "TKB-fält: `claimSpecification` (`ProcessClaimSpecificationType`, kardinalitet 1..1)."
* claimSpecification.issueDate ^definition = "Fakturaunderlag vård, datum

Datum då fakturaunderlag för vård skapades.

Obligatoriskt."
* claimSpecification.issueDate ^comment = "TKB-fält: `issueDate` (`DateType`, kardinalitet 1..1)."
* claimSpecification.issueTime ^definition = "Fakturaunderlag vård, tid

Tidpunkt då fakturaunderlag för vård skapades.

Frivillig uppgift."
* claimSpecification.issueTime ^comment = "TKB-fält: `issueTime` (`TimeStampType`, kardinalitet 0..1)."
* claimSpecification.typeOfInvoice ^comment = "TKB-fält: `../typeOfInvoice` (`string`, kardinalitet 1..1)."
* claimSpecification.invoiceId ^definition = "Fakturanummer

Varje ny faktura ska ges en unik identitet. Numret bör vara unikt under hela arkiveringsperioden.

Fakturanumret ska vara utan mellanslag och bindestreck.

För att ge ett dokument en unik identitet kan GDTI användas. GDTI (GS1-dokumentidentitet, Global

Document Type Identifier) är ett alfanumeriskt fält som innehåller från 14 upp till 30 siffror. Antal positioner enligt standard SFTI E-handel.

Ett unikt nummer som används för att identifiera fakturan.

Frivillig uppgift."
* claimSpecification.invoiceId ^comment = "TKB-fält: `invoiceId` (`String`, kardinalitet 0..1)."
* claimSpecification.invoiceDateOfIssue ^definition = "Fakturadatum

Datum när fakturan utfärdades.

Frivillig uppgift."
* claimSpecification.invoiceDateOfIssue ^comment = "TKB-fält: `invoiceDateOfIssue` (`DateType`, kardinalitet 0..1)."
* claimSpecification.referenceToInvoice ^definition = "Referens till faktura

Används vid kreditering för att referera till den faktura som ska krediteras.

Referensen anges med fakturans unika identitet (fakturanumret).

Ska lämnas när fakturan är en kreditfaktura.

Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01."
* claimSpecification.referenceToInvoice ^comment = "TKB-fält: `referenceToInvoice` (`string`, kardinalitet 0..1)."
* claimSpecification.referenceToProcessClaimSpecificationId ^comment = "TKB-fält: `../referenceToProcessClaimSpecificationId` (`string`, kardinalitet 0..1)."
* claimSpecification.payableAmount ^comment = "TKB-fält: `../payableAmount` (`AmountType`, kardinalitet 1..1)."
* claimSpecification.payableAmount.amount ^comment = "TKB-fält: `../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.payableAmount.currency ^comment = "TKB-fält: `../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.payableAmount.currency.cvCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.payableAmount.currency.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.payableAmount.currency.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.payableAmount.currency.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.payableAmount.currency.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.payableAmount.currency.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.unspecified ^comment = "TKB-fält: `unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.unspecified.unspecifiedText ^comment = "TKB-fält: `../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.unspecified.unspecifiedType ^comment = "TKB-fält: `../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.supplierParty ^definition = "Leverantör

Obligatoriskt."
* claimSpecification.supplierParty ^comment = "TKB-fält: `supplierParty` (`SupplierPartyType`, kardinalitet 1..1)."
* claimSpecification.supplierParty.identification ^comment = "TKB-fält: `../../identification` (`IIType`, kardinalitet 1..2)."
* claimSpecification.supplierParty.identification.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* claimSpecification.supplierParty.identification.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* claimSpecification.supplierParty.sellerContact ^definition = "Leverantörens kontaktuppgifter

Frivillig uppgift."
* claimSpecification.supplierParty.sellerContact ^comment = "TKB-fält: `../sellerContact` (`ContactType`, kardinalitet 0..1)."
* claimSpecification.supplierParty.sellerContact.contactName ^definition = "Namn på person eller avdelning som avser kontakt för leverantör.

Frivillig uppgift."
* claimSpecification.supplierParty.sellerContact.contactName ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1).

**Modellanteckning:** contactName Heter name i schemat."
* claimSpecification.supplierParty.sellerContact.telephone ^definition = "Leverantörens telefonnummer

Telefonnummer oredigerat.

Frivillig uppgift."
* claimSpecification.supplierParty.sellerContact.telephone ^comment = "TKB-fält: `../../telephone` (`string`, kardinalitet 0..1)."
* claimSpecification.supplierParty.sellerContact.electronicMail ^definition = "Leverantörens epost

Adress till ett e-postkonto.

Frivillig uppgift."
* claimSpecification.supplierParty.sellerContact.electronicMail ^comment = "TKB-fält: `../../electronicMail` (`string`, kardinalitet 0..1)."
* claimSpecification.customerParty ^definition = "Köpare"
* claimSpecification.customerParty ^comment = "TKB-fält: `customerParty` (`CustomerPartyType`, kardinalitet 1..1)."
* claimSpecification.customerParty.identification ^comment = "TKB-fält: `../../identification` (`IIType`, kardinalitet 1..2)."
* claimSpecification.customerParty.identification.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* claimSpecification.customerParty.identification.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* claimSpecification.customerParty.buyerContact ^definition = "Köparens kontaktuppgifter

Frivillig uppgift."
* claimSpecification.customerParty.buyerContact ^comment = "TKB-fält: `../buyerContact` (`ContactType`, kardinalitet 0..1)."
* claimSpecification.customerParty.buyerContact.contactName ^definition = "Namn på person eller avdelning som avser kontakt för köpare.

Frivillig uppgift."
* claimSpecification.customerParty.buyerContact.contactName ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1).

**Modellanteckning:** contactName Heter name i schemat."
* claimSpecification.customerParty.buyerContact.telephone ^definition = "Köparens telefonnummer

Telefonnummer oredigerat.

Frivillig uppgift."
* claimSpecification.customerParty.buyerContact.telephone ^comment = "TKB-fält: `../../telephone` (`string`, kardinalitet 0..1)."
* claimSpecification.customerParty.buyerContact.electronicMail ^definition = "Köparens epost

Adress till ett e-postkonto.

Frivillig uppgift."
* claimSpecification.customerParty.buyerContact.electronicMail ^comment = "TKB-fält: `../../electronicMail` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine ^definition = "Fakturaunderlag vård, rad"
* claimSpecification.healthCareServicesSpecificationLine ^comment = "TKB-fält: `healthcareServicesSpecificationLine` (`HealthcareServicesSpecificationLineType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation ^definition = "Patient"
* claimSpecification.healthCareServicesSpecificationLine.patientInformation ^comment = "TKB-fält: `../patientInformation` (`PatientInformationType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity ^definition = "Patient id

Personnummer, samordningsnummer eller reservnummer ska anges.

Personnummer och samordningsnummer enligt den svenska folkbokföringen.

root

personnummer=“1.2.752.129.2.1.3.1”

samordningsnummer=

”1.2.752.129.2.1.3.3”

reservnummer=

lokal reservnummer oid (ex. SLL: 1.2.752.97.3.1.3) alt. organisationsnummer om lokal reservnummer oid ej finns.

extension

Person- samordnings- eller reservnumret

Format:

Personnummer: ÅÅÅÅMMDDNNNN

Samordningsnr.: ÅÅÅÅMMDDNNNN

Lokala reservnummer=Olika format för varje region och därmed krav på flexibel hantering.

Nationellt reservnummer: XXYYMMDDNNGC

Obligatoriskt fält."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity ^comment = "TKB-fält: `../../patientIdentity` (`IIType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity.root ^comment = "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientIdentity.iiExtension ^comment = "TKB-fält: `../../../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation ^definition = "Patient, övrig information"
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation ^comment = "TKB-fält: `../../patientOtherInformation` (kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county ^comment = "TKB-fält: `../../../../county` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.cvCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.county.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality ^comment = "TKB-fält: `../../../../municipality` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.cvCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.municipality.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber ^comment = "TKB-fält: `../../../../listingLocalAuthoritiesNumber` (`IIType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.listingLocalAuthoritiesNumber.iiExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.LMACardNumber ^definition = "LMA kortnummer

Identitet på LMA-kort som används av asylsökande. Migrationsverkets dossiernummer vilket är unikt för varje individ.

Format: XXXXXXXX (8 siffror).

Ska ifyllas när debitering

sker av asylsökande mellan regioner.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.LMACardNumber ^comment = "TKB-fält: `../../../LMACardNumber` (`String`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender ^comment = "TKB-fält: `../../../../gender` (`CVType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.cvCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.gender.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.EUCardNumber ^definition = "EU-kortets nummer

Kort för EU-medborgare som berättigar till vård enligt nationell prislista. (för hantering mot privata vårdgivare)

Identitet på EU-kort.

Format (exempel 20 tecken): XXXXXXXXXXXXXXXXXXXX

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.EUCardNumber ^comment = "TKB-fält: `../../../EUCardNumber` (`String`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified ^comment = "TKB-fält: `../../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.patientInformation.patientOtherInformation.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed ^definition = "Vårdinsats"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed ^comment = "TKB-fält: `../healthcarePerformed` (`HealthcarePerformedType`, kardinalitet 1..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.lineId ^definition = "Post id vårdinsats

Löpande numrering av vårdinsatser inom en faktura.

Radnummer ska vara ett löpnummer i stigande ordning.

Ex 1, 2, 3, 4 osv Alt 10, 20, 30, …

Vid kreditering används detta fält som referens eftersom vårdkontaktsid ej är obligatoriskt.

Obligatoriskt."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.lineId ^comment = "TKB-fält: `../../lineId` (`positiveInteger`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.careContactId ^comment = "TKB-fält: `../../../careContactId` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.referenceToLineId ^definition = "Referens till PostId Vårdinsats

Vid kreditering av poster på kreditfaktura ska en referens

anges till det radnummer som finns på vårdkontakterna på originalfakturans fakturaunderlag.

Ska lämnas när fakturan är en kreditfaktura.

Några regioner behöver en omställningstid innan denna uppgift kan ifyllas (Uppföljning sker inom nätverksgruppen).

Ska bli obligatorisk under nämnda förutsättningar senast

20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.referenceToLineId ^comment = "TKB-fält: `../../referenceToLineId` (`positiveInteger`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.reasonForCredit ^comment = "TKB-fält: `../../../reasonForCredit` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified ^comment = "TKB-fält: `../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment ^definition = "Betalningsförbindelse"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment ^comment = "TKB-fält: `../../paymentCommitment` (`PaymentCommitmentType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.remittanceNumber ^definition = "Remiss-id

Remissens ursprungliga remiss-id.

Uppgiften lämnas när en remiss finns.

Ska bli obligatoriskt fält under nämnda förutsättningar senast

20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.remittanceNumber ^comment = "TKB-fält: `../../../remittanceNumber` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.paymentCommitmentNumber ^definition = "Betalningsförbindelse-id

Ursprunglig identitet för betalningsförbindelse.

Uppgiften lämnas när en remiss finns.

Ska bli obligatoriskt fält under nämnda förutsättningar senast

20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.paymentCommitmentNumber ^comment = "TKB-fält: `../../../paymentCommitmentNumber` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfAgreement ^comment = "TKB-fält: `../../../../typeOfAgreement` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfChapter ^comment = "TKB-fält: `../../../../typeOfChapter` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.agreementInRiksavtalet ^definition = "Avtalspost i Riksavtalet

Kapitel och punkt som avses i Riksavtalet.

Fältet ifylls endast i de fall vården har utförts utan remiss men med stöd av särskilt kapitel och avsnitt i Riksavtalet.

Giltiga värden:

3.1= Kap 3.1 Akut- och förlossningsvård

3.2 = Kap 3.2 Vård av vissa patienter

4.1 = Kapitel 4.1 Öppen vård utan krav på remiss

4.3 = Kapitel 4.3 Hemsjukvård

4.4 = Kapitel 4.4 Abort

Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.agreementInRiksavtalet ^comment = "TKB-fält: `../../../agreementInRiksavtalet` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.typeOfReimbursement ^comment = "TKB-fält: `../../../../typeOfReimbursement` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified ^comment = "TKB-fält: `../../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.paymentCommitment.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory ^definition = "Vårdkategori"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory ^comment = "TKB-fält: `../../healthcareCategory` (`HealthcareCategoryType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare ^comment = "TKB-fält: `../../../../typeOfCare` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.cvCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfCare.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.publicCare ^definition = "Offentlig vård

Offentlig eller privat vård.

Offentlig vård är vård som är offentligt finansierad och bedrivs av region/kommun.

Privat vård är vård som är offentligt finansierad och bedrivs av privat vårdgivare.

true = offentlig vård

false = privat vård

Ska bli obligatoriskt fält senast 20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.publicCare ^comment = "TKB-fält: `../../../publicCare` (`boolean`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.plannedHealthcare ^definition = "Planerad vård

Kategorisering enligt Socialstyrelsens termbank.

Definitioner:

Oplanerat vårdtillfälle: vårdtillfälle för vilket tid inte har avtalats

Oplanerat öppenvårdsbesök: öppenvårdsbesök för vilket tid inte har avtalats

Planerat vårdtillfälle: vårdtillfälle för vilket tid har avtalats

Planerat öppenvårdsbesök: öppenvårdsbesök för vilket tid har avtalats

true = planerad vård

false = ej planerad vård

Obligatoriskt."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.plannedHealthcare ^comment = "TKB-fält: `../../../plannedHealthcare` (`boolean`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.typeOfVisit ^comment = "TKB-fält: `../../../../typeOfVisit` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified ^comment = "TKB-fält: `../../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareCategory.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan ^definition = "Tidsomfång"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan ^comment = "TKB-fält: `../../timespan` (`TimespanType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime ^definition = "Besökstid"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime ^comment = "TKB-fält: `../../../healthcareVisitDateTime` (`HealthcareVisitDateTimeType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime.careVisitDate ^comment = "TKB-fält: `../../../../../careVisitDate` (`DateType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime.careVisitTime ^definition = "Inskrivnings- eller besökstid

Exakt tid, timme och minut när inskrivning/besöket skedde. För att få tydlighet i en persons vårdkonsumtion

på en dag.

Format: ÅÅÅÅMMDDttmmss

Ska bli obligatoriskt fält senast 20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareVisitDateTime.careVisitTime ^comment = "TKB-fält: `../../../../careVisitTime` (`TimeStampType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime ^definition = "Utskrivningsdatum och tid

Patientens utskrivningsdag och tidpunkt.

Obligatoriskt fält vid sluten vård när patienten har blivit utskriven.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime ^comment = "TKB-fält: `../../../ healthcareDischargeDateTime` (`HealthcareDischargeDateTimeType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime.careDischargeDate ^comment = "TKB-fält: `../../../../../careDischargeDate` (`DateType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime.careDischargeTime ^definition = "Utskrivningstid

Exakt tid, timme och minut när utskrivning skedde. För att få tydlighet i en persons vårdkonsumtion på en dag.

Ifylla vid utskrivning från sluten vård.

Format: ÅÅÅÅMMDDttmmss

Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.healthcareDischargeDateTime.careDischargeTime ^comment = "TKB-fält: `../../../../careDischargeTime` (`TimeStampType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod ^comment = "TKB-fält: `../../../../invoicePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod.start ^comment = "TKB-fält: `../../../../../start` (`DateType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.invoicePeriod.end ^comment = "TKB-fält: `../../../../../end` (`DateType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays ^definition = "Antal dagar"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays ^comment = "TKB-fält: `../../../numberOfDays` (`NumberOfDaysType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays.onLeave ^definition = "Antalet permissionsdagar

Fältet ifylls endast vid sluten vård och avser det antal permissionsdagar som en patient haft under vårdtillfället.

Avser antalet permissionsdagar som ingår i ett vårdtillfälle om patienten haft permission.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays.onLeave ^comment = "TKB-fält: `../../../../onLeave` (`positiveInteger`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays.inCare ^definition = "Antal vårddagar

Det antal vårddagar som kostnaden debiteras för.

Permissionsdagar ska vara frånräknade.

När in- och utskrivning sker samma dag räknas vårdtiden som en dag.

Ska alltid ifyllas vid sluten vård.

Fältet ifylls även om inte vårddagskostnad debiteras ex vid DRG-debitering.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.timespan.numberOfDays.inCare ^comment = "TKB-fält: `../../../../inCare` (`positiveInteger`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit ^definition = "Vårdenhet"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit ^comment = "TKB-fält: `../../healthcareUnit` (`HealthcareUnitType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId ^definition = "Id

Vårdenhetens identitet

Identitet på den vårdenhet som har utfört, alternativt är medicinskt ansvarig för, den vård som en patient har erhållit. Det är HSA-id för vårdenheten som ska anges. Anges i formatet: SEorganisationsnummer-kod.

root

“1.2.752.129.2.1.4.1”

extension

Exempel SE2321000115-094882.

Ska bli obligatoriskt senast 20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId ^comment = "TKB-fält: `../../../careUnitId` (`II`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitId.iiExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitName ^definition = "Namn

Namnet på vårdenheten som utfört vården.

En vårdenhet är en organisatorisk enhet som tillhandahåller hälso- och

sjukvård. Rekommenderas att namnsättning sker enligt

HSA-id. I de fall HSA-id kod anges ska alltid namnsättningen följa koden.

Obligatorisk."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.careUnitName ^comment = "TKB-fält: `../../../careUnitName` (`string`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.professionCodeForHealthcare ^comment = "TKB-fält: `../../../../professionCodeForHealthcare` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified ^comment = "TKB-fält: `../../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.healthcareUnit.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization ^definition = "Kategorisering"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization ^comment = "TKB-fält: `../../categorization` (`CategorizationType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.productCategory ^comment = "TKB-fält: `../../../../productCategory` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.priceList ^comment = "TKB-fält: `../../../../priceList` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost ^definition = "DRG-kostnad

Minst en av DRG-kostnad eller Patient specifik åtgärd (se nedan) måste anges."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost ^comment = "TKB-fält: `../../../DRGCost` (`DRGCostType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode ^definition = "DRG produktkod

Debiterad DRG-kod

Enbart kod enligt DRG sätts i elementet originalText. Koden innehåller fyra tecken, ingen förklarande text skickas i elementet.

Ska ifyllas när debiteringen avser pris för DRG.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode ^comment = "TKB-fält: `../../../../DRGCode` (`CVType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGCode.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice ^definition = "DRG pris

DRG-pris enligt prislista.

Det finns olika prislistor beroende på vilket avtal som fakturering sker från.

Uppgiften ifylls när vårdinsatsens debitering avser fakturering enligt DRG-priser.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice ^comment = "TKB-fält: `../../../../DRGPrice` (`AmounType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.amount ^comment = "TKB-fält: `../../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency ^comment = "TKB-fält: `../../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.DRGPrice.currency.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime ^definition = "Ytterfallsersättning, vårdtid

Ytterfallsersättning för den tid patienten har vårdats.

Belopp för ytterfallsersättning, vårdtid

Om vårdtiden avviker mot prislistans framräknade trimgräns/ytterfallsgräns kan ytterfallsersättning debiteras enligt avtal. När detta ska ske är reglerat i samverkansavtalen.

Ofta faktureras detta på egen

faktura. Det är viktigt att korrekt vårdkontakts-id anges dvs samma id som vid fakturerad vårdkontakt.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime ^comment = "TKB-fält: `../../../../extendedAllowanceCareTime` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.amount ^comment = "TKB-fält: `../../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency ^comment = "TKB-fält: `../../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCareTime.currency.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost ^definition = "Ytterfallsersättning, kostnad

Ytterfallsersättning för höga kostnader utöver patientens vårdtid. Belopp för ytterfallsersättning, kostnad.

Om kostnaden avviker mot prislistans  framräknade trimgräns/ytterfallsgräns kan ytterfallsersättning debiteras enligt avtal. När detta ska ske är reglerat i samverkansavtalen.

Ofta faktureras detta på egen

faktura. Det är viktigt att korrekt vårdkontakts-id anges dvs samma id som vid fakturerad vårdkontakt.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost ^comment = "TKB-fält: `../../../../extendedAllowanceCost` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.amount ^comment = "TKB-fält: `../../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency ^comment = "TKB-fält: `../../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.DRGCost.extendedAllowanceCost.currency.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare ^definition = "Patient specifik åtgärd

Minst en av Patient specifik åtgärd eller DRG-kostnad (se ovan) måste anges.

Patientspecifika åtgärder enligt särskilda prislistor. Det kan förekomma ett flertal patientspecifika åtgärder

kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. För varje åtgärd ska ett pris anges.

Debitering av vårddagskostnader, besök, mm ska även framgå här."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare ^comment = "TKB-fält: `../../../patientSpecificCare` (`PatientSpecificCareType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareCode ^definition = "Typ av patient specifik åtgärd

Kod när debiteringen avser patientspecifika åtgärder, besök, vårddagar mm.

Uppgiften ifylls när vårdinsatsens debitering inte avser fakturering enligt DRG-priser.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareCode ^comment = "TKB-fält: `../../../../patientSpecificCareCode` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareCodeName ^definition = "Patientspecifik åtgärd, namn

Namn för patientspecifik åtgärd när kod för patientspecifik åtgärd har registrerats.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareCodeName ^comment = "TKB-fält: `../../../../patientSpecificCareCodeName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.numberOfPatientSpecificCare ^definition = "Antal patientspecifik åtgärd

Antalsuppgifter för patientspecifika åtgärder, vårddagar,

besök mm. Antalet åtgärder, vårddagar mm som debiteringen innehåller.

Ifylls alltid i samband med patientspecifik debitering.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.numberOfPatientSpecificCare ^comment = "TKB-fält: `../../../../numberOfPatientSpecificCare` (`integer`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice ^definition = "Patientspecifik åtgärd, pris

Pris för patientspecifika åtgärder enligt särskilda prislistor när inte debiteringen sker utifrån DRG-priser.

Det kan förekomma ett flertal patientspecifika åtgärder kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. För varje åtgärd ska ett pris anges.

Även belopp för vårddagskostnad, besök mm anges här.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice ^comment = "TKB-fält: `../../../../patientSpecificCarePrice` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.amount ^comment = "TKB-fält: `../../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency ^comment = "TKB-fält: `../../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCarePrice.currency.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount ^comment = "TKB-fält: `../../../../../patientSpecificCareTotalAmount` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.amount ^comment = "TKB-fält: `../../../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency ^comment = "TKB-fält: `../../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.patientSpecificCareTotalAmount.currency.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified ^comment = "TKB-fält: `../../../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.categorization.patientSpecificCare.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails ^definition = "Fakturerat"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails ^comment = "TKB-fält: `../../invoicedAmountDetails` (`InvoicedAmountDetailsType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount ^comment = "TKB-fält: `../../../../patientCareInvoiceGrossAmount` (`AmountType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.amount ^comment = "TKB-fält: `../../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency ^comment = "TKB-fält: `../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceGrossAmount.currency.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount ^comment = "TKB-fält: `../../../../patientCareInvoiceNetAmount` (`AmountType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.amount ^comment = "TKB-fält: `../../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency ^comment = "TKB-fält: `../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareInvoiceNetAmount.currency.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance ^definition = "Patient vårdkontakt, avdrag 6 % momskompensation

Avdrag (momskompensation) för 6 % moms som säljaren kan söka statsbidrag för vid köp från privat

vårdgivare. Ifylls endast vid privat vård och detta är reglerat i samverkansavtal.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance ^comment = "TKB-fält: `../../../patientCareAllowance` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.amount ^comment = "TKB-fält: `../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency ^comment = "TKB-fält: `../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareAllowance.currency.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount ^definition = "Patient vårdkontakt, rabatt

I fältet ska anges belopp för rabatt i de fall detta finns. Rabatter regleras i samverkansavtalen.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount ^comment = "TKB-fält: `../../../patientCareDiscount` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.amount ^comment = "TKB-fält: `../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency ^comment = "TKB-fält: `../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareDiscount.currency.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge ^definition = "Patient vårdtillfälle, påslag och avgifter

I fältet ska anges påslag för avgifter mm i det fall detta finns. Påslag/avgifter regleras i samverkansavtalen.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge ^comment = "TKB-fält: `../../../patientCareCharge` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.amount ^comment = "TKB-fält: `../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency ^comment = "TKB-fält: `../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientCareCharge.currency.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee ^definition = "Patientavgift öppenvård

Patientavgiften för öppenvård enligt vårdande regions prislista.

Information om vilken patientavgift som är beslutad för aktuell debitering. Kan anges om beloppet avviker från

Patientavgift erlagd öppenvård.

Fältet är frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee ^comment = "TKB-fält: `../../../outPatientCareFee` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.amount ^comment = "TKB-fält: `../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency ^comment = "TKB-fält: `../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFee.currency.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid ^definition = "Patientavgift erlagd öppenvård

Patientavgift för öppenvård som erlagts av patienten.

Den del som patienten betalt. Beloppet kan avvika

jämfört med fältet ”Patientavgift öppenvård” pga frikort

mm.

Ska endast ifyllas när patientavgiften påverkar fakturerat belopp.

När uppgift ska lämnas styrs av de olika samverkansavtalen.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid ^comment = "TKB-fält: `../../../outPatientCareFeePaid` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.amount ^comment = "TKB-fält: `../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency ^comment = "TKB-fält: `../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.outPatientCareFeePaid.currency.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientFeeReducedCategory ^comment = "TKB-fält: `../../../../patientFeeReducedCategory` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientFreePassCauseIndicator ^definition = "Patientavgift Frikortsgrundad indikator

Frikortsgrundande patientavgift. Information om debiterad vård är frikortsberättigad i säljande region.

Möjlighet att fånga en erlagd patientavgift för central hantering och bevakning av frikortsbelopp i köpande region.

True = är frikortsgrundad

false = ej frikortsgrundad

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.patientFreePassCauseIndicator ^comment = "TKB-fält: `../../../patientFreePassCauseIndicator` (`boolean`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee ^definition = "Patientavgift, slutenvård

Patientens patientavgift för behandlingen i sluten vård.

Möjlighet att i framtiden fånga patientavgiften även i sluten vård.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee ^comment = "TKB-fält: `../../../inpatientCareFee` (`AmountType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.amount ^definition = "Belopp"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.amount ^comment = "TKB-fält: `../../../../amount` (`decimal`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency ^comment = "TKB-fält: `../../../../../currency` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.cvCode ^comment = "TKB-fält: `../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystem ^comment = "TKB-fält: `../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystemName ^comment = "TKB-fält: `../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.displayName ^comment = "TKB-fält: `../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.inpatientCareFee.currency.originalText ^comment = "TKB-fält: `../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified ^comment = "TKB-fält: `../../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.invoicedAmountDetails.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity ^definition = "Verksamhet"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity ^comment = "TKB-fält: `../../activity` (`ActivityType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.medicalFieldCode ^definition = "Medicinskt verksamhetsområde

Treställig kod från Socialstyrelsen

Klinikkod (specialitet), medicinskt ansvarig enligt kodverk från Socialstyrelsen.

Obligatoriskt fält."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.medicalFieldCode ^comment = "TKB-fält: `../../../medicalFieldCode` (`string`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification ^definition = "Verksamhetskod

Fyrställig kod för den typ av verksamhet som bedrivs enligt HSA:s verksamhetskodverk.

Uppgiften kan inhämtas från HSA, men det är viktigt att i så fall även titta på verksamhetskoder för vårdenhetens ingående enheter samt att först därefter välja den verksamhetskod som är aktuell för det specifika vårdtillfället.

code: Ur HSAs kodverk Verksamhetskod codesystem: 1.2.752.129.2.2.1.3

Ska bli obligatoriskt fält senast 20xx-01."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification ^comment = "TKB-fält: `../../../businessClassification` (`CVType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.cvCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.businessClassification.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.careLevel ^comment = "TKB-fält: `../../../../careLevel` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified ^comment = "TKB-fält: `../../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.activity.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis ^comment = "TKB-fält: `../../../diagnosis` (`DiagnosisType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis ^comment = "TKB-fält: `../../../../inpatientCareDiagnosis` (`PatientDiagnosisType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis ^comment = "TKB-fält: `../../../../../mainDiagnosis` (`DiagnosisCodeType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode ^comment = "TKB-fält: `../../../../../../diagnosisCode` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.mainDiagnosis.diagnosisCode.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis ^definition = "Bidiagnos

Diagnos 2-x . Det kan förekomma ett flertal bidiagnoser kopplade till ett sjukdomsfall. Dessa uppgifter måste

således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis ^comment = "TKB-fält: `../../../../biDiagnosis` (`DiagnosisCodeType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode ^definition = "Diagnoskod

Kod för diagnos.

Det kodsystem som styr vilken diagnos som angivits.

I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE men även

andra koddiagnoser kan finnas.

Code:

codesystem: ”1.2.752.116.1.1.1.1.3”

Obligatoriskt fält."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode ^comment = "TKB-fält: `../../../../../diagnosisCode` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.inpatientCareDiagnosis.biDiagnosis.diagnosisCode.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis ^comment = "TKB-fält: `../../../../outpatientCareDiagnosis` (`PatientDiagnosisType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis ^definition = "Huvuddiagnos

Huvuddiagnos, Diagnos 1. Ska registreras för somatisk öppenvård när denna uppgift finns. Ska inte lämnas för primärvård och psykiatrisk öppenvård.

Huvuddiagnosen är det tillstånd (sjukdom, skada etc.) vars behandling och utredning varit huvudorsaken till patientens sjukhusvistelse.

Obligatoriskt fält om fältet Diagnos öppenvård används."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis ^comment = "TKB-fält: `../../../../mainDiagnosis` (`DiagnosisCodeType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode ^definition = "Diagnoskod

Det kodsystem som styr vilken diagnos som angivits.

I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE med även andra koddiagnoser kan finnas.

Code:

codesystem: ”1.2.752.116.1.1.1.1.3”

Obligatoriskt fält."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode ^comment = "TKB-fält: `../../../../../diagnosisCode` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.mainDiagnosis.diagnosisCode.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis ^definition = "Bidiagnos

Diagnos 2-x .Det kan förekomma ett flertal bidiagnoser

kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen.

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis ^comment = "TKB-fält: `../../../../biDiagnosis` (`DiagnosisCodeType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode ^definition = "Diagnoskod

Kod för diagnos.

Det kodsystem som styr vilken diagnos som angivits.

I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE men även

andra koddiagnoser kan finnas.

Code:

codesystem: ”1.2.752.116.1.1.1.1.3”

Obligatoriskt fält."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode ^comment = "TKB-fält: `../../../../../diagnosisCode` (`CVType`, kardinalitet 1..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.cvCode ^comment = "TKB-fält: `../../../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystem ^comment = "TKB-fält: `../../../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemName ^comment = "TKB-fält: `../../../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.codeSystemVersion ^comment = "TKB-fält: `../../../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.displayName ^comment = "TKB-fält: `../../../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.diagnosis.outpatientCareDiagnosis.biDiagnosis.diagnosisCode.originalText ^comment = "TKB-fält: `../../../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment ^definition = "Åtgärd"
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment ^comment = "TKB-fält: `../../treatment` (`TreatmentType`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment ^definition = "Åtgärdskod

Det kan förekomma ett flertal åtgärder och därmed åtgärdskoder kopplade till ett sjukdomsfall. Dessa

uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. Åtgärder

ska inte lämnas för primärvård och psykiatrisk vård.

Enligt socialstyrelsens klassifikation av vårdåtgärder (KVÅ).

Code:

codesystem:” 1.2.752.116.1.3.2.1.4”

Obligatoriskt fält under nämnda förutsättningar."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment ^comment = "TKB-fält: `../../../typeOfTreatment` (`CVType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.cvCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.typeOfTreatment.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC ^definition = "ATC kod

Läkemedel enligt ATC-kod.

Betydande kostnader för läkemedel i en behandling kan specificerat med ATC-koder.

Code:

codesystem: ”1.2.752.129.2.2.3.1.1”

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC ^comment = "TKB-fält: `../../../ATC` (`CVType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.cvCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.ATC.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified ^definition = "Ospecificerat

Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.

Frivillig uppgift."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified ^comment = "TKB-fält: `../../../unspecified` (`UnspecifiedType`, kardinalitet 0..*)."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified.unspecifiedText ^comment = "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1).

**Modellanteckning:** unspecifiedText Heter text i schemat."
* claimSpecification.healthCareServicesSpecificationLine.healthcarePerformed.treatment.unspecified.unspecifiedType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 0..1).

**Modellanteckning:** unspecifiedType Heter type i schemat."
