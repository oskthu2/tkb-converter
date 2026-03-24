// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetSubjectOfCareSchedule v1.1
// Genererad: 2026-03-24

Logical: GetSubjectOfCareSchedule
Id: getsubjectofcareschedule
Title: "GetSubjectOfCareSchedule"
Description: """
  Logisk modell för tjänstekontraktet GetSubjectOfCareSchedule
  (RIV-TA urn:riv:crm:scheduling:GetSubjectOfCareSchedule:1).
  Representerar responsens informationsstruktur.
  Tjänsten hämtar alla bokade tider för en invånare.
  Öppna kallelser ingår inte i svaret.
"""
Characteristics: #can-be-target

* timeslotDetail 0..* BackboneElement "Lista med användarens tider (TimeslotType)"
    """
    Lista med invånarens bokade tider för angiven vårdenhet. Öppna kallelser ingår inte.
    Kardinalitet: Valfri, lista.
    """
  * startTimeInclusive 1..1 string "Startdatum och klockslag (ÅÅÅÅMMDDttmmss)"
      """
      Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.
      Kardinalitet: Obligatorisk.
      """
  * endTimeExclusive 1..1 string "Slutdatum och klockslag (ÅÅÅÅMMDDttmmss)"
      """
      Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss.
      Kardinalitet: Obligatorisk.
      """
  * healthcare_facility 1..1 Identifier "HSA-id för mottagning/vårdenhet"
      """
      HSA-id för mottagning/vårdenhet.
      Kardinalitet: Obligatorisk.
      """
  * performer 0..1 Identifier "HSA-id för Hos-person"
      """
      HSA-id för Hos-person som besöket är bokat hos.
      Kardinalitet: Valfri.
      """
  * bookingId 1..1 string "Bokningsidentitet"
      """
      Bokningsidentitet för det bokade besöket.
      Kardinalitet: Obligatorisk.
      """
  * subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
      """
      Personnummer för invånaren.
      Kardinalitet: Obligatorisk.
      """
  * purpose 0..1 string "Beskrivning av besöksorsak angiven av vårdenhet"
      """
      Beskrivning av besöksorsak angiven av vårdenhet.
      Kardinalitet: Valfri.
      """
  * reason 0..1 string "Kontaktorsak som invånare uppger"
      """
      Kontaktorsak som invånare uppger vid bokning.
      Kardinalitet: Valfri.
      """
  * resourceName 0..1 string "Namn på resurs"
      """
      Namn på resurs.
      Kardinalitet: Valfri.
      """
  * healthcare_facility_name 0..1 string "Namn på bokad mottagning/vårdenhet"
      """
      Namn på bokad mottagning/vårdenhet.
      Kardinalitet: Valfri.
      """
  * performerName 0..1 string "Namn på HoS-person"
      """
      Namn på HoS-person som besöket är bokat hos.
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
  * cancel_booking_allowed 0..1 boolean "Om bokningen kan avbokas"
      """
      Sätts av producenten. Anger om bokningen kan avbokas.
      Kardinalitet: Valfri.
      """
  * rebooking_allowed 0..1 boolean "Om bokningen kan ombokas"
      """
      Sätts av producenten. Anger om bokningen kan ombokas.
      Kardinalitet: Valfri.
      """
  * message_allowed 0..1 boolean "Om orsak kan skickas"
      """
      Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas.
      Kardinalitet: Valfri.
      """
  * isInvitation 0..1 boolean "Om bokningen är en kallelse"
      """
      Sätts av producenten. Anger om bokningen skapats på vårdgivarens initiativ.
      Kardinalitet: Valfri.
      """
