// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetBookingDetails v1.1
// Genererad: 2026-03-24

Logical: GetBookingDetails
Id: getbookingdetails
Title: "GetBookingDetails"
Description: """
  Logisk modell för tjänstekontraktet GetBookingDetails
  (RIV-TA urn:riv:crm:scheduling:GetBookingDetails:1).
  Representerar responsens informationsstruktur.
  Tjänsten hämtar detaljinformation för en befintlig bokning vid en vårdenhet.
"""
Characteristics: #can-be-target

* timeslotDetail 1..1 BackboneElement "Information om den aktuella tiden (TimeslotType)"
    """
    Information om den aktuella bokade/kallade tiden.
    Kardinalitet: Obligatorisk.
    """
  * startTimeInclusive 0..1 string "Startdatum och klockslag (ÅÅÅÅMMDDttmmss)"
      """
      Startdatum och klockslag. Kan saknas för öppen kallelse.
      Kardinalitet: Valfri.
      """
  * endTimeExclusive 0..1 string "Slutdatum och klockslag (ÅÅÅÅMMDDttmmss)"
      """
      Slutdatum och klockslag. Kan saknas för öppen kallelse.
      Kardinalitet: Valfri.
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
  * bookingId 0..1 string "Bokningsidentitet"
      """
      Bokningsidentitet för det bokade besöket.
      Kardinalitet: Valfri.
      """
  * subject_of_care 1..1 string "Personnummer enl. yyyymmddxxxx"
      """
      Personnummer för invånaren.
      Kardinalitet: Obligatorisk.
      """
  * purpose 0..1 string "Beskrivning av besöksorsak angiven av vårdenhet"
      """
      Beskrivning av besöksorsak angiven av vårdenhet.
      Villkorlig: obligatorisk om isInvitation = true (kallelse).
      Producenten kan använda DocBook-format version 5.0.
      Kardinalitet: Valfri (villkorlig).
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
  * timeTypeName 0..1 string "Tidstyp för det bokade besöket"
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
  * cancel_booking_allowed 1..1 boolean "Om bokningen kan avbokas"
      """
      Sätts av producenten. Anger om bokningen kan avbokas.
      Kardinalitet: Obligatorisk.
      """
  * rebooking_allowed 1..1 boolean "Om bokningen kan ombokas"
      """
      Sätts av producenten. Anger om bokningen kan ombokas.
      Kardinalitet: Obligatorisk.
      """
  * message_allowed 1..1 boolean "Om orsak kan skickas"
      """
      Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas.
      Kardinalitet: Obligatorisk.
      """
  * isInvitation 0..1 boolean "Om bokningen är en kallelse"
      """
      Sätts av producenten. Anger om bokningen skapats på vårdgivarens initiativ (kallelse).
      isInvitation = true innebär kallelse; false eller saknat innebär invånariniterad bokning.
      Kardinalitet: Valfri.
      """
