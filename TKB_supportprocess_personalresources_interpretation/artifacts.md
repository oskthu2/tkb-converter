# Artifacts Summary - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [AnswerInquiry — Begäran](StructureDefinition-answerinquiry.md) | Logisk modell för begäran i AnswerInquiry (urn:riv:supportprocess:personalresources:interpretation:AnswerInquiryResponder:1, AnswerInquiryType). Tolkförmedlingen besvarar en förfrågan om tolkuppdrag. Svaret beskrivs av InterpretationResult. |
| [CreateBooking — Begäran](StructureDefinition-createbooking.md) | Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen. |
| [CreateBooking — Svar](StructureDefinition-createbooking-response.md) | Logisk modell för svaret i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingResponseType). |
| [ListBookings — Begäran](StructureDefinition-listbookings-request.md) | Logisk modell för begäran i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsType). |
| [ListBookings — Svar](StructureDefinition-listbookings.md) | Logisk modell för svaret i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsResponseType). |
| [ListInquiries — Begäran](StructureDefinition-listinquiries-request.md) | Logisk modell för begäran i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesType). |
| [ListInquiries — Svar](StructureDefinition-listinquiries.md) | Logisk modell för svaret i ListInquiries (urn:riv:supportprocess:personalresources:interpretation:ListInquiriesResponder:1, ListInquiriesResponseType). |
| [Resultat (ResultType)](StructureDefinition-interpretation-result.md) | Logisk modell för ResultType, som returneras av AnswerInquiry, CreateBooking och UpdateBooking. Se avsnitt 4.3 Felhantering. |
| [UpdateBooking — Begäran](StructureDefinition-updatebooking.md) | Logisk modell för begäran i UpdateBooking (urn:riv:supportprocess:personalresources:interpretation:UpdateBookingResponder:1, UpdateBookingType). Tolkförmedlingen uppdaterar beställningsinformation i Tolkportalen. Svaret beskrivs av InterpretationResult. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BookingStateEnum](ValueSet-bookingstate-vs.md) | Alla koder i BookingStateCS. |
| [ErrorCodeEnum](ValueSet-errorcode-vs.md) | Alla koder i ErrorCodeCS. |
| [InquiryResponseAnswerEnum](ValueSet-inquiryresponseanswer-vs.md) | Alla koder i InquiryResponseAnswerCS. |
| [InquiryStateEnum](ValueSet-inquirystate-vs.md) | Alla koder i InquiryStateCS. |
| [RequirementLevelEnum](ValueSet-requirementlevel-vs.md) | Alla koder i RequirementLevelCS. |
| [ResultCodeEnum](ValueSet-resultcode-vs.md) | Alla koder i ResultCodeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BookingStateEnum](CodeSystem-bookingstate-cs.md) | Status för beställning. Enligt supportprocess_personalresources_interpretation_1.0.xsd. |
| [ErrorCodeEnum](CodeSystem-errorcode-cs.md) | Felkod när resultCode är ERROR. Enligt supportprocess_personalresources_interpretation_1.0.xsd. |
| [InquiryResponseAnswerEnum](CodeSystem-inquiryresponseanswer-cs.md) | Svar på förfrågan. Enligt supportprocess_personalresources_interpretation_1.0.xsd. |
| [InquiryStateEnum](CodeSystem-inquirystate-cs.md) | Status för förfrågan. Enligt supportprocess_personalresources_interpretation_1.0.xsd. |
| [RequirementLevelEnum](CodeSystem-requirementlevel-cs.md) | Kravnivå: Desired = önskemål, Only = krav. Enligt supportprocess_personalresources_interpretation_1.0.xsd. |
| [ResultCodeEnum](CodeSystem-resultcode-cs.md) | Resultatkod för anropet. Enligt supportprocess_personalresources_interpretation_1.0.xsd. |

