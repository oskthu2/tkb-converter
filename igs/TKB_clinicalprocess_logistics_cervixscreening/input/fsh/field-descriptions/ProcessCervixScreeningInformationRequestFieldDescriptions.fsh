// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessCervixScreeningInformationRequestFieldDescriptions
* cervixScreeningInformation ^definition = "Kallelsegrundande information för cervixscreening."
* cervixScreeningInformation ^comment = "TKB-fält: `CervixScreeningInformation` (`CervixScreeningInformationType`, kardinalitet 1..1)."
* cervixScreeningInformation.subjectOfCare ^definition = "Folkbokförd person med svenskt personnummer

Personnummer skall anges på formatet ÅÅÅÅMMDDNNNN."
* cervixScreeningInformation.subjectOfCare ^comment = "TKB-fält: `../subjectOfCare` (`PersonType`, kardinalitet 1..1)."
* cervixScreeningInformation.subjectOfCare.personId ^definition = "Personnummer:

root:  1.2.752.129.2.1.3.1

extension: `<personnummer>`

Endast svenskt personnummer är tillåtet"
* cervixScreeningInformation.subjectOfCare.personId ^comment = "TKB-fält: `../../personId` (`IIType`, kardinalitet 1..1)."
* cervixScreeningInformation.subjectOfCare.personId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.subjectOfCare.personId.iIExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.sendingRegion ^definition = "Region som gör utlämnandet."
* cervixScreeningInformation.sendingRegion ^comment = "TKB-fält: `../sendingRegion` (`RegionType`, kardinalitet 1..1)."
* cervixScreeningInformation.sendingRegion.region ^definition = "Region."
* cervixScreeningInformation.sendingRegion.region ^comment = "TKB-fält: `../../region` (`OrganisationType`, kardinalitet 1..1)."
* cervixScreeningInformation.sendingRegion.region.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.sendingRegion.region.organisationId ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.sendingRegion.region.organisationId.root ^comment = "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.sendingRegion.region.organisationId.iIExtension ^comment = "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.sendingRegion.region.organisationName ^definition = "Regionens namn i klartext."
* cervixScreeningInformation.sendingRegion.region.organisationName ^comment = "TKB-fält: `../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.sendingRegion.careGiver ^definition = "Skall ej anges."
* cervixScreeningInformation.sendingRegion.careGiver ^comment = "TKB-fält: `../../careGiver` (`OrganisationType`, kardinalitet 0..0)."
* cervixScreeningInformation.sendingRegion.careGiver.organisationId ^definition = "Skall ej anges."
* cervixScreeningInformation.sendingRegion.careGiver.organisationId ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..0).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.sendingRegion.careGiver.organisationId.root ^comment = "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.sendingRegion.careGiver.organisationId.iIExtension ^comment = "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.sendingRegion.careGiver.organisationName ^definition = "Skall ej anges."
* cervixScreeningInformation.sendingRegion.careGiver.organisationName ^comment = "TKB-fält: `../../../name` (`String`, kardinalitet 0..0).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.sendingRegion.careUnit ^definition = "Skall ej anges."
* cervixScreeningInformation.sendingRegion.careUnit ^comment = "TKB-fält: `../../careUnit` (`OrganisationType`, kardinalitet 0..0)."
* cervixScreeningInformation.sendingRegion.careUnit.organisationId ^definition = "Skall ej anges."
* cervixScreeningInformation.sendingRegion.careUnit.organisationId ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..0).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.sendingRegion.careUnit.organisationId.root ^comment = "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.sendingRegion.careUnit.organisationId.iIExtension ^comment = "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.sendingRegion.careUnit.organisationName ^definition = "Skall ej anges."
* cervixScreeningInformation.sendingRegion.careUnit.organisationName ^comment = "TKB-fält: `../../../name` (`String`, kardinalitet 0..0).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.exclusion ^definition = "Information om exkludering från kallelse."
* cervixScreeningInformation.exclusion ^comment = "TKB-fält: `../exclusion` (`ExclusionType`, kardinalitet 0..1)."
* cervixScreeningInformation.exclusion.reason ^definition = "Orsak till att kvinnan ska exkluderas från kallelser.

Urval ur SNOMED CT:

code: [31021000119100|116140006|702371008]

codeSystem: 1.2.752.116.2.1.1

codeSystemName: Används ej

codeSystemVersion: Används ej

displayName: Valfritt (kan anges)

