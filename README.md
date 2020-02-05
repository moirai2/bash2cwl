# bash2cwl

Convert a simple bash script into common workflow language workflow.

## download

Type a command below in a prompt window (DIR=directory to install).

```
  git clone https://github.com/moirai2/bash2cwl.git DIR
```
OR click "Clone of download" and click.
Go to the downloaded directory.

## usage

### example1

```
perl bash2cwl.pl "echo 'Hello World'>output.txt"
```

Above command creates these files:
- [bash.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/01helloworld/bash.cwl)
- [bash.yml](https://github.com/moirai2/bash2cwl/blob/master/example/01helloworld/bash.yml)
- [cwl/step1.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/01helloworld/cwl/step1.cwl)

```
cwltool bash.cwl bash.yml
```

Above command runs cwl workflow and creates this file:
- [output.txt](https://github.com/moirai2/bash2cwl/blob/master/example/01helloworld/output.txt)

### example2

```
perl bash2cwl.pl "echo 'Hello World'| grep 'Hello'|wc -l > wcount.txt"
```

Above command creates these files:
- [bash.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/bash.cwl)
- [bash.yml](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/bash.yml)
- [cwl/step1.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/cwl/step1.cwl)
- [cwl/step2.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/cwl/step2.cwl)
- [cwl/step3.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/cwl/step3.cwl)

```
cwltool bash.cwl bash.yml
```

Above command runs cwl workflow and creates these files:
- [stdout1.txt](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/stdout1.txt)
- [stdout2.txt](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/stdout2.txt)
- [wcount.txt](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/wcount.txt)

### example3

```
perl bash2cwl.pl "string='Hello World'" "echo $string|wc>count.txt"
```

Above command creates these files:
- [bash.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/03variable/bash.cwl)
- [bash.yml](https://github.com/moirai2/bash2cwl/blob/master/example/03variable/bash.yml)
- [cwl/step1.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/03variable/cwl/step1.cwl)
- [cwl/step2.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/03variable/cwl/step2.cwl)

```
cwltool bash.cwl bash.yml
```

Above command runs cwl workflow and creates these files:
- [stdout1.txt](https://github.com/moirai2/bash2cwl/blob/master/example/03variable/stdout1.txt)
- [count.txt](https://github.com/moirai2/bash2cwl/blob/master/example/03variable/count.txt)

## Licence

GNU General Public License v3.0

## Author

akira.hasegawa@riken.jp
