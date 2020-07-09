#!/bin/bash

cat /home/anonix/tool/C2CUDATranslator/CtoCUDATranslator/C2CUDATranslator/output

echo -e "\n\n\n"

cp /home/anonix/tool/C2CUDATranslator/CtoCUDATranslator/C2CUDATranslator/output /home/anonix/tool/CU2CL/cu2cl-build/output.cu

cat /home/anonix/tool/CU2CL/cu2cl-build/output.cu

echo -e "\n\n\n"

./cu2cl-tool /home/anonix/tool/CU2CL/cu2cl-build/output.cu -import-gcc-paths -- -DGPU_ON -I ./foo

cat /home/anonix/tool/CU2CL/cu2cl-build/output.cu-cl.cl

echo -e "\n\n\n"

cat /home/anonix/tool/CU2CL/cu2cl-build/output.cu-cl.cpp