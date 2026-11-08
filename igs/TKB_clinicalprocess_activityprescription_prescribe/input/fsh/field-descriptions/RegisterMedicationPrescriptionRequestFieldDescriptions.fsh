// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicationPrescriptionRequestFieldDescriptions
* patientInformation ^definition = "patientId eller patientInformation måste anges."
* patientInformation ^comment = "TKB-fält: `patientInformation*` (`PatientInformation_setter`, kardinalitet 1..1)."
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
* patientInformation.deliveryAdress1 ^definition = "Patientens gatuadress 1.

PU: utdelningsadress1

RR: adress1"
* patientInformation.deliveryAdress1 ^comment = "TKB-fält: `../deliveryAdress1` (`string`, kardinalitet 0..1)."
* patientInformation.deliveryAdress2 ^definition = "Patientens adress 2.

PU: utdelningsadress2

RR: adress2"
* patientInformation.deliveryAdress2 ^comment = "TKB-fält: `../deliveryAdress2` (`string`, kardinalitet 0..1)."
* patientInformation.postalCode ^definition = "Patientens postnummer.

PU: postnr

RR: postnummer"
* patientInformation.postalCode ^comment = "TKB-fält: `../postalCode` (`string`, kardinalitet 0..1)."
* patientInformation.city ^definition = "Patientens postort.

PU: postort

RR: postort"
* patientInformation.city ^comment = "TKB-fält: `../city` (`string`, kardinalitet 0..1)."
* patientInformation.phoneNumber1 ^definition = "Patientens telefonnummer 1.

PU: saknas

RR: telefonnummer1"
* patientInformation.phoneNumber1 ^comment = "TKB-fält: `../phoneNumber1` (`string`, kardinalitet 0..1)."
* patientInformation.phoneNumber2 ^definition = "Patientens telefonnummer 2.

PU: saknas

RR: telefonnummer2"
* patientInformation.phoneNumber2 ^comment = "TKB-fält: `../phoneNumber2` (`string`, kardinalitet 0..1)."
* registeredBy ^definition = "Den person som registrerat ordinationen."
* registeredBy ^comment = "TKB-fält: `registeredBy` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* registeredBy.givenName ^definition = "Personens förnamn"
* registeredBy.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* registeredBy.familyName ^definition = "Personens efternamn"
* registeredBy.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* prescribedBy ^definition = "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.

Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext"
* prescribedBy ^comment = "TKB-fält: `prescribedBy` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* prescribedBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* prescribedBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* prescribedBy.givenName ^definition = "Personens förnamn"
* prescribedBy.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* prescribedBy.familyName ^definition = "Personens efternamn"
* prescribedBy.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* prescribedBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* prescribedBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* prescribedBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* prescribedBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* prescribedBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* prescribedBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* accountablePrescriber ^definition = "Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv."
* accountablePrescriber ^comment = "TKB-fält: `accountablePrescriber` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* accountablePrescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* accountablePrescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* accountablePrescriber.givenName ^definition = "Personens förnamn"
* accountablePrescriber.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* accountablePrescriber.familyName ^definition = "Personens efternamn"
* accountablePrescriber.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* accountablePrescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* accountablePrescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* accountablePrescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* accountablePrescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* accountablePrescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* accountablePrescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicalPrescriber ^definition = "Förskrivare"
* medicalPrescriber ^comment = "TKB-fält: `medicalPrescriber` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* medicalPrescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicalPrescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicalPrescriber.givenName ^definition = "Personens förnamn"
* medicalPrescriber.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* medicalPrescriber.familyName ^definition = "Personens efternamn"
* medicalPrescriber.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* medicalPrescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicalPrescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicalPrescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicalPrescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicalPrescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicalPrescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* authHeader ^definition = "enbart då NOD anropar underliggande tjänster som tillhandahålls av EHM (RR/OR(LF)."
* authHeader ^comment = "TKB-fält: `authHeader` (`EHMAuthenticationSupplement`, kardinalitet 1..1)."
* authHeader.personalPrescriptionCode ^definition = "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.

Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.

Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.

