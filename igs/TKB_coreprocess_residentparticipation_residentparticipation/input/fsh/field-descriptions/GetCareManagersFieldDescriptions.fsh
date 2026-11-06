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
* careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId.root ^comment = "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId.iIExtension ^comment = "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.careManagerHeader.accessControlHeader.accountableCareUnitId ^comment = "TKB-fält: `../../../accountableCareUnitId` (`IIType`, kardinalitet 0..1)."
* careManager.careManagerHeader.accessControlHeader.accountableCareUnitId.root ^comment = "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader.accountableCareUnitId.iIExtension ^comment = "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.careManagerHeader.accessControlHeader.patientId ^comment = "TKB-fält: `../../../patientId` (`IIType`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader.patientId.root ^comment = "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader.patientId.iIExtension ^comment = "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.careManagerHeader.accessControlHeader.careProcessId ^comment = "TKB-fält: `../../../careProcessId` (`IIType`, kardinalitet 0..1)."
* careManager.careManagerHeader.accessControlHeader.careProcessId.root ^comment = "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1)."
* careManager.careManagerHeader.accessControlHeader.careProcessId.iIExtension ^comment = "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.careManagerHeader.accessControlHeader.blockComparisonTime ^comment = "TKB-fält: `../../../blockComparisonTime` (`TimeStampType`, kardinalitet 1..1)."
* careManager.careManagerHeader.sourceSystemId ^comment = "TKB-fält: `../../sourceSystemId` (`IIType`, kardinalitet 1..1)."
* careManager.careManagerHeader.sourceSystemId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* careManager.careManagerHeader.sourceSystemId.iIExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.practitionerRoleCode ^comment = "TKB-fält: `../code` (`CVType`, kardinalitet 1..1).

**Modellanteckning:** practitionerRoleCode Heter code i schemat."
* careManager.practitionerRoleCode.cVCode ^comment = "TKB-fält: `../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.practitionerRoleCode.codeSystem ^comment = "TKB-fält: `../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.practitionerRoleCode.codeSystemName ^comment = "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.practitionerRoleCode.codeSystemVersion ^comment = "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.practitionerRoleCode.displayName ^comment = "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1)."
* careManager.practitionerRoleCode.originalText ^comment = "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1)."
* careManager.practitioner ^definition = "Medarbetaren som tilldelats denna roll, så som fast kontakt"
* careManager.practitioner ^comment = "TKB-fält: `careManager.practitioner` (`PractitionerType`, kardinalitet 1..1)."
* careManager.practitioner.hsaId ^comment = "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1)."
* careManager.practitioner.hsaId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* careManager.practitioner.hsaId.iIExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.practitioner.practitionerName ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1).

**Modellanteckning:** practitionerName Heter name i schemat."
* careManager.practitioner.qualification ^comment = "TKB-fält: `../../qualification` (`CVType`, kardinalitet 0..1)."
* careManager.practitioner.qualification.cVCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.practitioner.qualification.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.practitioner.qualification.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.practitioner.qualification.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.practitioner.qualification.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.practitioner.qualification.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.careTeam ^definition = "Team som medarbetaren är del av, i sin roll som fast kontakt."
* careManager.careTeam ^comment = "TKB-fält: `careManager.careTeam` (`CareTeamType`, kardinalitet 0..*).

Obs: modellen anger 0..1 där TKB:n anger 0..*."
* careManager.careTeam.careTeamId ^comment = "TKB-fält: `../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** careTeamId Heter id i schemat."
* careManager.careTeam.careTeamId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* careManager.careTeam.careTeamId.iIExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.careTeam.careTeamName ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 1..1).

