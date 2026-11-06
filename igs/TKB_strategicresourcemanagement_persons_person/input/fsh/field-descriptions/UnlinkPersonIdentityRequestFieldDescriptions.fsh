// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UnlinkPersonIdentityRequestFieldDescriptions
* actor ^definition = "Den aktör som utför isärkopplingen"
* actor ^comment = "TKB-fält: `actor` (`urn:riv:strategicresourcemanagement:persons:person:5:ActorType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som identifierar en aktör."
* actor.actorId ^definition = "En universellt unik identifierare."
* actor.actorId ^comment = "TKB-fält: `../id` (`IIType`, kardinalitet 1..1)."
* actor.actorId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* actor.actorId.iiExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* actor.professional ^definition = "Datatyp som identifierar en aktör inom en profession."
* actor.professional ^comment = "TKB-fält: `../professional` (`ProfessionalType`, kardinalitet 0..1)."
* actor.professional.organizationId ^definition = "En universellt unik identifierare."
* actor.professional.organizationId ^comment = "TKB-fält: `../../organizationId` (`IIType`, kardinalitet 1..1)."
* actor.professional.organizationId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* actor.professional.organizationId.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* actor.updateTime ^comment = "TKB-fält: `../updateTime` (`Timestamp`, kardinalitet 0..1)."
* unlinkFromIdentity ^definition = "Den huvudidentitet som man vill koppla isär från"
* unlinkFromIdentity ^comment = "TKB-fält: `unlinkFromIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1).

**Modellanteckning:** En universellt unik identifierare."
* unlinkFromIdentity.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* unlinkFromIdentity.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* unlinkIdentity ^definition = "Den identitet som man tidigare hade kopplat till huvudidentiteten"
* unlinkIdentity ^comment = "TKB-fält: `unlinkIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1).

**Modellanteckning:** En universellt unik identifierare."
* unlinkIdentity.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* unlinkIdentity.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
