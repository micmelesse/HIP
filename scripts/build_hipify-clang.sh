cd hipify-clang
rm -rf build dist
mkdir build dist
cd build

cmake \
 -DCMAKE_INSTALL_PREFIX=/dockerx/llvm-project/dist \
 -DCMAKE_BUILD_TYPE=Release \
 ..

make -j install