**Modellanteckning:** careTeamName Heter name i schemat."
* careManager.careTeam.internalNotes ^comment = "TKB-fält: `../../internalNotes` (`string`, kardinalitet 0..1)."
* careManager.careTeam.externalNotes ^comment = "TKB-fält: `../../externalNotes` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact ^definition = "Gemensamt kontaktsätt för att nå teamet"
* careManager.careTeam.contact ^comment = "TKB-fält: `careManager.careTeam.contact` (`ContactType`, kardinalitet 0..*)."
* careManager.careTeam.contact.telecom ^comment = "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.careTeam.contact.telecom.system ^comment = "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.system.cVCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.careTeam.contact.telecom.system.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.system.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.system.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.system.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.system.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.contactPointSystemValue ^comment = "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1).

**Modellanteckning:** contactPointSystemValue Heter value i schemat."
* careManager.careTeam.contact.telecom.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.careTeam.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.period.datePeriod.start ^comment = "TKB-fält: `../../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.careTeam.contact.telecom.period.datePeriod.end ^comment = "TKB-fält: `../../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.careTeam.contact.telecom.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.careTeam.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.careTeam.contact.telecom.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.careTeam.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address ^comment = "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.addressType ^comment = "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** addressType Heter type i schemat."
* careManager.careTeam.contact.address.addressType.cVCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.careTeam.contact.address.addressType.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.addressType.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.addressType.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.addressType.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.addressType.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.line ^comment = "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*)."
* careManager.careTeam.contact.address.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.careTeam.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period.datePeriod.start ^comment = "TKB-fält: `../../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.careTeam.contact.address.period.datePeriod.end ^comment = "TKB-fält: `../../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.careTeam.contact.address.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.careTeam.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.careTeam.contact.address.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.careTeam.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.period ^comment = "TKB-fält: `../period` (`DatePeriodType`, kardinalitet 1..1)."
* careManager.period.start ^comment = "TKB-fält: `../../start` (`DateType`, kardinalitet 1..1)."
* careManager.period.end ^comment = "TKB-fält: `../../end` (`DateType`, kardinalitet 0..1)."
* careManager.internalNotes ^comment = "TKB-fält: `../internalNotes` (`string`, kardinalitet 0..1)."
* careManager.externalNotes ^comment = "TKB-fält: `../externalNotes` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver ^definition = "Vård- eller omsorgsgivare som medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt)"
* careManager.managingCareGiver ^comment = "TKB-fält: `careManager.managingCareGiver` (`OrganizationType`, kardinalitet 1..1)."
* careManager.managingCareGiver.hsaId ^comment = "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1)."
* careManager.managingCareGiver.hsaId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* careManager.managingCareGiver.hsaId.iIExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.managingCareGiver.organizationName ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1).

**Modellanteckning:** organizationName Heter name i schemat."
* careManager.managingCareGiver.contact ^definition = "Se detaljerad beskrivning av datatypen ContactType och dess olika fält"
* careManager.managingCareGiver.contact ^comment = "TKB-fält: `careManager. managingCareGiver .contact.*` (`ContactType .*`, kardinalitet -)."
* careManager.managingCareGiver.contact.telecom ^comment = "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.telecom.system ^comment = "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.system.cVCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.managingCareGiver.contact.telecom.system.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.system.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.system.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.system.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.system.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.contactPointSystemValue ^comment = "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1).

**Modellanteckning:** contactPointSystemValue Heter value i schemat."
* careManager.managingCareGiver.contact.telecom.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.period.datePeriod.start ^comment = "TKB-fält: `../../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.managingCareGiver.contact.telecom.period.datePeriod.end ^comment = "TKB-fält: `../../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.managingCareGiver.contact.telecom.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.managingCareGiver.contact.telecom.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address ^comment = "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.addressType ^comment = "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** addressType Heter type i schemat."
* careManager.managingCareGiver.contact.address.addressType.cVCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.managingCareGiver.contact.address.addressType.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.addressType.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.addressType.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.addressType.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.addressType.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.line ^comment = "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.address.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period.datePeriod.start ^comment = "TKB-fält: `../../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.managingCareGiver.contact.address.period.datePeriod.end ^comment = "TKB-fält: `../../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.managingCareGiver.contact.address.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.managingCareGiver.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.managingCareGiver.contact.address.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareGiver.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareUnit ^comment = "TKB-fält: `../managingCareUnit` (`OrganizationType`, kardinalitet 0..1)."
* careManager.managingCareUnit.hsaId ^comment = "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1)."
* careManager.managingCareUnit.hsaId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* careManager.managingCareUnit.hsaId.iIExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.managingCareUnit.organizationName ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1).

