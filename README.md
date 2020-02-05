# bash2cwl

Convert a simple bash script into common workflow language workflow.

## download

Type a command in a prompt window (DIR=directory to install).

> git clone https://github.com/moirai2/bash2cwl.git DIR

OR click "Clone of download" and click.

## usage

> perl bash2cwl.pl "echo 'Hello World'>output.txt"

* Above command creates these files:
  - bash.cwl
  - bash.yml
  - cwl/step1.cwl
* bash.cwl
>  cwlVersion: v1.0
>  class: Workflow
>  inputs:
>    param1:
>      type: string
>    param2:
>      type: string
>  outputs:
>    result1:
>      type: File
>      outputSource: step1/output1
>  steps:
>    step1:
>      run: cwl/step1.cwl
>      in:
>        input1: param1
>        input2: param2
>      out: [output1]

## Author

akira.hasegawa@riken.jp
