# test_dtifit

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

> **Test App that fits a diffusion tensor to DWI within a brain mask with FSL dtifit and outputs FA, MD, AD, RD and tensor maps.**

Runs dtifit (FSL 6.0.4) and copies FA, MD, the tensor, L1 as AD, and the mean of L2 and L3 as RD into the tensor output. Registered as a test App; use a maintained DTI App for production.

| | |
|---|---|
| 📥 **Inputs** | `neuro/dwi` · `neuro/mask` |
| 📤 **Outputs** | `neuro/tensor` |
| 🐳 **Container** | `brainlife/fsl:6.0.4-patched2` |
| ⚙️ **Resources** | 2 GB memory · 0.17 h walltime |
| 🔗 **Run it** | [doi.org/10.25663/brainlife.app.874](https://doi.org/10.25663/brainlife.app.874) |

#### 📥 Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `dwi` | `neuro/dwi` | yes | Diffusion-weighted image with bvals and bvecs. |
| `mask` | `neuro/mask` | yes | Brain mask in DWI space. |

#### 📤 Outputs

| Output | Datatype | Description |
|---|---|---|
| `tensor` | `neuro/tensor` | DTI maps: fa, md, ad, rd and tensors. |

<!-- brainlife-app:end -->

brainlife dtifit app test
