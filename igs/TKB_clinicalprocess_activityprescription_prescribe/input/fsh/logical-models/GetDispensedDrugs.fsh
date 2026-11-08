// Elementen genereras ur GetDispensedDrugsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: GetDispensedDrugs v2.0
// Genererad: 2026-03-19

Logical: GetDispensedDrugs
Id: getdispenseddrugs
Title: "GetDispensedDrugs"
Description: """
  Logisk modell för tjänstekontraktet GetDispensedDrugs
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugs:2).
  Representerar responsens informationsstruktur — uthämtade läkemedel för patient.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* dispensedDrugs 0..* Base "DispensedDrug" "dispensedDrugs"
* dispensedDrugs.dispenseId 1..1 string "dispenseId" "dispenseId"
* dispensedDrugs.dispenseDate 1..1 date "Datum för expediering på apotek." "Datum för expediering på apotek."
* dispensedDrugs.numberOfPackages 1..1 integer "Antal förpackningar av utlämnad vara.Obligatorisk parameter om posten ej är en dosdispenserad artikel" "Antal förpackningar av utlämnad vara.Obligatorisk parameter om posten ej är en dosdispenserad artikel"
* dispensedDrugs.numberOfTablets 1..1 string "Summa antal avdelade doser inklusive enhet.Angiven om posten är en dosdispenserad artikel." "Summa antal avdelade doser inklusive enhet.Angiven om posten är en dosdispenserad artikel."
* dispensedDrugs.removed 1..1 boolean "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt." "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt."
* dispensedDrugs.quantity 1..1 string "Mängd i klartext" "Mängd i klartext"
* dispensedDrugs.dosage 1..1 string "Dosering i klartext så som den returneras från LF (Krav på presentation i handboken)" "Dosering i klartext så som den returneras från LF (Krav på presentation i handboken)"
* dispensedDrugs.articleInformation 0..1 Base "ArticleInformation" "articleInformation"
* dispensedDrugs.articleInformation.nplPackid 1..1 string "Identitet på förskrivet läkemedel som har NPLPack-id alternativt SB Pack-id." "Identitet på förskrivet läkemedel som har NPLPack-id alternativt SB Pack-id."
* dispensedDrugs.articleInformation.distributedTradeName 1..1 string "Läkemedelsnamn vid inläsningstillfället." "Läkemedelsnamn vid inläsningstillfället."
* dispensedDrugs.articleInformation.drugForm 1..1 string "Läkemedelsform vid inläsningstillfället." "Läkemedelsform vid inläsningstillfället."
* dispensedDrugs.articleInformation.strength 1..1 string "Styrka i klartext vid inläsningstillfället." "Styrka i klartext vid inläsningstillfället."
* dispensedDrugs.articleInformation.atcCode 1..1 code "ATC-kod vid inläsningstillfället" "ATC-kod vid inläsningstillfället"
* dispensedDrugs.articleInformation.atcText 1..1 string "Verksamt ämne vid inläsningstillfället." "Verksamt ämne vid inläsningstillfället."
* dispensedDrugs.articleInformation.packageSize 1..1 string "packageSize" "Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar."
* dispensedDrugs.articleInformation.packageType 1..1 string "Beskrivning av artikelns förpackningstyp vid inläsningstillfället." "Beskrivning av artikelns förpackningstyp vid inläsningstillfället."
* dispensedDrugs.presciber 1..1 Base "MedicalPrescriber" "Förskrivarens namn, yrke, specialiteter och arbetsplats (Krav på presentation i handboken)"
* dispensedDrugs.presciber.personalPrescriptionCode 0..1 string "personalPrescriptionCode" "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas. Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.För användare som har gruppförskrivarkod gäller:befattningskod är obligatorisk För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.Vid övriga yrken – yrkeskod och giltig legitimationskod är obligatoriskaValideras i AFFHSA: förskrivarkod, även kallat personalPrescriptionCode RR: förskrivarkod"
* dispensedDrugs.presciber.legitimationCode 0..1 string "legitimationCode" "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.Se gruppförskrivarkod för villkor.HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.yrkeskodGruppkodyrkeskod klartextSJ971000SjuksköterskaAP972000ApotekareRC973000ReceptarieRR: legitimationskod"
* dispensedDrugs.presciber.hsaTitleCode 1..1 string "hsaTitleCode" "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.Se gruppförskrivarkod för villkor.Kontrolleras i receptregistret att personen har angiven yrkeskod.Valideras i AFFHSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:“HSA Innehåll Legitimerad Yrkesgrupp” på se www.inera.se/hsa.Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.RR: yrkeskod"
* dispensedDrugs.presciber.hsaTitle 0..1 string "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation." "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation."
* dispensedDrugs.presciber.speciallityCodes 0..* string "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation." "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation."
* dispensedDrugs.presciber.paTitleCode 0..1 string "paTitleCode" "Förskrivarens befattningskod.Se gruppförskrivarkod för villkor.HSA: befattningskod, även kallat paTitleCode.Notera också att samma användare kan inneha flera befattningskoder.RR: befattningskod"
* dispensedDrugs.presciber.givenName 1..1 string "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn" "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn"
* dispensedDrugs.presciber.familyName 1..1 string "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn" "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn"
* dispensedDrugs.presciber.placeOfWork 0..1 Base "PlaceOfWork" "placeOfWork"
* dispensedDrugs.presciber.placeOfWork.unitPrescriptionCode 0..1 string "unitPrescriptionCode" "Förskrivarens arbetsplatskod eller grupparbetsplatskodUnik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället. Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO. Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod. Obligatorisk parameter om förmån angivits.Valideras i AFFHSA: arbetsplatskod, även kallat unitPrescriptionCode.RR: arbetsplatskod"
* dispensedDrugs.presciber.placeOfWork.careUnitName 1..1 string "careUnitName" "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopediHSA: enhetsnamn (careUnitName )RR: arbetsplatsnamn"
* dispensedDrugs.presciber.placeOfWork.city 1..1 string "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort" "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort"
* dispensedDrugs.presciber.placeOfWork.phoneNumber1 0..1 string "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1" "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1"
* dispensedDrugs.presciber.placeOfWork.phoneNumber2 0..1 string "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2" "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2"
* dispensedDrugs.presciber.placeOfWork.postalAdress 0..1 string "postalAdress" "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.RR: postadress"
* dispensedDrugs.presciber.placeOfWork.postalCode 0..1 string "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer" "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer"
* multimedia 0..1 MultimediaType "multimedia" "multimedia"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED."
* result.subcode 0..1 code "subcode" "subcode Tillåtna värden: SUB_RR_ERROR."
* result.logId 1..1 string "logId" "logId"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetDispensedDrugsFieldDescriptions
