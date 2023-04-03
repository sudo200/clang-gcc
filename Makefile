#!/bin/env make -f

package:
	xbps-create \
		-A noarch \
		-C 'gcc>=0' \
		-D 'clang>=0' \
		-l 'Public Domain' \
		-m sudo200 \
		-n clang-gcc-1.0_0 \
		-s 'Package replacing gcc with clang from LLVM' \
		package

clean:
	$(RM) $(wildcard *.xbps)

.PHONY: package clean

