.PHONY: lib
lib:
	./pkg/pkg.ml build

uninstall:
	opam remove merz

.PHONY: doc
doc:
	mkdir -p doc
	ocamldoc -i ./_build -d doc crc64.ml -html