För användare som har gruppförskrivarkod gäller:

befattningskod är obligatorisk

För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.

Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska

Valideras i AFF

HSA: förskrivarkod, även kallat personalPrescriptionCode

RR: förskrivarkod

argos: forskrivarkod"
* authHeader.personalPrescriptionCode ^comment = "TKB-fält: `../personalPrescriptionCode` (`string`, kardinalitet 0..1)."
* authHeader.legitimationCode ^definition = "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.

Se gruppförskrivarkod för villkor.

HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.

yrkeskod	Gruppkod	yrkeskod klartext

SJ	971000	Sjuksköterska

AP	972000	Apotekare

RC	973000	Receptarie

RR: legitimationskod

argos: legitimationskod"
* authHeader.legitimationCode ^comment = "TKB-fält: `../legitimationCode` (`string`, kardinalitet 0..1)."
* authHeader.hsaTitleCode ^definition = "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.

Se gruppförskrivarkod för villkor.

Kontrolleras i receptregistret att personen har angiven yrkeskod.

Valideras i AFF

HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:\"HSA Innehåll Legitimerad Yrkesgrupp\" på se www.inera.se/hsa.

Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.

RR: yrkeskod

argos: yrkesgrupp"
* authHeader.hsaTitleCode ^comment = "TKB-fält: `../hsaTitleCode` (`string`, kardinalitet 0..1)."
* authHeader.paTitleCode ^definition = "Förskrivarens befattningskod.

Se gruppförskrivarkod för villkor.

HSA: befattningskod, även kallat paTitleCode.

Notera också att samma användare kan inneha flera befattningskoder.

RR: befattningskod

argos: befattningskod"
* authHeader.paTitleCode ^comment = "TKB-fält: `../paTitleCode` (`string`, kardinalitet 0..1)."
* authHeader.givenName ^definition = "Förskrivarens tilltalsnamn.

HSA: tilltalsnamn (givenName)

RR: förnamn

argos: fornamn"
* authHeader.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* authHeader.familyName ^definition = "Förskrivarens efternamn.

Valideras i AFF

HSA: efternamn

RR: efternamn

argos: efternamn"
* authHeader.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* authHeader.unitPrescriptionCode ^definition = "Förskrivarens arbetsplatskod eller grupparbetsplatskod

Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.

Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.

Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.

Obligatorisk parameter om förmån angivits.

Valideras i AFF

HSA: arbetsplatskod, även kallat unitPrescriptionCode.

RR: arbetsplatskod

argos: arbetsplatskod"
* authHeader.unitPrescriptionCode ^comment = "TKB-fält: `../unitPrescriptionCode` (`string`, kardinalitet 0..1)."
* authHeader.careUnitName ^definition = "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi

HSA: enhetsnamn (careUnitName )

RR: arbetsplatsnamn

argos: arbetsplatsnamn"
* authHeader.careUnitName ^comment = "TKB-fält: `../careUnitName` (`string`, kardinalitet 0..1)."
* authHeader.city ^definition = "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED

RR: arbetsplatsort

argos: postort"
* authHeader.city ^comment = "TKB-fält: `../city` (`string`, kardinalitet 0..1)."
* authHeader.phoneNumber ^definition = "Förskrivarens eller vårdcentralens telefonnummer.

HSA: direkttelefon

RR: telefonnummer1

argos: telefonnummer"
* authHeader.phoneNumber ^comment = "TKB-fält: `../phoneNumber` (`string`, kardinalitet 0..1)."
* authHeader.postalAdress ^definition = "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.

HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.

RR: postadress

argos: postadress"
* authHeader.postalAdress ^comment = "TKB-fält: `../postalAdress` (`string`, kardinalitet 0..1)."
* authHeader.postalCode ^definition = "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45

HSA: postnummer (postalCode)

RR: postnummer

argos: postnummer"
* authHeader.postalCode ^comment = "TKB-fält: `../postalCode` (`string`, kardinalitet 0..1)."
* authHeader.organizationCode ^definition = "Användarens organisationsnummer

