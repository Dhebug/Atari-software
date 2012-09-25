
#HOSTOS := $(shell uname -s)
#PLATFORM ?= $(HOSTOS)

ifeq ($(RELEASE),)
DEBUG = 1
CPPFLAGS += -D_DEBUG
else
CPPFLAGS += -DNDEBUG
endif

ifeq ($(PLATFORM),win32)
EXE = .exe
.SUFFIXES: .exe
CROSS_COMPILE ?= i586-mingw32msvc-
CC := $(CROSS_COMPILE)$(CC)
CXX := $(CROSS_COMPILE)$(CXX)
AR :=  $(CROSS_COMPILE)$(AR)
WINDRES := $(CROSS_COMPILE)windres
CPPFLAGS += -DWIN32

# add default rules for exe files
%.exe: %.o
	$(LINK.o) $^ $(LOADLIBES) $(LDLIBS) -o $@

%.exe: %.c
	$(LINK.c) $^ $(LOADLIBES) $(LDLIBS) -o $@

endif


