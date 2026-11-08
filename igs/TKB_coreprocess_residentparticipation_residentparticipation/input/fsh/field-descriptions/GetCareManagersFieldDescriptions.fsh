// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareManagersFieldDescriptions
* careManager ^definition = "Lista med fasta kontakter."
* careManager ^comment = "TKB-fält: `careManager` (`PractitionerRoleType`, kardinalitet 0..*)."
* careManager.careManagerHeader ^definition = "Generell gemensam datatyp som används för tjänstekontrakt/informationsmängder som faller under Sammanhållen vård- och omsorgsdokumentation (SVOD).

Jämför med tjänstekontrakt som bär journal- och läkemedelsinformation."
* careManager.careManagerHeader ^comment = "TKB-fält: `careManager.careManagerHeader` (`HeaderType`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader ^definition = "Generell information som syftar till att bl a ge underlag för konsumenters följsamhet till eventuellt spärrade journaluppgifter.

Se detaljerad beskrivning av datatypen AccessControlHeaderType och dess olika fält."
* careManager.careManagerHeader.accessControlHeader ^comment = "TKB-fält: `careManagerHeader.accessControlHeader` (`AccessControlHeaderType`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId ^comment = "TKB-fält: `../../../accountableHealthcareProviderId` (`IIType`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader.accountableCareUnitId ^comment = "TKB-fält: `../../../accountableCareUnitId` (`IIType`, kardinalitet 0..1)."
* careManager.careManagerHeader.accessControlHeader.patientId ^comment = "TKB-fält: `../../../patientId` (`IIType`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader.careProcessId ^comment = "TKB-fält: `../../../careProcessId` (`IIType`, kardinalitet 0..1)."
* careManager.careManagerHeader.accessControlHeader.blockComparisonTime ^comment = "TKB-fält: `../../../blockComparisonTime` (`TimeStampType`, kardinalitet 1..1)."
* careManager.careManagerHeader.sourceSystemId ^comment = "TKB-fält: `../../sourceSystemId` (`IIType`, kardinalitet 1..1)."
* careManager.code ^comment = "TKB-fält: `../code` (`CVType`, kardinalitet 1..1)."
* careManager.practitioner ^definition = "Medarbetaren som tilldelats denna roll, så som fast kontakt"
* careManager.practitioner ^comment = "TKB-fält: `careManager.practitioner` (`PractitionerType`, kardinalitet 1..1)."
* careManager.practitioner.hsaId ^comment = "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1)."
* careManager.practitioner.name ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1)."
* careManager.practitioner.qualification ^comment = "TKB-fält: `../../qualification` (`CVType`, kardinalitet 0..1)."
* careManager.careTeam ^definition = "Team som medarbetaren är del av, i sin roll som fast kontakt."
* careManager.careTeam ^comment = "TKB-fält: `careManager.careTeam` (`CareTeamType`, kardinalitet 0..*).