HSA: careGiverOrgNo

argos: organisationsnummer"
* authHeader.organizationCode ^comment = "TKB-fält: `../organizationCode` (`string`, kardinalitet 0..1)."
* authHeader.requestId ^definition = "argos: requestId"
* authHeader.requestId ^comment = "TKB-fält: `../requestId` (`string`, kardinalitet 0..1)."
* authHeader.roleName ^definition = "Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL.

argos: rollnamn"
* authHeader.roleName ^comment = "TKB-fält: `../roleName` (`string`, kardinalitet 0..1)."
* authHeader.hsaID ^definition = "HSA-id för användaren.

argos: hsaID"
* authHeader.hsaID ^comment = "TKB-fält: `../hsaID` (`string`, kardinalitet 0..1)."
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista.

Se kapitel 5.2 för exempel och regler kring format."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1)."
* medicationPrescriptionSequenceId ^definition = "Unikt id för Läkemedelsbehandlingen.

Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras.

Se kapitel 5.2 för exempel och regler kring format."
* medicationPrescriptionSequenceId ^comment = "TKB-fält: `medicationPrescriptionSequenceId` (`Identifier`, kardinalitet 1..1)."
* medicationPrescriptionList ^definition = "Lista med läkemedelsbehandlingar."
* medicationPrescriptionList ^comment = "TKB-fält: `medicationPrescriptionList` (`MedicationPrescriptionListType_setter`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationPrescription ^definition = "Läkemedelsbehandling."
* medicationPrescriptionList.medicationPrescription ^comment = "TKB-fält: `../medicationPrescription` (`MedicationPrescription_setter`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationPrescription.prescriber.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationPrescription.prescriber.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.givenName ^definition = "Personens förnamn"
* medicationPrescriptionList.medicationPrescription.evaluatedBy.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.familyName ^definition = "Personens efternamn"
* medicationPrescriptionList.medicationPrescription.evaluatedBy.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationPrescription.reason.code ^definition = "Snomed CT-koden för vald ordinationsorsak.

Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO).

Ordinationsorsak anges alltid i kodad form. Det finns därför en kod med innebörden Annan orsak Om denna kod används, används attributet annan orsak text för att ange denna orsak i fritext."
* medicationPrescriptionList.medicationPrescription.reason.code ^comment = "TKB-fält: `../../code` (`CodeableConcept`, kardinalitet 1)."
* medicationPrescriptionList.medicationPrescription.reason.primaryReason ^definition = "Uppgift om huruvida ordinationsorsaken är \"huvudorsak\", dvs. viktigare än andra angivna orsaker"
* medicationPrescriptionList.medicationPrescription.reason.primaryReason ^comment = "TKB-fält: `../../primaryReason` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.prescriptionWriteTime ^definition = "(f.d. Ordinationstidpunkt)

Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).

När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.prescriptionWriteTime ^comment = "TKB-fält: `../../prescriptionWriteTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.prescriberComment ^definition = "Förskrivarens kommentar till farmaceut.

Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.prescriberComment ^comment = "TKB-fält: `../../prescriberComment` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.receivingPharmacy ^definition = "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.

Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.receivingPharmacy ^comment = "TKB-fält: `../../receivingPharmacy` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.deliveryMessage ^definition = "Leveransinformation om ordinationen skickas till ett ombud"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.deliveryMessage ^comment = "TKB-fält: `../../deliveryMessage` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.NPLPackid ^definition = "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.

Valideras i AFF.

Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.

Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.NPLPackid ^comment = "TKB-fält: `../../NPLPackid` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.NPLid ^definition = "NPL-id alternativt SB-id som identifierar produkt.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.

Valideras i AFF.

Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.

Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.NPLid ^comment = "TKB-fält: `../../NPLid` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.languageCode ^definition = "Främmande språk för doseringstext enligt ISO-639-1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.languageCode ^comment = "TKB-fält: `../../languageCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.reimbursed ^definition = "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.

Falskt = Utan förmån

