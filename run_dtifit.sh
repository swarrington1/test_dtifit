#!/bin/bash

# parse inputs
dwi=`jq -r '.dwi' config.json`;
bvals=`jq -r '.bvals' config.json`;
bvecs=`jq -r '.bvecs' config.json`;
mask=`jq -r '.mask' config.json`;

dtifit -k ${dwi} -m ${mask} -o dti -r ${bvecs} -b ${bvals} --save_tensor

fslmaths dti_L2.nii.gz -add dti_L3.nii.gz -div 2 ./tensor/rd.nii.gz;

cp -v dti_FA.nii.gz ./tensor/fa.nii.gz
cp -v dti_MD.nii.gz ./tensor/md.nii.gz
cp -v dti_tensor.nii.gz ./tensor/tensors.nii.gz
cp -v dti_L1.nii.gz ./tensor/ad.nii.gz;
