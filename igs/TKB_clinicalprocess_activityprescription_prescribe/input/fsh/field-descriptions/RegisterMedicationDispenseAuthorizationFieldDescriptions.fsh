// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicationDispenseAuthorizationFieldDescriptions
* medicationDispenseAuthorization ^definition = "Expedieringsunderlag"
* medicationDispenseAuthorization ^comment = "TKB-fält: `medicationDispenseAuthorization` (`MedicationDispenseAuthorization_setter`, kardinalitet 1..1)."
* medicationDispenseAuthorization.registrationData ^definition = "id, registrerad av och registreringstidpunkt.

Saknas initialt om ändringar gjorts på apotekssidan."
* medicationDispenseAuthorization.registrationData ^comment = "TKB-fält: `../registrationData` (`RegistrationData`, kardinalitet 0..1)."
* medicationDispenseAuthorization.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationDispenseAuthorization.registrationData.id ^comment = "TKB-fält: `../../id` (`Identifier`, kardinalitet 1)."
* medicationDispenseAuthorization.registrationData.registeredBy ^definition = "Den person som registrerat ordinationen."
* medicationDispenseAuthorization.registrationData.registeredBy ^comment = "TKB-fält: `registeredBy` (`HealthcareProfessionalType`, kardinalitet 1..1).

**Modellanteckning:** Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationDispenseAuthorization.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationDispenseAuthorization.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationDispenseAuthorization.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationDispenseAuthorization.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationDispenseAuthorization.registrationData.registrationTime ^comment = "TKB-fält: `../../registrationTime` (`dateTime`, kardinalitet 1)."
* medicationDispenseAuthorization.id ^definition = "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)"
* medicationDispenseAuthorization.id ^comment = "TKB-fält: `../id` (`Identifier`, kardinalitet 1)."
* medicationDispenseAuthorization.medicationPrescriptionId ^definition = "Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid.

Om expedieringsunderlaget skapas av vårdsystemet \"löst\", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter.

Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten."
* medicationDispenseAuthorization.medicationPrescriptionId ^comment = "TKB-fält: `../medicationPrescriptionId` (`Identifier`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber ^definition = "Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad."
* medicationDispenseAuthorization.prescriber ^comment = "TKB-fält: `../prescriber` (`MedicalPrescriber`, kardinalitet 1)."
* medicationDispenseAuthorization.prescriber.personalPrescriptionCode ^definition = "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.

Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.

Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.

För användare som har gruppförskrivarkod gäller:

befattningskod är obligatorisk

För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.

Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska

Valideras i AFF

HSA: förskrivarkod, även kallat personalPrescriptionCode

RR: förskrivarkod"
* medicationDispenseAuthorization.prescriber.personalPrescriptionCode ^comment = "TKB-fält: `../../personalPrescriptionCode` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.legitimationCode ^definition = "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.

Se gruppförskrivarkod för villkor.

HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.

yrkeskod	Gruppkod	yrkeskod klartext

SJ	971000	Sjuksköterska

AP	972000	Apotekare

RC	973000	Receptarie

RR: legitimationskod"
* medicationDispenseAuthorization.prescriber.legitimationCode ^comment = "TKB-fält: `../../legitimationCode` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.hsaTitleCode ^definition = "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.

Se gruppförskrivarkod för villkor.

Kontrolleras i receptregistret att personen har angiven yrkeskod.

Valideras i AFF

HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:\"HSA Innehåll Legitimerad Yrkesgrupp\" på se www.inera.se/hsa.

Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.

RR: yrkeskod"
* medicationDispenseAuthorization.prescriber.hsaTitleCode ^comment = "TKB-fält: `../../hsaTitleCode` (`string`, kardinalitet 1..1)."
* medicationDispenseAuthorization.prescriber.hsaTitle ^definition = "Förskrivarens yrke i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* medicationDispenseAuthorization.prescriber.hsaTitle ^comment = "TKB-fält: `../../hsaTitle` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.speciallityCodes ^definition = "Förskrivarens specialiteter i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* medicationDispenseAuthorization.prescriber.speciallityCodes ^comment = "TKB-fält: `../../speciallityCodes` (`string`, kardinalitet 0..*)."
* medicationDispenseAuthorization.prescriber.paTitleCode ^definition = "Förskrivarens befattningskod.

Se gruppförskrivarkod för villkor.

HSA: befattningskod, även kallat paTitleCode.

Notera också att samma användare kan inneha flera befattningskoder.

RR: befattningskod"
* medicationDispenseAuthorization.prescriber.paTitleCode ^comment = "TKB-fält: `../../paTitleCode` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.givenName ^definition = "Förskrivarens tilltalsnamn.

HSA: tilltalsnamn (givenName)

