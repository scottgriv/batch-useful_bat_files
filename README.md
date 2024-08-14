<!-- Begin README -->

<div align="center">
    <a href="https://github.com/scottgriv/batch-useful_bat_files" target="_blank">
        <img src="./docs/images/icon.png" width="150" height="150"/>
    </a>
</div>
<br>
<p align="center">
    <a href="https://github.com/scottgriv"><img src="https://img.shields.io/badge/github-follow_me-181717?style=for-the-badge&logo=github&color=181717" alt="GitHub Badge" /></a>
    <a href="mailto:scott.grivner@gmail.com"><img src="https://img.shields.io/badge/gmail-contact_me-EA4335?style=for-the-badge&logo=gmail" alt="Email Badge" /></a>
    <a href="https://www.buymeacoffee.com/scottgriv"><img src="https://img.shields.io/badge/buy_me_a_coffee-support_me-FFDD00?style=for-the-badge&logo=buymeacoffee&color=FFDD00" alt="BuyMeACoffee Badge" /></a>
    <br>
    <a href="https://prgportfolio.com" target="_blank"><img src="https://img.shields.io/badge/PRG-Bronze Project-CD7F32?style=for-the-badge&logo=data:image/svg%2bxml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDIwMDEwOTA0Ly9FTiIKICJodHRwOi8vd3d3LnczLm9yZy9UUi8yMDAxL1JFQy1TVkctMjAwMTA5MDQvRFREL3N2ZzEwLmR0ZCI+CjxzdmcgdmVyc2lvbj0iMS4wIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiB3aWR0aD0iMjYuMDAwMDAwcHQiIGhlaWdodD0iMzQuMDAwMDAwcHQiIHZpZXdCb3g9IjAgMCAyNi4wMDAwMDAgMzQuMDAwMDAwIgogcHJlc2VydmVBc3BlY3RSYXRpbz0ieE1pZFlNaWQgbWVldCI+Cgo8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLjAwMDAwMCwzNC4wMDAwMDApIHNjYWxlKDAuMTAwMDAwLC0wLjEwMDAwMCkiCmZpbGw9IiNDRDdGMzIiIHN0cm9rZT0ibm9uZSI+CjxwYXRoIGQ9Ik0xMiAzMjggYy04IC04IC0xMiAtNTEgLTEyIC0xMzUgMCAtMTA5IDIgLTEyNSAxOSAtMTQwIDQyIC0zOCA0OAotNDIgNTkgLTMxIDcgNyAxNyA2IDMxIC0xIDEzIC03IDIxIC04IDIxIC0yIDAgNiAyOCAxMSA2MyAxMyBsNjIgMyAwIDE1MCAwCjE1MCAtMTE1IDMgYy04MSAyIC0xMTkgLTEgLTEyOCAtMTB6IG0xMDIgLTc0IGMtNiAtMzMgLTUgLTM2IDE3IC0zMiAxOCAyIDIzCjggMjEgMjUgLTMgMjQgMTUgNDAgMzAgMjUgMTQgLTE0IC0xNyAtNTkgLTQ4IC02NiAtMjAgLTUgLTIzIC0xMSAtMTggLTMyIDYKLTIxIDMgLTI1IC0xMSAtMjIgLTE2IDIgLTE4IDEzIC0xOCA2NiAxIDc3IDAgNzIgMTggNzIgMTMgMCAxNSAtNyA5IC0zNnoKbTExNiAtMTY5IGMwIC0yMyAtMyAtMjUgLTQ5IC0yNSAtNDAgMCAtNTAgMyAtNTQgMjAgLTMgMTQgLTE0IDIwIC0zMiAyMCAtMTgKMCAtMjkgLTYgLTMyIC0yMCAtNyAtMjUgLTIzIC0yNiAtMjMgLTIgMCAyOSA4IDMyIDEwMiAzMiA4NyAwIDg4IDAgODggLTI1eiIvPgo8L2c+Cjwvc3ZnPgo=" alt="Bronze" /></a>
</p>

---------------

<h1 align="center">Useful Batch Files</h1>

This repository contains a collection of useful Batch Files that I have created over the years. <br>
Batch files are text files that contain a series of commands to be executed by the command interpreter.

