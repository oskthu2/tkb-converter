// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicationStatementFieldDescriptions
* medicationStatement ^definition = "Egenmedicineringsbehandling."
* medicationStatement ^comment = "TKB-fält: `medicationStatement` (`MedicationStatement_setter`, kardinalitet 1..*)."
* medicationStatement.registrationData ^definition = "id, registrerad av och registreringstidpunkt."
* medicationStatement.registrationData ^comment = "TKB-fält: `../registrationData` (`RegistrationData`, kardinalitet 1..1)."
* medicationStatement.registrationData.id ^definition = "Unikt id för det omgivande objektet."
* medicationStatement.registrationData.id ^comment = "TKB-fält: `../../id` (`Identifier`, kardinalitet 1..1)."
* medicationStatement.registrationData.registeredBy ^definition = "Den person som registrerat ordinationen."
* medicationStatement.registrationData.registeredBy ^comment = "TKB-fält: `registeredBy` (`HealthcareProfessionalType`, kardinalitet 1..1).

**Modellanteckning:** Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationStatement.registrationData.registeredBy.healthcareProfessionalHSAId ^definition = "HSA-id för personen."
* medicationStatement.registrationData.registeredBy.healthcareProfessionalHSAId ^comment = "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationStatement.registrationData.registeredBy.givenName ^definition = "Personens förnamn"
* medicationStatement.registrationData.registeredBy.givenName ^comment = "TKB-fält: `../givenName` (`string`, kardinalitet 0..1)."
* medicationStatement.registrationData.registeredBy.familyName ^definition = "Personens efternamn"
* medicationStatement.registrationData.registeredBy.familyName ^comment = "TKB-fält: `../familyName` (`string`, kardinalitet 0..1)."
* medicationStatement.registrationData.registeredBy.healthcareProfessionalRoleCode ^definition = "befattningskod, även kallat paTitleCode i HSA.

Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf"
* medicationStatement.registrationData.registeredBy.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1)."
* medicationStatement.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för."
* medicationStatement.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationStatement.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för."
* medicationStatement.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1)."
* medicationStatement.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationStatement.registrationData.registrationTime ^comment = "TKB-fält: `../../registrationTime` (`dateTime`, kardinalitet 1..1)."
* medicationStatement.patientId ^definition = "Person- eller samordningsnummer enligt skatteverkets definition (12 tecken).

Se kapitel 5.2 för exempel och regler kring format."
* medicationStatement.patientId ^comment = "TKB-fält: `patientId` (`Identifier`, kardinalitet 1..1)."
* medicationStatement.treatmentStartTime ^definition = "Tidpunkt då patienten uppger att behandlingen påbörjats."
* medicationStatement.treatmentStartTime ^comment = "TKB-fält: `../treatmentStartTime` (`dateTime`, kardinalitet 1)."
* medicationStatement.treatmentEndTime ^definition = "Tidpunkt då patienten uppger att Egenmedicineringen avslutats eller planerar att avsluta den.

Om attributet inte anges innebär det att Egenmedicineringen pågår tills vidare utan känd sluttid.

Tidpunkten får, om den anges, inte vara före insättningstidpunkt."
* medicationStatement.treatmentEndTime ^comment = "TKB-fält: `../treatmentEndTime` (`dateTime`, kardinalitet 0..1)."
* medicationStatement.annotation ^definition = "Kommentarer i fritext av registrerande Hälso- och sjukvårdspersonal, t.ex. bedömning av medicineringens verkan samt av patienten uppgivna effekter eller biverkningar."
* medicationStatement.annotation ^comment = "TKB-fält: `../annotation` (`string`, kardinalitet 0..1)."
* medicationStatement.purpose ^definition = "Av patienten uppgivet behandlingsändamål i klartext."
* medicationStatement.purpose ^comment = "TKB-fält: `../purpose` (`string`, kardinalitet 0..1)."
* medicationStatement.medication ^definition = "Det läkemedel (eller handelsvara) som Egenmedicineringen avser.

