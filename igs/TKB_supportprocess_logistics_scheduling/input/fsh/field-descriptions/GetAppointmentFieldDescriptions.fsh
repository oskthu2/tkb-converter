// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAppointmentFieldDescriptions
* appointment ^definition = "Information om den aktuella tidbokningen.

Svaret tillåts vara tomt i fallet där tidbokningssystemet inte kan matcha det angivna boknings-id eller personnumret som skickades i begäran"
* appointment ^comment = "TKB-fält: `appointment` (`AppointmentType`, kardinalitet 0..1)."
* appointment.appointmentId ^definition = "Unikt id för bokningen. Ska uttryckas som uuid (universally unique identifier)."
* appointment.appointmentId ^comment = "TKB-fält: `appointment.appointmentId` (`uuidType`, kardinalitet 1..1)."
* appointment.relatedAppointmentId ^definition = "Unikt id för tidbokning(ar) som är relaterade till denna tidbokning. Ska uttryckas som uuid (universally unique identifier)."
* appointment.relatedAppointmentId ^comment = "TKB-fält: `appointment.relatedAppointmentId` (`uuidType`, kardinalitet 0..*)."
* appointment.timeslot ^definition = "Tidslucka som tidbokningen gäller"
* appointment.timeslot ^comment = "TKB-fält: `appointment.timeslot` (`TimeslotType`, kardinalitet 1..1)."
* appointment.timeslot.timeslotId ^definition = "Unikt id för tidsluckan. Ska uttryckas som uuid (universally unique identifier)."
* appointment.timeslot.timeslotId ^comment = "TKB-fält: `appointment.timeslot.timeslotId` (`uuidType`, kardinalitet 1..1)."
* appointment.timeslot.timeType ^definition = "Typ av tid som uttrycker var bokningen/besöket avser"
* appointment.timeslot.timeType ^comment = "TKB-fält: `appointment.timeslot.timeType` (`TimeTypeType`, kardinalitet 1..1)."
* appointment.timeslot.timeType.code ^definition = "Kod för tidstypen"
* appointment.timeslot.timeType.code ^comment = "TKB-fält: `appointment.timeslot.timeType.code` (`string`, kardinalitet 1..1)."
* appointment.timeslot.timeType.hidden ^definition = "Visar huruvida tidstypen är märkt som skyddad av verksamheten – hidden=TRUE.

En skyddad tidstyp ska inte vara valbar för invånare från en lista med tidstyper som vårdcentralen erbjuder, t ex vid ett nybokningsflöde. Skyddade tidstyper ska bara kunna bokas av invånare om verksamheten tilldelat tidstypen till invånaren, t ex genom en digital kallelse eller om invånare blivit triagerad i ett försteg och resultatet därifrån resulterat i tidstypen. Om attributet utelämnas ska tidstypen anses vara ”ej skyddad”."
* appointment.timeslot.timeType.hidden ^comment = "TKB-fält: `appointment.timeslot.timeType.hidden` (`boolean`, kardinalitet 0..1)."
* appointment.timeslot.timeType.careContactCode ^definition = "Anger vilken typ av vårdkontakt som bokningen avser. Se Kv kontakttyp för vidare information (https://inera.atlassian.net/wiki/download/attachments/2648506471/kv_kontakttyp.xlsx?api=v2).

