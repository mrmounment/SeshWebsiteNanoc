You can indicate that members should have specific prerequisites before attending the session. To use this functionality, set the _depends_ property to a list of strings from the list below.

## Current valid _depends_ strings

### anylinux

Session will use Linux, but no specific distro is required. Links to the Kali setup tutorial for the benefit of those who do not already have access to a Linux machine.

### ardide

Session will use the Arduino IDE.

### cli

Session requires participants to be comfortable using the Linux command line

### docker

Session will use Docker.

### ghidra

Session will use Ghidra.

### htb

Participants will need an account on Hack The Box.

### kali

Participants will need a Kali Linux virtual machine.

### pyselenium

Session will use Python and Selenium.

### thm

Participants will need an account on Try Hack Me.

## Adding new _depends_ strings

Each available string for the _depends_ property is the name of a subdirectory of the _content/prereqs_ directory. Each subdirectory needs to contain two files:

- icon.png: an icon. All icons at the time of writing are monochrome symbols set on a 200*200 circle with background colour #5d5d5d
- description.md: a Markdown file containing text dispalyed alongside the icon.