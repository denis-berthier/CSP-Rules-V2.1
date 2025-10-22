# CLIPS 6.4.2
# Console and Library
# macOS 15.2
# Ubuntu 22.04 LTS 
# Debian 11.3 
# Fedora 36 
# CentOS 9 
# Mint 20.3 

# The GNU Make Manual
# http://www.gnu.org/software/make/manual/make.html

# https://felixcrux.com/blog/creating-basic-makefile

# platform detection
PLATFORM = $(shell uname -s)

ifeq ($(PLATFORM),Darwin) # macOS
	CLIPS_OS = DARWIN
	WARNINGS = -Wall -Wundef -Wpointer-arith -Wshadow -Wstrict-aliasing \
	           -Winline -Wmissing-declarations -Wredundant-decls \
	           -Wmissing-prototypes -Wnested-externs -Wstrict-prototypes \
	           -Waggregate-return -Wno-implicit
endif

ifeq ($(PLATFORM),Linux) # linux
	CLIPS_OS = LINUX
	WARNINGS = -Wall -Wundef -Wpointer-arith -Wshadow -Wstrict-aliasing \
               -Winline -Wredundant-decls -Waggregate-return
endif
	    
OBJS = agenda.o analysis.o argacces.o bload.o bmathfun.o bsave.o \
 	classcom.o classexm.o classfun.o classinf.o classini.o \
 	classpsr.o clsltpsr.o commline.o conscomp.o constrct.o \
 	constrnt.o crstrtgy.o cstrcbin.o cstrccom.o cstrcpsr.o \
 	cstrnbin.o cstrnchk.o cstrncmp.o cstrnops.o cstrnpsr.o \
 	cstrnutl.o default.o defins.o developr.o dffctbin.o dffctbsc.o \
 	dffctcmp.o dffctdef.o dffctpsr.o dffnxbin.o dffnxcmp.o dffnxexe.o \
 	dffnxfun.o dffnxpsr.o dfinsbin.o dfinscmp.o drive.o emathfun.o \
 	engine.o envrnmnt.o envrnbld.o evaluatn.o expressn.o exprnbin.o \
 	exprnops.o exprnpsr.o extnfunc.o factbin.o factbld.o factcmp.o \
 	factcom.o factfun.o factgen.o facthsh.o factfile.o factlhs.o factmch.o \
 	factmngr.o factprt.o factqpsr.o factqury.o factrete.o factrhs.o \
 	filecom.o filertr.o fileutil.o generate.o genrcbin.o genrccmp.o \
 	genrccom.o genrcexe.o genrcfun.o genrcpsr.o globlbin.o globlbsc.o \
 	globlcmp.o globlcom.o globldef.o globlpsr.o immthpsr.o incrrset.o \
 	inherpsr.o inscom.o insfile.o insfun.o insmngr.o insmoddp.o \
 	insmult.o inspsr.o insquery.o insqypsr.o iofun.o lgcldpnd.o \
 	memalloc.o miscfun.o modulbin.o modulbsc.o modulcmp.o moduldef.o \
 	modulpsr.o modulutl.o msgcom.o msgfun.o msgpass.o msgpsr.o \
 	multifld.o multifun.o objbin.o objcmp.o objrtbin.o objrtbld.o \
 	objrtcmp.o objrtfnx.o objrtgen.o objrtmch.o parsefun.o pattern.o \
 	pprint.o prccode.o prcdrfun.o prcdrpsr.o prdctfun.o prntutil.o \
 	proflfun.o reorder.o reteutil.o retract.o router.o rulebin.o \
 	rulebld.o rulebsc.o rulecmp.o rulecom.o rulecstr.o ruledef.o \
 	ruledlt.o rulelhs.o rulepsr.o scanner.o sortfun.o strngfun.o \
 	strngrtr.o symblbin.o symblcmp.o symbol.o sysdep.o textpro.o \
 	tmpltbin.o tmpltbsc.o tmpltcmp.o tmpltdef.o tmpltfun.o tmpltlhs.o \
 	tmpltpsr.o tmpltrhs.o tmpltutl.o userdata.o userfunctions.o \
 	utility.o watch.o

all: release

debug : CC = gcc
debug : CFLAGS = -std=c99 -O0 -g
debug : LDLIBS = -lm
debug : clips

release : CC = gcc
release : CFLAGS = -std=c99 -O3 -fno-strict-aliasing
release : LDLIBS = -lm
release : clips

debug_cpp : CC = g++
debug_cpp : CFLAGS = -x c++ -std=c++11 -O0 -g
ifeq ($(PLATFORM),Darwin) # macOS
debug_cpp : WARNINGS += -Wcast-qual
endif
debug_cpp : LDLIBS =
debug_cpp : clips

release_cpp : CC = g++
release_cpp : CFLAGS = -x c++ -std=c++11 -O3 -fno-strict-aliasing
ifeq ($(PLATFORM),Darwin) # macOS
release_cpp : WARNINGS += -Wcast-qual
endif
release_cpp : LDLIBS =
release_cpp : clips

.c.o :
	$(CC) -c -D$(CLIPS_OS) $(CFLAGS) $(WARNINGS) $<

clips : main.o libclips.a
	$(CC) -o clips main.o -L. -lclips $(LDLIBS)
	
libclips.a : $(OBJS)
	rm -f $@   
	ar cq $@ $(OBJS)   

clean : 
	-rm -f main.o $(OBJS)
	-rm -f clips libclips.a
	
.PHONY : all clips clean debug release debug_cpp release_cpp

# Dependencies generated using "gcc -MM *.c"

agenda.o: agenda.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h engine.h lgcldpnd.h retract.h \
  memalloc.h modulutl.h scanner.h prntutil.h reteutil.h rulecom.h \
  router.h rulebsc.h strngrtr.h sysdep.h watch.h

analysis.o: analysis.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h cstrnchk.h constrnt.h evaluatn.h cstrnutl.h cstrnops.h \
  exprnpsr.h extnfunc.h expressn.h exprnops.h constrct.h userdata.h \
  moduldef.h utility.h insfun.h object.h multifld.h symbol.h match.h \
  network.h ruledef.h agenda.h crstrtgy.h conscomp.h symblcmp.h \
  cstrccom.h objrtmch.h scanner.h generate.h analysis.h reorder.h \
  pattern.h memalloc.h modulutl.h prntutil.h router.h rulecstr.h \
  rulepsr.h watch.h

argacces.o: argacces.c setup.h envrnmnt.h entities.h usrsetup.h \
  cstrnchk.h constrnt.h evaluatn.h constant.h extnfunc.h expressn.h \
  exprnops.h constrct.h userdata.h moduldef.h utility.h insfun.h \
  object.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h symblcmp.h cstrccom.h objrtmch.h factmngr.h \
  tmpltdef.h factbld.h facthsh.h inscom.h prntutil.h router.h sysdep.h \
  argacces.h

bload.o: bload.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h bsave.h cstrnbin.h exprnpsr.h \
  scanner.h memalloc.h prntutil.h router.h bload.h exprnbin.h sysdep.h \
  symblbin.h

bmathfun.o: bmathfun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnpsr.h \
  scanner.h prntutil.h router.h bmathfun.h

