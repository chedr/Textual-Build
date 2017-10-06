# Textual-Build
### Provides a Makefile for self-compilation and signing of [Textual](https://github.com/Codeux-Software/Textual)

## Setup
* Open `Keychain Access` tool
* Navigate to `Keychain Access` > `Certificate Assistant` > `Create a Certificate`
* Select `Code Signing` as the `Certificate Type`
* Choose a name for the certificate
* Create

## Configuration
* Open `Makefile` in a text editor
* Replace `CODE_SIGN_IDENTITY`'s value with the name of the self-signed certificate previously created
* Replace `VERSION`'s value with the desired Textual version

## Build
* Ensure `XCode` is installed and has been ran at least once such that the tools are properly installed
* Run `make`

## Install
* Run `make install`
