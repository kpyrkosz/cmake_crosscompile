# Minimal example reproducing issue with new CMake feature file(GET_RUNTIME_DEPENDENCIES)

The paths to .so dependencies found with that method are broken. No matter what compiler you use these do not change, while they should (look at the "Resolved deps for demonstration" line in cmake).

The example demonstrates this problem by building `main.cpp` using 3 compilers:
- x86_64-linux-gnu-gcc/g++
- aarch64-linux-gnu-gcc/g++
- arm-linux-gnueabihf-gcc/g++

Example build logs are attached below:
- [script ran on debian](debian_run.log)
- [script ran on ubuntu](ubuntu_run.log)

They have been generated with `./try_compilers` helper script.
Obviously, to reproduce the issue it is necessary to have the crosscompilers installed. It may be necessary to create a symlinks like `x86_64-linux-gnu-gcc-8/9 -> x86_64-linux-gnu-gcc` which are not created by default.