originalText: Används ej

Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet."
* cervixScreeningInformation.exclusion.reason ^comment = "TKB-fält: `../../reason` (`CVType`, kardinalitet 1..1)."
* cervixScreeningInformation.exclusion.reason.cVCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cVCode Heter code i schemat."
* cervixScreeningInformation.exclusion.reason.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.exclusion.reason.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.exclusion.reason.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.exclusion.reason.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.exclusion.reason.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.exclusion.registeredAt ^definition = "Datum då det ursprungligen registrerades att kvinnan ska exkluderas från kallelse.

Datum anges på format ”ÅÅÅÅMMDD”"
* cervixScreeningInformation.exclusion.registeredAt ^comment = "TKB-fält: `../../registeredAt` (`DateType`, kardinalitet 1..1)."
* cervixScreeningInformation.exclusion.originalRegion ^definition = "Organisation varifrån information om exkludering ursprungligen härstammar."
* cervixScreeningInformation.exclusion.originalRegion ^comment = "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1)."
* cervixScreeningInformation.exclusion.originalRegion.region ^definition = "Region."
* cervixScreeningInformation.exclusion.originalRegion.region ^comment = "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1)."
* cervixScreeningInformation.exclusion.originalRegion.region.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.exclusion.originalRegion.region.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.exclusion.originalRegion.region.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.exclusion.originalRegion.region.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.exclusion.originalRegion.region.organisationName ^definition = "Regionens namn i klartext."
* cervixScreeningInformation.exclusion.originalRegion.region.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.exclusion.originalRegion.careGiver ^definition = "Vårdgivare."
* cervixScreeningInformation.exclusion.originalRegion.careGiver ^comment = "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1)."
* cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationName ^definition = "Vårdgivarens namn i klartext."
* cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.exclusion.originalRegion.careUnit ^definition = "Vårdenhet."
* cervixScreeningInformation.exclusion.originalRegion.careUnit ^comment = "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1)."
* cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationName ^definition = "Vårdenhetens namn i klartext."
* cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.followUpGroups ^definition = "Information om uppföljningsgrupp (kontrollfil) för kvinna."
* cervixScreeningInformation.followUpGroups ^comment = "TKB-fält: `../followUpGroups` (`FollowUpGroupType`, kardinalitet 0..*)."
* cervixScreeningInformation.followUpGroups.followUpGroupType ^definition = "Typ av uppföljningsgrupp (kontrollfil).

Urval ur SNOMED CT:

code: [59461000052109| 59291000052102|59321000052109|59301000052103]

codeSystem: 1.2.752.116.2.1.1

codeSystemName: Används ej

codeSystemVersion: Används ej

displayName: Valfritt (kan anges)

originalText: Används ej

Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet."
* cervixScreeningInformation.followUpGroups.followUpGroupType ^comment = "TKB-fält: `../../type` (`CVType`, kardinalitet 1..1).

**Modellanteckning:** followUpGroupType Heter type i schemat."
* cervixScreeningInformation.followUpGroups.followUpGroupType.cVCode ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cVCode Heter code i schemat."
* cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.followUpGroups.followUpGroupType.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.followUpGroups.followUpGroupType.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.followUpGroups.inclusionDate ^definition = "Datum då kvinna inkluderades i uppföljningsgrupp (kontrollfil).