Det är kanske inte troligt att patienten kan uppge läkemedlet så exakt att en det kan kopplas till en Läkemedelsartikel eller Läkemedelsprodukt, även om möjligheten finns. Istället är det troligare att det anges som Fritextläkemedel varvid även ATC-kod kan registreras om det är känt."
* medicationStatement.medication ^comment = "TKB-fält: `../medication` (`Medication_virtual`, kardinalitet 1)."
* medicationStatement.medication.DistributedDrug_attr ^comment = "TKB-fält: `../../DistributedDrug_attr` (`DistributedDrug`, kardinalitet 0..1)."
* medicationStatement.medication.DistributedDrug_attr.NPLid ^definition = "id som identifierar läkemedelsprodukt.

Hämtas från SIL.

Ex. Alvedon tablett 500 mg.

Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).

NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.

Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.

Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)

Ingår i Expedieringsunderlag."
* medicationStatement.medication.DistributedDrug_attr.NPLid ^comment = "TKB-fält: `../../../NPLid` (`Identifier`, kardinalitet 0..1)."
* medicationStatement.medication.DistributedDrug_attr.tradeName ^definition = "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Möjlighet att utnyttja detta fält för \"fritextordination\" måste testas (t.ex. för studieläkemedel eller \"okänt läkemedel\")."
* medicationStatement.medication.DistributedDrug_attr.tradeName ^comment = "TKB-fält: `../../../tradeName` (`string`, kardinalitet 1)."
* medicationStatement.medication.DistributedDrug_attr.notInterchangable ^definition = "Markering att ordinerad vara ej får bytas ut vid expediering

Falskt = Får bytas ut

Sant = Får ej bytas ut

Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget."
* medicationStatement.medication.DistributedDrug_attr.notInterchangable ^comment = "TKB-fält: `../../../notInterchangable` (`boolean`, kardinalitet 1)."
* medicationStatement.medication.DrugArticle_attr ^comment = "TKB-fält: `../../DrugArticle_attr` (`DrugArticle`, kardinalitet 0..1)."
* medicationStatement.medication.DrugArticle_attr.NPLPackid ^definition = "Id som identifierar läkemedelsartikel.

Hämtas från SIL.

Anger läkemedel på nivån : Alvedon tablett 500 mg, 16 st blister."
* medicationStatement.medication.DrugArticle_attr.NPLPackid ^comment = "TKB-fält: `../../../NPLPackid` (`Identifier`, kardinalitet 1)."
* medicationStatement.medication.DrugArticle_attr.distributedTradeName ^definition = "Produktnamn + förpackning

Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Kallas artikel hos apoteksaktörerna"
* medicationStatement.medication.DrugArticle_attr.distributedTradeName ^comment = "TKB-fält: `../../../distributedTradeName` (`string`, kardinalitet 1)."
* medicationStatement.medication.DrugArticle_attr.distributedDrug ^definition = "Den Läkemedelsprodukt som Läkemedelsartikeln baseras på.(se not 1)"
* medicationStatement.medication.DrugArticle_attr.distributedDrug ^comment = "TKB-fält: `../../../distributedDrug` (`DistributedDrug`, kardinalitet 1)."
* medicationStatement.medication.DrugArticle_attr.distributedDrug.NPLid ^definition = "id som identifierar läkemedelsprodukt.

Hämtas från SIL.

Ex. Alvedon tablett 500 mg.

Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).

NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.

Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.

Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)

Ingår i Expedieringsunderlag."
* medicationStatement.medication.DrugArticle_attr.distributedDrug.NPLid ^comment = "TKB-fält: `../../../../NPLid` (`Identifier`, kardinalitet 0..1)."
* medicationStatement.medication.DrugArticle_attr.distributedDrug.tradeName ^definition = "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.

Möjlighet att utnyttja detta fält för \"fritextordination\" måste testas (t.ex. för studieläkemedel eller \"okänt läkemedel\")."
* medicationStatement.medication.DrugArticle_attr.distributedDrug.tradeName ^comment = "TKB-fält: `../../../../tradeName` (`string`, kardinalitet 1)."
* medicationStatement.medication.DrugArticle_attr.distributedDrug.notInterchangable ^definition = "Markering att ordinerad vara ej får bytas ut vid expediering

Falskt = Får bytas ut

Sant = Får ej bytas ut

