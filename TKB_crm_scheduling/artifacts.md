# Artifacts Summary - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CancelBooking](StructureDefinition-cancelbooking.md) | Logisk modell för tjänstekontraktet CancelBooking (RIV-TA urn:riv:crm:scheduling:CancelBooking:1). Representerar responsens informationsstruktur. Tjänst för att avboka en bokning vid en vårdenhet. |
| [CancelBooking — Request](StructureDefinition-cancelbooking-request.md) | Logisk modell för requestparametrar i CancelBooking. |
| [GetAllCareTypes](StructureDefinition-getallcaretypes.md) | Logisk modell för tjänstekontraktet GetAllCareTypes (RIV-TA urn:riv:crm:scheduling:GetAllCareTypes:1). Representerar responsens informationsstruktur. Tjänst att för invånaren kunna visa en lista över vilka typer av vård som kan bokas hos en viss vårdenhet/mottagning. |
| [GetAllCareTypes — Request](StructureDefinition-getallcaretypes-request.md) | Logisk modell för requestparametrar i GetAllCareTypes. |
| [GetAllHealthcareFacilities](StructureDefinition-getallhealthcarefacilities.md) | Logisk modell för tjänstekontraktet GetAllHealthcareFacilities (RIV-TA urn:riv:crm:scheduling:GetAllHealthcareFacilities:1). Representerar responsens informationsstruktur. Tjänst för att hämta alla vårdenheter som erbjuds för ombokning eller nybokning för aktuell invånare. |
| [GetAllHealthcareFacilities — Request](StructureDefinition-getallhealthcarefacilities-request.md) | Logisk modell för requestparametrar i GetAllHealthcareFacilities. |
| [GetAllPerformers](StructureDefinition-getallperformers.md) | Logisk modell för tjänstekontraktet GetAllPerformers (RIV-TA urn:riv:crm:scheduling:GetAllPerformers:1). Representerar responsens informationsstruktur. Tjänst för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet. |
| [GetAllPerformers — Request](StructureDefinition-getallperformers-request.md) | Logisk modell för requestparametrar i GetAllPerformers. |
| [GetAllTimeTypes](StructureDefinition-getalltimetypes.md) | Logisk modell för tjänstekontraktet GetAllTimeTypes (RIV-TA urn:riv:crm:scheduling:GetAllTimeTypes:1). Representerar responsens informationsstruktur. Tjänsten hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet. |
| [GetAllTimeTypes — Request](StructureDefinition-getalltimetypes-request.md) | Logisk modell för requestparametrar i GetAllTimeTypes. |
| [GetAvailableDates](StructureDefinition-getavailabledates.md) | Logisk modell för tjänstekontraktet GetAvailableDates (RIV-TA urn:riv:crm:scheduling:GetAvailableDates:1). Representerar responsens informationsstruktur. Tjänsten hämtar datum med lediga tider för angivet datumintervall. |
| [GetAvailableDates — Request](StructureDefinition-getavailabledates-request.md) | Logisk modell för requestparametrar i GetAvailableDates. |
| [GetAvailableTimeslots](StructureDefinition-getavailabletimeslots.md) | Logisk modell för tjänstekontraktet GetAvailableTimeslots (RIV-TA urn:riv:crm:scheduling:GetAvailableTimeslots:1). Representerar responsens informationsstruktur. Tjänsten hämtar lediga tider för angivet datumintervall. |
| [GetAvailableTimeslots — Request](StructureDefinition-getavailabletimeslots-request.md) | Logisk modell för requestparametrar i GetAvailableTimeslots. |
| [GetBookingDetails](StructureDefinition-getbookingdetails.md) | Logisk modell för tjänstekontraktet GetBookingDetails (RIV-TA urn:riv:crm:scheduling:GetBookingDetails:1). Representerar responsens informationsstruktur. Tjänsten hämtar detaljinformation för en befintlig bokning vid en vårdenhet. |
| [GetBookingDetails — Request](StructureDefinition-getbookingdetails-request.md) | Logisk modell för requestparametrar i GetBookingDetails. |
| [GetSubjectOfCareSchedule](StructureDefinition-getsubjectofcareschedule.md) | Logisk modell för tjänstekontraktet GetSubjectOfCareSchedule (RIV-TA urn:riv:crm:scheduling:GetSubjectOfCareSchedule:1). Representerar responsens informationsstruktur. Tjänsten hämtar alla bokade tider för en invånare. Öppna kallelser ingår inte i svaret. |
| [GetSubjectOfCareSchedule — Request](StructureDefinition-getsubjectofcareschedule-request.md) | Logisk modell för requestparametrar i GetSubjectOfCareSchedule. |
| [MakeBooking](StructureDefinition-makebooking.md) | Logisk modell för tjänstekontraktet MakeBooking (RIV-TA urn:riv:crm:scheduling:MakeBooking:1). Representerar responsens informationsstruktur. Tjänst för nybokning vid en vårdenhet. |
| [MakeBooking — Request](StructureDefinition-makebooking-request.md) | Logisk modell för requestparametrar i MakeBooking. |
| [UpdateBooking](StructureDefinition-updatebooking.md) | Logisk modell för tjänstekontraktet UpdateBooking (RIV-TA urn:riv:crm:scheduling:UpdateBooking:1). Representerar responsens informationsstruktur. Tjänst för att uppdatera en bokning med nytt datum och tid (ombokning). |
| [UpdateBooking — Request](StructureDefinition-updatebooking-request.md) | Logisk modell för requestparametrar i UpdateBooking. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode — ValueSet](ValueSet-result-code-vs.md) | Tillåtna värden för resultatkoder i tjänstedomänen crm:scheduling. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode](CodeSystem-result-code-cs.md) | Kodverk för resultatkoder i tjänstedomänen crm:scheduling. Används i svaren för CancelBooking, MakeBooking och UpdateBooking. |

