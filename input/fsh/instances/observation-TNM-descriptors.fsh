Instance: observation-TNM-descriptors
InstanceOf: USPathologyObservation
Title: "TNM Descriptors Observation example"
Description: "This is an example of a TNM descriptors observation."
Usage: #example
* identifier.system = "https://example.org"
* identifier.value = "Breast.Ca.Res.129_3.002.011.RC1_sdcFDF3d1c4fe4-09c3-4a7e-877f-9ddb160da6dbver1.20880.100004300"
* status = #final
* category[+] = $ObservationCategoryCodes#survey "Survey"
* code = $example#20880.100004300 "TNM Descriptors"
* subject = Reference(patient-OakleyAnnie)
* effectiveDateTime = "2024-12-05"
* performer = Reference(practitioner-oncologist)
* component.code = $example#20890.100004300 "m (multiple primary tumors)"