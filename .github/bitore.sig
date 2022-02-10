ci:Repository_Dispatch
# GLOW4:
# BEGIN:
# starts:
# ;Build;:/Script: build_script
build_sctipt: Request
BEGIN::/BEGIN:

On::Runs:

Runs:Run:

Run-on:

-on:modules.dep(5) manual page
depmod(8) manual page
3.4. Listing currently loaded kernel modules
The following procedure describes how to view the currently loaded kernel modules.

Prerequisites: install

package-with: dns.python.javascript

installing...
...,
...,
...Done,

py.read ~V install 

Procedure

To list all currently loaded kernel modules build-and-

$ lsmod

Module                  Size  Used by,

fuse                  126976  3,

uinput                 20480  1deployee-Windoed-framework-on-worksfloew_call:distpach::Runs:on:Run:

xt_CHECKSUM            16384  1
ipt_MASQUERADE         16384  1
xt_conntrack           16384  1
ipt_REJECT             16384  1
nft_counter            16384  16
nf_nat_tftp            16384  0
nf_conntrack_tftp      16384  1 nf_nat_tftp
tun                    49152  1
bridge                192512  0
stp                    16384  1 bridge
llc                    16384  2 bridge,stp
nf_tables_set          32768  5
nft_fib_inet           16384  1
…​
In the example above:

The first column provides the names of currently loaded modules.
The second column displays the amount of memory per module in kilobytes.
The last column shows the number, and optionally the names of modules that are dependent on a particular module.
Additional resources

/usr/share/doc/kmod/README file
lsmod(8) manual page
3.5. Listing all installed kernels
The following procedure describes how to use the grubby utility to list all installed kernels on your system.

Prerequisites

You have root permissions.
Procedure

To list all installed kernels, execute:

# grubby --info=ALL | grep ^kernel

kernel="/boot/vmlinuz-4.18.0-305.10.2.el8_4.x86_64"
kernel="/boot/vmlinuz-4.18.0-240.el8.x86_64"
kernel="/boot/vmlinuz-0-rescue-41eb2e172d7244698abda79a51778f1b"
The output displays path to all the installed kernels, and displays also their respective versions.

Additional resources

What grubby is
3.6. Setting a kernel as default
The following procedure describes how to set a specific kernel as default using the grubby command-line tool and GRUB2.

Procedure

Setting the kernel as default, using the grubby tool
Execute the following command to set the kernel as default using the grubby tool:
# grubby --set-default $kernel_path

The command uses a machine ID without the .conf suffix as an argument.

NOTE
The machine ID is located in the /boot/loader/entries/ directory.

Setting the kernel as default, using the id argument
List the boot entries using the id argument and then set an intended kernel as default:
# grubby --info ALL | grep id
# grubby --set-default /boot/vmlinuz-<version>.<architecture>
NOTE
To list the boot entries using the title 

echo: hello-🌍!-🐛-#-fix/731/,

"name": "my-electron-app",

  "version": "1.0.0",

  "description": "Hello World!",

const: "token"''

token: "((c)(r))"''

[Volume].]: "[12753750].00]"''

ITEM_ID: "BITORE_34173"''

"name": "my-electron-app",

  "version": "0.0.0",

  "description": "Hello World!'@https://git.io/codeql-language-support# For most projects, this workflow file will not need changing; you simply need

- # to commit it to your repository.

- # CodeQL languages.

#

name: "CodeQL"

'#' This workflow uses actions that are not certified by GitHub.''

'#' They are provided by a third-party and are governed by''

'#' separate terms of service, privacy policy, and support''

'#' documentation.

'#' <li>zachryiixixiiwood@gmail.com<li>

'#' This workflow will install Deno and run tests across stable and nightly builds on Windows, Ubuntu and macOS.''

'#' For more information see: https://github.com/denolib/setup-deno''

# 'name:' Deno''

