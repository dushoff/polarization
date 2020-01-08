## This is polarization, a screens project directory under projects/
## makestuff/project.Makefile

current: target
-include target.mk

# include makestuff/perl.def

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

######################################################################

### Makestuff

Sources += Makefile meeting.md resources.md

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
