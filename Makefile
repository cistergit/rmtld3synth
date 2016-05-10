RESULT = rmtld3synthcpp
SOURCES = \
  rmtld3.ml helper.ml rmtld3_synth_test.ml rmtld3_synthesis.ml

#LIBS= unix

USE_CAMLP4 = yes

PACKS = unix sexplib type_conv

PP = camlp4find $(PACKS)
export PP

all: native-code

OCAMLMAKEFILE = OCamlMakefile
include $(OCAMLMAKEFILE)
