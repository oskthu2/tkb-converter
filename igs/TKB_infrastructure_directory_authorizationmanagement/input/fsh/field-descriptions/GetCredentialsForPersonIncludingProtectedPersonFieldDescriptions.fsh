// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCredentialsForPersonIncludingProtectedPersonFieldDescriptions
* credentialInformation ^definition = "Behörighetsegenskaper för sökt person"
* credentialInformation ^comment = "TKB-fält: `credentialInformation *2)` (`CredentialInformationType`, kardinalitet 0..n)."
* credentialInformation.givenName ^definition = "Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter.

Ref. tilltalsnamn (givenName, gn) [R5]"
* credentialInformation.givenName ^comment = "TKB-fält: `..givenName` (`String`, kardinalitet 0..1)."
* credentialInformation.middleAndSurName ^definition = "Personens Mellannamn och efternamn.  Namnen är separerade med mellanslag.

Ref. mellannamn (middleName) [R5]

Ref. efternamn (sn, surName) [R5]"
* credentialInformation.middleAndSurName ^comment = "TKB-fält: `..middleAndSurName` (`String`, kardinalitet 1..1)."
* credentialInformation.personHsaId ^definition = "Personens HSA-id

Ref. HSA-id (hsaIdentity) [R5]"
* credentialInformation.personHsaId ^comment = "TKB-fält: `..personHsaId` (`String`, kardinalitet 1..1)."
* credentialInformation.healthCareProfessionalLicence ^definition = "Personens Legitimerade yrkestitel(-lar) i klartext

Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3"
* credentialInformation.healthCareProfessionalLicence ^comment = "TKB-fält: `..healthCareProfessionalLicence` (`String`, kardinalitet 0..n)."
* credentialInformation.healthCareProfessionalLicenceCode ^definition = "Kod för personens Legitimerade yrkestitel.

Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3"
* credentialInformation.healthCareProfessionalLicenceCode ^comment = "TKB-fält: `.. healthCareProfessionalLicenceCode` (`String`, kardinalitet 0..n)."
* credentialInformation.healthCareProfessionalLicenceSpeciality ^definition = "Personens Specialistkoder kopplat till aktuell Legitimerade Yrkesgrupp. Ref. Leg. yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5]"
* credentialInformation.healthCareProfessionalLicenceSpeciality ^comment = "TKB-fält: `.. healthCareProfessionalLicenceSpeciality` (`HCPSpecialityCodesType`, kardinalitet 0..n)."
* credentialInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode ^definition = "Kod för den Legitimerade yrkestitel som specialistkoden hör till. Ref. Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3"
* credentialInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode ^comment = "TKB-fält: `.. .. healthCareProfessionalLicenceCode` (`String`, kardinalitet 1..1)."
* credentialInformation.healthCareProfessionalLicenceSpeciality.specialityCode ^definition = "Specialistkod, enligt något av Socialstyrelsens kodverk."
* credentialInformation.healthCareProfessionalLicenceSpeciality.specialityCode ^comment = "TKB-fält: `.. ..specialityCode` (`String`, kardinalitet 1..1).

**Modellanteckning:** Enligt något av Socialstyrelsens kodverk: 1.2.752.116.3.1.6 (Läkare 1992),
1.2.752.116.3.1.7 (Läkare 1996), 1.2.752.116.3.1.8 (Läkare 2008),
1.2.752.116.3.1.9 (Läkare 2015), 1.2.752.116.3.1.10 (Tandläkare 1993),
1.2.752.116.3.1.15 (temporär behörighet 2016), 1.2.752.116.3.1.17 (Tandläkare 2017),
1.2.752.116.3.1.20 (Läkare 2021)."
* credentialInformation.healthCareProfessionalLicenceSpeciality.specialityName ^definition = "Specialitet i klartext. Klartext för specialityCode ovan."
* credentialInformation.healthCareProfessionalLicenceSpeciality.specialityName ^comment = "TKB-fält: `.. ..specialityName` (`String`, kardinalitet 0..1)."
* credentialInformation.occupationalCode ^definition = "Utökad yrkeskod, används för icke-legitimerade medarbetares åtkomst till tjänster hos eHälsomyndigheten."
* credentialInformation.occupationalCode ^comment = "TKB-fält: `..occupationalCode` (`String`, kardinalitet 0..n)."
* credentialInformation.personalIdentity ^definition = "Personens person- eller samordningsnummer

