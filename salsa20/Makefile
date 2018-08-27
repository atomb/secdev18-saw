SAW?=saw

run: salsa20.bc salsa.log salsa-compositional.log

%.log: %.saw salsa20.bc
	${SAW} $< 2>&1 | tee $@

%.bc: %.c
	clang -c -g -emit-llvm $<

clean:
	rm -f *.bc *.log
