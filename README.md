# Appium-Server-GitHub-Action
Running Appium Server with GitHub Action to be able to run Appium mobile test automation scripts

[![Release](https://img.shields.io/github/release/moatazeldebsy/Appium-Server-GitHub-Action.svg)](https://github.com/moatazeldebsy/Appium-Server-GitHub-Action/releases)
[![Marketplace](https://img.shields.io/badge/GitHub-Marketplace-blue.svg)](https://github.com/marketplace/actions/appium-server-action)

<img src="img/0.png" alt="appium" align="middle" />


### What is Appium?
Appium is an open-source test automation framework for use with native, hybrid and mobile web apps. 
It drives iOS, Android, and Windows apps using the WebDriver protocol.


<img src="img/1.png" alt="appium" align="middle" />

### What is the problem ?
The problem now that, how can we run an Appium server on GitHub Actions?
Because we are using a GUI tool like Appium Desktop on our local machines, So we need to run the Appium server from the command line and in the background to be able to run the rest of the commands.

### The Solution

I created  this GitHub action to install the Appium server using nodeJS and npm then running it in the background.

## Usage

workflow/main.yml:

```yaml
name: Android CI
on: [push]

jobs:
  Sauce Labs App Automate:
    runs-on: ubuntu-latest
    name: A job to say hello
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Hello world action step
        uses: moatazeldebsy/appium-server-gitHub-action@V1.0.0
        id: appium server
```

<br>

## Usage with Android Gradle to build your app

workflow/android.yml:

```yaml
name: Android CI

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: set up JDK 1.8
      uses: actions/setup-java@v1
      with:
        java-version: 1.8
    - name: Sauce Labs App Automate Action
      uses: moatazeldebsy/appium-server-gitHub-action@V1.0.0

```


<br>

## Contributing

Are you facing an issue? Have some questions? Would like to implement a new feature? Learn more about our [contributing guidelines](CONTRIBUTING.md).

<br>

## Licence

The project is released under the [MIT License](LICENSE).