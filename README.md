# Overview

- The folder `SimpleNoteManager` contains the executable to start the note manger.
- The folder `NotesExample` is an example of the notes. `monitor.json` is an example of the input json file.

# Usage

1. Run `Extract.ps1` with powershell. It extracts the compressed executable files.
2. Run `CreateShortcut.ps1` with powershell.
  It would open a file dialog to select the input json file to `SimpleNoteManager.exe` and creates a Shortcut link on the `Desktop` folder of the current user.
3. The user could double-click the shortcut to run `SimpleNoteManager.exe` with the input json file to start the notes project.
  `SimpleNoteManager.exe` would convert the source folder containing the markdown files to a new folder containing the generated html files.
  It also starts a http server and opens the browser to view the `index.html`.
  In the `index.html`, the left column displays the TOC of the notes and the right column is the search input field.

