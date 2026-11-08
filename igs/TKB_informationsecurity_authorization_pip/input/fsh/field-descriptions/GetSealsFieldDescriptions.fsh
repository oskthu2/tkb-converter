// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetSealsFieldDescriptions
* seal ^definition = "En försegling beskriver vårdgivarens beslut om att begränsa den enskildes åtkomst till sin egen information. Försegling handlar inte om att informationen kan vara till men i medicinskt hänseende för den enskilde, utan om att informationen inte ska vara tillgänglig via självbetjäning på grund av att den enskilde befinner sig i vanmaktssituation. Vårdgivaren kan även använda försegling för att stänga ute vårdnadshavares digitala åtkomst till barns (under 13 år) journaluppgifter. I praktiken förseglas barnets konto, vilket resulterar i att vårdnadshavarna inte kan se barnets information i tjänster som erbjuder vårdnadshavare åtkomst till vårdnadstagarens journaluppgifter. En försegling kan ha olika verksamhetsmässig omfattning, vilket representeras av respektive komposit element."
* seal ^comment = "TKB-fält: `seal` (`SealType`, kardinalitet 0..*)."
* seal.patientId ^comment = "TKB-fält: `../patientId` (`IIType`, kardinalitet 1..1)."
* seal.timeCreated ^comment = "TKB-fält: `../timeCreated` (`TimeStampType`, kardinalitet 1..1)."
* seal.timeLastUpdated ^comment = "TKB-fält: `../timeLastUpdated` (`TimeStampType`, kardinalitet 1..1)."
* seal.validFrom ^comment = "TKB-fält: `../validFrom` (`DateType`, kardinalitet 0..1)."
* seal.validTo ^comment = "TKB-fält: `../validTo` (`DateType`, kardinalitet 0..1)."
* seal.deactivationDate ^comment = "TKB-fält: `../deactivationDate` (`DateType`, kardinalitet 0..1)."
* seal.orgUnitSeal ^definition = "En enhetsförsegling ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar enheten som anges i en enhetsförsegling. Enhet kan vara på godtycklig nivå i vårdgivarens organisationsstruktur. För att få avsedd effekt behöver vårdgivaren som registrerar en enhetsförsegling säkerställa att enheten som anges för försegling motsvarar värden som används i JoL-kontrakten i något av dessa fält: accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId Det gäller oavsett om vårdsystemet genererar HSAid:n eller använder systeminterna enhetsidentiteter."
* seal.orgUnitSeal ^comment = "TKB-fält: `../orgUnitSeal` (`OrgUnitSealType`, kardinalitet 0..1)."
* seal.orgUnitSeal.orgUnit ^comment = "TKB-fält: `../../orgUnit` (`IIType`, kardinalitet 1..1)."
* seal.orgUnitSeal.sealPeriod ^comment = "TKB-fält: `../../sealPeriod` (`DatePeriodType`, kardinalitet 0..1)."
* seal.careProviderSeal ^definition = "En vårdgivarfiltrering ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar vårdgivaren som anges i en vårdgivarförsegling."
* seal.careProviderSeal ^comment = "TKB-fält: `../careProviderSeal` (`CareProviderSealType`, kardinalitet 0..1)."
* seal.careProviderSeal.careProviderId ^comment = "TKB-fält: `../../careProviderId` (`IIType`, kardinalitet 1..1)."
* seal.careProviderSeal.sealPeriod ^comment = "TKB-fält: `../../sealPeriod` (`DatePeriodType`, kardinalitet 0..1)."
* seal.fullSeal ^comment = "TKB-fält: `../fullSeal` (`FullSealType`, kardinalitet 0..1)."
