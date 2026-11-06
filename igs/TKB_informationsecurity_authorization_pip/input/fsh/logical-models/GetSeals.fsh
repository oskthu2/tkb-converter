// Genererad från XSD för informationsecurity.authorization.pip v1.0 (Genererat ur domänens XSD (master, commit 729301865b83).; scripts/xsd_to_ig.py)
// Kontrakt: GetSeals v1.0
// Genererad: 2026-09-26

Logical: GetSeals
Id: getseals
Title: "GetSeals — Response"
Description: """
  Logisk modell för svaret i GetSeals
  (urn:riv:informationsecurity:authorization:pip:GetSealsResponder:1, GetSealsResponseType).
"""
Characteristics: #can-be-target
* ^version = "1.0"
* seal 0..* BackboneElement "seal" "En försegling beskriver vårdgivarens beslut om att begränsa den enskildes åtkomst till sin egen information. Försegling handlar inte om att informationen kan vara till men i medicinskt hänseende för den enskilde, utan om att informationen inte ska vara tillgänglig via självbetjäning på grund av att den enskilde befinner sig i vanmaktssituation. Vårdgivaren kan även använda försegling för att stänga ute vårdnadshavares digitala åtkomst till barns (under 13 år) journaluppgifter. I praktiken förseglas barnets konto, vilket resulterar i att vårdnadshavarna inte kan se barnets information i tjänster som erbjuder vårdnadshavare åtkomst till vårdnadstagarens journaluppgifter. En försegling kan ha olika verksamhetsmässig omfattning, vilket representeras av respektive komposit element."
  * obeys getseals-seal-updated-after-created
  * obeys getseals-seal-valid-period
  * obeys getseals-seal-one-scope
  * patientId 1..1 BackboneElement "patientId" "patientId"
    * obeys getseals-patientid-pnr-sam
    * root 1..1 string "root" "root"
    * iiExtension 1..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * timeCreated 1..1 string "timeCreated" "timeCreated"
  * timeLastUpdated 1..1 string "timeLastUpdated" "timeLastUpdated"
  * validFrom 0..1 string "validFrom" "validFrom"
  * validTo 0..1 string "validTo" "validTo"
  * deactivationDate 0..1 string "deactivationDate" "deactivationDate"
  * orgUnitSeal 0..1 BackboneElement "orgUnitSeal" "En enhetsförsegling ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar enheten som anges i en enhetsförsegling. Enhet kan vara på godtycklig nivå i vårdgivarens organisationsstruktur. För att få avsedd effekt behöver vårdgivaren som registrerar en enhetsförsegling säkerställa att enheten som anges för försegling motsvarar värden som används i JoL-kontrakten i något av dessa fält: accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId Det gäller oavsett om vårdsystemet genererar HSAid:n eller använder systeminterna enhetsidentiteter."
    * orgUnit 1..1 BackboneElement "orgUnit" "orgUnit"
      * obeys getseals-orgunit-hsa
      * root 1..1 string "root" "root"
      * iiExtension 1..1 string "iiExtension" "iiExtension Heter extension i schemat."
    * sealPeriod 0..1 BackboneElement "sealPeriod" "sealPeriod"
      * start 1..1 string "start" "start"
      * end 1..1 string "end" "end"
  * careProviderSeal 0..1 BackboneElement "careProviderSeal" "En vårdgivarfiltrering ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar vårdgivaren som anges i en vårdgivarförsegling."
    * careProviderId 1..1 BackboneElement "careProviderId" "careProviderId"
      * obeys getseals-careproviderid-hsa
      * root 1..1 string "root" "root"
      * iiExtension 1..1 string "iiExtension" "iiExtension Heter extension i schemat."
    * sealPeriod 0..1 BackboneElement "sealPeriod" "sealPeriod"
      * start 1..1 string "start" "start"
      * end 1..1 string "end" "end"
  * fullSeal 0..1 BackboneElement "fullSeal" "fullSeal Typen har inga element utöver utökningspunkter."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetSealsFieldDescriptions

Invariant: getseals-seal-one-scope
Description: "ÖR1–ÖR3: exakt en av fullSeal, careProviderSeal och orgUnitSeal ska anges i en försegling."
Expression: "fullSeal.count() + careProviderSeal.count() + orgUnitSeal.count() = 1"
Severity: #error

Invariant: getseals-seal-valid-period
Description: "ÖR4: validTo får inte vara äldre än validFrom."
Expression: "(validFrom.exists() and validTo.exists()) implies validTo.toDecimal() >= validFrom.toDecimal()"
Severity: #error

Invariant: getseals-seal-updated-after-created
Description: "ÖR5: timeLastUpdated får inte vara äldre än timeCreated."
Expression: "timeLastUpdated.toDecimal() >= timeCreated.toDecimal()"
Severity: #error

Invariant: getseals-patientid-pnr-sam
Description: "ÖR6: patientId root ska vara OID för personnummer eller samordningsnummer, och extension ska ha formatet ÅÅÅÅMMDDNNNN utan bindestreck (testsvitens constraints.xml)."
Expression: "(root = '1.2.752.129.2.1.3.1' or root = '1.2.752.129.2.1.3.3') and iiExtension.matches('^[0-9]{8}[0-9pPtTfF][0-9]{3}$')"
Severity: #error

Invariant: getseals-orgunit-hsa
Description: "root ska vara OID för HSA-id (1.2.752.129.2.1.4.1) enligt testsvitens constraints.xml."
Expression: "root = '1.2.752.129.2.1.4.1'"
Severity: #error

Invariant: getseals-careproviderid-hsa
Description: "root ska vara OID för HSA-id (1.2.752.129.2.1.4.1) enligt testsvitens constraints.xml."
Expression: "root = '1.2.752.129.2.1.4.1'"
Severity: #error