---------------

## Table of Contents

- [Getting Started](#getting-started)
    - [Backup Folder](#backup-folder)
    - [Check Website](#check-website)
    - [Create Event Log](#create-event-log)
    - [Enable or Disable Scheduled Tasks](#enable-or-disable-scheduled-tasks)
    - [FTP Transfer](#ftp-transfer)
    - [Kill Running Program](#kill-running-program)
    - [Move Files (Inbound)](#move-files-inbound)
    - [Move Files (Outbound)](#move-files-outbound)
    - [Network Status](#network-status)
    - [Search and Replace Text](#search-and-replace-text)
    - [Send Email](#send-email)
- [License](#license)
- [Resources](#resources)
- [Credits](#credits)

## Getting Started

Each Batch File (located in the [source](./source/) folder of this repository) contains a description of what it does and how to use it. <br>

Additionally, some of the Batch File contain a `:HELP` section that will display the description and usage when the Batch File is executed with the `/?` parameter.

To run a Batch File, simply double-click on it using Windows Explorer or run it from the command line.

> [!TIP] 
> Use the following Batch Files with Windows Task Scheduler to create an automated process.

### Backup Folder

Backup a selected folder and create an archive folder with today's date appended to it.

> [Backup_Folder.bat](./source/Backup_Folder.bat)

### Check Website

Check if an endpoint is reachable.

> [Check_Website.bat](./source/Check_Website.bat)

### Create Event Log

Create an Error Event Code in Windows Event Viewer.

> [Create_Event_Log.bat](./source/Create_Event_Log.bat)

### Enable or Disable Scheduled Tasks

Pass in a parameter (ENABLE or DISABLE) to Enable or Disable a Windows Scheduled Task.

> [Enable_or_Disable_Scheduled_Tasks.bat](./source/Enable_or_Disable_Scheduled_Task.bat)

### FTP Transfer

Transfer files from a FTP Server to a Local file location.

> [FTP_Transfer.bat](./source/FTP_Transfer.bat)

### Kill Running Program

Kill a running task.

> [Kill_Running_Program.bat](./source//Kill_Running_Program.bat)

### Move Files (Inbound)

Move files from a Outbound Location/System to a Inbound Location/System using SMB protocol.

> [Move_Files_Inbound.bat](./source/Move_Files_Inbound.bat)

### Move Files (Outbound)

Move files from an Inbound Location/System to an Outbound Location/System using SMB protocol.
Additionally, this script will create an archive folder to archive the outbound files on a daily basis.

> [Move_Files_Outbound.bat](./source/Move_Files_Outbound.bat)

### Network Status

Endlesslly ping an endpoint and record the network drops in a log file.

> [Network_Status.bat](./source/Network_Status.bat)

### Search and Replace Text

Search a file for a specific string and replace it with another string.

> [Search_and_Replace_Text.bat](./source/Search_and_Replace_Text.bat)

### Send Email

Send an email from a batch file via Powersell.

> [Send_Email.bat](./source/Send_Email.bat)

## Resources

- [Batch File](https://en.wikipedia.org/wiki/Batch_file)
- [Batch File Commands](https://ss64.com/nt/)
- [Batch File Tutorial](https://www.tutorialspoint.com/batch_script/index.htm)

## License

This project is released under the terms of the **MIT License**, which permits use, modification, and distribution of the code, subject to the conditions outlined in the license.
- The [MIT License](https://choosealicense.com/licenses/mit/) provides certain freedoms while preserving rights of attribution to the original creators.
- For more details, see the [LICENSE](LICENSE) file in this repository. in this repository.

## Credits

**Author:** [Scott Grivner](https://github.com/scottgriv) <br>
**Email:** [scott.grivner@gmail.com](mailto:scott.grivner@gmail.com) <br>
**Website:** [scottgrivner.dev](https://www.scottgrivner.dev) <br>
**Reference:** [Main Branch](https://github.com/scottgriv/batch-useful_bat_files) <br>

---------------

<div align="center">
    <a href="https://scottgrivner.dev" target="_blank">
        <img src="./docs/images/footer.png" width="100" height="100"/>
    </a>
</div>

<!-- End README -->
