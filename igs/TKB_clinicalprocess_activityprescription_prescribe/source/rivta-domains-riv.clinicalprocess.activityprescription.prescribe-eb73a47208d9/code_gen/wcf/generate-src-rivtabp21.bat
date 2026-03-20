chcp 1252

SET SCHEMADIR="..\..\schemas\interactions"
SET XSDDIR="..\..\schemas\core_components"
rem SET SCHEMADIR="C:\Users\plus\Google Drive\NOD Tj?nstekontrakt v2\schemas\interactions"
rem SET XSDDIR="C:\Users\plus\Google Drive\NOD Tj?nstekontrakt v2\schemas\core_components"
rem SET SCHEMADIR="C:\BACKED\HCT_VSS\INERA\NOD\wcf\schemas\interactions"
rem SET XSDDIR="C:\BACKED\HCT_VSS\INERA\NOD\wcf\schemas\core_components"

SET W0=%SCHEMADIR%\AttachMedicationDispenseAuthorizationInteraction\*.wsdl
SET X0=%SCHEMADIR%\AttachMedicationDispenseAuthorizationInteraction\*.xsd

SET W1=%SCHEMADIR%\CheckMedicationListVersionInteraction\*.wsdl
SET X1=%SCHEMADIR%\CheckMedicationListVersionInteraction\*.xsd

SET W2=%SCHEMADIR%\DiscontinueMedicationInteraction\*.wsdl
SET X2=%SCHEMADIR%\DiscontinueMedicationInteraction\*.xsd

SET W3=%SCHEMADIR%\GetDispensedDrugsInteraction\*.wsdl
SET X3=%SCHEMADIR%\GetDispensedDrugsInteraction\*.xsd

SET W4=%SCHEMADIR%\GetMedicationDispenseAuthorizationsInteraction\*.wsdl
SET X4=%SCHEMADIR%\GetMedicationDispenseAuthorizationsInteraction\*.xsd

SET W5=%SCHEMADIR%\GetMedicationPrescriptionsInteraction\*.wsdl
SET X5=%SCHEMADIR%\GetMedicationPrescriptionsInteraction\*.xsd

SET W6=%SCHEMADIR%\RegisterMedicationDispenseAuthorizationInteraction\*.wsdl
SET X6=%SCHEMADIR%\RegisterMedicationDispenseAuthorizationInteraction\*.xsd

SET W7=%SCHEMADIR%\RevokeDispensedDrugsConsentInteraction\*.wsdl
SET X7=%SCHEMADIR%\RevokeDispensedDrugsConsentInteraction\*.xsd

SET W8=%SCHEMADIR%\RegisterMedicationPrescriptionInteraction\*.wsdl
SET X8=%SCHEMADIR%\RegisterMedicationPrescriptionInteraction\*.xsd

SET W9=%SCHEMADIR%\SetMedicationListReviewedInteraction\*.wsdl
SET X9=%SCHEMADIR%\SetMedicationListReviewedInteraction\*.xsd

SET W11=%SCHEMADIR%\GetDispensedDrugsConsentInteraction\*.wsdl
SET X11=%SCHEMADIR%\GetDispensedDrugsConsentInteraction\*.xsd

SET W10=%SCHEMADIR%\SetMedicationListReviewNeededInteraction\*.wsdl
SET X10=%SCHEMADIR%\SetMedicationListReviewNeededInteraction\*.xsd

SET W12=%SCHEMADIR%\RegisterDispensedDrugsConsentInteraction\*.wsdl
SET X12=%SCHEMADIR%\RegisterDispensedDrugsConsentInteraction\*.xsd

SET W13=%SCHEMADIR%\RegisterMedicationStatementInteraction\*.wsdl
SET X13=%SCHEMADIR%\RegisterMedicationStatementInteraction\*.xsd

SET W14=%SCHEMADIR%\RevokeMedicationDispenseAuthorizationInteraction\*.wsdl
SET X14=%SCHEMADIR%\RevokeMedicationDispenseAuthorizationInteraction\*.xsd


SET XCORE=%XSDDIR%\*.xsd %XSDDIR%\generated\generated_xsd_nod\*.xsd %XSDDIR%\generated\generated_xsd_dosage\*.xsd

SET SCHEMAS=%XCORE% %W0% %X0% %W1% %X1% %W2% %X2%  %W3% %X3%  %W4% %X4%  %W5% %X5%  %W6% %X6%  %W7% %X7%  %W8% %X8%  %W9% %X9%  %W10% %X10%  %W11% %X11%  %W12% %X12%  %W13% %X13% %W14% %X14%

SET OUTFILE=/out:generated-src\nod.cs
SET APPCONFIG=/config:generated-src\app.config
SET NAMESPACE=/namespace:*,clinicalprocess_activityprescription_prescribe_2_0
SET SVCUTIL="svcutil.exe"

rem chcp 850
%SVCUTIL% /language:cs %OUTFILE% %APPCONFIG% %NAMESPACE% %SCHEMAS%
pause


