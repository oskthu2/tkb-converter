// Genererad från TKB clinicalprocess:activity:request v2.2
// Invarianter som delas av ProcessRequest och ProcessRequestOutcome
// Genererad: 2026-09-26

Invariant: activity-request-condition-code-or-text
Description: "Kliniskt tillstånd: ange antingen text eller kod, inte båda (schematron Verify condition)"
Expression: "(conditionText.exists() and conditionCode.exists()).not()"
Severity: #error

Invariant: activity-request-activity-code-or-text
Description: "Åtgärd: ange antingen text eller kod, inte båda (schematron Verify desiredActivity)"
Expression: "(activityText.exists() and activityCode.exists()).not()"
Severity: #error

Invariant: activity-request-commitmenttype-chapter
Description: "commitmentTypeChapter är obligatoriskt då commitmentType = 1 (schematron Verify paymentCommitment)"
Expression: "commitmentType.coding.where(code = '1').exists() implies commitmentTypeChapter.exists()"
Severity: #error