Datum anges på format ”ÅÅÅÅMMDD”"
* cervixScreeningInformation.followUpGroups.inclusionDate ^comment = "TKB-fält: `../../inclusionDate` (`DateType`, kardinalitet 1..1)."
* cervixScreeningInformation.followUpGroups.originalRegion ^definition = "Organisation varifrån information om tillhörighet till uppföljningsgrupp (kontrollfil) ursprungligen härstammar."
* cervixScreeningInformation.followUpGroups.originalRegion ^comment = "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1)."
* cervixScreeningInformation.followUpGroups.originalRegion.region ^definition = "Region."
* cervixScreeningInformation.followUpGroups.originalRegion.region ^comment = "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1)."
* cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.followUpGroups.originalRegion.region.organisationName ^definition = "Regionens namn i klartext."
* cervixScreeningInformation.followUpGroups.originalRegion.region.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver ^definition = "Vårdgivare."
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver ^comment = "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1)."
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationName ^definition = "Vårdgivarens namn i klartext."
* cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit ^definition = "Vårdenhet."
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit ^comment = "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1)."
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationName ^definition = "Vårdenhetens namn i klartext."
* cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.plannedInvitation ^definition = "Förmedlar det individuella kallelsedatum som frångår vårdprogrammets ordinarie kallelseintervall och har satts för en enskild kvinna"
* cervixScreeningInformation.plannedInvitation ^comment = "TKB-fält: `../plannedInvitation` (`PlannedInvitationType`, kardinalitet 0..1)."
* cervixScreeningInformation.plannedInvitation.date ^definition = "Planerat individuellt kallelsedatum"
* cervixScreeningInformation.plannedInvitation.date ^comment = "TKB-fält: `../../date` (`DateType`, kardinalitet 1..1)."
* cervixScreeningInformation.plannedInvitation.reason ^definition = "Beskrivning av orsaken till att kvinnan har ett individuellt kallelsedatum istället för vårdprogrammets ordinarie kallelse-intervall."
* cervixScreeningInformation.plannedInvitation.reason ^comment = "TKB-fält: `../../reason` (`String`, kardinalitet 0..1)."
* cervixScreeningInformation.specimen ^definition = "Gynekologiska cellprovtagning som ledde till ett bedömbart prov."
* cervixScreeningInformation.specimen ^comment = "TKB-fält: `../specimen` (`SpecimenType`, kardinalitet 0..1)."
* cervixScreeningInformation.specimen.specimenDate ^definition = "Tidpunkt för senaste provtagning som ledde till ett bedömbart prov."
* cervixScreeningInformation.specimen.specimenDate ^comment = "TKB-fält: `../../specimenDate` (`TimeStampType`, kardinalitet 1..1)."
* cervixScreeningInformation.specimen.originalRegion ^definition = "Organisation varifrån information om provtagning ursprungligen härstammar."
* cervixScreeningInformation.specimen.originalRegion ^comment = "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1)."
* cervixScreeningInformation.specimen.originalRegion.region ^definition = "Region."
* cervixScreeningInformation.specimen.originalRegion.region ^comment = "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1)."
* cervixScreeningInformation.specimen.originalRegion.region.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.specimen.originalRegion.region.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.specimen.originalRegion.region.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.specimen.originalRegion.region.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.specimen.originalRegion.region.organisationName ^definition = "Regionens namn i klartext."
* cervixScreeningInformation.specimen.originalRegion.region.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.specimen.originalRegion.careGiver ^definition = "Vårdgivare."
* cervixScreeningInformation.specimen.originalRegion.careGiver ^comment = "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1)."
* cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.specimen.originalRegion.careGiver.organisationName ^definition = "Vårdgivarens namn i klartext."
* cervixScreeningInformation.specimen.originalRegion.careGiver.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.specimen.originalRegion.careUnit ^definition = "Vårdnhet."
* cervixScreeningInformation.specimen.originalRegion.careUnit ^comment = "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1)."
* cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId ^definition = "Anges med HSA-id.

root: 1.2.752.129.2.1.4.1

extension: `<hsa-id>`"
* cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId ^comment = "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** organisationId Heter id i schemat."
* cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId.root ^comment = "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId.iIExtension ^comment = "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* cervixScreeningInformation.specimen.originalRegion.careUnit.organisationName ^definition = "Vårdenhetens namn i klartext."
* cervixScreeningInformation.specimen.originalRegion.careUnit.organisationName ^comment = "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).

**Modellanteckning:** organisationName Heter name i schemat."
* cervixScreeningInformation.specimen.HPVstatusList ^definition = "Provets HPV-status.

Skall anges om och endast om provet har analyserats för HPV."
* cervixScreeningInformation.specimen.HPVstatusList ^comment = "TKB-fält: `../../HPVstatusList` (`HPVstatusType`, kardinalitet 0..*)."
* cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue ^definition = "Värde för HPV-status.

Urval ur SNOMED CT:

code: [59291000052102|59321000052109|59301000052103|59311000052101]

codeSystem: 1.2.752.116.2.1.1

codeSystemName: Används ej

codeSystemVersion: Används ej

displayName: Valfritt (kan anges)

originalText: Används ej

Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet."
* cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue ^comment = "TKB-fält: `../../../value` (`CVType`, kardinalitet 1..1).

**Modellanteckning:** hPVstatusValue Heter value i schemat."
* cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.cVCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cVCode Heter code i schemat."
* cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1)."
* cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