**Modellanteckning:** organizationName Heter name i schemat."
* careManager.managingCareUnit.contact ^definition = "Se detaljerad beskrivning av datatypen ContactType och dess olika fält"
* careManager.managingCareUnit.contact ^comment = "TKB-fält: `careManager. managingCareUnit .contact.*` (`ContactType .*`, kardinalitet -)."
* careManager.managingCareUnit.contact.telecom ^comment = "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.telecom.system ^comment = "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.system.cVCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.managingCareUnit.contact.telecom.system.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.system.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.system.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.system.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.system.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.contactPointSystemValue ^comment = "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1).

**Modellanteckning:** contactPointSystemValue Heter value i schemat."
* careManager.managingCareUnit.contact.telecom.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.period.datePeriod.start ^comment = "TKB-fält: `../../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.managingCareUnit.contact.telecom.period.datePeriod.end ^comment = "TKB-fält: `../../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.managingCareUnit.contact.telecom.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.managingCareUnit.contact.telecom.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address ^comment = "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.addressType ^comment = "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** addressType Heter type i schemat."
* careManager.managingCareUnit.contact.address.addressType.cVCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.managingCareUnit.contact.address.addressType.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.addressType.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.addressType.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.addressType.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.addressType.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.line ^comment = "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.address.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period.datePeriod.start ^comment = "TKB-fält: `../../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.managingCareUnit.contact.address.period.datePeriod.end ^comment = "TKB-fält: `../../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.managingCareUnit.contact.address.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.managingCareUnit.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.managingCareUnit.contact.address.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.managingCareUnit.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit ^comment = "TKB-fält: `../careProvidingCareUnit` (`OrganizationType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.hsaId ^comment = "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1)."
* careManager.careProvidingCareUnit.hsaId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* careManager.careProvidingCareUnit.hsaId.iIExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManager.careProvidingCareUnit.organizationName ^comment = "TKB-fält: `../../name` (`string`, kardinalitet 0..1).

**Modellanteckning:** organizationName Heter name i schemat."
* careManager.careProvidingCareUnit.contact ^definition = "Se detaljerad beskrivning av datatypen ContactType och dess olika fält"
* careManager.careProvidingCareUnit.contact ^comment = "TKB-fält: `careManager. careProvidingCareUnit .contact.*` (`ContactType .*`, kardinalitet -)."
* careManager.careProvidingCareUnit.contact.telecom ^comment = "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.telecom.system ^comment = "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.system.cVCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.careProvidingCareUnit.contact.telecom.system.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.system.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.system.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.system.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.system.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.contactPointSystemValue ^comment = "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1).

**Modellanteckning:** contactPointSystemValue Heter value i schemat."
* careManager.careProvidingCareUnit.contact.telecom.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.period.datePeriod.start ^comment = "TKB-fält: `../../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.careProvidingCareUnit.contact.telecom.period.datePeriod.end ^comment = "TKB-fält: `../../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.careProvidingCareUnit.contact.telecom.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.careProvidingCareUnit.contact.telecom.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address ^comment = "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.addressType ^comment = "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** addressType Heter type i schemat."
* careManager.careProvidingCareUnit.contact.address.addressType.cVCode ^comment = "TKB-fält: `../../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.careProvidingCareUnit.contact.address.addressType.codeSystem ^comment = "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.addressType.codeSystemName ^comment = "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.addressType.codeSystemVersion ^comment = "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.addressType.displayName ^comment = "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.addressType.originalText ^comment = "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.line ^comment = "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.address.city ^comment = "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.postalCode ^comment = "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period ^comment = "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period.datePeriod.start ^comment = "TKB-fält: `../../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.careProvidingCareUnit.contact.address.period.datePeriod.end ^comment = "TKB-fält: `../../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.careProvidingCareUnit.contact.address.period.month ^comment = "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.careProvidingCareUnit.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.careProvidingCareUnit.contact.address.period.time ^comment = "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.careProvidingCareUnit.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.contact ^definition = "Kontaktsätt för att nå den fasta kontakten (medarbetaren)"
* careManager.contact ^comment = "TKB-fält: `careManager.contact` (`ContactType`, kardinalitet 0..*)."
* careManager.contact.telecom ^comment = "TKB-fält: `../../telecom` (`ContactPointSystemType`, kardinalitet 0..*)."
* careManager.contact.telecom.system ^comment = "TKB-fält: `../../../system` (`CVType`, kardinalitet 0..1)."
* careManager.contact.telecom.system.cVCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.contact.telecom.system.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.contact.telecom.system.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.contact.telecom.system.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.contact.telecom.system.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.contact.telecom.system.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.contact.telecom.contactPointSystemValue ^comment = "TKB-fält: `../../../value` (`string`, kardinalitet 1..1).

**Modellanteckning:** contactPointSystemValue Heter value i schemat."
* careManager.contact.telecom.period ^comment = "TKB-fält: `../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.contact.telecom.period.datePeriod ^comment = "TKB-fält: `../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.contact.telecom.period.datePeriod.start ^comment = "TKB-fält: `../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.contact.telecom.period.datePeriod.end ^comment = "TKB-fält: `../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.contact.telecom.period.weekDay ^comment = "TKB-fält: `../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.contact.telecom.period.month ^comment = "TKB-fält: `../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.contact.telecom.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.contact.telecom.period.time ^comment = "TKB-fält: `../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.contact.telecom.period.time.start ^comment = "TKB-fält: `../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.contact.telecom.period.time.end ^comment = "TKB-fält: `../../../../../end` (`TimeType`, kardinalitet 0..1)."
* careManager.contact.address ^comment = "TKB-fält: `../../address` (`AddressType`, kardinalitet 0..1)."
* careManager.contact.address.addressType ^comment = "TKB-fält: `../../../type` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** addressType Heter type i schemat."
* careManager.contact.address.addressType.cVCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManager.contact.address.addressType.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 0..1)."
* careManager.contact.address.addressType.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* careManager.contact.address.addressType.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManager.contact.address.addressType.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* careManager.contact.address.addressType.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* careManager.contact.address.line ^comment = "TKB-fält: `../../../line` (`string`, kardinalitet 0..*)."
* careManager.contact.address.city ^comment = "TKB-fält: `../../../city` (`string`, kardinalitet 0..1)."
* careManager.contact.address.postalCode ^comment = "TKB-fält: `../../../postalCode` (`string`, kardinalitet 0..1)."
* careManager.contact.address.period ^comment = "TKB-fält: `../../../period` (`HoursOfServiceType`, kardinalitet 0..*)."
* careManager.contact.address.period.datePeriod ^comment = "TKB-fält: `../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* careManager.contact.address.period.datePeriod.start ^comment = "TKB-fält: `../../../../../start` (`DateType`, kardinalitet 1..1)."
* careManager.contact.address.period.datePeriod.end ^comment = "TKB-fält: `../../../../../end` (`DateType`, kardinalitet 0..1)."
* careManager.contact.address.period.weekDay ^comment = "TKB-fält: `../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7)."
* careManager.contact.address.period.month ^comment = "TKB-fält: `../../../../month` (`MonthsEnum`, kardinalitet 0..*)."
* careManager.contact.address.period.time ^definition = "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss"
* careManager.contact.address.period.time ^comment = "TKB-fält: `../../../../time` (`TimePeriodType`, kardinalitet 0..1)."
* careManager.contact.address.period.time.start ^comment = "TKB-fält: `../../../../../start` (`TimeType`, kardinalitet 0..1)."
* careManager.contact.address.period.time.end ^comment = "TKB-fält: `../../../../../end` (`TimeType`, kardinalitet 0..1)."
