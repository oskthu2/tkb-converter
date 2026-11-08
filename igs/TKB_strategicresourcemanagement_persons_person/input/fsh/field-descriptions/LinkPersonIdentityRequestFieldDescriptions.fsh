// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: LinkPersonIdentityRequestFieldDescriptions
* actor ^definition = "Den aktör som utför kopplingen"
* actor ^comment = "TKB-fält: `actor` (`urn:riv:strategicresourcemanagement:persons:person:5:ActorType`, kardinalitet 1..1)."
* actor.id ^definition = "En universellt unik identifierare."
* actor.id ^comment = "TKB-fält: `../id` (`IIType`, kardinalitet 1..1)."
* actor.professional ^definition = "Datatyp som identifierar en aktör inom en profession."
* actor.professional ^comment = "TKB-fält: `../professional` (`ProfessionalType`, kardinalitet 0..1)."
* actor.professional.organizationId ^definition = "En universellt unik identifierare."
* actor.professional.organizationId ^comment = "TKB-fält: `../../organizationId` (`IIType`, kardinalitet 1..1)."
* actor.updateTime ^comment = "TKB-fält: `../updateTime` (`Timestamp`, kardinalitet 0..1)."
* fromIdentity ^definition = "Den identitet som man vill koppla till en huvudidentitet."
* fromIdentity ^comment = "TKB-fält: `fromIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1)."
* toIdentity ^definition = "Den huvudidentitet som man vill koppla till"
* toIdentity ^comment = "TKB-fält: `toIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1)."