Observera att schemat definierar kardinaliteten så som [0..*]. Schemats kardinalitet är applicerbart då tidstypen förmedlas tillsammans med en ledig tid (tidslucka) och då verksamheten erbjuder tiden valbart så som olika kontakttyper (t ex fysiskt besök eller videomöte). När vårdkontaktstypen förmedlas tillsammans med bokningen är det redan bestämt på vilket sätt besöket ska utföras. Därav kardinaliteten [0..1] i detta kontext."
* appointment.timeslot.timeType.careContactCode ^comment = "TKB-fält: `appointment.timeslot.timeType.careContactCode` (`CVType`, kardinalitet 0..1)."
* appointment.timeslot.timeType.healthcareService ^definition = "Anger vilken typ av vårdtjänst"
* appointment.timeslot.timeType.healthcareService ^comment = "TKB-fält: `appointment.timeslot.timeType.healthcareService` (`HealthcareServiceType`)."
* appointment.timeslot.timeType.healthcareService.code ^comment = "TKB-fält: `../../../../code` (`SnomedCtType`, kardinalitet 1..1)."
* appointment.timeslot.timeType.healthcareService.information ^comment = "TKB-fält: `../../../../information` (`InformationType`, kardinalitet 0..*)."
* appointment.timeslot.timeType.healthcareService.information.header ^comment = "TKB-fält: `../../../../../header` (`string`, kardinalitet 1..1)."
* appointment.timeslot.timeType.healthcareService.information.description ^comment = "TKB-fält: `../../../../../description` (`string`, kardinalitet 0..1)."
* appointment.timeslot.timeType.healthcareService.information.link ^comment = "TKB-fält: `../../../../../link` (`anyURI`, kardinalitet 0..1)."
* appointment.timeslot.timeType.healthcareService.conditionsToConfirm ^comment = "TKB-fält: `../../../../conditionsToConfirm` (`InformationType`, kardinalitet 0..*)."
* appointment.timeslot.timeType.healthcareService.conditionsToConfirm.header ^comment = "TKB-fält: `../../../../../header` (`string`, kardinalitet 1..1)."
* appointment.timeslot.timeType.healthcareService.conditionsToConfirm.description ^comment = "TKB-fält: `../../../../../description` (`string`, kardinalitet 0..1)."
* appointment.timeslot.timeType.healthcareService.conditionsToConfirm.link ^comment = "TKB-fält: `../../../../../link` (`anyURI`, kardinalitet 0..1)."
* appointment.timeslot.timeType.healthcareTeam ^definition = "Anger huruvida patienten möter ett team av personal vid besöket. Om attributet utelämnas anses besöket ej vara av typen teambokning."
* appointment.timeslot.timeType.healthcareTeam ^comment = "TKB-fält: `appointment.timeslot.timeType.healthcareTeam` (`boolean`, kardinalitet 0..1)."
* appointment.timeslot.timeType.patientGroup ^definition = "Bokning av tid där flera personer/patienter i grupp möter vården för samma typ av vårdtjänst. Om attributet utelämnas anses besöket ej vara av typen gruppbokning"
* appointment.timeslot.timeType.patientGroup ^comment = "TKB-fält: `appointment.timeslot.timeType.patientGroup` (`boolean`, kardinalitet 0..1)."
* appointment.timeslot.timeType.cancelAppointmentAllowed ^definition = "Anger huruvida invånaren tillåts att avboka bokningen via e-tjänst"
* appointment.timeslot.timeType.cancelAppointmentAllowed ^comment = "TKB-fält: `appointment.timeslot.timeType.cancelAppointmentAllowed` (`boolean`, kardinalitet 1..1)."
* appointment.timeslot.timeType.updateAppointmentAllowed ^definition = "Anger huruvida invånaren tillåts att omboka bokningen via e-tjänst"
* appointment.timeslot.timeType.updateAppointmentAllowed ^comment = "TKB-fält: `appointment.timeslot.timeType.updateAppointmentAllowed` (`boolean`, kardinalitet 1..1)."
* appointment.timeslot.timeType.appointmentRule ^definition = "Regler och inställningar som ska appliceras vid ett ny-/om- och avbokningsflöde. Observera kardinaliteten för attributet, endast en instans av appointmentRule får anges per flödestyp (Nybokning/Ombokning/Avbokning)."
* appointment.timeslot.timeType.appointmentRule ^comment = "TKB-fält: `appointment.timeslot.timeType.appointmentRule` (`TimeTypeRulesType`, kardinalitet 0..3)."
* appointment.timeslot.timeType.appointmentRule.type ^comment = "TKB-fält: `../../../../type` (`ProcessEnum`, kardinalitet 1..1).

**Modellanteckning:** type Tillåtna värden: NYBOKNING, AVBOKNING, OMBOKNING."
* appointment.timeslot.timeType.appointmentRule.reasonTextRequired ^comment = "TKB-fält: `../../../../reasonTextRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).

