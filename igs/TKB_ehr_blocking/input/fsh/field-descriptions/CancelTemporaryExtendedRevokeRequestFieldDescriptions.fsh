// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CancelTemporaryExtendedRevokeRequestFieldDescriptions
* temporaryRevokeId ^definition = "Identifierare för den tillfälliga hävning som skall återkallas."
* temporaryRevokeId ^comment = "TKB-fält: `temporaryRevokeId` (`blocking:Id`, kardinalitet 1..1)."
* cancellationInfo ^definition = "Identifierar de personer som begärt och hävt den tillfälliga hävningen samt tidpunkter för dessa."
* cancellationInfo ^comment = "TKB-fält: `cancellationInfo` (`blocking:Action`, kardinalitet 1..1)."
* cancelReasonText ^definition = "Ej obligatorisk, kompletterande text för orsak till makuleringen."
* cancelReasonText ^comment = "TKB-fält: `cancelReasonText` (`blocking:ReasonText`, kardinalitet 0..1)."
* replicationTimeout ^definition = "Anger hur replikering till nationell spärrtjänst ska ske.

-   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas.

-   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt.

-   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt."
* replicationTimeout ^comment = "TKB-fält: `replicationTimeout` (`xs:int`, kardinalitet 1..1)."