Ref. Person-id (personalIdentityNumber) [R5]"
* credentialInformation.personalIdentity ^comment = "TKB-fält: `..personalIdentity *5)` (`IIType`, kardinalitet 0..1).

**Modellanteckning:** Returneras när profil extended1 anges. Ref. Person-id (personalIdentityNumber) [R5]."
* credentialInformation.personalIdentity.root ^definition = "Anger typ av personalIdentity som returneras, för personnummer: 1.2.752.129.2.1.3.1, och för samordningsnummer: 1.2.752.129.2.1.3.3"
* credentialInformation.personalIdentity.root ^comment = "TKB-fält: `.. ..root` (`String`, kardinalitet 1..1)."
* credentialInformation.healthcareProfessionalLicenseIdentityNumber ^definition = "Personens Hosp-Id

Ref. HOSP-id (hospIdentityNumber) [R5]"
* credentialInformation.healthcareProfessionalLicenseIdentityNumber ^comment = "TKB-fält: `.. healthcareProfessionalLicenseIdentityNumber` (`String`, kardinalitet 0..1)."
* credentialInformation.personalPrescriptionCode ^definition = "Personens förskrivarkod. Ref förskrivarkod (personalPrescriptionCode) [R5]"
* credentialInformation.personalPrescriptionCode ^comment = "TKB-fält: `..personalPrescriptionCode` (`String`, kardinalitet 0..1)."
* credentialInformation.groupPrescriptionCode ^definition = "Gruppförskrivarkod (er) som personen tilldelats av sin arbetsgivare. Ref. gruppförskrivarkod (hsaGroupPrescriptionCode) [R5]"
* credentialInformation.groupPrescriptionCode ^comment = "TKB-fält: `..groupPrescriptionCode` (`String`, kardinalitet 0..n)."
* credentialInformation.nursePrescriptionRight ^definition = "Förskrivningsrätt för barnmorska/sjuksköterska. Ref. förskrivningsrätt för barnmorskor/ sjuksköterskor (hsaSosNursePrescriptionRight) [R5]"
* credentialInformation.nursePrescriptionRight ^comment = "TKB-fält: `..nursePrescriptionRight` (`NursePrescriptionRightType`, kardinalitet 0..n)."
* credentialInformation.nursePrescriptionRight.healthCareProfessionalLicence ^definition = "Personens Legitimerade yrkestitel inom vilken denne har förskrivningsrätt. BM för Barnmorska eller SJ för Sjuksköterska"
* credentialInformation.nursePrescriptionRight.healthCareProfessionalLicence ^comment = "TKB-fält: `.. ..healthCareProfessionalLicence` (`String`, kardinalitet 1..1)."
* credentialInformation.nursePrescriptionRight.prescriptionRight ^definition = "Personen har förskrivningsrätt inom den angivna Legitimerade yrkestiteln"
* credentialInformation.nursePrescriptionRight.prescriptionRight ^comment = "TKB-fält: `.. ..prescriptionRight` (`Boolean`, kardinalitet 1..1)."
* credentialInformation.hsaSystemRole ^definition = "Personens Individuella egenskaper för it-tjänster. Ref. individuell egenskap för it-tjänster (hsaSystemRole) [R5]"
* credentialInformation.hsaSystemRole ^comment = "TKB-fält: `..hsaSystemRole` (`HsaSystemRoleType`, kardinalitet 0..n)."
* credentialInformation.hsaSystemRole.systemId ^definition = "IT-tjänstens SystemId"
* credentialInformation.hsaSystemRole.systemId ^comment = "TKB-fält: `.. ..systemId` (`String`, kardinalitet 1..1)."
* credentialInformation.hsaSystemRole.role ^definition = "Personens Roll inom IT-tjänsten"
* credentialInformation.hsaSystemRole.role ^comment = "TKB-fält: `.. ..role` (`String`, kardinalitet 1..1)."
* credentialInformation.paTitleCode ^definition = "Personens Befattningskoder

