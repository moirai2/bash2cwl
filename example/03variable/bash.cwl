cwlVersion: v1.0
class: Workflow
inputs:
  param1:
    type: string
  param2:
    type: string
  param3:
    type: string
outputs:
  result1:
    type: File
    outputSource: step1/output1
  result2:
    type: File
    outputSource: step2/output1
steps:
  step1:
    run: cwl/step1.cwl
    in:
      input1: param1
      input2: param2
    out: [output1]
  step2:
    run: cwl/step2.cwl
    in:
      input1: step1/output1
      input2: param3
    out: [output1]
