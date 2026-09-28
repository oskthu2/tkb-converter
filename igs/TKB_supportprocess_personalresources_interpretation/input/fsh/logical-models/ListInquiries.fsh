// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: ListInquiries v1.0
// Genererad: 2026-09-26

Logical: ListInquiries
Id: listinquiries
Title: "ListInquiries — Svar"
Description: """
  Logisk modell för svaret i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesResponseType).
"""
Characteristics: #can-be-target
* inquiries 0..* BackboneElement "Förfrågningar" "Förfrågningar (Inquiry)."
  * inquiryId 1..1 positiveInt "Förfrågans id" "Id för förfrågan."
  * round 1..1 positiveInt "Utskicksrunda" "1 = första rundan, 2 = första påminnelserundan osv."
  * occasions 1..* BackboneElement "Tolkningstillfälle" "Tolkningstillfälle (BookingOccasion)."
    * invoiceEventId 1..1 string "Faktureringsnummer" "Faktureringsnummer."
    * bookingNumber 1..1 integer "Beställningsnummer" "Tolkportalens beställningsnummer (≥ 0)."
    * referenceNumber 0..1 string "Referensnummer" "Tolkförmedlingens referensnummer."
    * state 1..1 code "Status" "Status för beställningen (BookingStateEnum)."
    * state from BookingStateVS (required)
    * startTime 1..1 dateTime "Starttid" "Besökets starttid, se 5.2.1."
    * endTime 1..1 dateTime "Sluttid" "Besökets sluttid, se 5.2.1."
  * data 1..1 BackboneElement "Beställningsinformation" "Information om en beställning (BookingData)."
    * interpretationLanguageId 1..1 string "Språk" "Språk som ska tolkas enligt Hälso- och sjukvårdsförvaltningens (HSF) språktabell. Arbete pågår med att harmonisera med ISO 639."
    * patient 0..* BackboneElement "Patient" "Information om patienten (PatientInformation)."
      * age 1..1 integer "Ålder" "Patientens ålder i år (0–200)."
      * gender 1..1 CodeableConcept "Kön" "Patientens kön enligt KV Kön [R4], codeSystem 1.2.752.129.2.2.1.1. Giltiga värden (urval): 1 = man, 2 = kvinna."
    * authorizationLevel 1..1 BackboneElement "Krav på kompetensnivå" "Krav på tolkens kompetensnivå (AuthorizationLevelWithRequirement)."
      * minAuthorizationLevel 1..1 CodeableConcept "Lägsta kompetensnivå" "Tolkens kompetensnivå enligt KV Kompetensnivå tolk [R4], codeSystem eec2f9b0-03d5-450d-9797-ac0c74f6cfac."
      * requiredLevel 1..1 code "Kravnivå" "Desired = angiven nivå är lägsta accepterade men högre godtas; Only = endast angiven nivå godtas."
      * requiredLevel from RequirementLevelVS (required)
    * additionalRequirements 0..* string "Ytterligare krav" "Eventuella ytterligare krav från beställaren."
    * interpretationType 1..1 CodeableConcept "Typ av tolkning" "Typ av tolkning enligt KV Typ av tolkning [R4], codeSystem 498c11f2-05c0-4d99-aef2-770a2b2a8260."
    * contactInformation 1..1 BackboneElement "Kontaktinformation" "Information om tolkstället och beställaren (ContactInformation)."
      * address 1..1 string "Adress" "Adress till tolkställe."
      * changedAddress 1..1 boolean "Ändrad adress" "Anger om adressen skiljer sig från adressen i elektroniska katalogen (EK)."
      * doorCode 0..1 string "Portkod" "Eventuell portkod till tolkstället."
      * locationDetails 0..1 string "Platsförtydligande" "Platsförtydligande eller vägbeskrivning till tolkstället."
      * locationName 1..1 string "Tolkställe" "Namn på tolkstället."
      * contactPerson 1..1 string "Kontaktperson" "Kontaktpersonens namn."
      * contactPhone 1..1 string "Kontakttelefon" "Telefonnummer till kontaktperson."
      * healthCareProfessionalName 1..1 string "Vårdpersonal" "Namn på hälso- och sjukvårdspersonal som ska träffa patienten."
      * orderingPersonName 1..1 string "Beställare" "Namn på beställare."
      * orderingPersonId 1..1 Identifier "Beställarens HSA-id" "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension)."
      * orderingUnitName 1..1 string "Beställande enhet" "Beställande enhetens namn."
      * orderingUnitHsaId 1..1 Identifier "Beställande enhetens HSA-id" "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension)."
      * orderingHealthcareUnitName 1..1 string "Överordnad enhet" "Namn på enhet som organisatoriskt ligger över den beställande enheten."
      * orderingHealthcareUnitHsaId 1..1 Identifier "Överordnad enhets HSA-id" "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension)."
    * travelTimeCostAllowed 1..1 boolean "Restidsersättning möjlig" "Anger om restidsersättning är möjlig inom ramen för förfrågan."
    * interpreterGender 0..1 BackboneElement "Krav på tolkens kön" "Krav på tolkens kön (RequiredGenderWithRequirement)."
      * requiredGender 0..1 CodeableConcept "Tolkens kön" "Tolkens kön enligt KV Kön [R4], codeSystem 1.2.752.129.2.2.1.1. Giltiga värden (urval): 1 = man, 2 = kvinna."
      * requiredLevel 1..1 code "Kravnivå" "Desired = angivet kön önskas; Only = endast angivet kön godtas."
      * requiredLevel from RequirementLevelVS (required)
    * interpreterName 0..1 BackboneElement "Krav på namngiven tolk" "Krav på en specifik namngiven tolk (RequiredInterpreterNameWithRequirement)."
      * requiredInterpreterName 0..1 string "Tolkens namn" "Tolkens namn."
      * requiredLevel 1..1 code "Kravnivå" "Desired = den namngivna tolken önskas; Only = endast den namngivna tolken godtas."
      * requiredLevel from RequirementLevelVS (required)
      * isPreBooked 1..1 boolean "Förbokad" "Anger om tolken redan är vidtalad om uppdraget."
    * additionalPatientRequest 0..1 string "Patientens önskemål" "Eventuella önskemål från patienten."
  * inquiryState 1..1 code "Status för förfrågan" "InquiryStateEnum."
  * inquiryState from InquiryStateVS (required)
  * lastResponseTime 1..1 dateTime "Sista svarstid" "Sista möjliga svarstid, lokal tid."
  * firstInRank 1..1 boolean "Först i rangordningen" "Anger om tolkförmedlingen för tillfället ligger först i rangordningen för förfrågan."
  * sameInterpreterRequiredForAllOccasions 1..1 boolean "Samma tolk för alla tillfällen" "Anger om samma tolk måste levereras till alla tillfällen i serien."
  * interpreterName 0..1 string "Tolkens namn" "Namn på tolk."
  * explainingText 0..1 string "Förklarande text" "Ytterligare information om förfrågan."
* lastSequenceNumber 1..1 unsignedInt "Senaste meddelandenummer" "Nummer på det senaste meddelandet i svaret. XSD-typen är unsignedLong; FHIR saknar motsvarande typ."
* hasMoreEntries 1..1 boolean "Fler poster finns" "Anger om fler poster finns att hämta."
