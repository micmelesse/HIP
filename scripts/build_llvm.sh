cd /dockerx/llvm-project
rm -rf build
mkdir build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=../dist \
    -DLLVM_SOURCE_DIR=../llvm \
    -DLLVM_TARGETS_TO_BUILD="X86;NVPTX" \
    -DLLVM_ENABLE_PROJECTS="clang" \
    -DCMAKE_BUILD_TYPE=Release \
    ../llvm
make -j install
