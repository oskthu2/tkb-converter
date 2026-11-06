// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListSickLeavesForCareFieldDescriptions
* sjukfallLista ^definition = "Lista med sjukfall."
* sjukfallLista ^comment = "TKB-fält: `sjukfallLista` (`SjukfallLista (lokalt definierad i kontraktet)`, kardinalitet 1..1)."
* sjukfallLista.sjukfall ^definition = "Pågående sjukfall."
* sjukfallLista.sjukfall ^comment = "TKB-fält: `../sjukfall` (`Sjukfall (lokalt definierad i kontraktet)`, kardinalitet 0..*).

**Mappning DIM:** Sjukfall"
* sjukfallLista.sjukfall.personId ^definition = "Patientens person- eller samordningsnummer."
* sjukfallLista.sjukfall.personId ^comment = "TKB-fält: `../../person-id` (`PersonId (se 7.2.10)`, kardinalitet 1..1).

**Mappning DIM:** Patient.person.id"
* sjukfallLista.sjukfall.patientFullstandigtNamn ^definition = "Patientens namn."
* sjukfallLista.sjukfall.patientFullstandigtNamn ^comment = "TKB-fält: `../../patientFullstandigtnamn` (`string`, kardinalitet 0..1).

**Mappning DIM:** Patient.förnamn

Patient.mellannamn

Patient.efternamn"
* sjukfallLista.sjukfall.enhetsId ^definition = "HSA-id för enhet."
* sjukfallLista.sjukfall.enhetsId ^comment = "TKB-fält: `../../enhets-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).

**Mappning DIM:** Enhet.enhets-id"
* sjukfallLista.sjukfall.personalId ^definition = "HSA-id för HoS-person som har signerat nuvarande intyg i sjukfallet."
* sjukfallLista.sjukfall.personalId ^comment = "TKB-fält: `../../personal-id` (`HsaId (se 7.2.5)`, kardinalitet 1..1).

**Mappning DIM:** HoS-personal.personal-id"
* sjukfallLista.sjukfall.startdatum ^definition = "Datum då sjukfallet startade."
* sjukfallLista.sjukfall.startdatum ^comment = "TKB-fält: `../../startdatum` (`DateType`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.startdatum"
* sjukfallLista.sjukfall.slutdatum ^definition = "Datum då sjukfallet kommer att avslutas om det inte förlängs av nya intyg."
* sjukfallLista.sjukfall.slutdatum ^comment = "TKB-fält: `../../slutdatum` (`DateType`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.slutdatum"
* sjukfallLista.sjukfall.diagnoskod ^definition = "Huvuddiagnoskod i det intyg som är giltigt vid datum för hämtning av sjukfall."
* sjukfallLista.sjukfall.diagnoskod ^comment = "TKB-fält: `../../diagnoskod` (`Diagnoskod`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.diagnoskod"
* sjukfallLista.sjukfall.diagnoskod.code ^definition = "Diagnoskod."
* sjukfallLista.sjukfall.diagnoskod.code ^comment = "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.diagnoskod"
* sjukfallLista.sjukfall.diagnoskod.codeSystem ^definition = "Identifierare för kodsystem, om känt."
* sjukfallLista.sjukfall.diagnoskod.codeSystem ^comment = "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 0..1).

**Mappning DIM:** Sjukfall.diagnoskod"
* sjukfallLista.sjukfall.diagnoskod.codeSystemName ^definition = "Namn på kodsystem. Används ej."
* sjukfallLista.sjukfall.diagnoskod.codeSystemName ^comment = "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).

**Mappning DIM:** Sjukfall.diagnoskod"
* sjukfallLista.sjukfall.diagnoskod.codeSystemVersion ^definition = "Version på kodsystem. Används ej."
* sjukfallLista.sjukfall.diagnoskod.codeSystemVersion ^comment = "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).

**Mappning DIM:** Sjukfall.diagnoskod"
* sjukfallLista.sjukfall.diagnoskod.displayName ^definition = "Klartext för kod. Används ej."
* sjukfallLista.sjukfall.diagnoskod.displayName ^comment = "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).

**Mappning DIM:** Sjukfall.diagnoskod"
* sjukfallLista.sjukfall.diagnoskod.originalText ^definition = "Beskrivande text. Används ej."
* sjukfallLista.sjukfall.diagnoskod.originalText ^comment = "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).

**Mappning DIM:** Sjukfall.diagnoskod"
* sjukfallLista.sjukfall.antalIntyg ^definition = "Antal intyg som ingår i sjukfallet."
* sjukfallLista.sjukfall.antalIntyg ^comment = "TKB-fält: `../../antalintyg` (`int`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.antal intyg"
* sjukfallLista.sjukfall.sjukskrivningslangd ^definition = "Sjukfallets totala längd i dagar."
* sjukfallLista.sjukfall.sjukskrivningslangd ^comment = "TKB-fält: `../../sjukskrivningslangd` (`int`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.sjukskrivningslängd"
* sjukfallLista.sjukfall.sjukskrivningsgrad ^definition = "Platshållare för information om sjukfallets sjukskrivningsgrad."
* sjukfallLista.sjukfall.sjukskrivningsgrad ^comment = "TKB-fält: `../../sjukskrivningsgrad` (`Sjukskrivningsgrad`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.sjukskrivningsgrad

Sjukfall.aktiv sjukskrivnignsgrad"
* sjukfallLista.sjukfall.sjukskrivningsgrad.aktivGrad ^definition = "Den sjukskrivningsgrad som är giltig vid datum för hämtning av sjukfall."
* sjukfallLista.sjukfall.sjukskrivningsgrad.aktivGrad ^comment = "TKB-fält: `../../../aktivGrad` (`int`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.aktiv sjukskrivnignsgrad"
* sjukfallLista.sjukfall.sjukskrivningsgrad.grader ^definition = "Platshållare för information om samtliga sjukskrivningsgrader i det intyg som är giltigt vid datum för hämtning av sjukfall."
* sjukfallLista.sjukfall.sjukskrivningsgrad.grader ^comment = "TKB-fält: `../../../grader` (`Sjukskrivningsgrader`, kardinalitet 1..1).

**Mappning DIM:** Sjukfall.sjukskrivningsgrad"
* sjukfallLista.sjukfall.sjukskrivningsgrad.grader.grad ^definition = "Samtliga sjukskrivningsgrader i det intyg som är giltigt vid datum för hämtning av sjukfall."
* sjukfallLista.sjukfall.sjukskrivningsgrad.grader.grad ^comment = "TKB-fält: `../../../../grad` (`int`, kardinalitet 1..4).

**Mappning DIM:** Sjukfall.sjukskrivningsgrad"
