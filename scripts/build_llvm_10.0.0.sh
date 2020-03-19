cd /dockerx/llvm-project

git checkout llvmorg-10.0.0-rc3

rm -rf build dist
mkdir build dist
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=../dist \
    -DLLVM_SOURCE_DIR=../llvm \
    -DLLVM_TARGETS_TO_BUILD="X86;NVPTX" \
    -DLLVM_ENABLE_PROJECTS="clang" \
    -DLLVM_TEMPORARILY_ALLOW_OLD_TOOLCHAIN=ON \
    -DCMAKE_BUILD_TYPE=Release \
    ../llvm

make -j install