Obs: modellen anger 0..1 där TKB:n anger 0..*."
* careManager.careTeam.id ^comment = "TKB-fält: `../../id` (`IIType`, kardinalitet 1..1)."
* careManager.careTeam.name ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 1..1)."
* careManager.careTeam.internalNotes ^comment = "TKB-fält: `../../internalNotes` (`string`, kardinalitet 0..1)."
* careManager.careTeam.externalNotes ^comment = "TKB-fält: `../../externalNotes` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact ^definition = "Gemensamt kontaktsätt för att nå teamet"
* careManager.careTeam.contact ^comment = "TKB-fält: `careManager.careTeam.contact` (`ContactType`, kardinalitet 0..*)."
* careManager.careTeam.contact.telecom ^comment = "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.careTeam.contact.telecom.system ^comment = "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.value ^comment = "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1)."
* careManager.careTeam.contact.telecom.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.careTeam.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.careTeam.contact.telecom.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.careTeam.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.careTeam.contact.telecom.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address ^comment = "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.type ^comment = "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.line ^comment = "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*)."
* careManager.careTeam.contact.address.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.careTeam.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.careTeam.contact.address.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.careTeam.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.careTeam.contact.address.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.period ^comment = "TKB-fält: `../period` (`DatePeriodType`, kardinalitet 1..1)."
* careManager.internalNotes ^comment = "TKB-fält: `../internalNotes` (`string`, kardinalitet 0..1)."
* careManager.externalNotes ^comment = "TKB-fält: `../externalNotes` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver ^definition = "Vård- eller omsorgsgivare som medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt)"
* careManager.managingCareGiver ^comment = "TKB-fält: `careManager.managingCareGiver` (`OrganizationType`, kardinalitet 1..1)."
* careManager.managingCareGiver.hsaId ^comment = "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1)."
* careManager.managingCareGiver.name ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact ^definition = "Se detaljerad beskrivning av datatypen ContactType och dess olika fält"
* careManager.managingCareGiver.contact ^comment = "TKB-fält: `careManager. managingCareGiver .contact.*` (`ContactType .*`, kardinalitet -)."
* careManager.managingCareGiver.contact.telecom ^comment = "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.telecom.system ^comment = "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.value ^comment = "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1)."
* careManager.managingCareGiver.contact.telecom.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.managingCareGiver.contact.telecom.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.managingCareGiver.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.managingCareGiver.contact.telecom.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address ^comment = "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.type ^comment = "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.line ^comment = "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.address.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.managingCareGiver.contact.address.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.managingCareGiver.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.managingCareGiver.contact.address.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareUnit ^comment = "TKB-fält: `../managingCareUnit` (`OrganizationType`, kardinalitet 0..1)."
* careManager.managingCareUnit.hsaId ^comment = "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1)."
* careManager.managingCareUnit.name ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact ^definition = "Se detaljerad beskrivning av datatypen ContactType och dess olika fält"
* careManager.managingCareUnit.contact ^comment = "TKB-fält: `careManager. managingCareUnit .contact.*` (`ContactType .*`, kardinalitet -)."
* careManager.managingCareUnit.contact.telecom ^comment = "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.telecom.system ^comment = "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.value ^comment = "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1)."
* careManager.managingCareUnit.contact.telecom.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.managingCareUnit.contact.telecom.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.managingCareUnit.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.managingCareUnit.contact.telecom.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address ^comment = "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.type ^comment = "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.line ^comment = "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.address.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.managingCareUnit.contact.address.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.managingCareUnit.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.managingCareUnit.contact.address.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit ^comment = "TKB-fält: `../careProvidingCareUnit` (`OrganizationType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.hsaId ^comment = "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1)."
* careManager.careProvidingCareUnit.name ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact ^definition = "Se detaljerad beskrivning av datatypen ContactType och dess olika fält"
* careManager.careProvidingCareUnit.contact ^comment = "TKB-fält: `careManager. careProvidingCareUnit .contact.*` (`ContactType .*`, kardinalitet -)."
* careManager.careProvidingCareUnit.contact.telecom ^comment = "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.telecom.system ^comment = "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.value ^comment = "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1)."
* careManager.careProvidingCareUnit.contact.telecom.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.careProvidingCareUnit.contact.telecom.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.careProvidingCareUnit.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.careProvidingCareUnit.contact.telecom.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address ^comment = "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.type ^comment = "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.line ^comment = "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.address.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.careProvidingCareUnit.contact.address.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.careProvidingCareUnit.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.careProvidingCareUnit.contact.address.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.contact ^definition = "Kontaktsätt för att nå den fasta kontakten (medarbetaren)"
* careManager.contact ^comment = "TKB-fält: `careManager.contact` (`ContactType`, kardinalitet 0..*)."
* careManager.contact.telecom ^comment = "TKB-fält: `../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.contact.telecom.system ^comment = "TKB-fält: `../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.contact.telecom.value ^comment = "TKB-fält: `../../../value` (`string`, kardinalitet 1..1)."
* careManager.contact.telecom.period ^comment = "TKB-fält: `../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.contact.telecom.period.month ^comment = "TKB-fält: `../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.contact.telecom.period.time ^comment = "TKB-fält: `../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.contact.address ^comment = "TKB-fält: `../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.contact.address.type ^comment = "TKB-fält: `../../../type` (`CVType`, kardinalitet 0..1)."
* careManager.contact.address.line ^comment = "TKB-fält: `../../../line` (`string`, kardinalitet 0..*)."
* careManager.contact.address.city ^comment = "TKB-fält: `../../../city` (`string`, kardinalitet 0..1)."
* careManager.contact.address.postalCode ^comment = "TKB-fält: `../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.contact.address.period ^comment = "TKB-fält: `../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).

**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday."
* careManager.contact.address.period.month ^comment = "TKB-fält: `../../../../month` (`MonthsEnum`, kardinalitet 0..*).

**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December."
* careManager.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.contact.address.period.time ^comment = "TKB-fält: `../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../end` (`TimeType`, kardinalitet 0..1)."
