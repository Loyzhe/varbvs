% This is a small script to compile the necessary MEX files.
% mex -O -largeArrayDims CXXOPTIMFLAGS='-O3' LDOPTIMFLAGS='-O3' ...
%     var1fast.cpp doublevector.cpp singlematrix.cpp common.cpp
% mex -O -largeArrayDims CXXOPTIMFLAGS='-O3' LDOPTIMFLAGS='-O3' ...
%     diagsqfast.cpp doublevector.cpp singlematrix.cpp common.cpp
% mex -O -largeArrayDims CXXOPTIMFLAGS='-O3' LDOPTIMFLAGS='-O3' ...
%     diagsqtfast.cpp doublevector.cpp singlematrix.cpp common.cpp
mex -v -O -largeArrayDims COPTIMFLAGS="-std=c99 -O3" LDOPTIMFLAGS="-O3" ...
    ../C/varbvsupdatematlab.c ../C/varbvs.c ../C/doublevectormatlab.c ...
    ../C/singlematrixmatlab.c ../C/vectorops.c ../C/sigmoid.c
% mex -O -largeArrayDims CXXOPTIMFLAGS='-O3' LDOPTIMFLAGS='-O3' ...
%     varbvsbinupdate.cpp doublevector.cpp singlematrix.cpp common.cpp
fprintf('Compilation of MEX files is complete.\n');
