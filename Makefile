# Makefile for BlockDevices

COMPONENT = BlockDevices

OBJS = module commands devices device str
LIBS = AsmLib:o.libAsm-32
RES_OBJ =
EXPORTS = h.BlockDevices

include CModule

CFLAGS     += -DUSE_DEBUG -IAsmLib:
CDFLAGS    += -DDEBUGLIB
DBG_LIBS   += ${NET5LIBS}
CMHG        = cmunge
CMHGFLAGS   = -px -32bit -DCMHG

c.module: h.BlockDevicesHdr
c.commands: h.BlockDevicesHdr
c.device: h.BlockDevicesHdr

# Dynamic dependencies:
