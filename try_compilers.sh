#!/bin/bash
ARCHITECTURES="x86_64-linux-gnu aarch64-linux-gnu arm-linux-gnueabihf"

for ARCH in $ARCHITECTURES
do
	mkdir tmpbuild
	cd tmpbuild
	CMAKE_COMMAND="cmake .. -DCMAKE_CXX_COMPILER=$ARCH-g++ -DCMAKE_C_COMPILER=$ARCH-gcc && make install"
	echo "Executing $CMAKE_COMMAND"
	eval $CMAKE_COMMAND
	cd ..
	rm -rf tmpbuild
done