Ref. befattningskod (paTitleCode) [R5]"
* credentialInformation.paTitleCode ^comment = "TKB-fält: `..paTitleCode` (`String`, kardinalitet 0..n)."
* credentialInformation.protectedPerson ^definition = "true: om person har skyddade personuppgifter"
* credentialInformation.protectedPerson ^comment = "TKB-fält: `..protectedPerson` (`Boolean`, kardinalitet 0..1)."
* credentialInformation.feignedPerson ^definition = "true: om personen är ett fingerat objekt"
* credentialInformation.feignedPerson ^comment = "TKB-fält: `..feignedPerson` (`Boolean`, kardinalitet 0..1)."
* credentialInformation.commission ^definition = "De vårdmedarbetaruppdrag som personen är kopplad till"
* credentialInformation.commission ^comment = "TKB-fält: `..commission` (`CommissionType`, kardinalitet 0..n)."
* credentialInformation.commission.commissionName ^definition = "Vårdmedarbetaruppdragets Namn

Ref. objektnamn (cn) [R5]"
* credentialInformation.commission.commissionName ^comment = "TKB-fält: `.. ..commissionName` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.commissionHsaId ^definition = "Vårdmedarbetaruppdragets HSA-id

Ref. HSA-id (hsaIdentity) [R5]"
* credentialInformation.commission.commissionHsaId ^comment = "TKB-fält: `.. ..commissionHsaId` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.commissionPurpose ^definition = "Vårdmedarbetaruppdragets ändamål

Ref. vårdmedarbetaruppdragets ändamål (hsaCommissionPurpose) [R5]"
* credentialInformation.commission.commissionPurpose ^comment = "TKB-fält: `.. ..commissionPurpose` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.commissionRight ^definition = "Vårdmedarbetaruppdragets rättigheter

Ref. vårdmedarbetaruppdragets rättigheter (hsaCommissionRight) [R5]"
* credentialInformation.commission.commissionRight ^comment = "TKB-fält: `.. ..commissionRight` (`CommissionRightType`, kardinalitet 0..n)."
* credentialInformation.commission.commissionRight.activity ^definition = "Rättighet aktivitet"
* credentialInformation.commission.commissionRight.activity ^comment = "TKB-fält: `.. .. ..activity` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.commissionRight.informationClass ^definition = "Rättighet informationstyp"
* credentialInformation.commission.commissionRight.informationClass ^comment = "TKB-fält: `.. .. ..informationClass` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.commissionRight.scope ^definition = "Rättighet omfång"
* credentialInformation.commission.commissionRight.scope ^comment = "TKB-fält: `.. .. ..scope` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.pharmacyIdentifier ^definition = "Unikt id för apotek. Ref. (hsaGlnCode + hsaBusinessCode) [R5]"
* credentialInformation.commission.pharmacyIdentifier ^comment = "TKB-fält: `.. ..pharmacyIdentifier` (`String`, kardinalitet 0..1)."
* credentialInformation.commission.feignedCommission ^definition = "true: om vårdmedarbetaruppdraget är ett fingerat objekt"
* credentialInformation.commission.feignedCommission ^comment = "TKB-fält: `.. ..feignedCommission` (`Boolean`, kardinalitet 0..1)."
* credentialInformation.commission.healthCareUnitHsaId ^definition = "HSA-id för vårdenhet enligt PDL

Ref. HSA-id (hsaIdentity) [R5]"
* credentialInformation.commission.healthCareUnitHsaId ^comment = "TKB-fält: `.. ..healthCareUnitHsaId *3)` (`String`, kardinalitet 0..1).

