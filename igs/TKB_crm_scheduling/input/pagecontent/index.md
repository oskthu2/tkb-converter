# crm: scheduling

## Översikt

FHIR Implementation Guide för tjänstedomänen **crm: scheduling** version 1.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Tjänstedomänens omfattning är invånarperspektivet på tidbokning mot en vårdenhet. Den kravställande processen är invånarens behov av e-tjänster för tidbokning — direkt som användare (ex. 1177 Vårdguidens e-tjänster), eller indirekt via vårdpersonal (ex. Rådgivningsstödet, RGS).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [CancelBooking](7-tjanstekontrakt.html#cancelbooking) | 1.1 | Avboka en bokning vid en vårdenhet |
| [GetAllCareTypes](7-tjanstekontrakt.html#getallcaretypes) | 1.1 | Hämta lista över bokningsbara vårdtyper hos en vårdenhet |
| [GetAllHealthcareFacilities](7-tjanstekontrakt.html#getallhealthcarefacilities) | 1.1 | Hämta alla vårdenheter tillgängliga för bokning |
| [GetAllPerformers](7-tjanstekontrakt.html#getallperformers) | 1.1 | Hämta lista över bokningsbara utförare |
| [GetAllTimeTypes](7-tjanstekontrakt.html#getalltimetypes) | 1.1 | Hämta alla tidstyper för nybokning |
| [GetAvailableDates](7-tjanstekontrakt.html#getavailabledates) | 1.1 | Hämta datum med lediga tider |
| [GetAvailableTimeslots](7-tjanstekontrakt.html#getavailabletimeslots) | 1.1 | Hämta lediga tider för datumintervall |
| [GetBookingDetails](7-tjanstekontrakt.html#getbookingdetails) | 1.1 | Hämta detaljinformation för en befintlig bokning |
| [GetSubjectOfCareSchedule](7-tjanstekontrakt.html#getsubjectofcareschedule) | 1.1 | Hämta alla bokade tider för en invånare |
| [MakeBooking](7-tjanstekontrakt.html#makebooking) | 1.1 | Skapa nybokning vid en vårdenhet |
| [UpdateBooking](7-tjanstekontrakt.html#updatebooking) | 1.1 | Uppdatera/omboka en befintlig bokning |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
