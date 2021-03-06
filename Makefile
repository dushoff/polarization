## This is polarization, a screens project directory under projects/
## I am moving the readings to the readings repo so that I can comment freely
## 2020 Nov 19 (Thu)
## makestuff/project.Makefile

current: target
-include target.mk

include makestuff/perl.def

######################################################################

# Content

vim_session:
	bash -cl "vmt"

## downcall resources/prum.pdf ## Sexual selection
## downcall resources/causeCons.pdf ## Political polarization
Ignore += resources
Makefile: resources
resources: dir=~/Dropbox/polarization
resources:
	$(linkdirname)

## resources.filemerge: resources.md

######################################################################

### Makestuff

Sources += Makefile meeting.md resources.md people.txt

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

-include makestuff/os.mk
-include makestuff/git.mk
-include makestuff/visual.mk
-include makestuff/projdir.mk
