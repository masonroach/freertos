# $SUBMAKE is imported relative path to this Makefile
RELPATH := $(dir $(SUBMAKE))

THIS_SRCDIR := $(addprefix $(RELPATH), src)
THIS_SRCADD += $(shell find $(THIS_SRCDIR) -name [^.]*.c)
SRCDIR += $(THIS_SRCDIR)
SRC += $(THIS_SRCADD)

INCDIR := $(addprefix $(RELPATH), inc)

INCFLAGS += $(addprefix -I, $(INCDIR))