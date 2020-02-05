cwlVersion: v1.0
class: CommandLineTool
baseCommand: wc
inputs:
  input1:
    type: boolean
    inputBinding:
      position: 1
      prefix: -l
  input2:
    type: File
    streamable: true
  input3:
    type: string
outputs:
  output1:
    type: stdout
stdin: $(inputs.input2.path)
stdout: $(inputs.input3)
