// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UnlinkPersonIdentityRequestFieldDescriptions
* actor ^definition = "Den aktör som utför isärkopplingen"
* actor ^comment = "TKB-fält: `actor` (`urn:riv:strategicresourcemanagement:persons:person:5:ActorType`, kardinalitet 1..1)."
* actor.id ^definition = "En universellt unik identifierare."
* actor.id ^comment = "TKB-fält: `../id` (`IIType`, kardinalitet 1..1)."
* actor.professional ^definition = "Datatyp som identifierar en aktör inom en profession."
* actor.professional ^comment = "TKB-fält: `../professional` (`ProfessionalType`, kardinalitet 0..1)."
* actor.professional.organizationId ^definition = "En universellt unik identifierare."
* actor.professional.organizationId ^comment = "TKB-fält: `../../organizationId` (`IIType`, kardinalitet 1..1)."
* actor.updateTime ^comment = "TKB-fält: `../updateTime` (`Timestamp`, kardinalitet 0..1)."
* unlinkFromIdentity ^definition = "Den huvudidentitet som man vill koppla isär från"
* unlinkFromIdentity ^comment = "TKB-fält: `unlinkFromIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1)."
* unlinkIdentity ^definition = "Den identitet som man tidigare hade kopplat till huvudidentiteten"
* unlinkIdentity ^comment = "TKB-fält: `unlinkIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1)."
