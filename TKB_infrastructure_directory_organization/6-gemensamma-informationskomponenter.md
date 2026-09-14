# 6 Gemensamma informationskomponenter - infrastructure: directory: organization v5

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

## Gemensamma informationskomponenter

Gemensamma informationskomponenter för tjänstedomänen **infrastructure: directory: organization** definieras i Informationsspecifikationen för Katalogtjänst HSA [R5]. Se även avsnitt 5 (Tjänstedomänens meddelandemodeller).

De centrala datatyperna som delas mellan kontrakten inkluderar:

* **HealthCareUnitType** — Struktur för vårdenhet med HSA-id, namn, publikt namn, start/slutdatum och koppling till vårdgivare
* **HealthCareUnitListType** — Lista av vårdenheter under en vårdgivare
* **HealthCareUnitMembersType** — Vårdenhet med dess kopplade enheter (mottagningar, avdelningar)
* **HealthCareUnitMemberType** — Kopplad enhet till en vårdenhet
* **HealthCareProviderType** — Vårdgivare med HSA-id, namn, organisationsnummer och adressuppgifter
* **unitType** — Generell organisatorisk enhet med fullständig kontaktinformation
* **AddressType** / **structuredPostalAddressType** — Adressstrukturer i ostrukturerat resp. strukturerat format
* **TimeSpan** — Tidsintervall med dag, tid och kommentar (används för öppettider, telefontider m.m.)
* **BusinessClassificationType** — Verksamhetskod med kod och klartext
* **GeoCoordRt90Type** / **GeoCoordSWEREF99Type** — Geografiska koordinater

Fullständig beskrivning av datatypernas attribut och regler finns i Informationsspecifikationen [R5] och i XSD-schemana under [Källfiler](files/schema/).

