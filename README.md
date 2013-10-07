DaC
===

EPO3-1 project. "Develop a Chip"

Folder structure:
- art: for anything like posters, images and other graphics.
- config: for any config files for tools, hardware.
- docs: for all documentation, everything in LaTeX compiled with XeLaTeX
- hardware: for any VHDL or other hardware description language.
- src: for any x86/AVR/ARM/PIC programming, like C, c++ or C#.

Setting up git on SUSE:
- Open a terminal
- Execute the following commands (no single quotes)
	- 'mkdir GitHub' 
	- 'cd GitHub'
	- 'git config --global core.editor gedit'
	- 'git config --global color.ui true'
	- 'git config --global core.autocrlf input'
	- 'git config --global user.email email@eample.org'
	- 'git config --global user.name "Voornaam van Achter"'
	- 'git config --global credential.helper 'cache --timeout=3600'' (de single qoutes op cache --timeout=3600 moeten wel)
	- 'git clone https://github.com/EraYaN/DaC.git' (enter your password and username when asked)
	- 'cd DaC'
- De volgende keer als je pushed onthoudt git voor jou je wachtwoord en username voor 1 uur.
- Vergeet aan het einde van de ochtend niet alles to committen met 'git add -A' en  'git commit' en daarna alles naar GitHub te pushen met 'git push'
- Aan het begin van de ochtend kun je alle nieuwe commits binnen halen met 'git pull'
- Mocht je willen weten wat de status is van een git repository type dan 'git status'
- git help <command> geeft je de manual. (met page up and down kun je scrollen en met 'q' verlaat je de manual.
