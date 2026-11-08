// Elementen genereras ur ListCertificatesForCareWithQAResponder_3.3.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: ListCertificatesForCareWithQA v3.2 (TKB) / v3.3 (WSDL)
// Genererad: 2026-05-19

Logical: ListCertificatesForCareWithQA
Id: listcertificatesforcarewithqa
Title: "ListCertificatesForCareWithQA"
Description: """
  Logisk modell för tjänstekontraktet ListCertificatesForCareWithQA
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:3).
  Representerar responsens lista med intyg inkl. händelser och ärendekommunikation.
  Inkluderar både signerade, makulerade och intygsutkast.
"""
Characteristics: #can-be-target

* ^version = "3.3"
* list 0..1 Base "List" "list"
* list.item 0..* Base "ListItem" "item"
* list.item.intyg 1..1 Base "Intyg" "intyg"
* list.item.intyg.intygs-id 1..1 Base "IntygId" "intygs-id"
* list.item.intyg.mottagare 0..* Base "Part" "mottagare"
* list.item.intyg.typ 1..1 Base "TypAvIntyg" "typ"
* list.item.intyg.version 1..1 string "version" "version"
* list.item.intyg.signeringstidpunkt 0..1 dateTime "signeringstidpunkt" "signeringstidpunkt"
* list.item.intyg.signeringstidpunkt only TimeStampType
* list.item.intyg.skickatTidpunkt 0..1 dateTime "skickatTidpunkt" "skickatTidpunkt"
* list.item.intyg.skickatTidpunkt only TimeStampType
* list.item.intyg.patient 1..1 Base "Patient" "patient"
* list.item.intyg.patient.person-id 1..1 Base "PersonId" "person-id"
* list.item.intyg.patient.fornamn 1..1 string "fornamn" "fornamn"
* list.item.intyg.patient.efternamn 1..1 string "efternamn" "efternamn"
* list.item.intyg.patient.mellannamn 0..1 string "mellannamn" "mellannamn"
* list.item.intyg.patient.postadress 1..1 string "postadress" "postadress"
* list.item.intyg.patient.postnummer 1..1 string "postnummer" "postnummer"
* list.item.intyg.patient.postort 1..1 string "postort" "postort"
* list.item.intyg.patient.kallaAdressuppgifter 0..1 Base "KallaAdressuppgifterType" "kallaAdressuppgifter"
* list.item.intyg.skapadAv 1..1 Base "HosPersonal" "skapadAv"
* list.item.intyg.skapadAv.personal-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* list.item.intyg.skapadAv.fullstandigtNamn 1..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* list.item.intyg.skapadAv.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* list.item.intyg.skapadAv.befattning 0..* Base "Befattning" "befattning"
* list.item.intyg.skapadAv.enhet 1..1 Base "Enhet" "enhet"
* list.item.intyg.skapadAv.enhet.enhets-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* list.item.intyg.skapadAv.enhet.arbetsplatskod 1..1 Base "ArbetsplatsKod" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* list.item.intyg.skapadAv.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* list.item.intyg.skapadAv.enhet.postadress 1..1 string "postadress" "postadress"
* list.item.intyg.skapadAv.enhet.postnummer 1..1 string "postnummer" "postnummer"
* list.item.intyg.skapadAv.enhet.postort 1..1 string "postort" "postort"
* list.item.intyg.skapadAv.enhet.telefonnummer 1..1 string "telefonnummer" "telefonnummer"
* list.item.intyg.skapadAv.enhet.epost 0..1 string "epost" "epost"
* list.item.intyg.skapadAv.enhet.vardgivare 1..1 Base "Vardgivare" "vardgivare"
* list.item.intyg.skapadAv.enhet.vardgivare.vardgivare-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* list.item.intyg.skapadAv.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* list.item.intyg.skapadAv.specialistkompetens 0..* Base "Specialistkompetens" "specialistkompetens"
* list.item.intyg.skapadAv.specialistkompetens.code 1..1 string "code" "code"
* list.item.intyg.skapadAv.specialistkompetens.displayName 0..1 string "displayName" "displayName"
* list.item.intyg.skapadAv.legitimeratYrke 0..* Base "LegitimeratYrkeType" "legitimeratYrke"
* list.item.intyg.relation 0..* Base "Relation" "relation"
* list.item.intyg.relation.typ 1..1 Base "TypAvRelation" "typ"
* list.item.intyg.relation.intygs-id 1..1 Base "IntygId" "intygs-id"
* list.item.intyg.status 0..* Base "IntygsStatus" "status"
* list.item.intyg.status.part 1..1 Base "Part" "part"
* list.item.intyg.status.status 1..1 Base "Statuskod" "status"
* list.item.intyg.status.tidpunkt 1..1 dateTime "tidpunkt" "tidpunkt"
* list.item.intyg.status.tidpunkt only TimeStampType
* list.item.intyg.svar 0..* Base "Svar" "svar"
* list.item.intyg.svar.instans 0..1 integer "instans" "instans"
* list.item.intyg.svar.delsvar 1..* Base "(anonym typ)" "delsvar"
* list.item.intyg.svar.delsvar.id 1..1 string "id" "id (XML-attribut)"
* list.item.intyg.svar.delsvar.id only DelfrageIdType
* list.item.intyg.svar.id 1..1 string "id" "id (XML-attribut)"
* list.item.intyg.svar.id only FrageIdType
* list.item.intyg.underskrift 0..1 Base "UnderskriftType" "underskrift"
* list.item.intyg.underskrift.Signature 1..1 Base "SignatureType" "Signature"
* list.item.intyg.underskrift.Signature.SignedInfo 1..1 Base "SignedInfoType" "SignedInfo"
* list.item.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod 1..1 Base "CanonicalizationMethodType" "CanonicalizationMethod"
* list.item.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod 1..1 Base "SignatureMethodType" "SignatureMethod"
* list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod.HMACOutputLength 0..1 integer "HMACOutputLength" "HMACOutputLength"
* list.item.intyg.underskrift.Signature.SignedInfo.SignatureMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference 1..* Base "ReferenceType" "Reference"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms 0..1 Base "TransformsType" "Transforms"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform 1..* Base "TransformType" "Transform"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.XPath 0..1 string "XPath" "XPath"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod 1..1 Base "DigestMethodType" "DigestMethod"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.DigestValue 1..1 base64Binary "DigestValue" "DigestValue"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.Id 0..1 string "Id" "Id (XML-attribut)"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.URI 0..1 uri "URI" "URI (XML-attribut)"
* list.item.intyg.underskrift.Signature.SignedInfo.Reference.Type 0..1 uri "Type" "Type (XML-attribut)"
* list.item.intyg.underskrift.Signature.SignedInfo.Id 0..1 string "Id" "Id (XML-attribut)"
* list.item.intyg.underskrift.Signature.SignatureValue 1..1 Base "SignatureValueType" "SignatureValue"
* list.item.intyg.underskrift.Signature.SignatureValue.value 1..1 base64Binary "Textinnehåll" "Elementets textinnehåll i XML (simpleContent)."
* list.item.intyg.underskrift.Signature.SignatureValue.Id 0..1 string "Id" "Id (XML-attribut)"
* list.item.intyg.underskrift.Signature.KeyInfo 0..1 Base "KeyInfoType" "KeyInfo"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyName 0..1 string "KeyName" "KeyName"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue 0..1 Base "KeyValueType" "KeyValue"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue 0..1 Base "DSAKeyValueType" "DSAKeyValue"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.P 0..1 base64Binary "P" "P"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Q 0..1 base64Binary "Q" "Q"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.G 0..1 base64Binary "G" "G"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Y 1..1 base64Binary "Y" "Y"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.J 0..1 base64Binary "J" "J"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Seed 0..1 base64Binary "Seed" "Seed"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.PgenCounter 0..1 base64Binary "PgenCounter" "PgenCounter"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue 0..1 Base "RSAKeyValueType" "RSAKeyValue"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Modulus 1..1 base64Binary "Modulus" "Modulus"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Exponent 1..1 base64Binary "Exponent" "Exponent"
* list.item.intyg.underskrift.Signature.KeyInfo.KeyValue obeys listcertificatesforcarewithqa-choice-1
* list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod 0..1 Base "RetrievalMethodType" "RetrievalMethod"
* list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms 0..1 Base "TransformsType" "Transforms"
* list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform 1..* Base "TransformType" "Transform"
* list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.XPath 0..1 string "XPath" "XPath"
* list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.URI 0..1 uri "URI" "URI (XML-attribut)"
* list.item.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Type 0..1 uri "Type" "Type (XML-attribut)"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data 0..1 Base "X509DataType" "X509Data"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial 0..1 Base "X509IssuerSerialType" "X509IssuerSerial"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509IssuerName 1..1 string "X509IssuerName" "X509IssuerName"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509SerialNumber 1..1 integer "X509SerialNumber" "X509SerialNumber"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509SKI 0..1 base64Binary "X509SKI" "X509SKI"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509SubjectName 0..1 string "X509SubjectName" "X509SubjectName"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509Certificate 0..1 base64Binary "X509Certificate" "X509Certificate"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data.X509CRL 0..1 base64Binary "X509CRL" "X509CRL"
* list.item.intyg.underskrift.Signature.KeyInfo.X509Data obeys listcertificatesforcarewithqa-choice-6
* list.item.intyg.underskrift.Signature.KeyInfo.PGPData 0..1 Base "PGPDataType" "PGPData"
* list.item.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyID 0..1 base64Binary "PGPKeyID" "PGPKeyID"
* list.item.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyPacket 0..1 base64Binary "PGPKeyPacket" "PGPKeyPacket"
* list.item.intyg.underskrift.Signature.KeyInfo.PGPData obeys listcertificatesforcarewithqa-choice-11
* list.item.intyg.underskrift.Signature.KeyInfo.SPKIData 0..1 Base "SPKIDataType" "SPKIData"
* list.item.intyg.underskrift.Signature.KeyInfo.SPKIData.SPKISexp 1..1 base64Binary "SPKISexp" "SPKISexp"
* list.item.intyg.underskrift.Signature.KeyInfo.MgmtData 0..1 string "MgmtData" "MgmtData"
* list.item.intyg.underskrift.Signature.KeyInfo.Id 0..1 string "Id" "Id (XML-attribut)"
* list.item.intyg.underskrift.Signature.Object 0..* Base "ObjectType" "Object"
* list.item.intyg.underskrift.Signature.Object.Id 0..1 string "Id" "Id (XML-attribut)"
* list.item.intyg.underskrift.Signature.Object.MimeType 0..1 string "MimeType" "MimeType (XML-attribut)"
* list.item.intyg.underskrift.Signature.Object.Encoding 0..1 uri "Encoding" "Encoding (XML-attribut)"
* list.item.intyg.underskrift.Signature.Id 0..1 string "Id" "Id (XML-attribut)"
* list.item.handelser 1..1 Base "HandelseList" "handelser"
* list.item.handelser.handelse 0..* Base "Handelse" "handelse"
* list.item.handelser.handelse.handelsekod 1..1 Base "Handelsekod" "handelsekod"
* list.item.handelser.handelse.tidpunkt 1..1 dateTime "tidpunkt" "tidpunkt"
* list.item.handelser.handelse.tidpunkt only TimeStampMedMillisekunder
* list.item.handelser.handelse.amne 0..1 Base "Amneskod" "amne"
* list.item.handelser.handelse.sistaDatumForSvar 0..1 date "sistaDatumForSvar" "sistaDatumForSvar"
* list.item.handelser.handelse.sistaDatumForSvar only DateType
* list.item.handelser.handelse.hanteratAv 0..1 Base "HsaId" "hanteratAv"
* list.item.skickadeFragor 1..1 Base "Arenden" "skickadeFragor"
* list.item.skickadeFragor.totalt 1..1 integer "totalt" "totalt"
* list.item.skickadeFragor.ejBesvarade 1..1 integer "ejBesvarade" "ejBesvarade"
* list.item.skickadeFragor.besvarade 1..1 integer "besvarade" "besvarade"
* list.item.skickadeFragor.hanterade 1..1 integer "hanterade" "hanterade"
* list.item.mottagnaFragor 1..1 Base "Arenden" "mottagnaFragor"
* list.item.mottagnaFragor.totalt 1..1 integer "totalt" "totalt"
* list.item.mottagnaFragor.ejBesvarade 1..1 integer "ejBesvarade" "ejBesvarade"
* list.item.mottagnaFragor.besvarade 1..1 integer "besvarade" "besvarade"
* list.item.mottagnaFragor.hanterade 1..1 integer "hanterade" "hanterade"
* list.item.ref 0..1 string "ref" "ref"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListCertificatesForCareWithQAFieldDescriptions

Invariant: listcertificatesforcarewithqa-choice-1
Description: "Exakt ett av DSAKeyValue, RSAKeyValue ska anges (xs:choice i schemat)."
Expression: "DSAKeyValue.exists() xor RSAKeyValue.exists()"
Severity: #error

Invariant: listcertificatesforcarewithqa-choice-6
Description: "Exakt ett av X509IssuerSerial, X509SKI, X509SubjectName, X509Certificate, X509CRL ska anges (xs:choice i schemat)."
Expression: "iif(X509IssuerSerial.exists(), 1, 0) + iif(X509SKI.exists(), 1, 0) + iif(X509SubjectName.exists(), 1, 0) + iif(X509Certificate.exists(), 1, 0) + iif(X509CRL.exists(), 1, 0) = 1"
Severity: #error

Invariant: listcertificatesforcarewithqa-choice-11
Description: "Exakt ett av PGPKeyID, PGPKeyPacket ska anges (xs:choice i schemat)."
Expression: "PGPKeyID.exists() xor PGPKeyPacket.exists()"
Severity: #error

Logical: ListCertificatesForCareWithQARequest
Id: listcertificatesforcarewithqa-request
Title: "ListCertificatesForCareWithQA — Request"
Description: "Logisk modell för requestparametrar i ListCertificatesForCareWithQA."
Characteristics: #can-be-target

* ^version = "3.3"
* person-id 1..1 Base "PersonId" "person-id"
* enhets-id 0..* Base "HsaId" "enhets-id"
* vardgivar-id 0..1 Base "HsaId" "vardgivar-id"
* fromTidpunkt 0..1 dateTime "fromTidpunkt" "fromTidpunkt"
* fromTidpunkt only TimeStampType
* tomTidpunkt 0..1 dateTime "tomTidpunkt" "tomTidpunkt"
* tomTidpunkt only TimeStampType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListCertificatesForCareWithQARequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys listcertificatesforcarewithqa-request-enhet-not-vardgivare

Invariant: listcertificatesforcarewithqa-request-enhet-not-vardgivare
Description: "enhetsId och vardgivareId får inte anges tillsammans."
Expression: "(enhetsId.exists() and vardgivareId.exists()).not()"
Severity: #error
