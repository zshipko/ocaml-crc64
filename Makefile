lib:
	ocamlbuild crc64.cma crc64.cmxa

install:
	$(MAKE) uninstall || :
	cd _build && ocamlfind install crc64 ../META crc64.a crc64.cma crc64.cmxa crc64.cmx

uninstall:
	ocamlfind remove crc64

.PHONY: doc
doc:
	mkdir -p doc
	ocamldoc -i ./_build -d doc crc64.ml -html