Notera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget."
* medicationStatement.medication.DrugArticle_attr.distributedDrug.notInterchangable ^comment = "TKB-fält: `../../../../notInterchangable` (`boolean`, kardinalitet 1)."
* medicationStatement.medication.ExTempore_attr ^comment = "TKB-fält: `../../ExTempore_attr` (`ExTempore`, kardinalitet 0..1)."
* medicationStatement.medication.ExTempore_attr.description ^definition = "Beskriver komposition mm.

Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget."
* medicationStatement.medication.ExTempore_attr.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 1)."
* medicationStatement.medication.LicensedDrug_attr ^comment = "TKB-fält: `../../LicensedDrug_attr` (`LicensedDrug`, kardinalitet 0..1)."
* medicationStatement.medication.LicensedDrug_attr.productName ^definition = "Namn på läkemedlet i fri text.

Ingår i Expedieringsunderlag.doseringstext 2."
* medicationStatement.medication.LicensedDrug_attr.productName ^comment = "TKB-fält: `../../../productName` (`string`, kardinalitet 1)."
* medicationStatement.medication.LicensedDrug_attr.strength ^definition = "Ingår i Expedieringsunderlag.doseringstext 2."
* medicationStatement.medication.LicensedDrug_attr.strength ^comment = "TKB-fält: `../../../strength` (`string`, kardinalitet 0..1)."
* medicationStatement.medication.LicensedDrug_attr.drugForm ^definition = "Ingår i Expedieringsunderlag.doseringstext 2."
* medicationStatement.medication.LicensedDrug_attr.drugForm ^comment = "TKB-fält: `../../../drugForm` (`string`, kardinalitet 0..1)."
* medicationStatement.medication.LicensedDrug_attr.licenseInformation ^definition = "t.ex. vilket apotek som har den beviljade licensen

Ingår i Expedieringsunderlag.doseringstext 2."
* medicationStatement.medication.LicensedDrug_attr.licenseInformation ^comment = "TKB-fält: `../../../licenseInformation` (`string`, kardinalitet 0..1)."
* medicationStatement.medication.NonDrugArticle_attr ^comment = "TKB-fält: `../../NonDrugArticle_attr` (`NonDrugArticle`, kardinalitet 0..1)."
* medicationStatement.medication.NonDrugArticle_attr.articleId ^definition = "Identitet på ordinerad handelsvara.

Obligatorisk parameter för handelsvaror som ska hämtas ut på apotek.

Får ej anges för läkemedel.

Ingår i Expedieringsunderlag."
* medicationStatement.medication.NonDrugArticle_attr.articleId ^comment = "TKB-fält: `../../../articleId` (`Identifier`, kardinalitet 0..1)."
* medicationStatement.medication.FreeTextMedication_attr ^comment = "TKB-fält: `../../FreeTextMedication_attr` (`FreeTextMedication`, kardinalitet 0..1)."
* medicationStatement.medication.FreeTextMedication_attr.description ^definition = "beskrivning av läkemedlet.

Fritextval används t.ex. då patienten själv anger sina läkemedel (egenmedicinering) samt vid studieläkemedel, dvs. när patienten deltar i en forskningsstudie och inte själv vet om aktiv substans används."
* medicationStatement.medication.FreeTextMedication_attr.description ^comment = "TKB-fält: `../../../description` (`string`, kardinalitet 1)."
* medicationStatement.medication.FreeTextMedication_attr.atcCode ^definition = "ATC-kod

Om angivet kan kontroller utföras (interaktion, amning mm). Se not 1."
* medicationStatement.medication.FreeTextMedication_attr.atcCode ^comment = "TKB-fält: `../../../atcCode` (`code`, kardinalitet 0..1)."
* medicationStatement.dosage ^definition = "I möjligaste mån bör doseringen anges strukturerat enligt vårdens doseringsmodell. Där så inte är möjligt finns alltid möjligheten att (i doseringsmodellen) ange doseringen som fri text.

