// Genererad från TKB crm:scheduling v1.1
// Kontrakt: MakeBooking v1.1 — Request
// Genererad: 2026-03-24

Logical: MakeBookingRequest
Id: makebooking-request
Title: "MakeBooking — Request"
Description: "Logisk modell för requestparametrar i MakeBooking."
Characteristics: #can-be-target

* healthcare_facility_med 1..1 Identifier "HSA-id för avsändar-vårdenhet"
    """
    HSA-id för mottagning (avsändar-vårdenhet i begäran).
    Kardinalitet: Obligatorisk.
    """
* requestedTimeslot 1..1 BackboneElement "Information för aktuell bokning (TimeslotType)"
    """
    Information för aktuell bokning.
    Kardinalitet: Obligatorisk.
    """
  * startTimeInclusive 1..1 string "Startdatum och klockslag (ÅÅÅÅMMDDttmmss)"
      """
      Startdatum och klockslag för bokad tid.
      Kardinalitet: Obligatorisk.
      """
  * endTimeExclusive 1..1 string "Slutdatum och klockslag (ÅÅÅÅMMDDttmmss)"
      """
      Slutdatum och klockslag för bokad tid.
      Kardinalitet: Obligatorisk.
      """
  * healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
      """
      HSA-id för mottagning/vårdenhet.
      Kardinalitet: Obligatorisk.
      """
  * performer 0..1 Identifier "HSA-id för HoS-person"
      """
      HSA-id för HoS-person som besöket är bokat hos.
      Kardinalitet: Valfri.
      """
  * bookingId 0..1 string "Bokningsidentitet (öppen kallelse)"
      """
      Bokningsidentitet. Används vid bokning mot öppen kallelse.
      Kardinalitet: Valfri.
      """
  * subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
      """
      Personnummer för invånaren.
      Kardinalitet: Obligatorisk.
      """
  * purpose 0..1 string "Besöksorsak"
      """
      Beskrivning av besöksorsak angiven av vårdenhet.
      Kardinalitet: Valfri.
      """
  * reason 0..1 string "Kontaktorsak"
      """
      Kontaktorsak som invånare uppger.
      Kardinalitet: Valfri.
      """
  * resourceName 0..1 string "Namn på resurs"
      """
      Namn på resurs.
      Kardinalitet: Valfri.
      """
  * healthcare_facility_name 0..1 string "Namn på mottagning"
      """
      Namn på mottagning/vårdenhet.
      Kardinalitet: Valfri.
      """
  * performerName 0..1 string "Namn på HoS-person"
      """
      Namn på HoS-person.
      Kardinalitet: Valfri.
      """
  * resourceID 0..1 string "Identitet för resurs"
      """
      Identitet för resurs.
      Kardinalitet: Valfri.
      """
  * timeTypeName 0..1 string "Tidstyp"
      """
      Tidstyp för det bokade besöket.
      Kardinalitet: Valfri.
      """
  * timeTypeID 0..1 string "Identitet för tidstyp"
      """
      Identitet för tidstyp.
      Kardinalitet: Valfri.
      """
  * careTypeName 0..1 string "Klartext för vårdtyp"
      """
      Klartext för vårdtyp.
      Kardinalitet: Valfri.
      """
  * careTypeID 0..1 string "Identitet för vårdtyp"
      """
      Identitet för vårdtyp.
      Kardinalitet: Valfri.
      """
* subject_of_care_info 1..1 BackboneElement "Invånarinformation (SubjectOfCareType)"
    """
    Invånarens kontaktinformation.
    Kardinalitet: Obligatorisk.
    """
  * phone 0..1 string "Telefonnummer"
      """
      Telefonnummer.
      Kardinalitet: Valfri.
      """
  * email 0..1 string "Email-adress"
      """
      Email-adress.
      Kardinalitet: Valfri.
      """
  * address 0..1 string "Adress"
      """
      Adress.
      Kardinalitet: Valfri.
      """
  * coaddress 0..1 string "Co-adress"
      """
      Co-adress.
      Kardinalitet: Valfri.
      """
  * firstName 1..1 string "Invånarens förnamn"
      """
      Invånarens förnamn enligt Skatteverkets definition (aktuellt värde).
      Kardinalitet: Obligatorisk.
      """
  * middleName 0..1 string "Invånarens mellannamn"
      """
      Invånarens mellannamn enligt Skatteverkets definition (aktuellt värde).
      Kardinalitet: Valfri.
      """
  * lastName 1..1 string "Invånarens efternamn"
      """
      Invånarens efternamn enligt Skatteverkets definition (aktuellt värde).
      Kardinalitet: Obligatorisk.
      """
* notification 0..1 string "Notifiering till producent"
    """
    Notifiering till producent.
    Kardinalitet: Valfri.
    """
