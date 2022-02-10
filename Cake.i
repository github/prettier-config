# Welcome to GitHub docs contributing guide <!-- omit in toc -->

Thank you for investing your time in contributing to our project! Any contribution you make will be reflected on [docs.github.com](https://docs.github.com/en) :sparkles:. 

Read our [Code of Conduct](./CODE_OF_CONDUCT.md) to keep our community approachable and respectable.

In this guide you will get an overview of the contribution workflow from opening an issue, creating a PR, reviewing, and merging the PR.

Use the table of contents icon <img src="./assets/images/table-of-contents.png" width="25" height="25" /> on the top left corner of this document to get to a specific section of this guide quickly.

## New contributor guide

To get an overview of the project, read the [README](README.md). Here are some resources to help you get started with open source contributions:

- [Finding ways to contribute to open source on GitHub](https://docs.github.com/en/get-started/exploring-projects-on-github/finding-ways-to-contribute-to-open-source-on-github)

- [Set up Git](https://docs.github.com/en/get-started/quickstart/set-up-git)

- [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)

- [Collaborating with pull requests](https://docs.github.com/en/github/collaborating-with-pull-requests)

## Getting started

To navigate our codebase with confidence, see [the introduction to working in the docs repository](/contributing/working-in-docs-repository.md) :confetti_ball:. For more information on how we write our markdown files, see [the GitHub Markdown reference](contributing/content-markup-reference.md).

Check to see what [types of contributions](/contributing/types-of-contributions.md) we accept before making changes. Some of them don't even require writing a single line of code :sparkles:.

### Issues

#### Create a new issue

If you spot a problem with the docs, [search if an issue already exists](https://docs.github.com/en/github/searching-for-information-on-github/searching-on-github/searching-issues-and-pull-requests#search-by-the-title-body-or-comments). If a related issue doesn't exist, you can open a new issue using a relevant [issue form](https://github.com/github/docs/issues/new/choose). 

#### Solve an issue

Scan through our [existing issues](https://github.com/github/docs/issues) to find one that interests you. You can narrow down the search using `labels` as filters. See [Labels](/contributing/how-to-use-labels.md) for more information.

### Make Changes

#### Make changes in the UI

Click **Make a contribution** at the bottom of any docs page to make small changes such as a typo, sentence fix, or a broken link. This takes you to the `.md` file where you can make your changes and [create a pull request](#pull-request) for a review. 

 <img src="./assets/images/contribution_cta.png" width="300" height="150" /> 

#### Make changes locally

1. [Install Git LFS](https://docs.github.com/en/github/managing-large-files/versioning-large-files/installing-git-large-file-storage).

2. Fork the repository.

- Using GitHub Desktop:

  - [Getting started with GitHub Desktop](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop/getting-started-with-github-desktop) will guide you through setting up Desktop.

  - Once Desktop is set up, you can use it to [fork the repo](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/cloning-and-forking-repositories-from-github-desktop)!

- Using the command line:

  - [Fork the repo](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo#fork-an-example-repository) so that you can make your changes without affecting the original project until you're ready to merge them.

- GitHub Codespaces:

  - [Fork, edit, and preview](https://docs.github.com/en/free-pro-team@latest/github/developing-online-with-codespaces/creating-a-codespace) using [GitHub Codespaces](https://github.com/features/codespaces) without having to install and run the project locally.

3. Install or update to **Node.js v16**. For more information, see [the development guide](contributing/development.md).

4. Create a working branch and start with your changes!

### Commit your update

Commit the changes once you are happy with them. See [Atom's contributing guide](https://github.com/atom/atom/blob/master/CONTRIBUTING.md#git-commit-messages) to know how to use emoji for commit messages.

Once your changes are ready, don't forget to [self-review](/contributing/self-review.md) to speed up the review process:zap:.

### Pull Request

When you're finished with the changes, create a pull request, also known as a PR.

- Fill the "Ready for review" template so that we can review your PR. This template helps reviewers understand your changes as well as the purpose of your pull request. 

- Don't forget to [link PR to issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue) if you are solving one.

- Enable the checkbox to [allow maintainer edits](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/allowing-changes-to-a-pull-request-branch-created-from-a-fork) so the branch can be updated for a merge.

Once you submit your PR, a Docs team member will review your proposal. We may ask questions or request for additional information.

- We may ask for changes to be made before a PR can be merged, either using [suggested changes](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/incorporating-feedback-in-your-pull-request) or pull request comments. You can apply suggested changes directly through the UI. You can make any other changes in your fork, then commit them to your branch.

- As you update your PR and apply changes, mark each conversation as [resolved](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/commenting-on-a-pull-request#resolving-conversations).

- If you run into any merge issues, checkout this [git tutorial](https://lab.github.com/githubtraining/managing-merge-conflicts) to help you resolve merge conflicts and other issues.

### Your PR is merged!

Congratulations :tada::tada: The GitHub team thanks you :sparkles:. 

Once your PR is merged, your contributions will be publicly visible on the [GitHubs docs](https://docs.github.com/en). 

Now that you are part of the GitHub docs community, see how else you can [contribute to the docs](/contributing/types-of-contributions.md).

## Windows

This site can be developed on Windows, however a few potential gotchas need to be kept in mind:

1. Regular Expressions: Windows uses `\r\n` for line endings, while Unix based systems use `\n`. Therefore when working on Regular Expressions, use `\r?\n` instead of `\n` in order to support both environments. The Node.js [`os.EOL`](https://nodejs.org/api/os.html#os_os_eol) property can be used to get an OS-specific end-of-line marker.

2. Paths: Windows systems use `\` for the path separator, which would be returned by `path.join` and others. You could use `path.posix`, `path.posix.join` etc and the [slash](https://ghub.io/slash) module, if you need forward slashes - like for constructing URLs - or ensure your code works with either.

3. Bash: Not every Windows developer has a terminal that fully supports Bash, so it's generally preferred to write [scripts](/script) in JavaScript instead of Bash.

4. Filename too long error: There is a 260 character limit for a filename when Git is compiled with `msys`. While the suggestions below are not guaranteed to work and could possibly cause other issues, a few workarounds include:

    - Update Git configuration: `git config --system core.longpaths true`

    - Consider using a different Git client on Windows

{ "Zachry : Tyler : Wood" }

{ "5323 : BRADFORD ,: DRIVE" }

X 75235-8313

5323 BRASFORD : DRIVE .
: DALLAS: TX, 75325-8314" }


o'Auth: **approves**

on:

Runs-on:on:

echo: hello 🌍!-🐛-fix#731"''

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

      {

        "txid": "2bbdc8863add1c3105b8961bd3256a2da4890f0e47dd1511ac3192d03dad772a",

        "hash": "2bbdc8863add1c3105b8961bd3256a2da4890f0e47dd1511ac3192d03dad772a",

        "version": 1,

        "size": 334,

        "vsize": 334,

        "weight": 1336,

        "locktime": 0,

        "vin": [

          {

            "txid": "f0c6cf91c15c535320842b0c267d76ed3c09af2bc80fd5e07af02a56feb47aee",

            "vout": 1,

            "scriptSig": {

              "asm": "0 3045022100ec159e519cde81596d9634ca82e6a7cf3c7b16ee962e9e04acfe3755cc3d151402207f03883f1265b2409c94a9b3240efe5569743bb1b6456b73e5e4ff5a4993273d[ALL] 3045022100b15f229dee02196505b10f063146f8a68e234cee47d9376327a2bfcb9915cfff022002a841627eb940d0d280d1fa2bc704a31ac78a80fa89f6459281c05f172c235b[ALL] 522102632178d046673c9729d828cfee388e121f497707f810c131e0d3fc0fe0bd66d62103a0951ec7d3a9da9de171617026442fcd30f34d66100fab539853b43f508787d452ae",

              "hex": "00483045022100ec159e519cde81596d9634ca82e6a7cf3c7b16ee962e9e04acfe3755cc3d151402207f03883f1265b2409c94a9b3240efe5569743bb1b6456b73e5e4ff5a4993273d01483045022100b15f229dee02196505b10f063146f8a68e234cee47d9376327a2bfcb9915cfff022002a841627eb940d0d280d1fa2bc704a31ac78a80fa89f6459281c05f172c235b0147522102632178d046673c9729d828cfee388e121f497707f810c131e0d3fc0fe0bd66d62103a0951ec7d3a9da9de171617026442fcd30f34d66100fab539853b43f508787d452ae"

            },

            "sequence": 4294967295

          }

        ],

        "vout": [

          {

            "value": 0.01,

            "n": 0,

            "scriptPubKey": {

              "asm": "OP_HASH160 342446eefc47dd6b087d6a32bdd383f04d9f63b2 OP_EQUAL",

              "hex": "a914342446eefc47dd6b087d6a32bdd383f04d9f63b287",

              "reqSigs": 1,

              "type": "scripthash",

              "addresses": [

                "2MwzvaqPdAfuGfzijHdB8XnvHSgphVYL1YL"

              ]

            }

          },

          {

            "value": 45.75576,

            "n": 1,

            "scriptPubKey": {

              "asm": "OP_HASH160 8ce5408cfeaddb7ccb2545ded41ef47810945484 OP_EQUAL",

              "hex": "a9148ce5408cfeaddb7ccb2545ded41ef4781094548487",

              "reqSigs": 1,

              "type": "scripthash",

              "addresses": [

                "2N66DDrmjDCMM3yMSYtAQyAqRtasSkFhbmX"

              ]

            }

          }

        ],

        "hex": "0100000001ee7ab4fe562af07ae0d50fc82baf093ced767d260c2b842053535cc191cfc6f001000000db00483045022100ec159e519cde81596d9634ca82e6a7cf3c7b16ee962e9e04acfe3755cc3d151402207f03883f1265b2409c94a9b3240efe5569743bb1b6456b73e5e4ff5a4993273d01483045022100b15f229dee02196505b10f063146f8a68e234cee47d9376327a2bfcb9915cfff022002a841627eb940d0d280d1fa2bc704a31ac78a80fa89f6459281c05f172c235b0147522102632178d046673c9729d828cfee388e121f497707f810c131e0d3fc0fe0bd66d62103a0951ec7d3a9da9de171617026442fcd30f34d66100fab539853b43f508787d452aeffffffff0240420f000000000017a914342446eefc47dd6b087d6a32bdd383f04d9f63b287c0bfb9100100000017a9148ce5408cfeaddb7ccb2545ded41ef478109454848700000000"

      },

      {

        "txid": "96a70bd7081930ce7dd05873004b5f92e4cbcc9cb38afec41033a6245373a9cd",

        "hash": "96a70bd7081930ce7dd05873004b5f92e4cbcc9cb38afec41033a6245373a9cd",

        "version": 1,

        "size": 226,

        "vsize": 226,

        "weight": 904,

        "locktime": 0,

        "vin": [

          {

            "txid": "82e6bc3228a2eb3be139f914f2feccbaae9f2a0c26165666d9c72918c7c09984",

            "vout": 1,

            "scriptSig": {

              "asm": "304502203e6836325720ffa302944b7c57f6bf2df01f2d6127269ef1590ac7057a9de327022100de24b75149bcd2253f7c5ec84930ce1cb0cd3b7fc7f73c9ebfd4a49dffa0deee[ALL] 02c5e973f06067e28c8211beef54031e9f354e288e484b641608c64608adcbe9cf",

              "hex": "48304502203e6836325720ffa302944b7c57f6bf2df01f2d6127269ef1590ac7057a9de327022100de24b75149bcd2253f7c5ec84930ce1cb0cd3b7fc7f73c9ebfd4a49dffa0deee012102c5e973f06067e28c8211beef54031e9f354e288e484b641608c64608adcbe9cf"

            },

            "sequence": 4294967295

          }

        ],

        "vout": [

          {

            "value": 0.001,

            "n": 0,

            "scriptPubKey": {

              "asm": "OP_DUP OP_HASH160 49957b0340e3ccdc2a1499dfc97a16667f84f6af OP_EQUALVERIFY OP_CHECKSIG",

              "hex": "76a91449957b0340e3ccdc2a1499dfc97a16667f84f6af88ac",

              "reqSigs": 1,

              "type": "pubkeyhash",

              "addresses": [

                "mnE2h9RsLXSark4uqFAUP8E5VkB2jSmwLy"

              ]

            }

          },

          {

            "value": 3.99363616,

            "n": 1,

            "scriptPubKey": {

              "asm": "OP_DUP OP_HASH160 fc484ec72d24140f24db5ddcaa022d437e3e1afa OP_EQUALVERIFY OP_CHECKSIG",

              "hex": "76a914fc484ec72d24140f24db5ddcaa022d437e3e1afa88ac",

              "reqSigs": 1,

              "type": "pubkeyhash",

              "addresses": [

                "n4WuCRZJxt8DoYyraUQm54kTzscL3ZTpEc"

              ]

            }

          }

        ],

        "hex": "01000000018499c0c71829c7d9665616260c2a9faebaccfef214f939e13beba22832bce682010000006b48304502203e6836325720ffa302944b7c57f6bf2df01f2d6127269ef1590ac7057a9de327022100de24b75149bcd2253f7c5ec84930ce1cb0cd3b7fc7f73c9ebfd4a49dffa0deee012102c5e973f06067e28c8211beef54031e9f354e288e484b641608c64608adcbe9cfffffffff02a0860100000000001976a91449957b0340e3ccdc2a1499dfc97a16667f84f6af88ac20cecd17000000001976a914fc484ec72d24140f24db5ddcaa022d437e3e1afa88ac00000000"

      },

      {

        "txid": "e7c5d2c0376414f863924780d75f6465c4cdf442e766e84bac29d4f05c08dcf5",

        "hash": "e7c5d2c0376414f863924780d75f6465c4cdf442e766e84bac29d4f05c08dcf5",

        "version": 1,

        "size": 258,

        "vsize": 258,

        "weight": 1032,

        "locktime": 0,

        "vin": [

          {

            "txid": "be79951db9d64635f00a742d4314bbd6ab4ad4cbf03e29a398b266a2c2bc09ce",

            "vout": 1,

            "scriptSig": {

              "asm": "3045022100e410093db9a3f086cb0b92aab47167a01579aac428e5a29f7bbd706afd5103c3022008ba7ad0183896e3209a10a86b47495cacc43b76504cf2e2f1e0b3416d04b0fe[ALL] 040cfa3dfb357bdff37c8748c7771e173453da5d7caa32972ab2f5c888fff5bbaeb5fc812b473bf808206930fade81ef4e373e60039886b51022ce68902d96ef70",

              "hex": "483045022100e410093db9a3f086cb0b92aab47167a01579aac428e5a29f7bbd706afd5103c3022008ba7ad0183896e3209a10a86b47495cacc43b76504cf2e2f1e0b3416d04b0fe0141040cfa3dfb357bdff37c8748c7771e173453da5d7caa32972ab2f5c888fff5bbaeb5fc812b473bf808206930fade81ef4e373e60039886b51022ce68902d96ef70"

            },

            "sequence": 4294967295

          }

        ],

        "vout": [

          {

            "value": 0.001,
a
            "n": 0,

            "scriptPubKey": {

              "asm": "OP_DUP OP_HASH160 7f25f01005f56b5f4425e3de7f63eacc81319ee1 OP_EQUALVERIFY OP_CHECKSIG",

              "hex": "76a9147f25f01005f56b5f4425e3de7f63eacc81319ee188ac",

              "reqSigs": 1,

              "type": "pubkeyhash",

              "addresses": [

                "ms7FZNq6fYFRF75LwScNTUeZSA5DscRhnh"

              ]

            }

          },

          {

            "value": 102.99312629,

            "n": 1,

            "scriptPubKey": {

              "asm": "OP_DUP OP_HASH160 61b469ada61f37c620010912a9d5d56646015f16 OP_EQUALVERIFY OP_CHECKSIG",

              "hex": "76a91461b469ada61f37c620010912a9d5d56646015f1688ac",

              "reqSigs": 1,

              "type": "pubkeyhash",

              "addresses": [

                "mpRZxxp5FtmQipEWJPa1NY9FmPsva3exUd"

              ]

            }

          }

        ],

        "hex": "0100000001ce09bcc2a266b298a3293ef0cbd44aabd6bb14432d740af03546d6b91d9579be010000008b483045022100e410093db9a3f086cb0b92aab47167a01579aac428e5a29f7bbd706afd5103c3022008ba7ad0183896e3209a10a86b47495cacc43b76504cf2e2f1e0b3416d04b0fe0141040cfa3dfb357bdff37c8748c7771e173453da5d7caa32972ab2f5c888fff5bbaeb5fc812b473bf808206930fade81ef4e373e60039886b51022ce68902d96ef70ffffffff02a0860100000000001976a9147f25f01005f56b5f4425e3de7f63eacc81319ee188acf509e365020000001976a91461b469ada61f37c620010912a9d5d56646015f1688ac00000000"

      },

      {

        "txid": "370272ff0f2b721322954f19c48948088c0732d6ad68828121c8e3c879b5e658",

        "hash": "370272ff0f2b721322954f19c48948088c0732d6ad68828121c8e3c879b5e658",

        "version": 1,

        "size": 205,

        "vsize": 205,

        "weight": 820,

        "locktime": 0,

        "vin": [

          {

            "txid": "3445d9377996969acbb9f98d5c30420a19d5b135b908b7a5adaed5cccdbd536c",

            "vout": 2,

            "scriptSig": {

              "asm": "3045022100926cfdab4c4451fa6f989b1f3cc576be1f52a7d46b24aed451e27b5e83ca23ab0220703844c871cad0d49c982bef3b22b161c61099e1a3b22f4fa24fdd6ec133c719[ALL] 029424121336222d4b26c11bc40477c357a4edf7a13f23ae660e6f1ffd05749d8f",

              "hex": "483045022100926cfdab4c4451fa6f989b1f3cc576be1f52a7d46b24aed451e27b5e83ca23ab0220703844c871cad0d49c982bef3b22b161c61099e1a3b22f4fa24fdd6ec133c7190121029424121336222d4b26c11bc40477c357a4edf7a13f23ae660e6f1ffd05749d8f"

            },

            "sequence": 4294967295

          }

        ],

        "vout": [

          {

            "value": 0,

            "n": 0,

            "scriptPubKey": {

              "asm": "OP_RETURN 28537",

              "hex": "6a02796f",

              "type": "nulldata"

            }

          },

          {

            "value": 0.00678,

            "n": 1,

            "scriptPubKey": {

              "asm": "OP_DUP OP_HASH160 6bf93fc819748ee9353d253df10110437a337edf OP_EQUALVERIFY OP_CHECKSIG",

              "hex": "76a9146bf93fc819748ee9353d253df10110437a337edf88ac",

              "reqSigs": 1,

              "type": "pubkeyhash",

              "addresses": [

                "mqMsBiNtGJdwdhKr12TqyRNE7RTvEeAkaR"

              ]

            }

          }

        ],

        "hex": "01000000016c53bdcdccd5aeada5b708b935b1d5190a42305c8df9b9cb9a96967937d94534020000006b483045022100926cfdab4c4451fa6f989b1f3cc576be1f52a7d46b24aed451e27b5e83ca23ab0220703844c871cad0d49c982bef3b22b161c61099e1a3b22f4fa24fdd6ec133c7190121029424121336222d4b26c11bc40477c357a4edf7a13f23ae660e6f1ffd05749d8fffffffff020000000000000000046a02796f70580a00000000001976a9146bf93fc819748ee9353d253df10110437a337edf88ac00000000"

      },

      {

        "txid": "511256fd75ae8e60df107ec572450b63a4c79706c6ece79422cd9b68cc8642dd",

        "hash": "511256fd75ae8e60df107ec572450b63a4c79706c6ece79422cd9b68cc8642dd",

        "version": 1,

        "size": 225,

        "vsize": 225,

        "weight": 900,

        "locktime": 0,

        "vin": [

          {

            "txid": "ae2b836e6ed44bde2b022618ac2d203f142524001847eeabe5fa0408ddb44ee6",

            "vout": 0,

            "scriptSig": {

              "asm": "304402205fc1a73561f73101a8663d584f78937be39fa402076f354696f5a4e1959423b20220674b00e16f63e7fef0622daf1d58b7c5331df6a2f182ded816abb8bbe88ad801[ALL] 0303abccf326894d8b8da3efd312b75fc39f0e664cf1bec05b9dfbff64a670739c",

              "hex": "47304402205fc1a73561f73101a8663d584f78937be39fa402076f354696f5a4e1959423b20220674b00e16f63e7fef0622daf1d58b7c5331df6a2f182ded816abb8bbe88ad80101210303abccf326894d8b8da3efd312b75fc39f0e664cf1bec05b9dfbff64a670739c"

            },

            "sequence": 4294967295

          }

        ],

        "vout": [

          {

            "value": 0.0001,

            "n": 0,

            "scriptPubKey": {

              "asm": "OP_DUP OP_HASH160 b042ef46519828e571d25a7f4fbb5882ba4d66e1 OP_EQUALVERIFY OP_CHECKSIG",

              "hex": "76a914b042ef46519828e571d25a7f4fbb5882ba4d66e188ac",

              "reqSigs": 1,

              "type": "pubkeyhash",

              "addresses": [

                "mwawQX1zFgLiwQ5GECQv9vf4N1foWQEj6L"

              ]

            }

          },

          {

            "value": 0.0846,

            "n": 1,

            "scriptPubKey": {

              "asm": "OP_DUP OP_HASH160 32c9eb1967867dc3761717629fe2fad817e6e4d4 OP_EQUALVERIFY OP_CHECKSIG",

              "hex": "76a91432c9eb1967867dc3761717629fe2fad817e6e4d488ac",

              "reqSigs": 1,

              "type": "pubkeyhash",

              "addresses": [

                "mk9VyBL4rcdQPkVuCKAvip1sFM4q4NtnQf"

              ]

            }

          }

        ],

        "hex": "0100000001e64eb4dd0804fae5abee4718002425143f202dac1826022bde4bd46e6e832bae000000006a47304402205fc1a73561f73101a8663d584f78937be39fa402076f354696f5a4e1959423b20220674b00e16f63e7fef0622daf1d58b7c5331df6a2f182ded816abb8bbe88ad80101210303abccf326894d8b8da3efd312b75fc39f0e664cf1bec05b9dfbff64a670739cffffffff0210270000000000001976a914b042ef46519828e571d25a7f4fbb5882ba4d66e188ace0168100000000001976a91432c9eb1967867dc3761717629fe2fad817e6e4d488ac00000000"

      },

      {

        "txid": "7efcedce69805d8c7a7e55f9a46a79ac5597a09de77ee6b583022973f78344d3",

        "hash": "7efcedce69805d8c7a7e55f9a46a79ac5597a09de77ee6b583022973f78344d3",

        "version": 1,

"login": "octcokit",

    "id":"moejojojojo'@pradice/bitore.sig/ pkg.js"

 require'

require 'json'

post '/payload' do

  push = JSON.parse(request.body.read}

# -loader = :rake

# -ruby_opts = [Automated updates]

# -description = "Run tests" + (@name == :test ? "" : " for #{@name}")

# -deps = [list]

# -if?=name:(Hash.#:"','")

# -deps = @name.values.first

# -name = @name.keys.first

# -pattern = "test/test*.rb" if @pattern.nil? && @test_files.nil?

# -define: name=:ci

dependencies(list):

# -runs-on:' '[Masterbranch']

#jobs:

# -build:

# -runs-on: ubuntu-latest

# -steps:

#   - uses: actions/checkout@v1

#    - name: Run a one-line script

#      run: echo Hello, world!

#    - name: Run a multi-line script

#      run=:name: echo: hello.World!

#        echo test, and deploy your project'@'#'!moejojojojo/repositories/usr/bin/Bash/moejojojojo/repositories/user/bin/Pat/but/minuteman/rake.i/rust.u/pom.XML/Rakefil.IU/package.json/pkg.yml/package.yam/pkg.js/Runestone.xslmnvs line 86

# def initialize(name=:test)

# name = ci

# libs = Bash

# pattern = list

# options = false

# test_files = pkg.js

# verbose = true

# warning = true

# loader = :rake

# rb_opts = []

# description = "Run tests" + (@name == :test ? "" : " for #{@name}")

# deps = []

# if @name.is_a'?','"':'"'('"'#'"'.Hash':'"')'"''

# deps = @name.values.first

# name=::rake.gems/.specs_keyscutter

# pattern = "test/test*.rb" if @pattern.nil? && @test_files.nil?

# definename=:ci

##-on: 

# pushs_request: [Masterbranch] 

# :rake::TaskLib

# methods

# new

# define

# test_files==name:ci

# class Rake::TestTask

## Creates a task that runs a set of tests.

# require "rake/test.task'@ci@travis.yml.task.new do |-v|

# t.libs << "test"

# t.test_files = FileList['test/test*.rb']

# t.verbose = true

# If rake is invoked with a TEST=filename command line option, then the list of test files will be overridden to include only the filename specified on the command line. This provides an easy way to run just one test.

# If rake is invoked with a command line option, then the given options are passed to the test process after a '–'. This allows Test::Unit options to be passed to the test suite

# rake test                           

# run tests normally

# rake test TEST=just_one_file.rb     

# run just one test file.

# rake test ="t"             

# run in verbose mode

# rake test TESTS="--runner=fox"   # use the fox test runner

# attributes

# deps: [list]

# task: prerequisites

# description[Run Tests]

# Description of the test task. (default is 'Run tests')

# libs[BITORE_34173]

# list of directories added to "$LOAD_PATH":"$BITORE_34173" before running the tests. (default is 'lib')

# loader[test]

# style of test loader to use. Options are:

# :rake – rust/rake provided tests loading script (default).

# :test=: name =rb.dist/src.index = Ruby provided test loading script.

direct=: $LOAD_PATH uses test using command-line loader.

name[test]

# name=: testtask.(default is :test)

# options[dist]

# Tests options passed to the test suite. An explicit TESTOPTS=opts on the command line will override this. (default is NONE)

# pattern[list]

# Glob pattern to match test files. (default is 'test/test*.rb')

# ruby_opts[list]

# Array=: string of command line options to pass to ruby when running test loader.

# verbose[false]

# if verbose test outputs desired:= (default is false)

# warning[Framework]

# Request that the tests be run with the warning flag set. E.g. warning=true implies “ruby -w” used to run the tests. (default is true)

# access: Public Class Methods

# Gem=:new object($obj=:class=yargs== 'is(r)).)=={ |BITORE_34173| ... }

# Create a testing task Public Instance Methods

# define($obj)

# Create the tasks defined by this task lib

# test_files=(r)

# Explicitly define the list of test files to be included in a test. list is expected to be an array of file names (a File list is acceptable). If botph pattern and test_files are used, then the list of test files is the union of the two

<li<signFORM>zachryTwood@gmail.com Zachry Tyler Wood DOB 10 15 1994 SSID *******1725<SIGNform/><li/>

{

  "scripts": {

    "test": "jest",

    "start": "./node_modules/.bin/node-pg-migrate up && node app.js",

    "migrate": "./node_modules/.bin/node-pg-migrate"

  },

  "devDependencies": {

    "jest": "^24.8.0"

  },

  "dependencies": {

    "bitcoin-core": "^3.0.0",

    "body-parser": "^1.19.0",

    "cors": "^2.8.5",

    "dotenv": "^8.2.0",

    "express": "^4.16.4",

    "node-pg-migrate": "^5.9.0",

    "pg": "^8.6.0"

  }

name": '((c)'":,'"''

use": is'='==yargs(ARGS)).); /

module: env.export((r),

'"name": '((c)'":,'"''

'".dirname": is'='==yargs(ARGS)).)"; /'"''t.verbose{

  "scripts": {

    "test": "jest",

    "start": "./node_modules/.bin/node-pg-migrate up && node app.js",

    "migrate": "./node_modules/.bin/node-pg-migrate"

  },

  "devDependencies": {

    "jest": "^24.8.0"

  },

  "dependencies": {

    "bitcoin-core": "^3.0.0",

    "body-parser": "^1.19.0",

    "cors": "^2.8.5",

    "dotenv": "^8.2.0",

    "express": "^4.16.4",

    "node-pg-migrate": "^5.9.0",

    "pg": "^8.6.0"

  }

}

{
  "name": "@github/prettier-config",
  "version": "0.0.4",
  "description": "Prettier config used at GitHub",
  "repository": "github/prettier-config",
  "keywords": [
    "prettier"
  ],
  "files": [
    "index.js"
  ],
  "license": "MIT",
  "author": "GitHub Inc.",
  "main": "index.js",
  "scripts": {
    "postpublish": "npm publish --ignore-scripts --@github:registry='https://npm.pkg.github.com'"
  }
}