RR: förnamn"
* medicationDispenseAuthorization.prescriber.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* medicationDispenseAuthorization.prescriber.familyName ^definition = "Förskrivarens efternamn.

Valideras i AFF

HSA: efternamn

RR: efternamn"
* medicationDispenseAuthorization.prescriber.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* medicationDispenseAuthorization.prescriber.placeOfWork ^definition = "Arbetsplats"
* medicationDispenseAuthorization.prescriber.placeOfWork ^comment = "TKB-fält: `../../placeOfWork` (`PlaceOfWork`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.placeOfWork.unitPrescriptionCode ^definition = "Förskrivarens arbetsplatskod eller grupparbetsplatskod

Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.

Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.

Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.

Obligatorisk parameter om förmån angivits.

Valideras i AFF

HSA: arbetsplatskod, även kallat unitPrescriptionCode.

RR: arbetsplatskod"
* medicationDispenseAuthorization.prescriber.placeOfWork.unitPrescriptionCode ^comment = "TKB-fält: `../../../unitPrescriptionCode` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.placeOfWork.careUnitName ^definition = "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi

HSA: enhetsnamn (careUnitName )

RR: arbetsplatsnamn"
* medicationDispenseAuthorization.prescriber.placeOfWork.careUnitName ^comment = "TKB-fält: `../../../careUnitName` (`string`, kardinalitet 1..1)."
* medicationDispenseAuthorization.prescriber.placeOfWork.city ^definition = "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED

RR: arbetsplatsort"
* medicationDispenseAuthorization.prescriber.placeOfWork.city ^comment = "TKB-fält: `../../../city` (`string`, kardinalitet 1..1)."
* medicationDispenseAuthorization.prescriber.placeOfWork.phoneNumber1 ^definition = "Förskrivarens eller vårdcentralens telefonnummer.

HSA: direkttelefon

RR: telefonnummer1"
* medicationDispenseAuthorization.prescriber.placeOfWork.phoneNumber1 ^comment = "TKB-fält: `../../../phoneNumber1` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.placeOfWork.phoneNumber2 ^definition = "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.

HSA:

RR: telefonnummer2"
* medicationDispenseAuthorization.prescriber.placeOfWork.phoneNumber2 ^comment = "TKB-fält: `../../../phoneNumber2` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.placeOfWork.postalAdress ^definition = "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.

HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.

RR: postadress"
* medicationDispenseAuthorization.prescriber.placeOfWork.postalAdress ^comment = "TKB-fält: `../../../postalAdress` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriber.placeOfWork.postalCode ^definition = "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45

HSA: postnummer (postalCode)

RR: postnummer"
* medicationDispenseAuthorization.prescriber.placeOfWork.postalCode ^comment = "TKB-fält: `../../../postalCode` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation ^definition = "patientId eller patientInformation måste anges."
* medicationDispenseAuthorization.patientInformation ^comment = "TKB-fält: `patientInformation` (`PatientInformation`, kardinalitet 1..1).

**Modellanteckning:** I första hand ska svenskt personnummer användas. Vid Expedieringsunderlag för helförpackning gäller dessutom:Om samordningsnummer finns kan detta användas tillsammans med födelsetid.Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att födelsetid och kön anges."
* medicationDispenseAuthorization.patientInformation.patientId ^definition = "Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet)

Endast om det är känt.

PU: personid

RR: personnummer"
* medicationDispenseAuthorization.patientInformation.patientId ^comment = "TKB-fält: `../patientId` (`Identifier`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.givenName ^definition = "Patientens förnamn.

PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn.

RR: förnamn"
* medicationDispenseAuthorization.patientInformation.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.familyName ^definition = "Patientens efternamn.

PU: efternamn

RR: efternamn"
* medicationDispenseAuthorization.patientInformation.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.dateOfBirth ^definition = "Födelsedatum (8 siffror).

Anges för patient som saknar giltigt personnummer.

Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag.

PU: födelsetid

RR: födelsedatum"
* medicationDispenseAuthorization.patientInformation.dateOfBirth ^comment = "TKB-fält: `../dateOfBirth` (`date`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.gender ^definition = "Patientens kön.

Obligatorisk parameter om Personnummer saknas.

{Male, Female, Unspecified}

PU: kön

RR: kön"
* medicationDispenseAuthorization.patientInformation.gender ^comment = "TKB-fält: `../gender` (`GenderEnum`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.deliveryAdress1 ^definition = "Patientens gatuadress 1.

PU: utdelningsadress1

RR: adress1"
* medicationDispenseAuthorization.patientInformation.deliveryAdress1 ^comment = "TKB-fält: `../deliveryAdress1` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.deliveryAdress2 ^definition = "Patientens adress 2.

PU: utdelningsadress2

