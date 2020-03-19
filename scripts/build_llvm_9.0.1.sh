cd /dockerx/llvm-project

git checkout llvmorg-9.0.1-rc3

rm -rf build dist
mkdir build dist
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=../dist \
    -DLLVM_SOURCE_DIR=../llvm \
    -DLLVM_TARGETS_TO_BUILD="X86;NVPTX" \
    -DCMAKE_BUILD_TYPE=Release \
    ../llvm

make -j install