bsave.o: bsave.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h bload.h exprnbin.h sysdep.h \
  symblbin.h cstrnbin.h exprnpsr.h scanner.h memalloc.h prntutil.h \
  router.h bsave.h

classcom.o: classcom.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h argacces.h classfun.h scanner.h classcom.h classini.h \
  modulutl.h msgcom.h msgpass.h prntutil.h router.h

classexm.o: classexm.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h classcom.h \
  classfun.h scanner.h classini.h memalloc.h msgcom.h msgpass.h msgfun.h \
  prntutil.h router.h strngrtr.h sysdep.h classexm.h

classfun.o: classfun.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h classcom.h classini.h cstrcpsr.h strngfun.h inscom.h \
  insmngr.h memalloc.h modulutl.h scanner.h msgfun.h msgpass.h \
  prntutil.h router.h classfun.h

classinf.o: classinf.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h classcom.h \
  classexm.h classfun.h scanner.h classini.h memalloc.h msgcom.h \
  msgpass.h msgfun.h prntutil.h classinf.h

classini.o: classini.c setup.h envrnmnt.h entities.h usrsetup.h \
  classcom.h cstrccom.h moduldef.h userdata.h constrct.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h objrtmch.h classexm.h \
  classfun.h scanner.h classinf.h classpsr.h cstrcpsr.h strngfun.h \
  inscom.h memalloc.h modulpsr.h modulutl.h msgcom.h msgpass.h watch.h \
  defins.h insquery.h bload.h exprnbin.h sysdep.h symblbin.h objbin.h \
  objcmp.h objrtbld.h objrtfnx.h classini.h

classpsr.o: classpsr.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h classcom.h classfun.h scanner.h clsltpsr.h cstrcpsr.h \
  strngfun.h inherpsr.h memalloc.h modulpsr.h modulutl.h msgpsr.h \
  pprint.h prntutil.h router.h classpsr.h

clsltpsr.o: clsltpsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  classcom.h cstrccom.h moduldef.h userdata.h constrct.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h objrtmch.h classfun.h \
  scanner.h cstrnchk.h cstrnpsr.h cstrnutl.h default.h memalloc.h \
  pprint.h prntutil.h router.h clsltpsr.h

commline.o: commline.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h argacces.h expressn.h exprnops.h constrct.h userdata.h \
  moduldef.h utility.h evaluatn.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrcpsr.h \
  strngfun.h exprnpsr.h scanner.h fileutil.h memalloc.h pprint.h \
  prcdrfun.h prcdrpsr.h prntutil.h router.h strngrtr.h sysdep.h \
  commline.h

conscomp.o: conscomp.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrncmp.h \
  exprnpsr.h scanner.h memalloc.h modulcmp.h prntutil.h router.h \
  sysdep.h dffnxcmp.h dffnxfun.h tmpltcmp.h tmpltdef.h factbld.h \
  globlcmp.h globldef.h genrccmp.h genrcfun.h objcmp.h

constrct.o: constrct.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h commline.h \
  cstrcpsr.h strngfun.h exprnpsr.h scanner.h memalloc.h miscfun.h \
  modulutl.h prcdrfun.h prcdrpsr.h prntutil.h router.h sysdep.h watch.h

constrnt.o: constrnt.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h memalloc.h \
  router.h scanner.h

crstrtgy.o: crstrtgy.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h argacces.h memalloc.h pattern.h \
  scanner.h reorder.h reteutil.h rulecom.h

cstrcbin.o: cstrcbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h cstrcbin.h

cstrccom.o: cstrccom.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h extnfunc.h evaluatn.h expressn.h exprnops.h constrct.h \
  userdata.h moduldef.h utility.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h symblcmp.h cstrccom.h objrtmch.h memalloc.h argacces.h \
  modulutl.h scanner.h prntutil.h router.h commline.h sysdep.h bload.h \
  exprnbin.h symblbin.h cstrcpsr.h strngfun.h

cstrcpsr.o: cstrcpsr.c setup.h envrnmnt.h entities.h usrsetup.h router.h \
  watch.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h prcdrpsr.h \
  exprnpsr.h scanner.h memalloc.h modulutl.h modulpsr.h pprint.h \
  prntutil.h strngrtr.h sysdep.h cstrcpsr.h strngfun.h

cstrnbin.o: cstrnbin.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h memalloc.h prntutil.h router.h bload.h utility.h evaluatn.h \
  moduldef.h userdata.h insfun.h object.h constrct.h constrnt.h \
  expressn.h exprnops.h multifld.h symbol.h match.h network.h ruledef.h \
  agenda.h crstrtgy.h conscomp.h extnfunc.h symblcmp.h cstrccom.h \
  objrtmch.h exprnbin.h sysdep.h symblbin.h bsave.h cstrnbin.h

cstrnchk.o: cstrnchk.c setup.h envrnmnt.h entities.h usrsetup.h \
  cstrnutl.h constrnt.h evaluatn.h constant.h extnfunc.h expressn.h \
  exprnops.h constrct.h userdata.h moduldef.h utility.h insfun.h \
  object.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h symblcmp.h cstrccom.h objrtmch.h prntutil.h \
  router.h classcom.h classexm.h inscom.h cstrnchk.h

cstrncmp.o: cstrncmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h conscomp.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h memalloc.h prntutil.h \
  router.h sysdep.h cstrncmp.h

cstrnops.o: cstrnops.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h constrnt.h evaluatn.h cstrnchk.h cstrnutl.h extnfunc.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  insfun.h object.h multifld.h symbol.h match.h network.h ruledef.h \
  agenda.h crstrtgy.h conscomp.h symblcmp.h cstrccom.h objrtmch.h \
  memalloc.h router.h scanner.h cstrnops.h

cstrnpsr.o: cstrnpsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h cstrnchk.h constrnt.h evaluatn.h cstrnutl.h expressn.h \
  exprnops.h constrct.h userdata.h moduldef.h utility.h insfun.h \
  object.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h \
  memalloc.h pprint.h prntutil.h router.h scanner.h sysdep.h cstrnpsr.h

cstrnutl.o: cstrnutl.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h memalloc.h \
  router.h scanner.h cstrnutl.h

default.o: default.c setup.h envrnmnt.h entities.h usrsetup.h constant.h \
  constrnt.h evaluatn.h cstrnchk.h cstrnutl.h exprnpsr.h extnfunc.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  insfun.h object.h multifld.h symbol.h match.h network.h ruledef.h \
  agenda.h crstrtgy.h conscomp.h symblcmp.h cstrccom.h objrtmch.h \
  scanner.h factmngr.h tmpltdef.h factbld.h facthsh.h inscom.h pprint.h \
  prntutil.h router.h default.h

defins.o: defins.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h dfinsbin.h defins.h dfinscmp.h argacces.h classcom.h \
  classfun.h scanner.h cstrcpsr.h strngfun.h inspsr.h memalloc.h \
  modulpsr.h modulutl.h pprint.h prntutil.h router.h

developr.o: developr.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h factmngr.h \
  tmpltdef.h factbld.h facthsh.h inscom.h modulutl.h scanner.h \
  prntutil.h router.h classcom.h classfun.h developr.h

