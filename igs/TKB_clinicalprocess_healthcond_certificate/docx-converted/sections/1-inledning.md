## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen clinicalprocess:healthcond:certificate.
Tjänstekontrakten är baserade på RIVTA 2.1 [R1]. Syftet med denna tjänstedomän är att underlätta sjukskrivningsprocessen genom att möjliggöra elektronisk intygshantering via en central intygstjänst.
Tjänstekontrakten i domänen stödjer integration mellan olika typer av system: mellan en intygsapplikation och en central intygstjänst, mellan ett vårdsystem och en intygsapplikation, mellan en intygsmottagares system och en central intygstjänst samt mellan invånartjänst för intyg och en central intygstjänst.
För integrationer mellan intygsapplikation och intygstjänst används tjänstekontrakten: GetCertificate, ListCertificatesForCare, RegisterCertificare, RevokeCertificate, SendCertificateToRecipient, SendMessageToCare och SendMessageToRecipient.
För integrationer mellan vårdsystem och intygsapplikation används: CreateDraftCertificate, CertificateStatusUpdateForCare och ListCertificatesForCareWithQA.
För integrationer mellan intygsmottagare och en central intygstjänst används:
RegisterCertificate, RevokeCertificate, SendMessageToCare och SendMessageToRecipient.
För integrationer mellan en invånartjänst för intyg och en central intygstjänst används: ListCertificatesForCitizen, GetCertificate och SetCertificateStatus.
Denna tjänstedomän ersätter från och med version 2.0 helt den tidigare tjänstedomänen insuranceprocess:healthreporting. Tjänstekontrakt från den tidigare tjänstedomänen kommer succesivt avvecklas.

### Svenskt namn
vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering
intygshantering