I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas."
* medicationStatement.dosage ^comment = "TKB-fält: `../dosage` (`Dosage`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps ^definition = "Ett eller flera doseringssteg."
* medicationStatement.dosage.dosageSteps ^comment = "TKB-fält: `../../dosageSteps` (`DosageStep`, kardinalitet 1..*)."
* medicationStatement.dosage.dosageSteps.duration ^definition = "den tid under vilket läkemedlet ska användas enligt ordination, t.ex. 4 veckor, 5-6 veckor"
* medicationStatement.dosage.dosageSteps.duration ^comment = "TKB-fält: `../../../duration` (`Period`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.duration.value ^comment = "TKB-fält: `../../../../value` (`Interval`, kardinalitet 1)."
* medicationStatement.dosage.dosageSteps.duration.value.min ^definition = "Intervallets min-värde"
* medicationStatement.dosage.dosageSteps.duration.value.min ^comment = "TKB-fält: `../../../../../min` (`NumericValue`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber ^comment = "TKB-fält: `../../../../../../decimalNumber` (`DecimalNumber`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber.value ^comment = "TKB-fält: `../../../../../../../value` (`decimal`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber.decimals ^comment = "TKB-fält: `../../../../../../../decimals` (`int`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.value.min.fraction ^comment = "TKB-fält: `../../../../../../fraction` (`Fraktion`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.duration.value.min.fraction.numerator ^comment = "TKB-fält: `../../../../../../../numerator` (`int`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.value.min.fraction.denominator ^comment = "TKB-fält: `../../../../../../../denominator` (`int`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.value.max ^definition = "Intervallets max-värde.

Om utelämnat tolkas som att max=min, dvs. en skalär."
* medicationStatement.dosage.dosageSteps.duration.value.max ^comment = "TKB-fält: `../../../../../max` (`NumericValue`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber ^comment = "TKB-fält: `../../../../../../decimalNumber` (`DecimalNumber`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber.value ^comment = "TKB-fält: `../../../../../../../value` (`decimal`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber.decimals ^comment = "TKB-fält: `../../../../../../../decimals` (`int`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.value.max.fraction ^comment = "TKB-fält: `../../../../../../fraction` (`Fraktion`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.duration.value.max.fraction.numerator ^comment = "TKB-fält: `../../../../../../../numerator` (`int`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.value.max.fraction.denominator ^comment = "TKB-fält: `../../../../../../../denominator` (`int`, kardinalitet 1..1)."
* medicationStatement.dosage.dosageSteps.duration.unit ^definition = "{Minute, Hour, Day, Week, Month, Year}"
* medicationStatement.dosage.dosageSteps.duration.unit ^comment = "TKB-fält: `../../../../unit` (`TimeUnitEnum`, kardinalitet 1)."
* medicationStatement.dosage.dosageSteps.isMaxDuration ^definition = "flagga som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas.

Flaggan är satt till FALSE som förvalt värde, dvs. den anger att behandlingstiden inte är en maxtid."
* medicationStatement.dosage.dosageSteps.isMaxDuration ^comment = "TKB-fält: `../../../isMaxDuration` (`boolean`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.doseUnit ^definition = "den enhet som doseringen avser, t.ex. tablett, ml eller droppe"
* medicationStatement.dosage.dosageSteps.doseUnit ^comment = "TKB-fält: `../../../doseUnit` (`string`, kardinalitet 1)."
* medicationStatement.dosage.dosageSteps.regularDosage ^definition = "dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger dagligen"
* medicationStatement.dosage.dosageSteps.regularDosage ^comment = "TKB-fält: `../../../regularDosage` (`DosageType_virtual`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.maxDosage ^definition = "dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka"
* medicationStatement.dosage.dosageSteps.maxDosage ^comment = "TKB-fält: `../../../maxDosage` (`DosageType_virtual`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.conditionalDosage ^definition = "ordinerad mängd och periodicitet som gäller om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten"
* medicationStatement.dosage.dosageSteps.conditionalDosage ^comment = "TKB-fält: `../../../conditionalDosage` (`DosageType_virtual`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.condition ^definition = "text som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".

Anges endast om attributet villkorsdosering förekommer."
* medicationStatement.dosage.dosageSteps.condition ^comment = "TKB-fält: `../../../condition` (`string`, kardinalitet 0..1)."
* medicationStatement.dosage.dosageSteps.shortNotation ^definition = "angiven kortnotation som beskriver doseringen"
* medicationStatement.dosage.dosageSteps.shortNotation ^comment = "TKB-fält: `../../../shortNotation` (`string`, kardinalitet 0..1)."
* medicationStatement.informationSource ^definition = "Uppgift om den person som tillhandahållit uppgiften, vanligtvis patienten själv, annan behandlande läkare eller någon närstående. Om inget värde anges antas uppgiften komma från patienten själv."
* medicationStatement.informationSource ^comment = "TKB-fält: `../informationSource` (`string`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED."
* result.subcode ^definition = "Inga subkoder är specificerade."
* result.subcode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).

**Modellanteckning:** subcode Tillåtna värden: SUB_RR_ERROR."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
