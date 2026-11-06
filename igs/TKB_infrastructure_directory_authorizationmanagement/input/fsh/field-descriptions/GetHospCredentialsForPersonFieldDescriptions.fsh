// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHospCredentialsForPersonFieldDescriptions
* personalIdentityNumber ^definition = "Personens person- eller samordningsnummer

Ref. Person-id (personalIdentityNumber) [R5]"
* personalIdentityNumber ^comment = "TKB-fält: `personalIdentityNumber` (`IIType`, kardinalitet 1..1)."
* personalIdentityNumber.root ^definition = "Anger typ av personalIdentity som returneras"
* personalIdentityNumber.root ^comment = "TKB-fält: `.. root` (`String`, kardinalitet 1..1).

**Modellanteckning:** För personnummer: 1.2.752.129.2.1.3.1, för samordningsnummer: 1.2.752.129.2.1.3.3."
* healthCareProfessionalLicence ^definition = "Personens Legitimerade yrkestitel(-lar)"
* healthCareProfessionalLicence ^comment = "TKB-fält: `healthCareProfessionalLicence` (`healthCareProfessionalLicenceType`, kardinalitet 0..n)."
* healthCareProfessionalLicence.healthCareProfessionalLicenceCode ^definition = "Kod för personens Legitimerade yrkestitel."
* healthCareProfessionalLicence.healthCareProfessionalLicenceCode ^comment = "TKB-fält: `.. healthCareProfessionalLicenceCode` (`String`, kardinalitet 1..1)."
* healthCareProfessionalLicence.healtCareProfessionalLicenceName ^definition = "Klartext för personens Legitimerade yrkestitel."
* healthCareProfessionalLicence.healtCareProfessionalLicenceName ^comment = "TKB-fält: `.. healtCareProfessionalLicenceName` (`String`, kardinalitet 1..1)."
* personalPrescriptionCode ^definition = "Personlig förskrivarkod. Ref. Förskrivarkod (personalPrescriptionCode) [R5]"
* personalPrescriptionCode ^comment = "TKB-fält: `personalPrescriptionCode` (`String`, kardinalitet 0..1)."
* healthCareProfessionalLicenceSpeciality ^definition = "Personens specialistkod(er) kopplat till aktuell legitimerad yrkesgrupp."
* healthCareProfessionalLicenceSpeciality ^comment = "TKB-fält: `healthCareProfessionalLicenceSpeciality` (`HCPSpecialityCodesType`, kardinalitet 0..n)."
* healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode ^definition = "Kod för den legitimerade yrkestitel som specialistkoden hör till."
* healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode ^comment = "TKB-fält: `.. healthCareProfessionalLicenceCode` (`String`, kardinalitet 1..1)."
* healthCareProfessionalLicenceSpeciality.specialityCode ^definition = "Specialistkod, enligt något av Socialstyrelsens kodverk."
* healthCareProfessionalLicenceSpeciality.specialityCode ^comment = "TKB-fält: `.. specialityCode` (`String`, kardinalitet 1..1)."
* healthCareProfessionalLicenceSpeciality.specialityName ^definition = "Specialitet i klartext."
* healthCareProfessionalLicenceSpeciality.specialityName ^comment = "TKB-fält: `.. specialityName` (`String`, kardinalitet 1..1)."
* nursePrescriptionRight ^definition = "Förskrivningsrätt för barnmorska/sjuksköterska"
* nursePrescriptionRight ^comment = "TKB-fält: `nursePrescriptionRight` (`NursePrescriptionRightType`, kardinalitet 0..n)."
* nursePrescriptionRight.healthCareProfessionalLicence ^definition = "Personens legitimerade yrkestitel inom vilken denne har förskrivningsrätt."
* nursePrescriptionRight.healthCareProfessionalLicence ^comment = "TKB-fält: `.. healthCareProfessionalLicence` (`String`, kardinalitet 1..1)."
* nursePrescriptionRight.prescriptionRight ^definition = "Personen har förskrivningsrätt inom den angivna Legitimerade yrkestiteln"
* nursePrescriptionRight.prescriptionRight ^comment = "TKB-fält: `.. prescriptionRight` (`Boolean`, kardinalitet 1..1)."
* healthcareProfessionalLicenseIdentityNumber ^definition = "Personens HoSp-id.

Ref. HOSP-id (hospIdentityNumber) [R5]"
* healthcareProfessionalLicenseIdentityNumber ^comment = "TKB-fält: `healthcareProfessionalLicenseIdentityNumber` (`String`, kardinalitet 0..1)."
* educationCode ^definition = "Utbildningskod. Ref. Socialstyrelsens kodverk [R7] HoSp utbildningskod 1.2.752.116.3.1.4"
* educationCode ^comment = "TKB-fält: `educationCode` (`String`, kardinalitet 0..n)."
* restrictions ^comment = "TKB-fält: `restrictions` (`RestrictionType`, kardinalitet 0..n)."
* restrictions.healthCareProfessionalLicenceCode ^definition = "Kod för den Legitimerade yrkestitel som restriktionskoden hör till."
* restrictions.healthCareProfessionalLicenceCode ^comment = "TKB-fält: `.. healthCareProfessionalLicenceCode` (`String`, kardinalitet 1..1)."
* restrictions.restrictionCode ^definition = "Restriktionskod. Ref Socialstyrelsens kodverk [R7] Behörighetsbegränsning 1.2.752.116.3.1.5"
* restrictions.restrictionCode ^comment = "TKB-fält: `.. restrictionCode` (`String`, kardinalitet 1..1)."
* restrictions.restrictionName ^definition = "Restriktionskod i klartext."
* restrictions.restrictionName ^comment = "TKB-fält: `.. restrictionName` (`String`, kardinalitet 1..1)."
* feignedPerson ^definition = "true: om personen är en fingerad person"
* feignedPerson ^comment = "TKB-fält: `feignedPerson` (`Boolean`, kardinalitet 0..1)."