RR: adress2"
* medicationDispenseAuthorization.patientInformation.deliveryAdress2 ^comment = "TKB-fält: `../deliveryAdress2` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.postalCode ^definition = "Patientens postnummer.

PU: postnr

RR: postnummer"
* medicationDispenseAuthorization.patientInformation.postalCode ^comment = "TKB-fält: `../postalCode` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.city ^definition = "Patientens postort.

PU: postort

RR: postort"
* medicationDispenseAuthorization.patientInformation.city ^comment = "TKB-fält: `../city` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.phoneNumber1 ^definition = "Patientens telefonnummer 1.

PU: saknas

RR: telefonnummer1"
* medicationDispenseAuthorization.patientInformation.phoneNumber1 ^comment = "TKB-fält: `../phoneNumber1` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.patientInformation.phoneNumber2 ^definition = "Patientens telefonnummer 2.

PU: saknas

RR: telefonnummer2"
* medicationDispenseAuthorization.patientInformation.phoneNumber2 ^comment = "TKB-fält: `../phoneNumber2` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.prescriptionWriteTime ^definition = "(f.d. Ordinationstidpunkt)

Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).

När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån)."
* medicationDispenseAuthorization.prescriptionWriteTime ^comment = "TKB-fält: `../prescriptionWriteTime` (`dateTime`, kardinalitet 1)."
* medicationDispenseAuthorization.prescriberComment ^definition = "Förskrivarens kommentar till farmaceut.

Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)"
* medicationDispenseAuthorization.prescriberComment ^comment = "TKB-fält: `../prescriberComment` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.receivingPharmacy ^definition = "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.

Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.

Valideras i AFF"
* medicationDispenseAuthorization.receivingPharmacy ^comment = "TKB-fält: `../receivingPharmacy` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.deliveryMessage ^definition = "Leveransinformation om ordinationen skickas till ett ombud"
* medicationDispenseAuthorization.deliveryMessage ^comment = "TKB-fält: `../deliveryMessage` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.treatmentEndTime ^definition = "Datum och tid när patienten skall avsluta intag.

Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).

Mappas från Läkemedelsordination.utsättningstidpunkt"
* medicationDispenseAuthorization.treatmentEndTime ^comment = "TKB-fält: `../treatmentEndTime` (`dateTime`, kardinalitet 0..1)."
* medicationDispenseAuthorization.NPLPackid ^definition = "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.

Valideras i AFF.

Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.

Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id"
* medicationDispenseAuthorization.NPLPackid ^comment = "TKB-fält: `../NPLPackid` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.NPLid ^definition = "NPL-id alternativt SB-id som identifierar produkt.

Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.

Valideras i AFF.

Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.

Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id"
* medicationDispenseAuthorization.NPLid ^comment = "TKB-fält: `../NPLid` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.articleId ^definition = "Identitet på förskrivet livsmedel eller handelsvara.

Obligatorisk parameter om NPL-id och NPL pack-id saknas.

Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF.

Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr"
* medicationDispenseAuthorization.articleId ^comment = "TKB-fält: `../articleId` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.dosageText1 ^definition = "Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.

Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning."
* medicationDispenseAuthorization.dosageText1 ^comment = "TKB-fält: `../dosageText1` (`string`, kardinalitet 1..1)."
* medicationDispenseAuthorization.dosageText2 ^definition = "Kompletterande doseringstext till patienten

Mappas från endera av

Licensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation

eller

Ex tempore. beskrivning"
* medicationDispenseAuthorization.dosageText2 ^comment = "TKB-fält: `../dosageText2` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.languageCode ^definition = "Främmande språk för doseringstext enligt ISO-639-1"
* medicationDispenseAuthorization.languageCode ^comment = "TKB-fält: `../languageCode` (`string`, kardinalitet 0..1)."
* medicationDispenseAuthorization.pupose ^definition = "(Ändamål klartext)

Mappas från Läkemedelsordination.behandlingsändamål"
* medicationDispenseAuthorization.pupose ^comment = "TKB-fält: `../pupose` (`string`, kardinalitet 1)."
* medicationDispenseAuthorization.reimbursed ^definition = "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.

Falskt = Utan förmån

Sant =Med förmån

Valideras i AFF"
* medicationDispenseAuthorization.reimbursed ^comment = "TKB-fält: `../reimbursed` (`boolean`, kardinalitet 1)."
* medicationDispenseAuthorization.validUntil ^definition = "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.

Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.

Valideras i AFF"
* medicationDispenseAuthorization.validUntil ^comment = "TKB-fält: `../validUntil` (`date`, kardinalitet 1)."
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista.

Se kapitel 5.2 för exempel och regler kring format."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED."
* result.subcode ^definition = "Inga subkoder är specificerade."
* result.subcode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).

**Modellanteckning:** subcode Tillåtna värden: SUB_RR_ERROR."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
