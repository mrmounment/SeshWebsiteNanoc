Each session is represented as a subdirectory of the _sessions_ directory for the relevant academic year. For example, to create a session in the 2023/24 academic year, create a new directory under *content/acad_years/2023_24/sessions*. The name of the directory should contain only URL-safe characters. The directory should contain a file called _session.md_.

_session.md_ starts with a line containing three hyphens (---) only. The lines immediately following this contain the properties of the session in [YAML](https://yaml.org/) format (key: value). The properties are concluded by another line containing three hyphens. For the available properties and their effects, please see the next section.

Any text after the properties is parsed as [Markdown](https://en.wikipedia.org/wiki/Markdown) and then displayed along with the session properties on the site. We typically use this to provide an brief description of the session content.

## Session properties

### building

Code for the building that this session will take place in. This will link automatically to the SSID interactive campus map, so you should format the name as it appears in campus map URLs. This is usually fairly self-explanatory - the building name, all in lower case, with spaces replaced by hyphens.

Here is a list of the codes for buildings that student societies commonly use, or that ShefESH has used in the past:

| Building | Code |
|----------|------|
| Bartolemé House | bartoleme-house |
| Diamond | the-diamond |
| Edge | the-edge |
| Hicks Building | hicks-building |
| Pam Liversidge Building | pam-liversidge |
| Students' Union building | students-union |
| 38 Mappin Street | 38-mappin-street |

### date
The date of the session, in the format _YYYY_-_MM_-_DD_.

### difficulty
A value reflecting the difficulty of the session. Currently:

- the letter **B**  represents a **beginner** session
- the letter **I** represents an **intermediate** session
- the letter **X** represents an **expert** session
- any other value, or omission of this property, displays "unknown difficulty"
   - if this is the intended behaviour, please use **null**, which will be permanently reserved for this use

### depends

A list of prerequisites that this session depends on. For more information on acceptable values here, see the dedicated wiki page on Session Prerequisites.

### end-time

The time at which this session will end, in the format "_HH_:_MM_" (24 hour clock).

**You must enclose the time in quotes**. If you don't, the colon will play havoc with the YAML parser and the output will be wrong.

### online-session

Set "online-session: true" to display "Online session" in place of the building and room number.

### presenter

The name of the person who will be presenting this session.

### room

The name of the room this session will take place in.

### start-time

The time at which this session will start, in te format "_HH:MM_" (24 hour clock).

**You must enclose the time in quotes**. If you don't, the colon will play havoc with the YAML parser and the output will be wrong.

## Attaching files

Any file in the session directory other than _session.md_ will be copied verbatim, and appear with the session under "session files".

As a minimum, you should use this to attach a PDF copy of the session slides. You may also wish to attach additional documents, such as solution sheets or resources that will be needed during the session.