[![Build Status](https://travis-ci.org/ameer1234567890/gitbackup.svg?branch=master)](https://travis-ci.org/ameer1234567890/gitbackup)

#### Works with
* Almost any linux based shell.
* Cygwin shell on Windows.
* Git Bash on Windows.

#### Requirements
* cURL
* git
* Some patience.

#### Setup Instructions
* Copy `config.cfg.example` to `config.cfg`.
* Set the config file values as per your requirement.
* Run `./gitbackup.sh`.

#### Additional Instructions
* `GITHUB_TOKEN` in the config refers to Github's Personal Access Token
* `GITHUB_TOKEN` is required if `FETCH_PRIVATE` is set to true.
* `GITHUB_ORGANIZATION` is required if `FETCH_ORGANIZATION` is set to true.
* To generate a `GITHUB_TOKEN` visit [this link](https://github.com/settings/tokens/new).
* If you are on linux, ensure that `gitbackup.sh` is chmodded to `755`.

