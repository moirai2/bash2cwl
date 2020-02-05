cwlVersion: v1.0
class: Workflow
inputs:
  param1:
    type: string
  param2:
    type: string
  param3:
    type: string
  param4:
    type: string
  param5:
    type: boolean
  param6:
    type: string
outputs:
  result1:
    type: File
    outputSource: step1/output1
  result2:
    type: File
    outputSource: step2/output1
  result3:
    type: File
    outputSource: step3/output1
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
      input1: param3
      input2: step1/output1
      input3: param4
    out: [output1]
  step3:
    run: cwl/step3.cwl
    in:
      input1: param5
      input2: step2/output1
      input3: param6
    out: [output1]
