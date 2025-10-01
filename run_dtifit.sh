#!/bin/bash

# parse inputs
dwi=`jq -r '.dwi' config.json`;
bvals=`jq -r '.bvals' config.json`;
bvecs=`jq -r '.bvecs' config.json`;
mask=`jq -r '.mask' config.json`;

dtifit -k ${dwi} -m ${mask} -o ${out_dir} -r ${bvecs} -b ${bvals} --save_tensor
