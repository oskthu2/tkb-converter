// Genererad från XSD för masterdata.citizen.patient v1.0 (Genererad ur scheman i riv.masterdata.citizen.patient (master, commit efa4099dabb2); scripts/xsd_to_ig.py)
// Kontrakt: UpdatePatientContactInformation v1.0
// Genererad: 2026-09-26

Logical: UpdatePatientContactInformationRequest
Id: updatepatientcontactinformation-request
Title: "UpdatePatientContactInformation — Request"
Description: """
  Logisk modell för begäran i UpdatePatientContactInformation
  (urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress."
* editor 1..1 BackboneElement "editor" "editor"
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* patient 1..1 BackboneElement "patient" "person_ID : Nationell identifikation på personen. Dock ej reservnummer. kommentar : Övrig kontaktuppgift för patient. Fri text"
  * patientId 1..1 BackboneElement "patientId" "patientId Heter id i schemat."
    * root 1..1 string "root" "root"
    * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * comment 0..1 string "comment" "comment"
* contactInformation 0..* BackboneElement "contactInformation" "typ_av_telekom : Anger vilken typ av internet/telefoni-kommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). 5 - Epost - Defineras enligt RFC 5322 Internet message format !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om tele- e-Kom adress t.ex. är privat eller till arbetet kv teleekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer_eller_elektronisk_adress : Tele-/Mobil-/Sökare-/Fax-nummer eller elektronisk adress kommentar : Övrig kontaktuppgift per telnr/email"
  * telecomType 1..1 code "telecomType" "telecomType"
  * telecomType from TypeOfTelecomPatientVS (required)
  * contactType 0..1 code "contactType" "contactType"
  * contactType from TypeOfContactVS (required)
  * numberOrElectronicalAddress 1..1 string "numberOrElectronicalAddress" "numberOrElectronicalAddress"
  * comment 0..1 string "comment" "comment"
  * otherContactInfo 0..1 BackboneElement "otherContactInfo" "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format."
    * completingContactInfo 1..1 string "completingContactInfo" "completingContactInfo"
* contactPerson 0..* BackboneElement "contactPerson" "Kontaktperson relationType : Val av kategori(OID), och inom denna val av kod. (När OID för kodverk ”relationskategori” fastställs, så kan även den nyttjas för att erbjuda alternativet: kod=4, klartext=”Annan”) kv närståenderelation OID: 1.2.752.129.2.2.1.8 kv släktrelation OID: 1.2.752.129.2.2.1.24 kv företrädare OID: 1.2.752.129.2.2.1.23 rangordning : Ordningsnummer enligt patienten. Från 1 och uppåt sekventiellt. Övrig kontaktinformation: ... Från Kontaktperson med person-data förnamn: SKV 717, men förenklat här. efternamn: SKV 717, men förenklat här. kontaktperson_adresser: Lista med kontaktpersonens post-/besöks-adresser. (Tjänsteprotokollet är förenklat till max en adress för kontaktperson.) kontaktperson_telefon_lista: Nummer som kontaktpersonen är nåbar på. Kan vara privat telefonnummer eller arbetsnummer. kommentar: Övrig kontaktuppgift (?) för kontaktperson. Fri text giltighetstid: Tidsperiod för när aktuell relation till patienten gäller, både start och slutdatum ingår i intervallet. (Format ÅÅÅÅMMDD) får kontaktas: Anger om person eller enhet får lov att kontaktas kontakttid: Anger eventuella telefontider eller dyl då kontakt kan göras"
  * relationType 1..1 BackboneElement "relationType" "codeSystem: Släkt relation (OID 1.2.752.129.2.2.1.24) Närstående relation (OID 1.2.752.129.2.2.1.8) Företrädare (OID 1.2.752.129.2.2.1.23) code: Any code valid in the given codeSystem, for more info see urn:riv:masterdata:citizen:patient:enums:1:TypeOfRelativeEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfCloseRelationEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfRepresentativeEnum"
    * contactRelationCode 1..1 string "contactRelationCode" "Union av kodverken TypeOfRelativeEnum, TypeOfCloseRelationEnum, TypeOfRepresentativeEnum. Heter code i schemat."
    * codeSystem 1..1 code "codeSystem" "codeSystem"
    * codeSystem from TypeOfContactRelationCodeSystemVS (required)
  * rank 1..1 integer "rank" "rank"
  * otherContactInfo 0..1 BackboneElement "otherContactInfo" "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format."
    * completingContactInfo 1..1 string "completingContactInfo" "completingContactInfo"
  * firstName 1..1 string "firstName" "firstName"
  * lastName 1..1 string "lastName" "lastName"
  * contactPersonAddress 0..1 BackboneElement "contactPersonAddress" "Enstaka adress som ingår i adresslista Adress standarden SS 6134 01 (RIV/VTIM 2.2 har fler adressrader än vad som förekommer för svenska adress format i ref 8, samt ref 9.) I första version av tjänstekontrakt är adressformat rejält förenklat för kontaktpersons adress. co : T ex c/o Malte Lindeman adress_1 : Gatunamn och nr, eller box adress postnummer : NNN NN postort : Stad eller motsvarande"
    * co 0..1 string "co" "co"
    * address 1..1 string "address" "address"
    * zipCode 1..1 string "zipCode" "zipCode"
    * city 1..1 string "city" "city"
  * contactInformation 0..* BackboneElement "contactInformation" "Kontaktpersonens telefonnummer typ_av_telekom : Anger vilken typ av telefonikommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). !5! - !Epost! - !SKA INTE ANVÄNDAS FÖR KONTAKTPERSONER! !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om telefonnummer t.ex. är privat eller till arbetet kv tele ekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer : Tele-/Mobil-/Sökare-/Fax-nummer kommentar : Övrig kontaktuppgift per telnr/email"
    * telecomType 1..1 code "telecomType" "telecomType"
    * telecomType from TypeOfTelecomContactPersonVS (required)
    * contactType 0..1 code "contactType" "contactType"
    * contactType from TypeOfContactVS (required)
    * numberOrElectronicalAddress 1..1 string "numberOrElectronicalAddress" "numberOrElectronicalAddress"
    * comment 0..1 string "comment" "comment"
    * otherContactInfo 0..1 BackboneElement "otherContactInfo" "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format."
      * completingContactInfo 1..1 string "completingContactInfo" "completingContactInfo"
  * comment 0..1 string "comment" "comment"
  * periodOfValidity 0..1 BackboneElement "periodOfValidity" "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD"
    * start 1..1 string "start" "start"
    * end 1..1 string "end" "end"
  * contactAllowed 1..1 boolean "contactAllowed" "contactAllowed"
  * contactTime 0..1 string "contactTime" "contactTime"
* updatePatientContactInformationVersion 1..1 string "updatePatientContactInformationVersion" "updatePatientContactInformationVersion (xs:long i schemat.) Heter version i schemat."