dffctbin.o: dffctbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h dffctdef.h memalloc.h dffctbin.h cstrcbin.h \
  modulbin.h

dffctbsc.o: dffctbsc.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrcpsr.h \
  strngfun.h dffctdef.h dffctpsr.h factrhs.h factmngr.h tmpltdef.h \
  factbld.h facthsh.h scanner.h memalloc.h router.h dffctbin.h \
  cstrcbin.h modulbin.h dffctcmp.h dffctbsc.h

dffctcmp.o: dffctcmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  conscomp.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h dffctdef.h dffctcmp.h

dffctdef.o: dffctdef.c setup.h envrnmnt.h entities.h usrsetup.h \
  dffctbsc.h dffctdef.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h \
  dffctpsr.h memalloc.h bload.h exprnbin.h sysdep.h symblbin.h \
  dffctbin.h cstrcbin.h modulbin.h dffctcmp.h

dffctpsr.o: dffctpsr.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h cstrcpsr.h strngfun.h dffctbsc.h dffctdef.h factrhs.h \
  factmngr.h tmpltdef.h factbld.h facthsh.h scanner.h memalloc.h \
  modulutl.h pprint.h prntutil.h router.h dffctpsr.h

dffnxbin.o: dffnxbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h cstrcbin.h memalloc.h modulbin.h dffnxbin.h \
  dffnxfun.h

dffnxcmp.o: dffnxcmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  conscomp.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h dffnxcmp.h dffnxfun.h

dffnxexe.o: dffnxexe.c setup.h envrnmnt.h entities.h usrsetup.h \
  constrct.h userdata.h moduldef.h utility.h evaluatn.h constant.h \
  insfun.h object.h constrnt.h expressn.h exprnops.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h prcdrfun.h prccode.h scanner.h \
  prntutil.h proflfun.h router.h watch.h dffnxexe.h dffnxfun.h

dffnxfun.o: dffnxfun.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h dffnxbin.h dffnxfun.h dffnxcmp.h cstrcpsr.h strngfun.h \
  dffnxpsr.h modulpsr.h scanner.h dffnxexe.h watch.h argacces.h \
  memalloc.h modulutl.h prntutil.h router.h

dffnxpsr.o: dffnxpsr.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h genrccom.h genrcfun.h cstrcpsr.h strngfun.h dffnxfun.h \
  exprnpsr.h scanner.h memalloc.h modulutl.h pprint.h prccode.h \
  prntutil.h router.h dffnxpsr.h

dfinsbin.o: dfinsbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h cstrcbin.h defins.h memalloc.h modulbin.h \
  dfinsbin.h

dfinscmp.o: dfinscmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  conscomp.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h defins.h dfinscmp.h

drive.o: drive.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h engine.h lgcldpnd.h retract.h \
  incrrset.h memalloc.h prntutil.h reteutil.h rulecom.h router.h drive.h

emathfun.o: emathfun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h miscfun.h \
  prntutil.h router.h emathfun.h

engine.o: engine.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h argacces.h commline.h factmngr.h \
  tmpltdef.h factbld.h facthsh.h inscom.h memalloc.h modulutl.h \
  scanner.h prccode.h prcdrfun.h prntutil.h proflfun.h reteutil.h \
  rulecom.h retract.h router.h ruledlt.h sysdep.h watch.h engine.h \
  lgcldpnd.h

envrnbld.o: envrnbld.c setup.h envrnmnt.h entities.h usrsetup.h \
  bmathfun.h evaluatn.h constant.h commline.h emathfun.h engine.h \
  lgcldpnd.h match.h network.h ruledef.h constrct.h userdata.h \
  moduldef.h utility.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h objrtmch.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h retract.h filecom.h \
  iofun.h memalloc.h miscfun.h multifun.h parsefun.h pprint.h prccode.h \
  scanner.h prcdrfun.h prdctfun.h prntutil.h proflfun.h router.h \
  sortfun.h strngfun.h sysdep.h textpro.h watch.h dffctdef.h genrccom.h \
  genrcfun.h dffnxfun.h globldef.h tmpltdef.h factbld.h classini.h \
  envrnbld.h

envrnmnt.o: envrnmnt.c setup.h envrnmnt.h entities.h usrsetup.h \
  bmathfun.h evaluatn.h constant.h commline.h emathfun.h engine.h \
  lgcldpnd.h match.h network.h ruledef.h constrct.h userdata.h \
  moduldef.h utility.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h objrtmch.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h retract.h filecom.h \
  iofun.h memalloc.h miscfun.h multifun.h parsefun.h prccode.h scanner.h \
  prcdrfun.h prdctfun.h prntutil.h proflfun.h router.h sortfun.h \
  strngfun.h sysdep.h textpro.h watch.h dffctdef.h genrccom.h genrcfun.h \
  dffnxfun.h globldef.h tmpltdef.h factbld.h classini.h

evaluatn.o: evaluatn.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h commline.h \
  factmngr.h tmpltdef.h factbld.h facthsh.h memalloc.h modulutl.h \
  scanner.h router.h prcdrfun.h prntutil.h exprnpsr.h proflfun.h \
  sysdep.h dffnxfun.h genrccom.h genrcfun.h inscom.h

expressn.o: expressn.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h memalloc.h prntutil.h router.h

exprnbin.o: exprnbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h dffctdef.h memalloc.h genrcbin.h genrcfun.h \
  dffnxbin.h dffnxfun.h factmngr.h tmpltdef.h factbld.h facthsh.h \
  tmpltbin.h cstrcbin.h modulbin.h globlbin.h globldef.h objbin.h \
  inscom.h

exprnops.o: exprnops.c setup.h envrnmnt.h entities.h usrsetup.h \
  cstrnchk.h constrnt.h evaluatn.h constant.h cstrnops.h cstrnutl.h \
  extnfunc.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h insfun.h object.h multifld.h symbol.h match.h network.h \
  ruledef.h agenda.h crstrtgy.h conscomp.h symblcmp.h cstrccom.h \
  objrtmch.h memalloc.h prntutil.h router.h

exprnpsr.o: exprnpsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrnchk.h \
  memalloc.h modulutl.h scanner.h pprint.h prcdrfun.h prntutil.h \
  router.h strngrtr.h genrccom.h genrcfun.h dffnxfun.h exprnpsr.h

extnfunc.o: extnfunc.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnpsr.h \
  scanner.h factmngr.h tmpltdef.h factbld.h facthsh.h memalloc.h \
  router.h inscom.h

factbin.o: factbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h factmngr.h tmpltdef.h factbld.h facthsh.h \
  memalloc.h pattern.h scanner.h reorder.h reteutil.h rulecom.h \
  rulebin.h cstrcbin.h modulbin.h factbin.h

factbld.o: factbld.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h factcmp.h pattern.h scanner.h \
  reorder.h factgen.h factlhs.h factmch.h factbld.h factmngr.h \
  tmpltdef.h facthsh.h memalloc.h modulutl.h reteutil.h rulecom.h \
  router.h

factcmp.o: factcmp.c setup.h envrnmnt.h entities.h usrsetup.h factbld.h \
  network.h match.h ruledef.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h objrtmch.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h factmngr.h tmpltdef.h \
  facthsh.h factcmp.h pattern.h scanner.h reorder.h

