## Tjänstedomänens meddelandemodeller
Informationen som hanteras av ett tjänstekontrakt utgör en delmängd av all information som hanteras inom tjänstdomänen. I detta kapitel beskrivs respektive tjänstekontrakt i form av varsin verksamhetsorienterad meddelandeinformationsmodell (V-MIM:ar). V-MIM:arna är modellerade för att illustrera en överskådlig bild av schemafilerna.
I tabellerna i kapitel 6 framgår hur kontrakten är designade och hur fälten i dessa mappar mot DIM:en i informationsspecifikationen.

### V-MIM GetCertificate
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett enskilt intyg och dess metadata (som status och relationer) hämtas från en intygstjänst.

![img_010.jpg](images/img_010.jpg)

### V-MIM ListCertificatesForCare
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en lista med alla intyg gällande en viss patient på en eller flera enheter eller vårdgivare hämtas.
Meddelandet består av en lista som kan innehålla flera intyg.

![img_011.jpg](images/img_011.jpg)

### V-MIM ListCertificatesForCitizen
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en lista med intyg för en viss patient hämtas.
Meddelandet består av en lista som kan innehålla flera intyg.

![img_012.jpg](images/img_012.jpg)

### V-MIM RegisterCertificate
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett intyg ska registreras i en intygstjänst eller hos en intygsmottagare.

![img_013.jpg](images/img_013.jpg)

### V-MIM RevokeCertificate
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett intyg ska makuleras.

![img_014.jpg](images/img_014.jpg)

### V-MIM SendCertificateToRecipient
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en begäran om att ett intyg ska registreras i en intygsmottagares system skickas.
Det är antingen hälso- och sjukvårdspersonal eller invånaren själv som initierar begäran om att intyget ska skickas.

![img_015.jpg](images/img_015.jpg)

### V-MIM SendMessageToCare
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett meddelande som en del av en ärendekommunikation ska skickas från en intygsmottagare till vården.

![img_016.jpg](images/img_016.jpg)

### V-MIM SendMessageToRecipient
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett meddelande, som en del av en ärendekommunikation, ska skickas från vården till en intygsmottagare.

![img_024.jpg](images/img_024.jpg)

### V-MIM SetCertificateStatus
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett intyg ska byta status, till exempel när det bifogas till ett ärende, arkiveras eller återställs från arkivering.

![img_025.jpg](images/img_025.jpg)

### V-MIM CreateDraftCertificate
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett intygsutkast skapas.
Observera att typen Intyg är lokalt definierad i tjänstekontraktet och inte använder den gemensamma typen med samma namn.

![img_026.jpg](images/img_026.jpg)

### V-MIM CertificateStatusUpdateForCare
Meddelandeinformationsmodellen beskriver den information som kommuniceras när uppdateringar gällande ett intyg och dess tillhörande ärendekommunikation, i en intygsapplikation, ska förmedlas till ett integrerande vårdsystem. Detta inkluderar vilken användare som givit upphov till statusuppdateringen.

![img_027.jpg](images/img_027.jpg)

### V-MIM ListCertificatesForCareWithQA
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en lista med alla intyg gällande en viss patient hos en viss enhet eller vårdgivare hämtas från en intygsapplikation. Informationen omfattar även händelser och ärendekommunikation för intygen som finns i listan.
Meddelandet består av en lista som kan innehålla flera intyg.

![img_028.jpg](images/img_028.jpg)

### V-MIM ListSickLeavesForCare
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en lista med pågående sjukfall på en angiven enhet hämtas.
Meddelandet består av en lista som kan innehålla flera sjukfall.

![img_029.jpg](images/img_029.jpg)

