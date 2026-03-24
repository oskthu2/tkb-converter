// Genererad från TKB crm:scheduling v1.1
// Kontrakt: GetAvailableTimeslots v1.1
// Genererad: 2026-03-24

Logical: GetAvailableTimeslots
Id: getavailabletimeslots
Title: "GetAvailableTimeslots"
Description: """
  Logisk modell för tjänstekontraktet GetAvailableTimeslots
  (RIV-TA urn:riv:crm:scheduling:GetAvailableTimeslots:1).
  Representerar responsens informationsstruktur.
  Tjänsten hämtar lediga tider för angivet datumintervall.
"""
Characteristics: #can-be-target

* timeslotDetail 0..* BackboneElement "Lista med tillgängliga tider (TimeslotType)"
    """
    Lista med tillgängliga tider.
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
  * bookingId 0..1 string "Bokningsidentitet"
      """
      Bokningsidentitet för det bokade besöket.
      Kardinalitet: Valfri.
      """
  * purpose 0..1 string "Beskrivning av besöksorsak angiven av vårdenhet"
      """
      Beskrivning av besöksorsak angiven av vårdenhet.
      Kardinalitet: Valfri.
      """
  * reason 0..1 string "Kontaktorsak som invånare uppger vid bokning"
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
  * resourceID 0..1 string "Identifierare för resurs"
      """
      Identifierare för resurs.
      Kardinalitet: Valfri.
      """
  * timeTypeName 0..1 string "Tidstyp för det bokade besöket"
      """
      Tidstyp för det bokade besöket.
      Kardinalitet: Valfri.
      """
  * timeTypeID 0..1 string "Identifierare för tidstyp"
      """
      Identifierare för tidstyp.
      Kardinalitet: Valfri.
      """
  * careTypeName 0..1 string "Klartext för vårdtyp"
      """
      Klartext för vårdtyp.
      Kardinalitet: Valfri.
      """
  * careTypeID 0..1 string "Identifierare för vårdtyp"
      """
      Identifierare för vårdtyp.
      Kardinalitet: Valfri.
      """
  * cancel_booking_allowed 0..1 boolean "Om bokningen kan avbokas"
      """
      Sätts av producenten. Anger om bokningen kan avbokas.
      Avbokning är inte tillåten om värdet saknas eller är false.
      Kardinalitet: Valfri.
      """
  * rebooking_allowed 0..1 boolean "Om bokningen kan ombokas"
      """
      Sätts av producenten. Anger om bokningen kan ombokas.
      Ombokning är inte tillåten om värdet saknas eller är false.
      Kardinalitet: Valfri.
      """
  * message_allowed 0..1 boolean "Om orsak till av/ombokning kan skickas"
      """
      Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas med i berörda tjänster.
      Kardinalitet: Valfri.
      """