**Modellanteckning:** Saknas om uppdraget ligger direkt under Vårdgivaren."
* credentialInformation.commission.healthCareUnitName ^definition = "Vårdenhetens namn

Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5]"
* credentialInformation.commission.healthCareUnitName ^comment = "TKB-fält: `.. ..healthCareUnitName *3)` (`String`, kardinalitet 0..1)."
* credentialInformation.commission.healthCareUnitStartDate ^definition = "Startdatum för vårdenhetens verksamhet

Ref. startdatum (startDate) [R5]"
* credentialInformation.commission.healthCareUnitStartDate ^comment = "TKB-fält: `.. ..healthCareUnitStartDate *3)` (`dateTime`, kardinalitet 0..1)."
* credentialInformation.commission.healthCareUnitEndDate ^definition = "Slutdatum för vårdenhetens verksamhet

Ref. slutdatum (endDate) [R5]"
* credentialInformation.commission.healthCareUnitEndDate ^comment = "TKB-fält: `.. ..healthCareUnitEndDate *3)` (`dateTime`, kardinalitet 0..1)."
* credentialInformation.commission.feignedHealthCareUnit ^definition = "true: om vårdenheten är ett fingerat objekt"
* credentialInformation.commission.feignedHealthCareUnit ^comment = "TKB-fält: `.. ..feignedHealthCareUnit` (`Boolean`, kardinalitet 0..1)."
* credentialInformation.commission.archivedHealthCareUnit ^definition = "true: om vårdenheten är ett arkiverat objekt"
* credentialInformation.commission.archivedHealthCareUnit ^comment = "TKB-fält: `.. ..archivedHealthCareUnit` (`Boolean`, kardinalitet 0..1)."
* credentialInformation.commission.healthCareProviderHsaId ^definition = "Vårdgivarens HSA-id

Ref. HSA-id (hsaIdentity) [R5]"
* credentialInformation.commission.healthCareProviderHsaId ^comment = "TKB-fält: `.. ..healthCareProviderHsaId` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.healthCareProviderName ^definition = "Vårdgivarens Namn. Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5]"
* credentialInformation.commission.healthCareProviderName ^comment = "TKB-fält: `.. ..healthCareProviderName` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.healthCareProviderOrgNo ^definition = "Vårdgivarens organisationsnummer

Ref. organisationsnummer (orgNo) [R5]"
* credentialInformation.commission.healthCareProviderOrgNo ^comment = "TKB-fält: `.. ..healthCareProviderOrgNo` (`String`, kardinalitet 1..1)."
* credentialInformation.commission.healthCareProviderStartDate ^definition = "Startdatum för vårdgivarens verksamhet

Ref. startdatum (startDate) [R5]"
* credentialInformation.commission.healthCareProviderStartDate ^comment = "TKB-fält: `.. ..healthCareProviderStartDate` (`dateTime`, kardinalitet 0..1)."
* credentialInformation.commission.healthCareProviderEndDate ^definition = "Slutdatum för vårdgivarens verksamhet

Ref. slutdatum (endDate) [R5]"
* credentialInformation.commission.healthCareProviderEndDate ^comment = "TKB-fält: `.. ..healthCareProviderEndDate` (`dateTime`, kardinalitet 0..1)."
* credentialInformation.commission.feignedHealthCareProvider ^definition = "true: om vårdgivaren är ett fingerat objekt"
* credentialInformation.commission.feignedHealthCareProvider ^comment = "TKB-fält: `.. ..feignedHealthCareProvider` (`Boolean`, kardinalitet 0..1)."
* credentialInformation.commission.archivedHealthCareProvider ^definition = "true: om vårdgivaren är ett arkiverat objekt"
* credentialInformation.commission.archivedHealthCareProvider ^comment = "TKB-fält: `.. ..archivedHealthCareProvider` (`Boolean`, kardinalitet 0..1)."