factcom.o: factcom.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h factmngr.h tmpltdef.h factbld.h \
  facthsh.h factrhs.h scanner.h pprint.h prntutil.h router.h sysdep.h \
  tmpltutl.h factcom.h

factfile.o: factfile.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h bload.h \
  exprnbin.h sysdep.h symblbin.h cstrcpsr.h strngfun.h factmngr.h \
  tmpltdef.h factbld.h facthsh.h factrhs.h scanner.h insmngr.h inscom.h \
  memalloc.h modulpsr.h modulutl.h prntutil.h router.h strngrtr.h \
  tmpltutl.h factfile.h

factfun.o: factfun.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h prntutil.h router.h sysdep.h \
  tmpltutl.h factmngr.h tmpltdef.h factbld.h facthsh.h factfun.h

factgen.o: factgen.c setup.h envrnmnt.h entities.h usrsetup.h constant.h \
  constrct.h userdata.h moduldef.h utility.h evaluatn.h insfun.h \
  object.h constrnt.h expressn.h exprnops.h multifld.h symbol.h match.h \
  network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h exprnpsr.h scanner.h factmch.h \
  factbld.h factmngr.h tmpltdef.h facthsh.h factprt.h factrete.h \
  memalloc.h pattern.h reorder.h prcdrpsr.h reteutil.h rulecom.h \
  router.h sysdep.h tmpltfun.h tmpltlhs.h tmpltutl.h factgen.h

facthsh.o: facthsh.c setup.h envrnmnt.h entities.h usrsetup.h constant.h \
  factmngr.h conscomp.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h tmpltdef.h factbld.h \
  facthsh.h memalloc.h router.h sysdep.h lgcldpnd.h

factlhs.o: factlhs.c setup.h envrnmnt.h entities.h usrsetup.h cstrcpsr.h \
  strngfun.h modulpsr.h evaluatn.h constant.h moduldef.h userdata.h \
  symbol.h scanner.h modulutl.h pattern.h expressn.h exprnops.h \
  constrct.h utility.h insfun.h object.h constrnt.h multifld.h match.h \
  network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h reorder.h pprint.h prntutil.h \
  router.h tmpltdef.h factbld.h tmpltlhs.h tmpltpsr.h tmpltutl.h \
  factmngr.h facthsh.h factlhs.h

factmch.o: factmch.c setup.h envrnmnt.h entities.h usrsetup.h drive.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h engine.h lgcldpnd.h retract.h \
  factgen.h reorder.h pattern.h scanner.h factrete.h incrrset.h \
  memalloc.h prntutil.h reteutil.h rulecom.h router.h sysdep.h \
  tmpltdef.h factbld.h factmch.h factmngr.h facthsh.h

factmngr.o: factmngr.c setup.h envrnmnt.h entities.h usrsetup.h \
  commline.h default.h constrnt.h evaluatn.h constant.h engine.h \
  lgcldpnd.h match.h network.h ruledef.h constrct.h userdata.h \
  moduldef.h utility.h insfun.h object.h expressn.h exprnops.h \
  multifld.h symbol.h objrtmch.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h retract.h factbin.h factbld.h \
  factcmp.h pattern.h scanner.h reorder.h factcom.h factfile.h factfun.h \
  factmngr.h tmpltdef.h facthsh.h factmch.h factqury.h factrhs.h \
  memalloc.h prntutil.h router.h strngrtr.h sysdep.h tmpltbsc.h \
  tmpltfun.h tmpltutl.h watch.h cstrnchk.h

factprt.o: factprt.c setup.h envrnmnt.h entities.h usrsetup.h factgen.h \
  reorder.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h pattern.h \
  scanner.h prntutil.h router.h factprt.h

factqpsr.o: factqpsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  exprnpsr.h extnfunc.h evaluatn.h constant.h expressn.h exprnops.h \
  constrct.h userdata.h moduldef.h utility.h insfun.h object.h \
  constrnt.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h symblcmp.h cstrccom.h objrtmch.h scanner.h \
  factqury.h factmngr.h tmpltdef.h factbld.h facthsh.h modulutl.h \
  prcdrpsr.h pprint.h prntutil.h router.h strngrtr.h factqpsr.h

factqury.o: factqury.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h memalloc.h \
  exprnpsr.h scanner.h modulutl.h tmpltutl.h factmngr.h tmpltdef.h \
  factbld.h facthsh.h factqpsr.h prcdrfun.h prntutil.h router.h \
  factqury.h

factrete.o: factrete.c setup.h envrnmnt.h entities.h usrsetup.h drive.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h engine.h lgcldpnd.h retract.h \
  factgen.h reorder.h pattern.h scanner.h factmch.h factbld.h factmngr.h \
  tmpltdef.h facthsh.h incrrset.h memalloc.h reteutil.h rulecom.h \
  router.h factrete.h

factrhs.o: factrhs.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h cstrcpsr.h strngfun.h exprnpsr.h scanner.h modulutl.h \
  modulpsr.h pattern.h reorder.h pprint.h prntutil.h router.h strngrtr.h \
  tmpltpsr.h tmpltdef.h factbld.h tmpltrhs.h tmpltutl.h factmngr.h \
  facthsh.h factrhs.h

filecom.o: filecom.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h bload.h exprnbin.h sysdep.h \
  symblbin.h bsave.h commline.h cstrcpsr.h strngfun.h fileutil.h \
  memalloc.h router.h filecom.h

filertr.o: filertr.c setup.h envrnmnt.h entities.h usrsetup.h constant.h \
  memalloc.h router.h sysdep.h filertr.h

fileutil.o: fileutil.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h commline.h \
  cstrcpsr.h strngfun.h memalloc.h prcdrfun.h pprint.h prntutil.h \
  router.h scanner.h strngrtr.h sysdep.h filecom.h fileutil.h

generate.o: generate.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnpsr.h \
  scanner.h globlpsr.h memalloc.h pattern.h reorder.h prntutil.h \
  router.h generate.h analysis.h

genrcbin.o: genrcbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h cstrcbin.h genrccom.h genrcfun.h memalloc.h \
  modulbin.h objbin.h router.h genrcbin.h

genrccmp.o: genrccmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  conscomp.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h genrccom.h genrcfun.h \
  objcmp.h genrccmp.h

genrccom.o: genrccom.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h bload.h \
  exprnbin.h sysdep.h symblbin.h classcom.h inscom.h cstrcpsr.h \
  strngfun.h genrcbin.h genrcfun.h genrccmp.h genrcexe.h genrcpsr.h \
  memalloc.h modulpsr.h scanner.h modulutl.h router.h strngrtr.h watch.h \
  prntutil.h genrccom.h

genrcexe.o: genrcexe.c setup.h envrnmnt.h entities.h usrsetup.h \
  classcom.h cstrccom.h moduldef.h userdata.h constrct.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h objrtmch.h classfun.h \
  scanner.h argacces.h genrccom.h genrcfun.h prcdrfun.h prccode.h \
  prntutil.h proflfun.h router.h genrcexe.h

genrcfun.o: genrcfun.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h classcom.h classfun.h scanner.h argacces.h cstrcpsr.h \
  strngfun.h genrccom.h genrcfun.h genrcexe.h memalloc.h modulutl.h \
  prccode.h prntutil.h router.h

genrcpsr.o: genrcpsr.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h dffnxfun.h classfun.h scanner.h classcom.h cstrcpsr.h \
  strngfun.h exprnpsr.h genrccom.h genrcfun.h immthpsr.h memalloc.h \
  modulutl.h pprint.h prcdrpsr.h prccode.h prntutil.h router.h \
  genrcpsr.h

globlbin.o: globlbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h globlbsc.h globldef.h memalloc.h globlbin.h \
  modulbin.h cstrcbin.h

globlbsc.o: globlbsc.c setup.h envrnmnt.h entities.h usrsetup.h \
  constrct.h userdata.h moduldef.h utility.h evaluatn.h constant.h \
  insfun.h object.h constrnt.h expressn.h exprnops.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h globlbin.h modulbin.h cstrcbin.h \
  globldef.h globlcmp.h globlcom.h watch.h globlbsc.h

globlcmp.o: globlcmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  conscomp.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h globldef.h globlcmp.h

globlcom.o: globlcom.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h globldef.h \
  prntutil.h router.h globlcom.h

globldef.o: globldef.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h globlbin.h modulbin.h cstrcbin.h globldef.h commline.h \
  globlbsc.h globlcmp.h globlcom.h globlpsr.h memalloc.h modulpsr.h \
  scanner.h modulutl.h prntutil.h router.h strngrtr.h

globlpsr.o: globlpsr.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h cstrcpsr.h strngfun.h exprnpsr.h scanner.h globlbsc.h \
  globldef.h memalloc.h modulpsr.h modulutl.h pprint.h prntutil.h \
  router.h watch.h globlpsr.h

immthpsr.o: immthpsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  classcom.h cstrccom.h moduldef.h userdata.h constrct.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h objrtmch.h classfun.h \
  scanner.h cstrnutl.h exprnpsr.h genrcpsr.h genrcfun.h memalloc.h \
  prccode.h immthpsr.h

incrrset.o: incrrset.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h argacces.h drive.h engine.h \
  lgcldpnd.h retract.h pattern.h scanner.h reorder.h router.h reteutil.h \
  rulecom.h incrrset.h

inherpsr.o: inherpsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  classcom.h cstrccom.h moduldef.h userdata.h constrct.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h objrtmch.h classfun.h \
  scanner.h memalloc.h modulutl.h pprint.h prntutil.h router.h \
  inherpsr.h

inscom.o: inscom.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h classcom.h classfun.h scanner.h \
  classinf.h commline.h exprnpsr.h insfile.h insmngr.h inscom.h \
  insmoddp.h insmult.h inspsr.h lgcldpnd.h memalloc.h msgcom.h msgpass.h \
  msgfun.h prntutil.h router.h strngrtr.h sysdep.h

insfile.o: insfile.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h classcom.h classfun.h scanner.h \
  memalloc.h factmngr.h tmpltdef.h factbld.h facthsh.h inscom.h \
  insmngr.h inspsr.h prntutil.h router.h strngrtr.h symblbin.h sysdep.h \
  insfile.h

insfun.o: insfun.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h classcom.h classfun.h scanner.h \
  cstrnchk.h drive.h engine.h lgcldpnd.h retract.h inscom.h insmngr.h \
  memalloc.h modulutl.h msgcom.h msgpass.h msgfun.h prccode.h prntutil.h \
  router.h

insmngr.o: insmngr.c setup.h envrnmnt.h entities.h usrsetup.h network.h \
  match.h ruledef.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h objrtmch.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h drive.h lgcldpnd.h \
  objrtfnx.h classcom.h classfun.h scanner.h cstrnchk.h engine.h \
  retract.h memalloc.h miscfun.h modulutl.h msgcom.h msgpass.h msgfun.h \
  prccode.h prntutil.h router.h sysdep.h insmngr.h inscom.h watch.h

insmoddp.o: insmoddp.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h inscom.h \
  insmngr.h inspsr.h memalloc.h miscfun.h msgcom.h msgpass.h msgfun.h \
  prccode.h scanner.h prntutil.h router.h insmoddp.h

insmult.o: insmult.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h msgfun.h msgpass.h multifun.h \
  prntutil.h router.h insmult.h

inspsr.o: inspsr.c setup.h envrnmnt.h entities.h usrsetup.h classcom.h \
  cstrccom.h moduldef.h userdata.h constrct.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h objrtmch.h classfun.h scanner.h \
  classinf.h exprnpsr.h pprint.h prntutil.h router.h inspsr.h

insquery.o: insquery.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h classcom.h \
  classfun.h scanner.h exprnpsr.h insmngr.h inscom.h insqypsr.h \
  memalloc.h prcdrfun.h prntutil.h router.h insquery.h

insqypsr.o: insqypsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  classcom.h cstrccom.h moduldef.h userdata.h constrct.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h objrtmch.h exprnpsr.h \
  scanner.h insquery.h prcdrpsr.h pprint.h prntutil.h router.h \
  strngrtr.h insqypsr.h

iofun.o: iofun.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h commline.h exprnpsr.h scanner.h \
  filertr.h memalloc.h miscfun.h pprint.h prcdrfun.h prntutil.h router.h \
  strngrtr.h sysdep.h iofun.h

lgcldpnd.o: lgcldpnd.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h engine.h \
  lgcldpnd.h retract.h factmngr.h tmpltdef.h factbld.h facthsh.h \
  memalloc.h pattern.h scanner.h reorder.h reteutil.h rulecom.h router.h

main.o: main.c clips.h setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h memalloc.h \
  cstrcpsr.h strngfun.h fileutil.h envrnbld.h commline.h prntutil.h \
  router.h filertr.h strngrtr.h iofun.h sysdep.h bmathfun.h exprnpsr.h \
  scanner.h miscfun.h watch.h modulbsc.h bload.h exprnbin.h symblbin.h \
  bsave.h rulebsc.h engine.h lgcldpnd.h retract.h drive.h incrrset.h \
  rulecom.h dffctdef.h dffctbsc.h tmpltdef.h factbld.h tmpltbsc.h \
  tmpltfun.h factmngr.h facthsh.h factcom.h factfile.h factfun.h \
  globldef.h globlbsc.h globlcom.h dffnxfun.h genrccom.h genrcfun.h \
  classcom.h classexm.h classfun.h classinf.h classini.h classpsr.h \
  defins.h inscom.h insfile.h insmngr.h msgcom.h msgpass.h

memalloc.o: memalloc.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h memalloc.h prntutil.h router.h utility.h evaluatn.h \
  moduldef.h userdata.h insfun.h object.h constrct.h constrnt.h \
  expressn.h exprnops.h multifld.h symbol.h match.h network.h ruledef.h \
  agenda.h crstrtgy.h conscomp.h extnfunc.h symblcmp.h cstrccom.h \
  objrtmch.h

miscfun.o: miscfun.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h exprnpsr.h scanner.h memalloc.h \
  prntutil.h router.h sysdep.h dffnxfun.h factfun.h factmngr.h \
  tmpltdef.h factbld.h facthsh.h tmpltutl.h miscfun.h

modulbin.o: modulbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h cstrcbin.h memalloc.h modulbin.h