Sant =Med förmån

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.reimbursed ^comment = "TKB-fält: `../../reimbursed` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.validUntil ^definition = "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.

Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.validUntil ^comment = "TKB-fält: `../../validUntil` (`date`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.substitutionNotAllowedByPatient ^definition = "Anger att patienten angett att förskriven artikel ej får bytas ut."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.substitutionNotAllowedByPatient ^comment = "TKB-fält: `../../substitutionNotAllowedByPatient` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.substitutionNotAllowedByPrescriber ^definition = "Anger att förskrivare angett att förskriven artikel ej får bytas ut ."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.substitutionNotAllowedByPrescriber ^comment = "TKB-fält: `../../substitutionNotAllowedByPrescriber` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.prescriptionWriteTime ^definition = "(f.d. Ordinationstidpunkt)

Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).

När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.prescriptionWriteTime ^comment = "TKB-fält: `../../prescriptionWriteTime` (`dateTime`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.prescriberComment ^definition = "Förskrivarens kommentar till farmaceut.

Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.prescriberComment ^comment = "TKB-fält: `../../prescriberComment` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.receivingPharmacy ^definition = "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.

Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.receivingPharmacy ^comment = "TKB-fält: `../../receivingPharmacy` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.deliveryMessage ^definition = "Leveransinformation om ordinationen skickas till ett ombud"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.deliveryMessage ^comment = "TKB-fält: `../../deliveryMessage` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.NPLPackid ^definition = "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.

Valideras i AFF.

Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.

Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.NPLPackid ^comment = "TKB-fält: `../../NPLPackid` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.NPLid ^definition = "NPL-id alternativt SB-id som identifierar produkt.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.

Valideras i AFF.

Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.

Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.NPLid ^comment = "TKB-fält: `../../NPLid` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.languageCode ^definition = "Främmande språk för doseringstext enligt ISO-639-1"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.languageCode ^comment = "TKB-fält: `../../languageCode` (`string`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.reimbursed ^definition = "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.

Falskt = Utan förmån

Sant =Med förmån

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.reimbursed ^comment = "TKB-fält: `../../reimbursed` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.validUntil ^definition = "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.

Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.

Valideras i AFF"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.validUntil ^comment = "TKB-fält: `../../validUntil` (`date`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.startPackage ^definition = "Markering om startförpackning ska expedieras vid första uttag"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.startPackage ^comment = "TKB-fält: `../../startPackage` (`boolean`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.firstDispenseBefore ^definition = "Datum inom vilken första uttag av läkemedel måste göras."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.firstDispenseBefore ^comment = "TKB-fält: `../../firstDispenseBefore` (`dateTime`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.dispenseInterval ^definition = "Absolut expedieringsintervall. Av förskrivaren angiven kortaste tid mellan två expedieringar.

Endast dagar används då expedieringsintervall sätts via NOD."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.dispenseInterval ^comment = "TKB-fält: `../../dispenseInterval` (`int`, kardinalitet 0..1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.numberOfDispenses ^definition = "Förskrivet antal uttag

Valideras i RR att värde är > 0"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.numberOfDispenses ^comment = "TKB-fält: `../../numberOfDispenses` (`int`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.numberOfPackages ^definition = "Antal förpackningar som ska expedieras per uttag

Valideras i RR att värde är > 0"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.numberOfPackages ^comment = "TKB-fält: `../../numberOfPackages` (`int`, kardinalitet 1)."
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.EPrescription ^definition = "Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper)"
* medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.EPrescription ^comment = "TKB-fält: `../../EPrescription` (`boolean`, kardinalitet 1)."
* acute ^definition = "Akutflaggan påverkar endast dosdispenserade expedieringsunderlag.

När ett dosdispenserat expedieringsunderlag markeras med akutflagga, begärs en ny akut produktion av patientens dospåsar. För underlag utan akutmarkering produceras nytt innehåll i dospåsarna vid nästa ordinarie produktionstillfälle."
* acute ^comment = "TKB-fält: `acute` (`boolean`, kardinalitet 1)."
