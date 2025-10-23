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
o.str:	c.str
o.module:	c.module
o.module:	C:h.kernel
o.module:	C:h.swis
o.module:	h.BlockDevicesHdr
o.module:	C:h.kernel
o.module:	h.commands
o.module:	C:h.kernel
o.module:	h.devices
o.module:	h.device
o.module:	h.BlockDevices
o.module:	C:Global.h.Services
o.commands:	c.commands
o.commands:	C:h.kernel
o.commands:	C:h.swis
o.commands:	h.BlockDevicesHdr
o.commands:	C:h.kernel
o.commands:	h.commands
o.commands:	C:h.kernel
o.commands:	h.devices
o.commands:	h.device
o.commands:	h.BlockDevices
o.devices:	c.devices
o.devices:	C:h.kernel
o.devices:	h.devices
o.devices:	h.device
o.devices:	h.BlockDevices
o.devices:	C:h.swis
o.devices:	h.BlockDevicesHdr
o.devices:	C:h.kernel
o.device:	c.device
o.device:	AsmLib:h.callx
o.device:	C:h.swis
o.device:	C:h.kernel
o.device:	h.BlockDevicesHdr
o.device:	C:h.kernel
o.device:	h.BlockDevices
o.device:	h.device
o.device:	h.BlockDevices
o.device:	h.devices
o.device:	h.device
o.device:	h.str