modulbsc.o: modulbsc.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h bload.h \
  exprnbin.h sysdep.h symblbin.h modulbin.h cstrcbin.h modulcmp.h \
  prntutil.h router.h modulbsc.h

modulcmp.o: modulcmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  conscomp.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h sysdep.h modulcmp.h

moduldef.o: moduldef.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h bload.h \
  exprnbin.h sysdep.h symblbin.h modulbin.h cstrcbin.h memalloc.h \
  modulbsc.h modulcmp.h modulpsr.h scanner.h prntutil.h router.h

modulpsr.o: modulpsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrcpsr.h \
  strngfun.h memalloc.h modulutl.h scanner.h pprint.h prntutil.h \
  router.h bload.h exprnbin.h sysdep.h symblbin.h modulpsr.h

modulutl.o: modulutl.c setup.h envrnmnt.h entities.h usrsetup.h \
  cstrcpsr.h strngfun.h memalloc.h modulpsr.h evaluatn.h constant.h \
  moduldef.h userdata.h symbol.h scanner.h pprint.h prntutil.h router.h \
  sysdep.h watch.h expressn.h exprnops.h constrct.h utility.h insfun.h \
  object.h constrnt.h multifld.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h \
  modulutl.h

msgcom.o: msgcom.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h bload.h exprnbin.h sysdep.h \
  symblbin.h classcom.h classfun.h scanner.h classinf.h msgpsr.h \
  insmoddp.h msgfun.h msgpass.h memalloc.h prccode.h prntutil.h router.h \
  watch.h msgcom.h

msgfun.o: msgfun.c setup.h envrnmnt.h entities.h usrsetup.h classcom.h \
  cstrccom.h moduldef.h userdata.h constrct.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h objrtmch.h classfun.h scanner.h \
  inscom.h memalloc.h msgcom.h msgpass.h prccode.h prntutil.h router.h \
  msgfun.h

msgpass.o: msgpass.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h classcom.h classfun.h scanner.h \
  commline.h exprnpsr.h inscom.h memalloc.h msgcom.h msgpass.h msgfun.h \
  prccode.h prcdrfun.h prntutil.h proflfun.h router.h strngfun.h

msgpsr.o: msgpsr.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h classcom.h classfun.h scanner.h cstrcpsr.h strngfun.h \
  cstrnchk.h exprnpsr.h memalloc.h modulutl.h msgcom.h msgpass.h \
  msgfun.h pprint.h prccode.h prntutil.h router.h strngrtr.h msgpsr.h

multifld.o: multifld.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h evaluatn.h exprnops.h expressn.h constrct.h userdata.h \
  moduldef.h utility.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h memalloc.h scanner.h prntutil.h \
  router.h strngrtr.h

multifun.o: multifun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnpsr.h \
  scanner.h memalloc.h multifun.h pprint.h prcdrpsr.h prcdrfun.h \
  prntutil.h router.h

objbin.o: objbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h classcom.h classfun.h scanner.h classini.h \
  cstrcbin.h cstrnbin.h memalloc.h modulbin.h msgcom.h msgpass.h \
  msgfun.h prntutil.h router.h objrtbin.h objbin.h

objcmp.o: objcmp.c setup.h envrnmnt.h entities.h usrsetup.h conscomp.h \
  constrct.h userdata.h moduldef.h utility.h evaluatn.h constant.h \
  insfun.h object.h constrnt.h expressn.h exprnops.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h cstrccom.h objrtmch.h \
  extnfunc.h symblcmp.h classcom.h classfun.h scanner.h classini.h \
  cstrncmp.h objrtfnx.h sysdep.h objrtcmp.h objcmp.h

objrtbin.o: objrtbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h classfun.h scanner.h classcom.h memalloc.h \
  pattern.h reorder.h reteutil.h rulecom.h rulebin.h cstrcbin.h \
  modulbin.h objrtbin.h

objrtbld.o: objrtbld.c setup.h envrnmnt.h entities.h usrsetup.h \
  classcom.h cstrccom.h moduldef.h userdata.h constrct.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h objrtmch.h classfun.h \
  scanner.h cstrnutl.h cstrnchk.h cstrnops.h drive.h inscom.h insmngr.h \
  memalloc.h pattern.h reorder.h prntutil.h reteutil.h rulecom.h \
  rulepsr.h exprnpsr.h objrtgen.h objrtfnx.h pprint.h router.h \
  objrtbin.h objrtcmp.h objrtbld.h

objrtcmp.o: objrtcmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  conscomp.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h classcom.h objrtfnx.h \
  pattern.h scanner.h reorder.h sysdep.h objrtcmp.h

objrtfnx.o: objrtfnx.c setup.h envrnmnt.h entities.h usrsetup.h \
  classcom.h cstrccom.h moduldef.h userdata.h constrct.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h objrtmch.h classfun.h \
  scanner.h bload.h exprnbin.h sysdep.h symblbin.h drive.h engine.h \
  lgcldpnd.h retract.h memalloc.h prntutil.h reteutil.h rulecom.h \
  router.h objrtfnx.h

objrtgen.o: objrtgen.c setup.h envrnmnt.h entities.h usrsetup.h \
  classfun.h object.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h scanner.h \
  classcom.h objrtfnx.h objrtgen.h reorder.h pattern.h

objrtmch.o: objrtmch.c setup.h envrnmnt.h entities.h usrsetup.h \
  classfun.h object.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h scanner.h \
  classcom.h memalloc.h drive.h engine.h lgcldpnd.h retract.h incrrset.h \
  objrtfnx.h prntutil.h reteutil.h rulecom.h ruledlt.h reorder.h \
  pattern.h router.h insmngr.h inscom.h

parsefun.o: parsefun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrcpsr.h \
  strngfun.h exprnpsr.h scanner.h memalloc.h pprint.h prcdrpsr.h \
  prntutil.h router.h strngrtr.h parsefun.h

pattern.o: pattern.c setup.h envrnmnt.h entities.h usrsetup.h constant.h \
  constrnt.h evaluatn.h cstrnchk.h cstrnutl.h exprnpsr.h extnfunc.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  insfun.h object.h multifld.h symbol.h match.h network.h ruledef.h \
  agenda.h crstrtgy.h conscomp.h symblcmp.h cstrccom.h objrtmch.h \
  scanner.h memalloc.h pprint.h prntutil.h reteutil.h rulecom.h router.h \
  rulecmp.h pattern.h reorder.h

pprint.o: pprint.c setup.h envrnmnt.h entities.h usrsetup.h constant.h \
  memalloc.h sysdep.h utility.h evaluatn.h moduldef.h userdata.h \
  insfun.h object.h constrct.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h pprint.h

prccode.o: prccode.c setup.h envrnmnt.h entities.h usrsetup.h memalloc.h \
  constant.h globlpsr.h expressn.h exprnops.h constrct.h userdata.h \
  moduldef.h utility.h evaluatn.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnpsr.h \
  scanner.h pprint.h prcdrpsr.h prntutil.h router.h prccode.h

prcdrfun.o: prcdrfun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrnchk.h \
  cstrnops.h exprnpsr.h scanner.h memalloc.h prcdrpsr.h router.h \
  prcdrfun.h globldef.h

prcdrpsr.o: prcdrpsr.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrnchk.h \
  cstrnops.h cstrnutl.h exprnpsr.h scanner.h memalloc.h modulutl.h \
  pprint.h prntutil.h router.h prcdrpsr.h globldef.h globlpsr.h

prdctfun.o: prdctfun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnpsr.h \
  scanner.h router.h prdctfun.h

prntutil.o: prntutil.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrcpsr.h \
  strngfun.h factmngr.h tmpltdef.h factbld.h facthsh.h inscom.h \
  insmngr.h memalloc.h multifun.h router.h scanner.h strngrtr.h sysdep.h \
  prntutil.h

proflfun.o: proflfun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h classcom.h \
  dffnxfun.h genrccom.h genrcfun.h memalloc.h msgcom.h msgpass.h \
  router.h sysdep.h proflfun.h

reorder.o: reorder.c setup.h envrnmnt.h entities.h usrsetup.h cstrnutl.h \
  constrnt.h evaluatn.h constant.h extnfunc.h expressn.h exprnops.h \
  constrct.h userdata.h moduldef.h utility.h insfun.h object.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h symblcmp.h cstrccom.h objrtmch.h memalloc.h pattern.h \
  scanner.h reorder.h prntutil.h router.h rulelhs.h

reteutil.o: reteutil.c setup.h envrnmnt.h entities.h usrsetup.h drive.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h engine.h lgcldpnd.h retract.h \
  incrrset.h memalloc.h pattern.h scanner.h reorder.h prntutil.h \
  router.h rulecom.h reteutil.h

retract.o: retract.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h argacces.h drive.h engine.h \
  lgcldpnd.h retract.h memalloc.h prntutil.h reteutil.h rulecom.h \
  router.h

router.o: router.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h filertr.h memalloc.h prntutil.h \
  scanner.h strngrtr.h sysdep.h router.h

rulebin.o: rulebin.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h bload.h exprnbin.h sysdep.h \
  symblbin.h bsave.h engine.h lgcldpnd.h retract.h memalloc.h pattern.h \
  scanner.h reorder.h reteutil.h rulecom.h rulebsc.h rulebin.h \
  cstrcbin.h modulbin.h

rulebld.o: rulebld.c setup.h envrnmnt.h entities.h usrsetup.h constant.h \
  constrct.h userdata.h moduldef.h utility.h evaluatn.h insfun.h \
  object.h constrnt.h expressn.h exprnops.h multifld.h symbol.h match.h \
  network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h drive.h incrrset.h memalloc.h \
  pattern.h scanner.h reorder.h prntutil.h reteutil.h rulecom.h router.h \
  rulebld.h rulepsr.h watch.h

rulebsc.o: rulebsc.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h drive.h engine.h lgcldpnd.h retract.h \
  reteutil.h rulecom.h router.h watch.h rulebin.h cstrcbin.h modulbin.h \
  rulecmp.h rulebsc.h

rulecmp.o: rulecmp.c setup.h envrnmnt.h entities.h usrsetup.h factbld.h \
  network.h match.h ruledef.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h objrtmch.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h pattern.h scanner.h \
  reorder.h reteutil.h rulecom.h rulecmp.h

rulecom.o: rulecom.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h engine.h lgcldpnd.h retract.h \
  incrrset.h memalloc.h pattern.h scanner.h reorder.h prntutil.h \
  reteutil.h rulecom.h router.h ruledlt.h sysdep.h watch.h rulebin.h \
  cstrcbin.h modulbin.h

rulecstr.o: rulecstr.c setup.h envrnmnt.h entities.h usrsetup.h \
  analysis.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h reorder.h \
  pattern.h scanner.h cstrnchk.h cstrnops.h cstrnutl.h prcdrpsr.h \
  prntutil.h router.h rulepsr.h rulecstr.h

ruledef.o: ruledef.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h drive.h engine.h lgcldpnd.h retract.h \
  memalloc.h pattern.h scanner.h reorder.h reteutil.h rulecom.h \
  rulebsc.h rulepsr.h ruledlt.h bload.h exprnbin.h sysdep.h symblbin.h \
  rulebin.h cstrcbin.h modulbin.h rulecmp.h

ruledlt.o: ruledlt.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h bload.h exprnbin.h sysdep.h \
  symblbin.h drive.h engine.h lgcldpnd.h retract.h memalloc.h pattern.h \
  scanner.h reorder.h reteutil.h rulecom.h ruledlt.h

rulelhs.o: rulelhs.c setup.h envrnmnt.h entities.h usrsetup.h agenda.h \
  ruledef.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h objrtmch.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h crstrtgy.h argacces.h cstrnchk.h exprnpsr.h \
  scanner.h memalloc.h pattern.h reorder.h pprint.h prntutil.h router.h \
  rulelhs.h

rulepsr.o: rulepsr.c setup.h envrnmnt.h entities.h usrsetup.h analysis.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h reorder.h pattern.h scanner.h \
  cstrcpsr.h strngfun.h cstrnchk.h cstrnops.h engine.h lgcldpnd.h \
  retract.h exprnpsr.h incrrset.h memalloc.h modulutl.h prccode.h \
  prcdrpsr.h pprint.h prntutil.h router.h rulebld.h rulebsc.h rulecstr.h \
  ruledlt.h rulelhs.h watch.h tmpltfun.h factmngr.h tmpltdef.h factbld.h \
  facthsh.h bload.h exprnbin.h sysdep.h symblbin.h rulepsr.h

scanner.o: scanner.c setup.h envrnmnt.h entities.h usrsetup.h constant.h \
  memalloc.h pprint.h prntutil.h router.h symbol.h sysdep.h utility.h \
  evaluatn.h moduldef.h userdata.h insfun.h object.h constrct.h \
  constrnt.h expressn.h exprnops.h multifld.h match.h network.h \
  ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h symblcmp.h \
  cstrccom.h objrtmch.h scanner.h

sortfun.o: sortfun.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h dffnxfun.h memalloc.h sysdep.h \
  sortfun.h

strngfun.o: strngfun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h commline.h \
  cstrcpsr.h strngfun.h engine.h lgcldpnd.h retract.h exprnpsr.h \
  scanner.h memalloc.h miscfun.h prcdrpsr.h pprint.h prntutil.h router.h \
  strngrtr.h sysdep.h drive.h

strngrtr.o: strngrtr.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h memalloc.h prntutil.h router.h sysdep.h strngrtr.h \
  utility.h evaluatn.h moduldef.h userdata.h insfun.h object.h \
  constrct.h constrnt.h expressn.h exprnops.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h

symblbin.o: symblbin.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h bload.h \
  exprnbin.h sysdep.h symblbin.h bsave.h cstrnbin.h exprnpsr.h scanner.h \
  memalloc.h router.h

symblcmp.o: symblcmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrncmp.h \
  exprnpsr.h scanner.h memalloc.h prntutil.h router.h sysdep.h

symbol.o: symbol.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h memalloc.h prntutil.h router.h \
  sysdep.h

sysdep.o: sysdep.c setup.h envrnmnt.h entities.h usrsetup.h memalloc.h \
  sysdep.h