**Modellanteckning:** reasonTextRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* appointment.timeslot.timeType.appointmentRule.reasonCodeRequired ^comment = "TKB-fält: `../../../../reasonCodeRequired` (`ReasonRequiredEnum`, kardinalitet 1..1).

**Modellanteckning:** reasonCodeRequired Tillåtna värden: Mandatory, Optional, ReasonNotSupported."
* appointment.timeslot.timeType.appointmentRule.reasonCodes ^comment = "TKB-fält: `../../../../reasonCodes` (`CVType`, kardinalitet 0..*)."
* appointment.timeslot.timeType.appointmentRule.information ^comment = "TKB-fält: `../../../../information` (`InformationType`, kardinalitet 0..*)."
* appointment.timeslot.timeType.appointmentRule.information.header ^comment = "TKB-fält: `../../../../../header` (`string`, kardinalitet 1..1)."
* appointment.timeslot.timeType.appointmentRule.information.description ^comment = "TKB-fält: `../../../../../description` (`string`, kardinalitet 0..1)."
* appointment.timeslot.timeType.appointmentRule.information.link ^comment = "TKB-fält: `../../../../../link` (`anyURI`, kardinalitet 0..1)."
* appointment.timeslot.timeType.appointmentRule.conditionToConfirm ^comment = "TKB-fält: `../../../../conditionToConfirm` (`InformationType`, kardinalitet 0..*)."
* appointment.timeslot.timeType.appointmentRule.conditionToConfirm.header ^comment = "TKB-fält: `../../../../../header` (`string`, kardinalitet 1..1)."
* appointment.timeslot.timeType.appointmentRule.conditionToConfirm.description ^comment = "TKB-fält: `../../../../../description` (`string`, kardinalitet 0..1)."
* appointment.timeslot.timeType.appointmentRule.conditionToConfirm.link ^comment = "TKB-fält: `../../../../../link` (`anyURI`, kardinalitet 0..1)."
* appointment.timeslot.startTime ^definition = "Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss."
* appointment.timeslot.startTime ^comment = "TKB-fält: `appointment.timeslot.startTime` (`TS (string)`, kardinalitet 1..1)."
* appointment.timeslot.endTime ^comment = "TKB-fält: `../../endTime` (`TS`, kardinalitet 0..1)."
* appointment.timeslot.timeLength ^definition = "Längd på besöket i minuter"
* appointment.timeslot.timeLength ^comment = "TKB-fält: `appointment.timeslot.timeLength` (`double`, kardinalitet 0..1)."
* appointment.timeslot.healthcareFacilityHSAId ^comment = "TKB-fält: `../../healthcareFacilityHSAId` (`HSAIdType`, kardinalitet 1..1)."
* appointment.timeslot.practitioner ^comment = "TKB-fält: `../../practitioner` (`PractitionerType`, kardinalitet 0..*)."
* appointment.timeslot.practitioner.HSAId ^comment = "TKB-fält: `../../../HSAId` (`HSAIdType`, kardinalitet 1..1)."
* appointment.timeslot.practitioner.firstName ^comment = "TKB-fält: `../../../firstName` (`string`, kardinalitet 1..1)."
* appointment.timeslot.practitioner.lastName ^comment = "TKB-fält: `../../../lastName` (`string`, kardinalitet 1..1)."
* appointment.timeslot.practitioner.title ^comment = "TKB-fält: `../../../title` (`string`, kardinalitet 0..1)."
* appointment.timeslot.resource ^definition = "En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst."
* appointment.timeslot.resource ^comment = "TKB-fält: `appointment.timeslot.resource` (`ResourceType`, kardinalitet 0..*)."
* appointment.timeslot.resource.typeOfResource ^comment = "TKB-fält: `../../../typeOfResource` (`CVType`, kardinalitet 0..1)."
* appointment.timeslot.resource.resourceAttribute ^comment = "TKB-fält: `../../../resourceAttribute` (`CVType`, kardinalitet 0..1)."
* appointment.timeslot.resource.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 0..1)."
* appointment.timeslot.withinCareGuarantee ^definition = "Flagga som visar huruvida denna tidslucka ligger inom Vårdgarantin. Flaggan är intressant att förmedla i samband med exempelvis ett nybokningsflöde, då invånaren söker efter lediga tider. Flaggan relaterar således till den tidpunkt då invånaren begärde att söka efter lediga tider."
* appointment.timeslot.withinCareGuarantee ^comment = "TKB-fält: `appointment.timeslot.withinCareGuarantee` (`boolean`, kardinalitet 0..1)."
* appointment.timeslot.alternativeLocation ^comment = "TKB-fält: `../../alternativeLocation` (`string`, kardinalitet 0..1)."
* appointment.personId ^definition = "Patientens personnummer, för den patient som tidbokningen gäller"
* appointment.personId ^comment = "TKB-fält: `appointment.personId` (`PersonIdType / (IIType)`, kardinalitet 1..1)."
* appointment.information ^definition = "Information som verksamheten vill förmedla inför besöket"
* appointment.information ^comment = "TKB-fält: `appointment.information` (`InformationType`, kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1."
* appointment.information.header ^comment = "TKB-fält: `../../header` (`string`, kardinalitet 1..1)."
* appointment.information.description ^comment = "TKB-fält: `../../description` (`string`, kardinalitet 0..1)."
* appointment.information.link ^comment = "TKB-fält: `../../link` (`anyURI`, kardinalitet 0..1)."
* appointment.status ^definition = "Visar vilket tillstånd bokningen är i. Giltiga tillstånd:

