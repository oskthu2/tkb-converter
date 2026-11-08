// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterExtendedBlockRequestFieldDescriptions
* blockId ^definition = "Unik, global identifierare för spärren. Tjänstekonsumenten ansvarar för att generera id:et."
* blockId ^comment = "TKB-fält: `blockId` (`urn:riv:informationsecurity:authorization:blocking:4:Id`, kardinalitet 1..1)."
* blockType ^definition = "Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare)."
* blockType ^comment = "TKB-fält: `blockType` (`urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType`, kardinalitet 1..1).

**Modellanteckning:** blockType Tillåtna värden: Inner, Outer."
* patientId ^definition = "Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:blocking:4:IIType`, kardinalitet 1..1)."
* informationStartDate ^definition = "Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt."
* informationStartDate ^comment = "TKB-fält: `informationStartDate` (`xs:DateTime`, kardinalitet 0..1)."
* informationEndDate ^definition = "Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt."
* informationEndDate ^comment = "TKB-fält: `informationEndDate` (`xs:DateTime`, kardinalitet 0..1)."
* informationCareUnitId ^definition = "Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för."
* informationCareUnitId ^comment = "TKB-fält: `informationCareUnitId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 0..1)."
* informationCareProviderId ^definition = "Obligatoriskt HSA-id för den vårdgivare spärren gäller för."
* informationCareProviderId ^comment = "TKB-fält: `informationCareProviderId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 1..1)."
* excludedInformationTypes ^definition = "Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'."
* excludedInformationTypes ^comment = "TKB-fält: `excludedInformationTypes` (`urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue`, kardinalitet 0..*)."
* registerAction ^definition = "Identifierar de personer som begärt och registrerat spärren samt tidpunkter för dessa."
* registerAction ^comment = "TKB-fält: `registerAction` (`urn:riv:informationsecurity:authorization:blocking:4:ActionType`, kardinalitet 1..1)."
* registerAction.requestDate ^comment = "TKB-fält: `../requestDate` (`dateTime`, kardinalitet 1..1)."
* registerAction.requestedBy ^definition = "Datatyp som identifierar en medarbetare/person."
* registerAction.requestedBy ^comment = "TKB-fält: `../requestedBy` (`ActorType`, kardinalitet 1..1)."
* registerAction.requestedBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* registerAction.requestedBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* registerAction.requestedBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* registerAction.registrationDate ^comment = "TKB-fält: `../registrationDate` (`dateTime`, kardinalitet 1..1)."
* registerAction.registeredBy ^definition = "Datatyp som identifierar en medarbetare/person."
* registerAction.registeredBy ^comment = "TKB-fält: `../registeredBy` (`ActorType`, kardinalitet 1..1)."
* registerAction.registeredBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* registerAction.registeredBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* registerAction.registeredBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* registerAction.reasonText ^comment = "TKB-fält: `../reasonText` (`ReasonText`, kardinalitet 0..1)."
* replicationTimeout ^definition = "Anger hur replikering till nationell spärrtjänst ska ske.

-   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas.

-   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt.

-   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt."
* replicationTimeout ^comment = "TKB-fält: `replicationTimeout` (`xs:Int`, kardinalitet 1..1)."
