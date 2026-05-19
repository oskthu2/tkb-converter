// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Genererad: 2026-05-19

ValueSet: VardkontakttypVS
Id: vardkontakttyp-vs
Title: "Vardkontakttyp — ValueSet"
Description: "Tillåtna värden för typ av vårdkontakt i RegisterMedicalCertificate."
* ^status = #active
* include codes from system VardkontakttypCS

ValueSet: ReferenstypVS
Id: referenstyp-vs
Title: "Referenstyp — ValueSet"
Description: "Tillåtna värden för typ av referens i RegisterMedicalCertificate."
* ^status = #active
* include codes from system ReferenstypCS

ValueSet: AktivitetskodVS
Id: aktivitetskod-vs
Title: "Aktivitetskod — ValueSet"
Description: "Tillåtna värden för aktivitetskod i RegisterMedicalCertificate."
* ^status = #active
* include codes from system AktivitetskodCS

ValueSet: NedsattningsgradVS
Id: nedsattningsgrad-vs
Title: "Nedsattningsgrad — ValueSet"
Description: "Tillåtna värden för grad av arbetsförmågenedsättning i RegisterMedicalCertificate."
* ^status = #active
* include codes from system NedsattningsgradCS

ValueSet: AmneVS
Id: amne-vs
Title: "Amne — ValueSet"
Description: "Tillåtna värden för ämne i fråge/svar-interaktionerna."
* ^status = #active
* include codes from system AmneCS

ValueSet: StatusVS
Id: status-vs
Title: "Status — ValueSet"
Description: "Tillåtna värden för statustyp för läkarintyg."
* ^status = #active
* include codes from system StatusCS