1) confirm = bokningen är bekräftad av patienten

2) preliminary = bokningen är ännu inte bekräftad av patienten"
* appointment.status ^comment = "TKB-fält: `appointment.status` (`AppointmentStatusEnum`, kardinalitet 1..1).

**Modellanteckning:** status Tillåtna värden: confirmed, preliminary."
* appointment.newAppointmentReasonText ^definition = "Patientens angivna anledning till nybokningen i fritext."
* appointment.newAppointmentReasonText ^comment = "TKB-fält: `appointment.newAppointmentReasonText` (`string`, kardinalitet 0..1)."
* appointment.newAppointmentReasonCode ^definition = "Patientens angivna anledning till nybokningen, representerad som kod."
* appointment.newAppointmentReasonCode ^comment = "TKB-fält: `appointment.newAppointmentReasonCode` (`CVType`, kardinalitet 0..1)."
* appointment.updateAppointmentReasonText ^definition = "Patientens angivna anledning till ombokningen i fritext. Om bokningen har ombokats i flera omgångar ska senaste anledningen anges."
* appointment.updateAppointmentReasonText ^comment = "TKB-fält: `appointment.updateAppointmentReasonText` (`string`, kardinalitet 0..1)."
* appointment.updateAppointmentReasonCode ^definition = "Patientens angivna anledning till ombokningen, representerad som kod. Om bokningen har ombokats i flera omgångar ska senaste anledningen anges."
* appointment.updateAppointmentReasonCode ^comment = "TKB-fält: `appointment.updateAppointmentReasonCode` (`CVType`, kardinalitet 0..1)."
* appointment.alternativeLocation ^definition = "En alternativ adress för bokningen att presentera för invånaren. En alternativ adress kan vara intressant att förmedla om besöket ska ske på annan adress än där mottagningen normalt utför besök. Fältet är frivilligt."
* appointment.alternativeLocation ^comment = "TKB-fält: `appointment.alternativeLocation` (`string`, kardinalitet 0..1)."
* appointment.reference ^definition = "Referenser som ska förmedlas till patienten kopplat till besöket. Referenserna kan exempelvis peka på websidor öppna på nätet."
* appointment.reference ^comment = "TKB-fält: `appointment.reference` (`ReferenceType`, kardinalitet 0..*)."
* appointment.reference.name ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 1..1)."
* appointment.reference.description ^comment = "TKB-fält: `../../description` (`string`, kardinalitet 0..1)."
* appointment.reference.link ^comment = "TKB-fält: `../../link` (`anyURI`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, USER_IS_ALREADY_OCCUPIED, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_CANCEL_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, CONFIRM_IS_NOT_ALLOWED."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
