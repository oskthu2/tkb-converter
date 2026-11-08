// Elementen genereras ur GetFmbResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetFmb v1.0
// Genererad: 2026-05-19

Logical: GetFmb
Id: getfmb
Title: "GetFmb"
Description: """
  Logisk modell för tjänstekontraktet GetFmb
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1).
  Representerar responsens informationsstruktur — beslutsunderlag från FMB
  (Försäkringsmedicinskt beslutsstöd).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* beslutsunderlag 0..* Base "BeslutsunderlagType" "beslutsunderlag"
* beslutsunderlag.underlagsId 1..1 IIType "underlagsId" "underlagsId"
* beslutsunderlag.giltighetstid 1..1 Base "IVLType" "giltighetstid"
* beslutsunderlag.giltighetstid.start 1..1 string "start" "start"
* beslutsunderlag.giltighetstid.start only DatumType
* beslutsunderlag.giltighetstid.slut 0..1 string "slut" "slut"
* beslutsunderlag.giltighetstid.slut only DatumType
* beslutsunderlag.version 1..1 integer "version" "version"
* beslutsunderlag.textuelltUnderlag 0..1 string "textuelltUnderlag" "textuelltUnderlag"
* beslutsunderlag.sjukskrivningstidText 1..1 string "sjukskrivningstidText" "sjukskrivningstidText"
* beslutsunderlag.sjukskrivningstid 0..1 Base "PQType" "sjukskrivningstid"
* beslutsunderlag.sjukskrivningstid.value 1..1 string "value" "value"
* beslutsunderlag.sjukskrivningstid.unit 1..1 string "unit" "unit"
* beslutsunderlag.sjukskrivningsgrad 1..1 code "sjukskrivningsgrad" "sjukskrivningsgrad Tillåtna värden: Heltid, Deltid."
* beslutsunderlag.senastAndrad 1..1 string "senastAndrad" "senastAndrad"
* beslutsunderlag.senastAndrad only TidpunktType
* beslutsunderlag.rehabiliteringsInformation 0..1 Base "RehabilieringsinformationTyp" "rehabiliteringsInformation"
* beslutsunderlag.rehabiliteringsInformation.beskrivning 1..1 string "beskrivning" "beskrivning"
* beslutsunderlag.villkor 1..1 Base "VillkorType" "villkor"
* beslutsunderlag.villkor.urvalArbetsbelastning 0..1 Base "UrvalArbetsbelastningType" "urvalArbetsbelastning"
* beslutsunderlag.villkor.urvalArbetsbelastning.arbetsbelastning 0..* Base "ArbetsbelastningType" "arbetsbelastning"
* beslutsunderlag.villkor.urvalArbetsbelastning.arbetsbelastning.kod 1..1 Base "GeneriskCVType" "kod"
* beslutsunderlag.villkor.urvalKomplicerandeFaktor 0..* Base "UrvalKomplicerandeFaktorType" "urvalKomplicerandeFaktor"
* beslutsunderlag.villkor.urvalKomplicerandeFaktor.komplicerandeFaktor 1..* Base "KomplicerandeFaktorType" "komplicerandeFaktor"
* beslutsunderlag.villkor.urvalKomplicerandeFaktor.komplicerandeFaktor.kod 1..1 Base "SnomedCTType" "kod"
* beslutsunderlag.villkor.urvalPlaneradAtgard 0..* Base "UrvalPlaneradAtgardType" "urvalPlaneradAtgard"
* beslutsunderlag.villkor.urvalPlaneradAtgard.planeradAtgard 1..* Base "PlaneradAtgardType" "planeradAtgard"
* beslutsunderlag.villkor.urvalPlaneradAtgard.planeradAtgard.kod 1..1 Base "GeneriskCVType" "kod"
* beslutsunderlag.villkor.urvalPagaendeAtgard 0..* Base "UrvalPagaendeAtgardType" "urvalPagaendeAtgard"
* beslutsunderlag.villkor.urvalPagaendeAtgard.pagaendeAtgard 1..* Base "PagaendeAtgardType" "pagaendeAtgard"
* beslutsunderlag.villkor.urvalPagaendeAtgard.pagaendeAtgard.kod 1..1 Base "GeneriskCVType" "kod"
* beslutsunderlag.villkor.urvalSamsjuklighet 0..* Base "UrvalSamsjuklighetType" "urvalSamsjuklighet"
* beslutsunderlag.villkor.urvalSamsjuklighet.samsjuklighet 1..* Base "SamsjuklighetType" "samsjuklighet"
* beslutsunderlag.villkor.urvalSamsjuklighet.samsjuklighet.kod 1..1 Base "ICD10SEType" "kod"
* beslutsunderlag.villkor.urvalSjukdomsforlopp 0..1 Base "UrvalSjukdomsforloppType" "urvalSjukdomsforlopp"
* beslutsunderlag.villkor.urvalSjukdomsforlopp.sjukdomsforlopp 1..* Base "SjukdomsforloppType" "sjukdomsforlopp"
* beslutsunderlag.villkor.urvalSjukdomsforlopp.sjukdomsforlopp.kod 1..1 Base "SnomedCTType" "kod"
* beslutsunderlag.villkor.urvalSvarighetsgrad 0..1 Base "UrvalSvarighetsgradType" "urvalSvarighetsgrad"
* beslutsunderlag.villkor.urvalSvarighetsgrad.svarighetsgrad 1..* Base "SvarighetsgradType" "svarighetsgrad"
* beslutsunderlag.villkor.urvalSvarighetsgrad.svarighetsgrad.kod 1..1 Base "SnomedCTType" "kod"
* beslutsunderlag.villkor.urvalUtfordAtgard 0..* Base "UrvalUtfordAtgardType" "urvalUtfordAtgard"
* beslutsunderlag.villkor.urvalUtfordAtgard.utfordAtgard 1..* Base "UtfordAtgardType" "utfordAtgard"
* beslutsunderlag.villkor.urvalUtfordAtgard.utfordAtgard.kod 1..1 Base "GeneriskCVType" "kod"
* beslutsunderlag.huvuddiagnos 1..* Base "HuvuddiagnosType" "huvuddiagnos"
* beslutsunderlag.huvuddiagnos.kod 1..1 Base "ICD10SEType" "kod"
* version 1..1 Base "VersionType" "version"
* version.senasteVersionsuppdatering 1..1 string "senasteVersionsuppdatering" "senasteVersionsuppdatering"
* version.senasteVersionsuppdatering only TidpunktType
* version.senateAndring 1..1 string "senateAndring" "senateAndring"
* version.senateAndring only TidpunktType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetFmbFieldDescriptions
