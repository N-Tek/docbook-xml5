# docbook-xml5

Scripts and patches for creating a Slackware 15.0 installation package from
official [DocBook5 DTD and Schemas](https://docbook.org/xml/5.0/docbook-5.0.zip).

## Contents

* [Target User](#target-user)
* [Building and Installation](#building-and-installation)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Removal](#removal)
* [Usage](#usage)
* [Support](#support)
* [Code of Conduct](#code-of-conduct)
* [Contributing](#contributing)
* [License](#license)
* [Project Status](#project-status)

## Target User

It is mainly required for the manpage creation from the offical OpenGL API
references but also used in XML documents.

## Building and Installation

A pre-built removable SlackBuild installation package is presented for Slackware 15.0.

### Requirements

    Operating System: Linux

    Distro          : Slackware 15.0 (64-bit x86_64 edition) for removable package creation

    Shell           : bash          ≥ 5.1.16

### Installation

For detailed package creation and installation info check [here][slackbuildsHowTo].

### Removal

Remove package by using **_removepkg_** command as root. For further info check [here][slackwarePkgRmv].

Reinstall **_linuxdoc-tools_** package located under **slackware/ap** for resetting
**_/etc/xml/docbook_** catalog file to its original state 

## Usage

This package is presented as a requirement for [openGLRefToMan](https://github.com/N-Tek/openGLRefToMan).  
For detailed usage please check [official website](https://www.docbook.org).

## Support

All types of constructive criticisms and contributions are welcome, and I'll
try my best for solving your problems related with the scripts and patches
presented in this repo as an engineering geologist, a self-learner and a guy
who enjoys coding.

For further info please check [SUPPORT.md](./SUPPORT.md).

## Roadmap

Essentially I've created this repo to solve my problem at the first place and
I've to admit I really have no idea in the beginning but with time I've learned
lots of stuff from the guys and the gals like myself who has tried to solve their
problems and decided to share their findings with other individuals who might
face similar problems. Remembering all of them individually at this point is
a bit hard for me so I've created this repo to show my graditude.

The next thing for this repo might be encouriging users of other distros for creation
of a similar packages for their preferred distros

and

entering the listed packages of [slackbuilds dot org](https://slackbuilds.org).

Additional ideas related with the future are welcomed.

## Code of Conduct

[Contributor Covenant version 2.1][CoC] is the effective code of conduct for this
project.

For further info please check [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md).

## Contributing

Please check [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

Software presented in this repository is licensed with GPLv3.

For further info please check [COPYING](./COPYING).

## Project Status

This project is actively maintained by Necib ÇAPAR.

[slackbuildsHowTo]: https://slackbuilds.org/howto/
[slackwarePkgRmv]: https://www.slackbook.org/beta/#pkg_install-remove-upgrade
[CoC]: https://www.contributor-covenant.org/version/2/1/code_of_conduct.html
