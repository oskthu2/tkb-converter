// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetDispensedDrugsFieldDescriptions
* dispensedDrugs ^definition = "Expedieringar."
* dispensedDrugs ^comment = "TKB-fält: `dispensedDrugs` (`DispensedDrug`, kardinalitet 0..*)."
* dispensedDrugs.dispenseId ^definition = "Unikt id för expediering."
* dispensedDrugs.dispenseId ^comment = "TKB-fält: `../dispenseId` (`string`, kardinalitet 1)."
* dispensedDrugs.dispenseDate ^definition = "Datum för expediering på apotek."
* dispensedDrugs.dispenseDate ^comment = "TKB-fält: `../dispenseDate` (`date`, kardinalitet 1)."
* dispensedDrugs.numberOfPackages ^definition = "Antal förpackningar av utlämnad vara.

Obligatorisk parameter om posten ej är en dosdispenserad artikel"
* dispensedDrugs.numberOfPackages ^comment = "TKB-fält: `../numberOfPackages` (`int`, kardinalitet 1)."
* dispensedDrugs.numberOfTablets ^definition = "Summa antal avdelade doser inklusive enhet.

Angiven om posten är en dosdispenserad artikel."
* dispensedDrugs.numberOfTablets ^comment = "TKB-fält: `../numberOfTablets` (`string`, kardinalitet 1)."
* dispensedDrugs.removed ^definition = "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt."
* dispensedDrugs.removed ^comment = "TKB-fält: `../removed` (`boolean`, kardinalitet 1)."
* dispensedDrugs.quantity ^definition = "Mängd i klartext"
* dispensedDrugs.quantity ^comment = "TKB-fält: `../quantity` (`string`, kardinalitet 1)."
* dispensedDrugs.dosage ^definition = "Dosering i klartext så som den returneras från LF (Krav på presentation i handboken)"
* dispensedDrugs.dosage ^comment = "TKB-fält: `../dosage` (`string`, kardinalitet 1)."
* dispensedDrugs.articleInformation ^definition = "ArticleInformation"
* dispensedDrugs.articleInformation ^comment = "TKB-fält: `../articleInformation` (`ArticleInformation`, kardinalitet 0..1)."
* dispensedDrugs.articleInformation.nplPackid ^definition = "Identitet på förskrivet läkemedel som har NPL

Pack-id alternativt SB Pack-id."
* dispensedDrugs.articleInformation.nplPackid ^comment = "TKB-fält: `../../nplPackid` (`string`, kardinalitet 1)."
* dispensedDrugs.articleInformation.distributedTradeName ^definition = "Läkemedelsnamn vid inläsningstillfället."
* dispensedDrugs.articleInformation.distributedTradeName ^comment = "TKB-fält: `../../distributedTradeName` (`string`, kardinalitet 1)."
* dispensedDrugs.articleInformation.drugForm ^definition = "Läkemedelsform vid inläsningstillfället."
* dispensedDrugs.articleInformation.drugForm ^comment = "TKB-fält: `../../drugForm` (`string`, kardinalitet 1)."
* dispensedDrugs.articleInformation.strength ^definition = "Styrka i klartext vid inläsningstillfället."
* dispensedDrugs.articleInformation.strength ^comment = "TKB-fält: `../../strength` (`string`, kardinalitet 1)."
* dispensedDrugs.articleInformation.atcCode ^definition = "ATC-kod vid inläsningstillfället"
* dispensedDrugs.articleInformation.atcCode ^comment = "TKB-fält: `../../atcCode` (`code`, kardinalitet 1)."
* dispensedDrugs.articleInformation.atcText ^definition = "Verksamt ämne vid inläsningstillfället."
* dispensedDrugs.articleInformation.atcText ^comment = "TKB-fält: `../../atcText` (`string`, kardinalitet 1)."
* dispensedDrugs.articleInformation.packageSize ^definition = "Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar."
* dispensedDrugs.articleInformation.packageSize ^comment = "TKB-fält: `../../packageSize` (`string`, kardinalitet 1)."
* dispensedDrugs.articleInformation.packageType ^definition = "Beskrivning av artikelns förpackningstyp vid inläsningstillfället."
* dispensedDrugs.articleInformation.packageType ^comment = "TKB-fält: `../../packageType` (`string`, kardinalitet 1)."
* dispensedDrugs.presciber ^definition = "Förskrivarens namn, yrke, specialiteter och arbetsplats (Krav på presentation i handboken)"
* dispensedDrugs.presciber ^comment = "TKB-fält: `../presciber` (`MedicalPrescriber`, kardinalitet 1)."
* dispensedDrugs.presciber.personalPrescriptionCode ^definition = "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.

Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.

Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.

För användare som har gruppförskrivarkod gäller:

befattningskod är obligatorisk

För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.

Vid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska

Valideras i AFF

HSA: förskrivarkod, även kallat personalPrescriptionCode

RR: förskrivarkod"
* dispensedDrugs.presciber.personalPrescriptionCode ^comment = "TKB-fält: `../../personalPrescriptionCode` (`string`, kardinalitet 0..1)."
* dispensedDrugs.presciber.legitimationCode ^definition = "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.

Se gruppförskrivarkod för villkor.

HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.

yrkeskod	Gruppkod	yrkeskod klartext

SJ	971000	Sjuksköterska

AP	972000	Apotekare

RC	973000	Receptarie

RR: legitimationskod"
* dispensedDrugs.presciber.legitimationCode ^comment = "TKB-fält: `../../legitimationCode` (`string`, kardinalitet 0..1)."
* dispensedDrugs.presciber.hsaTitleCode ^definition = "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.

Se gruppförskrivarkod för villkor.

Kontrolleras i receptregistret att personen har angiven yrkeskod.

Valideras i AFF

HSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:\"HSA Innehåll Legitimerad Yrkesgrupp\" på se www.inera.se/hsa.

Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.

RR: yrkeskod"
* dispensedDrugs.presciber.hsaTitleCode ^comment = "TKB-fält: `../../hsaTitleCode` (`string`, kardinalitet 1..1)."
* dispensedDrugs.presciber.hsaTitle ^definition = "Förskrivarens yrke i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* dispensedDrugs.presciber.hsaTitle ^comment = "TKB-fält: `../../hsaTitle` (`string`, kardinalitet 0..1)."
* dispensedDrugs.presciber.speciallityCodes ^definition = "Förskrivarens specialiteter i klartext.

Fylls i av NOD vid läsning från LF. Krav vid presentation."
* dispensedDrugs.presciber.speciallityCodes ^comment = "TKB-fält: `../../speciallityCodes` (`string`, kardinalitet 0..*)."
* dispensedDrugs.presciber.paTitleCode ^definition = "Förskrivarens befattningskod.

Se gruppförskrivarkod för villkor.

HSA: befattningskod, även kallat paTitleCode.

Notera också att samma användare kan inneha flera befattningskoder.

RR: befattningskod"
* dispensedDrugs.presciber.paTitleCode ^comment = "TKB-fält: `../../paTitleCode` (`string`, kardinalitet 0..1)."
* dispensedDrugs.presciber.givenName ^definition = "Förskrivarens tilltalsnamn.

HSA: tilltalsnamn (givenName)

RR: förnamn"
* dispensedDrugs.presciber.givenName ^comment = "TKB-fält: `../../givenName` (`string`, kardinalitet 1..1)."
* dispensedDrugs.presciber.familyName ^definition = "Förskrivarens efternamn.

Valideras i AFF

HSA: efternamn

RR: efternamn"
* dispensedDrugs.presciber.familyName ^comment = "TKB-fält: `../../familyName` (`string`, kardinalitet 1..1)."
* dispensedDrugs.presciber.placeOfWork ^definition = "Arbetsplats"
* dispensedDrugs.presciber.placeOfWork ^comment = "TKB-fält: `placeOfWork` (`PlaceOfWork`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* dispensedDrugs.presciber.placeOfWork.unitPrescriptionCode ^definition = "Förskrivarens arbetsplatskod eller grupparbetsplatskod

Unik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.

Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.

Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.

Obligatorisk parameter om förmån angivits.

Valideras i AFF

HSA: arbetsplatskod, även kallat unitPrescriptionCode.

RR: arbetsplatskod"
* dispensedDrugs.presciber.placeOfWork.unitPrescriptionCode ^comment = "TKB-fält: `../unitPrescriptionCode` (`string`, kardinalitet 0..1)."
* dispensedDrugs.presciber.placeOfWork.careUnitName ^definition = "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi

HSA: enhetsnamn (careUnitName )

RR: arbetsplatsnamn"
* dispensedDrugs.presciber.placeOfWork.careUnitName ^comment = "TKB-fält: `../careUnitName` (`string`, kardinalitet 1..1)."
* dispensedDrugs.presciber.placeOfWork.city ^definition = "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED

RR: arbetsplatsort"
* dispensedDrugs.presciber.placeOfWork.city ^comment = "TKB-fält: `../city` (`string`, kardinalitet 1..1)."
* dispensedDrugs.presciber.placeOfWork.phoneNumber1 ^definition = "Förskrivarens eller vårdcentralens telefonnummer.

HSA: direkttelefon

RR: telefonnummer1"
* dispensedDrugs.presciber.placeOfWork.phoneNumber1 ^comment = "TKB-fält: `../phoneNumber1` (`string`, kardinalitet 0..1)."
* dispensedDrugs.presciber.placeOfWork.phoneNumber2 ^definition = "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.

HSA:

RR: telefonnummer2"
* dispensedDrugs.presciber.placeOfWork.phoneNumber2 ^comment = "TKB-fält: `../phoneNumber2` (`string`, kardinalitet 0..1)."
* dispensedDrugs.presciber.placeOfWork.postalAdress ^definition = "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.

HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.

RR: postadress"
* dispensedDrugs.presciber.placeOfWork.postalAdress ^comment = "TKB-fält: `../postalAdress` (`string`, kardinalitet 0..1)."
* dispensedDrugs.presciber.placeOfWork.postalCode ^definition = "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45

HSA: postnummer (postalCode)

RR: postnummer"
* dispensedDrugs.presciber.placeOfWork.postalCode ^comment = "TKB-fält: `../postalCode` (`string`, kardinalitet 0..1)."
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
