![bash_unit CI](https://github.com/jake01756/power-mgmt/workflows/bash_unit%20CI/badge.svg)
![Shellcheck CI](https://github.com/jake01756/power-mgmt/workflows/Shellcheck%20CI/badge.svg)
![GH Language](https://img.shields.io/github/languages/top/jake01756/power-mgmt)
![GH stars](https://img.shields.io/github/stars/jake01756/power-mgmt)
![GH tag](https://img.shields.io/github/v/tag/jake01756/power-mgmt)
![GH License](https://img.shields.io/github/license/jake01756/power-mgmt)
[![basher install](https://img.shields.io/badge/basher-install-white?logo=gnu-bash&style=flat)](https://basher.gitparade.com/package/)

# power-mgmt

This is my script power-mgmt

## 🔥 Usage

```
Program: power-mgmt 0.0.1 by jake@jakethomas.de
Updated: 2022-06-24
Description: This is my script power-mgmt
Usage: normal.sh [-h] [-q] [-v] [-f] [-l <log_dir>] [-t <tmp_dir>] <action> <input?>
Flags, options and parameters:
    -h|--help        : [flag] show usage [default: off]
    -q|--quiet       : [flag] no output [default: off]
    -v|--verbose     : [flag] output more [default: off]
    -f|--force       : [flag] do not ask for confirmation (always yes) [default: off]
    -l|--log_dir <?> : [option] folder for log files   [default: /Users/pforret/log/normal]
    -t|--tmp_dir <?> : [option] folder for temp files  [default: .tmp]
    <action>         : [parameter] action to perform: analyze/convert
    <input>          : [parameter] input file/text (optional)
```

## ⚡️ Examples

```bash
> power-mgmt .
# start PhpStorm with current folder as project
```

## 🚀 Installation

with [basher](https://github.com/basherpm/basher)

	$ basher install jake01756/power-mgmt

or with `git`

	$ git clone https://github.com/jake01756/power-mgmt.git
	$ cd power-mgmt

## 📝 Acknowledgements

* script created with [bashew](https://github.com/pforret/bashew)

&copy; 2022 Jake Thomas
