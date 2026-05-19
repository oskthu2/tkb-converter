// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: ProcessCareEncounter v1.0
// Genererad: 2026-05-19

Logical: ProcessCareEncounterRequest
Id: processcareencounter-request
Title: "ProcessCareEncounter — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ProcessCareEncounter
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1).
  Skriver vårdkontaktsdata till Infektionsverktyget. En vårdkontakt kan uppdateras
  genom att ett nytt meddelande med samma vårdkontaktsid skickas in.
"""
Characteristics: #can-be-target

* careEncounter 1..1 BackboneElement "Vårdkontaktsuppgifter"
  """
  Kardinalitet: Obligatorisk.
  """
* careEncounter.id 1..1 Identifier "Unikt värde för vårdkontakten"
  """
  Root: nationell OID för lokala id:n: 1.2.752.129.2.1.2.1
  Extension: HSA-id för källsystemet + ":" + ID.
  Kardinalitet: Obligatorisk.
  """
* careEncounter.type 0..1 CodeableConcept "Typ av vårdkontakt"
  """
  Anger vilken typ av vårdkontakt det gäller.
  Kardinalitet: Valfri (XSD anger 0..1).
  """
* careEncounter.time 1..1 BackboneElement "Tidsperiod för vårdkontakten"
  """
  Kardinalitet: Obligatorisk.
  """
* careEncounter.time.start 0..1 string "Startdatum (YYYYMMDDhhmmss)"
* careEncounter.time.end 0..1 string "Slutdatum (YYYYMMDDhhmmss)"
* careEncounter.status 0..1 CodeableConcept "Status på vårdkontakten"
  """
  Kardinalitet: Valfri (XSD anger 0..1).
  """
* careEncounter.reason 0..1 string "Fritextbeskrivning av orsaken till vårdkontakten"
  """
  Kardinalitet: Valfri.
  """
* careEncounter.location 0..1 BackboneElement "Plats för vårdkontakten"
  """
  Kardinalitet: Valfri.
  """
* careEncounter.location.id 0..1 Identifier "Identifiering för platsen (HSA-id om vårdenhet)"
  """
  Root: OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Valfri.
  """
* careEncounter.location.name 1..1 string "Namn på platsen där vårdkontakt genomförts"
  """
  Obligatorisk när PerformerRole.id anges (dvs. involverar vårdpersonal).
  Kardinalitet: Obligatorisk (se övriga regler).
  """
* careEncounter.location.address 0..* BackboneElement "Platsens adress"
* careEncounter.location.telecom 0..* BackboneElement "Platsens telekomadressen"
* careEncounter.patient 1..1 BackboneElement "Patientuppgifter"
  """
  Kardinalitet: Obligatorisk.
  """
* careEncounter.patient.id 1..1 Identifier "Patientens identifierare"
  """
  Root: OID för typ av identifierare (personnummer 1.2.752.129.2.1.3.1,
  samordningsnummer 1.2.752.129.2.1.3.3, reservnummer 1.2.752.129.2.1.2.1).
  Kardinalitet: Obligatorisk.
  """
* careEncounter.patient.dateOfBirth 1..1 date "Patientens födelsedag (ÅÅÅÅMMDD)"
  """
  Kardinalitet: Obligatorisk.
  """
* careEncounter.patient.gender 0..1 CodeableConcept "Patientens kön"
  """
  Kodverk KV Kön, OID: 1.2.752.129.2.2.1.1
  Kardinalitet: Valfri.
  """
* careEncounter.sourceSystem 0..1 Identifier "HSA-id för källsystemet"
  """
  Root: OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Valfri.
  """
* careEncounter.performerRole 1..1 BackboneElement "Utförarens roll"
  """
  Kardinalitet: Obligatorisk.
  """
* careEncounter.performerRole.id 0..1 Identifier "Personens identitet av utförarrollen (HSA-id)"
  """
  Lämnas tomt om vårdkontakten utförs av patienten själv eller annan person.
  HSAid anges om utföraren är en vårdpersonal.
  Kardinalitet: Valfri.
  """
* careEncounter.performerRole.code 1..1 CodeableConcept "Utförarens roll"
  """
  Baseras på HL7 RoleCode med OID 2.16.840.1.113883.5.111
  Kardinalitet: Obligatorisk.
  """
* careEncounter.performerRole.careUnit 0..1 BackboneElement "Vårdenhet kopplad till utföraren"
  """
  Kardinalitet: Valfri.
  """
* careEncounter.performerRole.careUnit.id 1..1 Identifier "HSAid för PDL vårdenhet"
  """
  Root: OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Obligatorisk.
  """
* careEncounter.performerRole.careUnit.name 0..1 string "Vårdenhetens namn"
* careEncounter.performerRole.careUnit.careGiver 1..1 BackboneElement "Vårdgivaren"
  """
  Kardinalitet: Obligatorisk.
  """
* careEncounter.performerRole.careUnit.careGiver.id 1..1 Identifier "HSAid för vårdgivaren"
  """
  Root: OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Obligatorisk.
  """
* careEncounter.performerRole.careUnit.careGiver.name 0..1 string "Vårdgivarens namn"

Logical: ProcessCareEncounterResponse
Id: processcareencounter-response
Title: "ProcessCareEncounter — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet ProcessCareEncounter
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1).
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Resultatkod: OK, ERROR eller INFO"
  """
  OK = operationen genomförd utan fel
  ERROR = Fel vid operationen
  INFO = Information finns om operationen
  Kardinalitet: Obligatorisk.
  """
* comment 0..1 string "Beskrivning av fel eller information om genomförd operation"
  """
  Kardinalitet: Valfri.
  """
