# Patrick's cmake script for SuperLU, developed on wingtip-gpu2

mkdir build; cd build;
cmake .. \
    -DTPL_PARMETIS_INCLUDE_DIRS="${PARMETIS_ROOT}/include" \
    -DTPL_PARMETIS_LIBRARIES="${PARMETIS_BUILD_DIR}/libparmetis/libparmetis.a;${PARMETIS_BUILD_DIR}/libmetis/libmetis.a" \
    -DTPL_COMBBLAS_INCLUDE_DIRS="${COMBBLAS_ROOT}/include/CombBLAS;${COMBBLAS_BUILD_DIR}/BipartiteMatchings" \
    -DTPL_COMBBLAS_LIBRARIES="${COMBBLAS_ROOT}/lib/libCombBLAS.a" \
    -DTPL_ENABLE_COMBBLASLIB=OFF \
    -DTPL_ENABLE_PARMETISLIB=ON \
    -DTPL_ENABLE_BLASLIB=OFF \
    -DCMAKE_C_FLAGS="-std=c99 -fPIC -DPRNTlevel=1" \
    -DCMAKE_CXX_FLAGS="-std=c99 -fPIC -DPRNTlevel=1" \
    -DCMAKE_Fortran_COMPILER=mpifort \
    -DCMAKE_C_COMPILER=mpicc \
    -DCMAKE_CXX_COMPILER=mpicxx \
    -DTPL_BLAS_LIBRARIES="-lblis" \
    -DBUILD_SHARED_LIBS=ON \
    -DCMAKE_INSTALL_PREFIX=$HOME/local \
    -DXSDK_INDEX_SIZE=64 \
    -DCMAKE_EXE_LINKER_FLAGS="-shared" \
    -DTPL_ENABLE_LAPACKLIB=OFF

