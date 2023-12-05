<!---------------------------------------------------------------------------------------------------------------------
FILENAME: README.md
 PROJECT: a-repository-template(https://github.com/aprettycoolprogram/gru-readme-template)
 VERSION: Version 3.3.1.191223
 UPDATED: 12-23-2019 (11:20 AM)
 AUTHORS: development@aprettycoolprogram.com

Copyright 2019 A Pretty Cool Program

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.
---------------------------------------------------------------------------------------------------------------------->

<h2 align="center">
  CrispyBox
  <br>
  <img src="https://github.com/APrettyCoolProgram/crispybox/blob/master/repository-resource/image/logo/crispybox-logo-100x100.png" alt="CrispyBox" width="100">
  <br>
  A small, cross-platform, portable Dropbox client
  <br>
  <br>
</h2>
<br>

<div align="center">

  ![Status](https://img.shields.io/badge/status-active-brightgreen.svg)
  [![License](https://img.shields.io/github/license/aprettycoolprogram/crispybox)](https://www.apache.org/licenses/LICENSE-2.0)
  [![GitHub release](https://img.shields.io/github/release/aprettycoolprogram/crispy-box?label=latest%20release)](https://github.com/APrettyCoolProgram/crispy-box/releases)

</div>

<h5 align="left">

  ### CONTENTS
  [ABOUT THIS REPOSITORY](#about-this-repository)<br>
  [FEATURES](#features)<br>
  [REQUIREMENTS](#requirements)<br>
  [BEFORE YOU BEGIN](#before-you-begin)<br>
  [GETTING STARTED](#getting-started)<br>
  [USAGE](#usage)<br>
  [DEVELOPMENT](#development)<br>

</h5>

# ABOUT THIS REPOSITORY
CrispyBox, is a small-footprint, cross-platform, portable, official Dropbox client built on a VirtualBox Linux VM using SAMBA.

CrispyBox is released using rolling updates. Just grab the latest version (it may be a few months old, don't worry), and use standard update/upgrade

# FEATURES
* CrispyBox is **tiny**. The standard build of CrispyBox only needs 512MB RAM, and will take up the amount of space to store your Dropbox data, plus about 1GB for CrispyBox itself.
* CrispyBox is **cross-platform**. The standard build of CrispyBox uses Oracle's VirtualBox virtualization software, which is available for Windows, MacOS, and Linux.
* CrispyBox is **portable**, and can be run from pretty much anywhere, from your local HDD to a USB drive. The only requirement is that you'll need VirtualBox software installed on the computers you want to run CrispyBox.
* CrispyBox is **secure**. By default, CrispyBox requires your credentials to start, Dropbox data is only available when CrispyBox is running, and then is only available via a password-protected samba share.

# REQUIREMENTS
In order to use CrispyBox, you'll need:
* Oracle VirtualBox, ([version 6.1.0 recommended](https://www.virtualbox.org/wiki/Downloads))
* The [CrispyBox 20.0 VirtualBox Virtual Machine image](https://github.com/APrettyCoolProgram/CrispyBox/releases/download/v20.0/CrispyBox-20.0.7z) (or, if you would like, you can also [build your own](https://github.com/APrettyCoolProgram/crispy-box/blob/master/document/building-crispybox-from-scratch.md))
* 512MB of RAM and a minimum of 2GBGB space to store the VM (which may increase, depending on use)

# BEFORE YOU BEGIN
CrispyBox is updated once a year in January.

### RELATED PROJECTS
* [**Crispy**](https://github.com/APrettyCoolProgram/crispy)

# GETTING STARTED
Before we continue, please verify you have met the [requirements](#requirements).

# USAGE
When you spin up your CrispyBox, the Dropbox deamon will automatically start. Follow the on-screen instructions to start syncing your data.

Once Dropbox starts syncing, you'll need to get the IP Address of the CrispyBox, so you'll know where to map. First, open a new instance of screen:

```Ctrl-A, c```

then get the IP for CrispyBox:

```$ ip addr show```

Finally, using your preferred method, map to `\\<IP_ADDRESS>\CrispyBox`.

# DEVELOPMENT
This project is currently being developed by [A Pretty Cool Program](https://github.com/APrettyCoolProgram). You can view the version history [here](document/changelog.md).

If your interested in what's coming in the next release, the development branch of the project can be found [development branch](https://github.com/aprettycoolprogram/a-repository-template/tree/development). You can also read the [development notes](development/development-notes.md).

### CONTRIBUTING
If you are interested in contributing to this project, please review our [code of conduct](document/code-of-conduct.md), [contributing guidelines](document/code-of-conduct.md), and [testing procedures](document/testing.md) documentation.

***

<div align="center">

  [![Developed by](https://img.shields.io/badge/developed%20by-A%20Pretty%20Cool%20Program-17806D.svg)](https://aprettycoolprogram.com)&nbsp;
  [![GitHub](https://img.shields.io/github/followers/aprettycoolprogram.svg?label=GitHub&style=social)](https://github.com/aprettycoolprogram)&nbsp;
  [![Twitter](https://img.shields.io/twitter/follow/aprettycoolprog.svg?label=Twitter&style=social)](https://twitter.com/aprettycoolprog)&nbsp;
  [![Feedback](https://img.shields.io/badge/contact-info@aprettycoolprogram.com-17806D.svg)](mailto:feedback@aprettycoolprogram.com)&nbsp;
  [![Built using](https://img.shields.io/badge/built%20using-a--repository--template-17806D.svg)](https://github.com/aprettycoolprogram/a-repository-template/)&nbsp;

</div>