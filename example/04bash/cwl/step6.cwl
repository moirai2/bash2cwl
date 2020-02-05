cwlVersion: v1.0
class: CommandLineTool
baseCommand: grep
inputs:
  input1:
    type: string
    inputBinding:
      position: 1
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