'on:''

  'push:''

    'branches: '[mainbranch']''

  'pull_request:''

    'branches: '[trunk']''

'jobs:''

  'test:''

    'runs-on:' Python.js''

''#' token:' '$'{'{'('(c')'(r')')'}'}''

''#' runs a test on Ubuntu', Windows', and', macOS''

    'strategy:':

      'matrix:''

        'deno:' ["v1.x", "nightly"]''

        'os:' '[macOS'-latest', windows-latest', ubuntu-latest']''

    'steps:''

      '- name: Setup repo''

        'uses: actions/checkout@v1''

      '- name: Setup Deno''

        'uses: Deno''

'Package:''

        'with:''

          'deno-version:' '$'{'{linux/cake/kite'}'}''

'#'tests across multiple Deno versions''

      '- name: Cache Dependencies''

        'run: deno cache deps.ts''

      '- name: Run Tests''

        'run: deno test''

'::Build:' sevendre''

on:

  push:

    branches: [ master ]

  pull_request:

    # The branches below must be a subset of the branches above

    branches: [ master ]

  schedule:

    - cron: '29 8 * * 5'

jobs:

  analyze:

    name: Analyze

    runs-on: ubuntu-latest

    permissions:

      actions: read

      contents: read

      security-events: write

    strategy:

        language: [ 'javascript' ]

        # CodeQL supports [ 'cpp', 'csharp', 'go', 'java', 'javascript', 'python', 'ruby' ]

        # Learn more about CodeQL language support at https://git.io/codeql-language-support

    steps:

    - name: Checkout repository

      uses: actions/checkout@v2

    # Initializes the CodeQL tools for scanning.

    - name: Initialize CodeQL

      uses: github/codeql-action/init@v1

      with:

        languages: ${{ matrix.language }}

        # If you wish to specify custom queries, you can do so here or in a config file.

        # By default, queries listed here will override any specified in a config file.

        # Prefix the list here with "+" to use these queries and those in the config file.

        # queries: ./path/to/local/query, your-org/your-repo/queries@main

    # Autobuild attempts to build any compiled languages  (C/C++, C#, or Java).

    # If this step fails, then you should remove it and run the build manually (see below)

    - name: Autobuild

      uses: github/codeql-action/autobuild@v1

    # ℹ️ Command-line programs to run using the OS shell.

    # 📚 https://git.io/JvXDl

    # ✏️ If the Autobuild fails above, remove it and uncomment the following three lines

    #    and modify them (or add more) to build your code if your project

    #    uses a compiled language

    #- run: |

    #   make bootstrap

    #   make release

    - name: Perform CodeQL Analysis

      uses: github/codeql-action/analyze@v1

version:1:on:

ownership:Zachry T WooD III:on:

name:docs-internal:on:

  long_name:GitHub Help Docs:on:

  kind:heroku:on:

  repo:https://github.com/github/docs-internal:on:

  team:github/docs-engineering:on:

  maintainer:iixixi:on:

  exec_sponsor:iixixi:on:

  product_manager:iixixi:on:

  mention:github/docs-engineering:on:

  qos:critical:on:

  dependencies:[((c))((r))]:©®™:patent:on:

  sev1:on:

    pagerduty:https://github.pagerduty.com/escalation_policies#PN57VQ1:on:

    tta:0min:on:

  sev2:on:

    issue:https://github.com/github/docs-internal/issues:on:

    tta:5:business days:on:

  sev3:on:

    slack:docs:engineering:on:

   Return:run

© 2021 GitHub, Inc.

Terms

Privacy

Security

Status

Docs

Contact GitHub-module.exports{.env= 12753750.00BITORE_34173

  block: {

    "hash": "00000000760ebeb5feb4682db478d29b31332c0bcec46ee487d5e2733ad1ff10",

    "confirmations": 104856,

    "strippedsize": 18132,

    "size": 18132,

    "weight": 72528,

    "height": 322000,

    "version": 2,

    "versionHex": "00000002",

    "merkleroot": "52649d78c1072266dd97f7447d7aab894d47d3a375e7881ade4ed3c0c47cb4cc",

    "tx": [

      {

        "txid": "12e9115ddd566c3c08c9b33d36b7805a4e37b5538eb5457ec7c3be316b244b1c",

        "hash": "12e9115ddd566c3c08c9b33d36b7805a4e37b5538eb5457ec7c3be316b244b1c",

        "version": 1,

        "size": 109,

        "vsize": 109,

        "weight": 436,

        "locktime": 0,

        "vin": [

          {

            "coinbase": "03d0e904020204062f503253482f",

            "sequence": 4294967295

          }

        ],

        "vout": [

          {

            "value": 25.0039411,

            "n": 0,

            "scriptPubKey": {

              "asm": "03f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688 OP_CHECKSIG",

              "hex": "2103f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688ac",

              "type": "pubkey"

            }

          }

        ],

        "hex": "01000000010000000000000000000000000000000000000000000000000000000000000000ffffffff0e03d0e904020204062f503253482fffffffff017efc089500000000232103f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688ac00000000"

      },

      {BEGIN:

On::Runs:

Runs:Run:

Run-on:

-on:

Echo: hello-🌍!-🐛-#-fix/731/,

"name": "my-electron-app",

  "version": "1.0.0",

  "description": "Hello World!",

const: "token"''

token: "((c)(r))"''

[Volume].]: "[12753750].00]"''

ITEM_ID: "BITORE_34173"''

"name": "my-electron-app",

  "version": "0.0.0",

  "description": "Hello World!'@https://git.io/codeql-language-support# For most projects, this workflow file will not need changing; you simply need

- # to commit it to your repository.

- # CodeQL languages.

#

name: "CodeQL"

'#' This workflow uses actions that are not certified by GitHub.''

'#' They are provided by a third-party and are governed by''

'#' separate terms of service, privacy policy, and support''

'#' documentation.

'#' <li>zachryiixixiiwood@gmail.com<li>

'#' This workflow will install Deno and run tests across stable and nightly builds on Windows, Ubuntu and macOS.''

'#' For more information see: https://github.com/denolib/setup-deno''

# 'name:' Deno''

'on:''

  'push:''

    'branches: '[mainbranch']''

  'pull_request:''

    'branches: '[trunk']''

'jobs:''

  'test:''

    'runs-on:' Python.js''

''#' token:' '$'{'{'('(c')'(r')')'}'}''

''#' runs a test on Ubuntu', Windows', and', macOS''

    'strategy:':

      'matrix:''

        'deno:' ["v1.x", "nightly"]''

        'os:' '[macOS'-latest', windows-latest', ubuntu-latest']''

    'steps:''

      '- name: Setup repo''

        'uses: actions/checkout@v1''

      '- name: Setup Deno''

        'uses: Deno''

'Package:''

        'with:''

          'deno-version:' '$'{'{linux/cake/kite'}'}''

'#'tests across multiple Deno versions''

      '- name: Cache Dependencies''

        'run: deno cache deps.ts''

      '- name: Run Tests''

        'run: deno test''

'::Build:' sevendre''

on:

  push:

    branches: [ master ]

  pull_request:

    # The branches below must be a subset of the branches above

    branches: [ master ]

  schedule:

    - cron: '29 8 * * 5'

jobs:

  analyze:

    name: Analyze

    runs-on: ubuntu-latest

    permissions:

      actions: read

      contents: read

      security-events: write

    strategy:

        language: [ 'javascript' ]

        # CodeQL supports [ 'cpp', 'csharp', 'go', 'java', 'javascript', 'python', 'ruby' ]

        # Learn more about CodeQL language support at https://git.io/codeql-language-support

    steps:

    - name: Checkout repository

      uses: actions/checkout@v2

    # Initializes the CodeQL tools for scanning.

    - name: Initialize CodeQL

      uses: github/codeql-action/init@v1

      with:

        languages: ${{ matrix.language }}

        # If you wish to specify custom queries, you can do so here or in a config file.

        # By default, queries listed here will override any specified in a config file.

        # Prefix the list here with "+" to use these queries and those in the config file.

        # queries: ./path/to/local/query, your-org/your-repo/queries@main

    # Autobuild attempts to build any compiled languages  (C/C++, C#, or Java).

    # If this step fails, then you should remove it and run the build manually (see below)

    - name: Autobuild

      uses: github/codeql-action/autobuild@v1

    # ℹ️ Command-line programs to run using the OS shell.

    # 📚 https://git.io/JvXDl

    # ✏️ If the Autobuild fails above, remove it and uncomment the following three lines

    #    and modify them (or add more) to build your code if your project

    #    uses a compiled language

    #- run: |

    #   make bootstrap

    #   make release

    - name: Perform CodeQL Analysis

      uses: github/codeql-action/analyze@v1

version:1:on:

ownership:Zachry T WooD III:on:

name:docs-internal:on:

  long_name:GitHub Help Docs:on:

  kind:heroku:on:

  repo:https://github.com/github/docs-internal:on:

  team:github/docs-engineering:on:

  maintainer:iixixi:on:

  exec_sponsor:iixixi:on:

  product_manager:iixixi:on:

  mention:github/docs-engineering:on:

  qos:critical:on:

  dependencies:[((c))((r))]:©®™:patent:on:

  sev1:on:

    pagerduty:https://github.pagerduty.com/escalation_policies#PN57VQ1:on:

    tta:0min:on:

  sev2:on:

    issue:https://github.com/github/docs-internal/issues:on:

    tta:5:business days:on:

  sev3:on:

    slack:docs:engineering:on:

   Return:run

© 2021 GitHub, Inc.

Terms

Privacy

Security

Status

Docs

Contact GitHub-module.exports{.env= 12753750.00BITORE_34173

  block: {

    "hash": "00000000760ebeb5feb4682db478d29b31332c0bcec46ee487d5e2733ad1ff10",

    "confirmations": 104856,

    "strippedsize": 18132,

    "size": 18132,

    "weight": 72528,

    "height": 322000,

    "version": 2,

    "versionHex": "00000002",

    "merkleroot": "52649d78c1072266dd97f7447d7aab894d47d3a375e7881ade4ed3c0c47cb4cc",

    "tx": [

      {

        "txid": "12e9115ddd566c3c08c9b33d36b7805a4e37b5538eb5457ec7c3be316b244b1c",

        "hash": "12e9115ddd566c3c08c9b33d36b7805a4e37b5538eb5457ec7c3be316b244b1c",

        "version": 1,

        "size": 109,

        "vsize": 109,

        "weight": 436,

        "locktime": 0,

        "vin": [

          {

            "coinbase": "03d0e904020204062f503253482f",

            "sequence": 4294967295

          }

        ],

        "vout": [

          {

            "value": 25.0039411,

            "n": 0,

            "scriptPubKey": {

              "asm": "03f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688 OP_CHECKSIG",

              "hex": "2103f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688ac",

              "type": "pubkey"

            }

          }

        ],

        "hex": "01000000010000000000000000000000000000000000000000000000000000000000000000ffffffff0e03d0e904020204062f503253482fffffffff017efc089500000000232103f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688ac00000000"

      },

      {starts::/Run::/Runs::/Build::/Script::/"build_script":,

"build_script": "construction":,

"construction": "Automates":,

"Automates": "Automate":,

"Automate": "meta charset= new":,

"meta charset=": "#fedtag_form":,

#{2000}_000000500000

#{31000}_91000022_Securities_and_Exchange_Commission

#{3400}_CIK0001851162_Zachry_Tyler_Wood

#{4200}_CIK0001851162_Zachry_Tyler_Wood

#{4320}_CIK0001851162_Ribbit_Capital_VII,_L.P._364_UNIVERSITY_Avenue_PALO_ALTO_CALIFORNIA,_94301

#{5000}_152307768324

#{6000}_CIK9999999998

﻿BEGIN:

On::Runs:

Runs:Run:

Run-on:

-on:

Echo: hello-🌍!-🐛-#-fix/731/,

"name": "my-electron-app",

  "version": "1.0.0",

  "description": "Hello World!",

const: "token"''

token: "((c)(r))"''

[Volume].]: "[12753750].00]"''

ITEM_ID: "BITORE_34173"''

"name": "my-electron-app",

  "version": "0.0.0",

  "description": "Hello World!'@https://git.io/codeql-language-support# For most projects, this workflow file will not need changing; you simply need

- # to commit it to your repository.

- # CodeQL languages.

#

name: "CodeQL"

'#' This workflow uses actions that are not certified by GitHub.''

'#' They are provided by a third-party and are governed by''

'#' separate terms of service, privacy policy, and support''

'#' documentation.

'#' <li>zachryiixixiiwood@gmail.com<li>

'#' This workflow will install Deno and run tests across stable and nightly builds on Windows, Ubuntu and macOS.''

'#' For more information see: https://github.com/denolib/setup-deno''

# 'name:' Deno''

'on:''

  'push:''

    'branches: '[mainbranch']''

  'pull_request:''

    'branches: '[trunk']''

'jobs:''

  'test:''

    'runs-on:' Python.js''

''#' token:' '$'{'{'('(c')'(r')')'}'}''

''#' runs a test on Ubuntu', Windows', and', macOS''

    'strategy:':

      'matrix:''

        'deno:' ["v1.x", "nightly"]''

        'os:' '[macOS'-latest', windows-latest', ubuntu-latest']''

    'steps:''

      '- name: Setup repo''

        'uses: actions/checkout@v1''

      '- name: Setup Deno''

        'uses: Deno''

'Package:''

        'with:''

          'deno-version:' '$'{'{linux/cake/kite'}'}''

'#'tests across multiple Deno versions''

      '- name: Cache Dependencies''

        'run: deno cache deps.ts''

      '- name: Run Tests''

        'run: deno test''

'::Build:' sevendre''

on:

  push:

    branches: [ master ]

  pull_request:

    # The branches below must be a subset of the branches above

    branches: [ master ]

  schedule:

    - cron: '29 8 * * 5'

jobs:

  analyze:

    name: Analyze

    runs-on: ubuntu-latest

    permissions:

      actions: read

      contents: read

      security-events: write

    strategy:

        language: [ 'javascript' ]

        # CodeQL supports [ 'cpp', 'csharp', 'go', 'java', 'javascript', 'python', 'ruby' ]

        # Learn more about CodeQL language support at https://git.io/codeql-language-support

    steps:

    - name: Checkout repository

      uses: actions/checkout@v2

    # Initializes the CodeQL tools for scanning.

    - name: Initialize CodeQL

      uses: github/codeql-action/init@v1

      with:

        languages: ${{ matrix.language }}

        # If you wish to specify custom queries, you can do so here or in a config file.

        # By default, queries listed here will override any specified in a config file.

        # Prefix the list here with "+" to use these queries and those in the config file.

        # queries: ./path/to/local/query, your-org/your-repo/queries@main

    # Autobuild attempts to build any compiled languages  (C/C++, C#, or Java).

    # If this step fails, then you should remove it and run the build manually (see below)

    - name: Autobuild

      uses: github/codeql-action/autobuild@v1

    # ℹ️ Command-line programs to run using the OS shell.

    # 📚 https://git.io/JvXDl

    # ✏️ If the Autobuild fails above, remove it and uncomment the following three lines

    #    and modify them (or add more) to build your code if your project

    #    uses a compiled language

    #- run: |

    #   make bootstrap

    #   make release

    - name: Perform CodeQL Analysis

      uses: github/codeql-action/analyze@v1

version:1:on:

ownership:Zachry T WooD III:on:

name:docs-internal:on:

  long_name:GitHub Help Docs:on:

  kind:heroku:on:

  repo:https://github.com/github/docs-internal:on:

  team:github/docs-engineering:on:

  maintainer:iixixi:on:

  exec_sponsor:iixixi:on:

  product_manager:iixixi:on:

  mention:github/docs-engineering:on:

  qos:critical:on:

  dependencies:[((c))((r))]:©®™:patent:on:

  sev1:on:

    pagerduty:https://github.pagerduty.com/escalation_policies#PN57VQ1:on:

    tta:0min:on:

  sev2:on:

    issue:https://github.com/github/docs-internal/issues:on:

    tta:5:business days:on:

  sev3:on:

    slack:docs:engineering:on:

   Return:run

© 2021 GitHub, Inc.

Terms

Privacy

Security

Status

Docs

Contact GitHub-module.exports{.env= 12753750.00BITORE_34173

  block: {

    "hash": "00000000760ebeb5feb4682db478d29b31332c0bcec46ee487d5e2733ad1ff10",

    "confirmations": 104856,

    "strippedsize": 18132,

    "size": 18132,

    "weight": 72528,

    "height": 322000,

    "version": 2,

    "versionHex": "00000002",

    "merkleroot": "52649d78c1072266dd97f7447d7aab894d47d3a375e7881ade4ed3c0c47cb4cc",

    "tx": [

      {

        "txid": "12e9115ddd566c3c08c9b33d36b7805a4e37b5538eb5457ec7c3be316b244b1c",

        "hash": "12e9115ddd566c3c08c9b33d36b7805a4e37b5538eb5457ec7c3be316b244b1c",

        "version": 1,

        "size": 109,

        "vsize": 109,

        "weight": 436,

        "locktime": 0,

        "vin": [

          {

            "coinbase": "03d0e904020204062f503253482f",

            "sequence": 4294967295

          }

        ],

        "vout": [

          {

            "value": 25.0039411,

            "n": 0,

            "scriptPubKey": {

              "asm": "03f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688 OP_CHECKSIG",

              "hex": "2103f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688ac",

              "type": "pubkey"

            }

          }

        ],

        "hex": "01000000010000000000000000000000000000000000000000000000000000000000000000ffffffff0e03d0e904020204062f503253482fffffffff017efc089500000000232103f177590b3feea56e36e31688ccf847fd7348eff43aaf563e5017fdb2a96f2688ac00000000"

      },

      {starts::/Run::/Runs::/Build::/Script::/"build_script":,

"build_script": "construction":,

"construction": "Automates":,

"Automates": "Automate":,

"Automate": "meta charset= new":,

"meta charset=": "#fedtag_form":,

#{2000}_000000500000

#{31000}_91000022_Securities_and_Exchange_Commission

#{3400}_CIK0001851162_Zachry_Tyler_Wood

#{4200}_CIK0001851162_Zachry_Tyler_Wood

#{4320}_CIK0001851162_Ribbit_Capital_VII,_L.P._364_UNIVERSITY_Avenue_PALO_ALTO_CALIFORNIA,_94301

#{5000}_152307768324

#{6000}_CIK9999999998

﻿https://github.com/kubernetes-sigs/kustomize/releases/download/v3.1.0/kustomize_3.1.0_linux_amd64{ "Script : dependencies immediately below tbelowthis command_line" }
name: ci

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ mainbranch ]
  pull_request: use
    branches: [ trunk ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2

      # Runs a single command using the runners shell
      - name: Run a one-line script
        run: echo Hello, world!

      # Runs a set of commands using the runners shell
      - name: Run a multi-line script
        run: |
          echo Add other actions to build,
          echo test, and deploy your project.
Skip to content

/
moejojojojojo2
Public
Code
Pull requests
Actions
Projects
Security
Insights
Settings
Masterbranch 1 1 #16
Resolving conflicts between Masterbranch-1-1 and Paradice and committing changes  Masterbranch-1-1
1 conflicting file
README.md
README.md
README.md7 conflicts  
5788
​
5789
Mach
5790
Pushing to Try
5791
Build System
5792
TaskCluster Task-Graph Generation
5793
Managing Documentation
5794
TESTING & TEST INFRASTRUCTURE
5795
​
5796
Testing Policy
5797
Configuration Changes
5798
Marionette
5799
geckodriver
5800
XPCShell tests
5801
web-platform-tests
5802
GTest
5803
Fuzzing
5804
Sanitizer
5805
Performance Testing
5806
Code coverage
5807
Testing & Debugging Rust Code
5808
LOCALIZATION & INTERNATIONALIZATION
5809
​
5810
Internationalization
5811
Localization
5812
FIREFOX AND PYTHON
5813
​
5814
mozbase
5815
Using third-party Python packages
5816
METRICS COLLECTED IN FIREFOX
5817
​
5818
Metrics
5819
Firefox Source Docs
5820
 » Getting Set Up To Work On The Firefox Codebase » Building Firefox 32-bit On Linux 64-bit
5821
Building Firefox 32-bit On Linux 64-bit¶
5822
Note
5823
​
5824
Unless you really want to target older hardware, you probably want to Build Firefox 64-bit since it is better-supported.
5825
​
5826
Before following these 32-bit-Firefox-specific instructions, follow the Building Firefox On Linux instructions to ensure that your machine can do a normal build.
5827
​
5828
Instructions for Ubuntu 19.10¶
5829
These steps were verified to work as of June 2020.
5830
​
5831
Run rustup target install i686-unknown-linux-gnu to install the 32-bit Rust target.
5832
​
5833
Install 32-bit dependencies with the following command (this shouldn’t try to remove packages. If this is the case, those instructions won’t work as-is):
5834
​
5835
sudo apt install gcc-multilib g++-multilib libdbus-glib-1-dev:i386 \
5836
  libgtk2.0-dev:i386 libgtk-3-dev:i386 libpango1.0-dev:i386 libxt-dev:i386 \
5837
  libx11-xcb-dev:i386 libpulse-dev:i386 libdrm-dev:i386
5838
Then, create a mozconfig file in your Firefox code directory (probably mozilla-unified) that looks like the following example:
5839
​
5840
​
5841
h build.
5842
​
5843
Built with Sphinx using a theme pbranches: -'[anchesParadice
5844
​
5788
​
5789
Pushing to Try
5790
Build System
5791
TaskCluster Task-Graph Generation
5792
Managing Documentation
5793
TESTING & TEST INFRASTRUCTURE
5794
​
5795
Testing Policy
5796
Configuration Changes
5797
Marionette
5798
geckodriver
5799
XPCShell tests
5800
web-platform-tests
5801
GTest
5802
Fuzzing
5803
Sanitizer
5804
Performance TestingCode coverage
5805
Testing & Debugging Rust Code
5806
LOCALIZATION & INTERNATIONALIZATION
5807
​
5808
Internationalization
5809
Localization
5810
FIREFOX AND PYTHON
5811
​
5812
mozbase
5813
Using third-party Python packages
5814
METRICS COLLECTED IN FIREFOX
5815
​
5816
Metrics
5817
Firefox Source Docs
5818
 » Getting Set Up To Work On The Firefox Codebase » Building Firefox 32-bit On Linux 64-bit
5819
Building Firefox 32-bit On Linux 64-bit¶
5820
Note
5821
​
5822
Unless you really want to target older hardware, you probably want to Build Firefox 64-bit since it is better-supported.
5823
​
5824
Before following these 32-bit-Firefox-specific instructions, follow the Building Firefox On Linux instructions to ensure that your machine can do a normal build.
5825
​
5826
Instructions for Ubuntu 19.10¶
5827
These steps were verified to work as of June 2020.
5828
​
5829
Run rustup target install i686-unknown-linux-gnu to install the 32-bit Rust target.
5830
​
5831
Install 32-bit dependencies with the following command (this shouldn’t try to remove packages. If this is the case, those instructions won’t work as-is):
5832
​
5833
sudo apt install gcc-multilib g++-multilib libdbus-glib-1-dev:i386 \
5834
  libgtk2.0-dev:i386 libgtk-3-dev:i386 libpango1.0-dev:i386 libxt-dev:i386 \
5835
  libx11-xcb-dev:i386 libpulse-dev:i386 libdrm-dev:i386
5836
Then, create a mozconfig file in your Firefox code directory (probably mozilla-unified) that looks like the following example:
5837
​
5838
ac_add_options --target=i686
5839
Rus: macros/build_script'@bitore.sugs/testmasterbrqnch::branches::trunk::Runs::on:-On:Runs::Build:Script:Run:
5840
​
5841
Built with Sphinx branches: -paradusing a theme provided by Read the Docs.
5842
​
5843
​
5844
Automates: .
- Terms
- Privacy
- Security
- Status
- Docs
- Contact GitHub
- Pricing
- API
- Training
- Blog
- About
- Loading..., complete..., Done.