textpro.o: textpro.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h commline.h memalloc.h prntutil.h \
  router.h sysdep.h textpro.h

tmpltbin.o: tmpltbin.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h bsave.h cstrnbin.h factbin.h factbld.h factmngr.h \
  tmpltdef.h facthsh.h memalloc.h tmpltpsr.h tmpltutl.h tmpltbin.h \
  cstrcbin.h modulbin.h

tmpltbsc.o: tmpltbsc.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrcpsr.h \
  strngfun.h factrhs.h factmngr.h tmpltdef.h factbld.h facthsh.h \
  scanner.h memalloc.h router.h tmpltbin.h cstrcbin.h modulbin.h \
  tmpltcmp.h tmpltpsr.h tmpltutl.h tmpltbsc.h

tmpltcmp.o: tmpltcmp.c setup.h envrnmnt.h entities.h usrsetup.h \
  conscomp.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  cstrccom.h objrtmch.h extnfunc.h symblcmp.h cstrncmp.h factcmp.h \
  pattern.h scanner.h reorder.h tmpltdef.h factbld.h tmpltcmp.h

tmpltdef.o: tmpltdef.c setup.h envrnmnt.h entities.h usrsetup.h \
  cstrccom.h moduldef.h userdata.h constrct.h utility.h evaluatn.h \
  constant.h insfun.h object.h constrnt.h expressn.h exprnops.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h objrtmch.h cstrnchk.h memalloc.h \
  modulpsr.h scanner.h modulutl.h pattern.h reorder.h router.h \
  tmpltbsc.h tmpltdef.h factbld.h tmpltfun.h factmngr.h facthsh.h \
  tmpltpsr.h tmpltutl.h bload.h exprnbin.h sysdep.h symblbin.h \
  tmpltbin.h cstrcbin.h modulbin.h tmpltcmp.h

tmpltfun.o: tmpltfun.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h commline.h \
  cstrnchk.h default.h exprnpsr.h scanner.h factmngr.h tmpltdef.h \
  factbld.h facthsh.h factrhs.h memalloc.h modulutl.h pprint.h \
  prcdrpsr.h prntutil.h reorder.h pattern.h router.h sysdep.h tmpltlhs.h \
  tmpltrhs.h tmpltutl.h tmpltfun.h

tmpltlhs.o: tmpltlhs.c setup.h envrnmnt.h entities.h usrsetup.h \
  constant.h constrct.h userdata.h moduldef.h utility.h evaluatn.h \
  insfun.h object.h constrnt.h expressn.h exprnops.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h exprnpsr.h scanner.h factrhs.h \
  factmngr.h tmpltdef.h factbld.h facthsh.h memalloc.h modulutl.h \
  pattern.h reorder.h pprint.h prntutil.h router.h tmpltutl.h tmpltlhs.h

tmpltpsr.o: tmpltpsr.c setup.h envrnmnt.h entities.h usrsetup.h bload.h \
  utility.h evaluatn.h constant.h moduldef.h userdata.h insfun.h \
  object.h constrct.h constrnt.h expressn.h exprnops.h multifld.h \
  symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h \
  extnfunc.h symblcmp.h cstrccom.h objrtmch.h exprnbin.h sysdep.h \
  symblbin.h cstrcpsr.h strngfun.h cstrnchk.h cstrnpsr.h cstrnutl.h \
  default.h exprnpsr.h scanner.h factmngr.h tmpltdef.h factbld.h \
  facthsh.h memalloc.h modulutl.h pattern.h reorder.h pprint.h \
  prntutil.h router.h tmpltbsc.h watch.h tmpltpsr.h

tmpltrhs.o: tmpltrhs.c setup.h envrnmnt.h entities.h usrsetup.h default.h \
  constrnt.h evaluatn.h constant.h extnfunc.h expressn.h exprnops.h \
  constrct.h userdata.h moduldef.h utility.h insfun.h object.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h symblcmp.h cstrccom.h objrtmch.h factrhs.h factmngr.h \
  tmpltdef.h factbld.h facthsh.h scanner.h memalloc.h modulutl.h \
  pprint.h prntutil.h router.h tmpltfun.h tmpltlhs.h tmpltutl.h \
  tmpltrhs.h

tmpltutl.o: tmpltutl.c setup.h envrnmnt.h entities.h usrsetup.h \
  argacces.h expressn.h exprnops.h constrct.h userdata.h moduldef.h \
  utility.h evaluatn.h constant.h insfun.h object.h constrnt.h \
  multifld.h symbol.h match.h network.h ruledef.h agenda.h crstrtgy.h \
  conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h cstrnchk.h \
  memalloc.h modulutl.h scanner.h prntutil.h router.h sysdep.h \
  tmpltbsc.h tmpltdef.h factbld.h tmpltfun.h factmngr.h facthsh.h \
  tmpltpsr.h watch.h tmpltutl.h

userdata.o: userdata.c setup.h envrnmnt.h entities.h usrsetup.h \
  userdata.h

userfunctions.o: userfunctions.c clips.h setup.h envrnmnt.h entities.h \
  usrsetup.h argacces.h expressn.h exprnops.h constrct.h userdata.h \
  moduldef.h utility.h evaluatn.h constant.h insfun.h object.h \
  constrnt.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h conscomp.h extnfunc.h symblcmp.h cstrccom.h objrtmch.h \
  memalloc.h cstrcpsr.h strngfun.h fileutil.h envrnbld.h commline.h \
  prntutil.h router.h filertr.h strngrtr.h iofun.h sysdep.h bmathfun.h \
  exprnpsr.h scanner.h miscfun.h watch.h modulbsc.h bload.h exprnbin.h \
  symblbin.h bsave.h rulebsc.h engine.h lgcldpnd.h retract.h drive.h \
  incrrset.h rulecom.h dffctdef.h dffctbsc.h tmpltdef.h factbld.h \
  tmpltbsc.h tmpltfun.h factmngr.h facthsh.h factcom.h factfile.h \
  factfun.h globldef.h globlbsc.h globlcom.h dffnxfun.h genrccom.h \
  genrcfun.h classcom.h classexm.h classfun.h classinf.h classini.h \
  classpsr.h defins.h inscom.h insfile.h insmngr.h msgcom.h msgpass.h

utility.o: utility.c setup.h envrnmnt.h entities.h usrsetup.h commline.h \
  evaluatn.h constant.h factmngr.h conscomp.h constrct.h userdata.h \
  moduldef.h utility.h insfun.h object.h constrnt.h expressn.h \
  exprnops.h multifld.h symbol.h match.h network.h ruledef.h agenda.h \
  crstrtgy.h cstrccom.h objrtmch.h extnfunc.h symblcmp.h tmpltdef.h \
  factbld.h facthsh.h memalloc.h prntutil.h router.h sysdep.h

watch.o: watch.c setup.h envrnmnt.h entities.h usrsetup.h argacces.h \
  expressn.h exprnops.h constrct.h userdata.h moduldef.h utility.h \
  evaluatn.h constant.h insfun.h object.h constrnt.h multifld.h symbol.h \
  match.h network.h ruledef.h agenda.h crstrtgy.h conscomp.h extnfunc.h \
  symblcmp.h cstrccom.h objrtmch.h memalloc.h router.h watch.h
