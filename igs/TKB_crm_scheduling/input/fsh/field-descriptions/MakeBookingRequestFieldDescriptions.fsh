// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: MakeBookingRequestFieldDescriptions
* healthcare_facility_med ^comment = "TKB-fält: `healthcare_facility_med` (`HsaIdType (string)`, kardinalitet 1..1)."
* requestedTimeslot ^definition = "Information för aktuell bokning."
* requestedTimeslot ^comment = "TKB-fält: `requestedTimeslot` (`TimeslotType`, kardinalitet 1..1)."
* requestedTimeslot.startTimeInclusive ^definition = "Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss."
* requestedTimeslot.startTimeInclusive ^comment = "TKB-fält: `startTimeInclusive` (`TS (string)`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* requestedTimeslot.endTimeExclusive ^definition = "Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss."
* requestedTimeslot.endTimeExclusive ^comment = "TKB-fält: `endTimeExclusive` (`TS (string)`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* requestedTimeslot.healthcare_facility ^definition = "HSA-id för mottagning/vårdenhet."
* requestedTimeslot.healthcare_facility ^comment = "TKB-fält: `healthcare_facility` (`HsaIdType (string)`, kardinalitet 1..1)."
* requestedTimeslot.performer ^definition = "HSA-id för Hos-person som besöket är bokat hos."
* requestedTimeslot.performer ^comment = "TKB-fält: `performer` (`HsaIdType (string)`, kardinalitet 0..1)."
* requestedTimeslot.bookingId ^definition = "Bokningsidentitet för det bokade besöket."
* requestedTimeslot.bookingId ^comment = "TKB-fält: `bookingId` (`BookingIdType (string)`, kardinalitet 0..1)."
* requestedTimeslot.subject_of_care ^definition = "Personnummer enl. yyyymmddxxxx."
* requestedTimeslot.subject_of_care ^comment = "TKB-fält: `subject_of_care` (`SubjectOfCareIdType (string)`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* requestedTimeslot.purpose ^definition = "Beskrivning av besöksorsak angiven av vårdenhet."
* requestedTimeslot.purpose ^comment = "TKB-fält: `purpose` (`string`, kardinalitet 0..1)."
* requestedTimeslot.reason ^definition = "Kontaktorsak som invånare uppger vid bokning."
* requestedTimeslot.reason ^comment = "TKB-fält: `reason` (`string`, kardinalitet 0..1)."
* requestedTimeslot.resourceName ^definition = "Namn på resurs."
* requestedTimeslot.resourceName ^comment = "TKB-fält: `resourceName` (`string`, kardinalitet 0..1)."
* requestedTimeslot.healthcare_facility_name ^definition = "Namn på bokad mottagning/vårdenhet."
* requestedTimeslot.healthcare_facility_name ^comment = "TKB-fält: `healthcare_facility_name` (`string`, kardinalitet 0..1)."
* requestedTimeslot.performerName ^definition = "Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn."
* requestedTimeslot.performerName ^comment = "TKB-fält: `performerName` (`string`, kardinalitet 0..1)."
* requestedTimeslot.resourceID ^definition = "Identitet för resurs."
* requestedTimeslot.resourceID ^comment = "TKB-fält: `resourceID` (`ResourceIDType (string)`, kardinalitet 0..1)."
* requestedTimeslot.timeTypeName ^definition = "Tidstyp för det bokade besöket."
* requestedTimeslot.timeTypeName ^comment = "TKB-fält: `timeTypeName` (`string`, kardinalitet 0..1)."
* requestedTimeslot.timeTypeID ^definition = "Identitet för tidstyp."
* requestedTimeslot.timeTypeID ^comment = "TKB-fält: `timeTypeID` (`TimeTypeIDType (string)`, kardinalitet 0..1)."
* requestedTimeslot.careTypeName ^definition = "Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes."
* requestedTimeslot.careTypeName ^comment = "TKB-fält: `careTypeName` (`string`, kardinalitet 0..1)."
* requestedTimeslot.careTypeID ^definition = "Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes."
* requestedTimeslot.careTypeID ^comment = "TKB-fält: `careTypeID` (`CareTypeIDType (string)`, kardinalitet 0..1)."
* subject_of_care_info ^comment = "TKB-fält: `subject_of_care_info` (`SubjectOfCareType`, kardinalitet 1..1).

**Modellanteckning:** subject_of_care_info.firstName and subject_of_care_info.lastName are mandatory in this request and must be in sync with the master at Riksskatteverket with no more delay than 5 days."
* subject_of_care_info.phone ^definition = "Telefonnummer."
* subject_of_care_info.phone ^comment = "TKB-fält: `phone` (`string`, kardinalitet 0..1)."
* subject_of_care_info.email ^definition = "Email-adress."
* subject_of_care_info.email ^comment = "TKB-fält: `email` (`string`, kardinalitet 0..1)."
* subject_of_care_info.address ^definition = "Adress."
* subject_of_care_info.address ^comment = "TKB-fält: `address` (`string`, kardinalitet 0..1)."
* subject_of_care_info.coaddress ^definition = "Co-adress."
* subject_of_care_info.coaddress ^comment = "TKB-fält: `coaddress` (`string`, kardinalitet 0..1)."
* subject_of_care_info.firstName ^definition = "Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket)."
* subject_of_care_info.firstName ^comment = "TKB-fält: `firstName` (`string`, kardinalitet 1..1)."
* subject_of_care_info.middleName ^definition = "Invånarens mellannamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket)."
* subject_of_care_info.middleName ^comment = "TKB-fält: `middleName` (`string`, kardinalitet 0..1)."
* subject_of_care_info.lastName ^definition = "Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket)."
* subject_of_care_info.lastName ^comment = "TKB-fält: `lastName` (`string`, kardinalitet 1..1)."
* notification ^definition = "Notifiering till producent"
* notification ^comment = "TKB-fält: `notification` (`string`, kardinalitet 0..1)."
