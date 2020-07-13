

# JA-POLS

**Authors:** Irit Chelly, Vlad Winter, Dor Litvak, David Rosen, and Oren Freifeld.

This code repository corresponds to our CVPR-20 paper: **JA-POLS: a Moving-camera Background Model via Joint Alignment and Partially-overlapping Local Subspaces**.
JA-POLS is a novel 2D-based method for unsupervised learning of a moving-camera background model, which is highly scalable and allows for relatively-free camera motion.
<br>
<p align="center">
<img src="https://github.com/itohamy/JA-POLS_v0/blob/master/tmp/tennis_gif.gif" alt="JA-POLS typical results" width="520" height="320">
</p>

## Requirements

## Installation

## Instructions and Description
JA-POLS method includes 3 phases that run in separate modules:
- Joint alignment: align all input images to a common coordinate system
- Learning of two tasks:
    - Partially-overlapping Local Subspaces (the background)
    - Alignment prediction
- BG/FG separation for a (previously-unseen) input frame 

**Configuration parameters:** the file config.py includes all required parameters for the 3 modules.

Before start running the code, insert the following config parameter:

Your local path to the JA-POLS folder:
```
paths = dict(
    my_path = '/PATH_TO_JAPOLS_CODE/JA-POLS/',
)
```

The size of a single input frame (height, width, depth):
```
images = dict(
    img_sz = (250, 420, 3),
)
```
### Module 1: Joint Alignment
<ins>Code</ins>:<br />
Main function: *1_joint_alignment/main_joint_alignment.py*

<ins>Input</ins>:<br />
A video or a sequence of images, that the BG model will be learned from.<br />
The video or the images should be located in *input/video* or *input/images* respectively.

<ins>Output</ins>:<br />
Affine transformations for all input images, located in: *data/final_AFFINE_trans.npy*.<br />
In this file, record *i* contains the affine transformation (6-parameters vector) that is associated with input image *i*.

<ins>Required params in config.py:</ins><br />
Data type (video or a sequence of images), and relevant info about the input data:
```
se = dict(
    data_type = 'images',  # choose from: ['images', 'video']
    video_name = 'jitter.mp4',  # relevant when data_type = 'video'
    img_type = '*.png',  # relevant when data_type = 'images'
)
```

Parameters for the spatial transformer net (when estimating the affine transformations):
```
stn = dict(
    device = '/cpu:0',   # choose from: ['/gpu:0', '/gpu:1', '/cpu:0']
    load_model = False,  # 'False' when learning a model from scratch, 'True' when using a trained network's model
    iter_per_epoch = 1, # number of iterations 
    batch_size = 10,
)
```

The rest of the parameters can (optionally) remain with the current configuration.

<ins>Description</ins>:<br />
Here we solve a joint-alignment problem: 

<br>
<p align="center">
<img src="https://github.com/itohamy/JA-POLS_v0/blob/master/tmp/joint_align_0.png" alt=" " width="520" height="290">
</p>

<br>
<p align="center">
<img src="https://github.com/itohamy/JA-POLS_v0/blob/master/tmp/joint_align_desc2.png" alt=" " width="680" height="450">
</p>

<br>
<p align="center">
<img src="https://github.com/itohamy/JA-POLS_v0/blob/master/tmp/se_graph.png" alt=" " width="280" height="100">
</p>

High-level steps:
1. Compute relative transformations for pairs of input images (according to the graph)
2. Run SE-Sync framework and get absolute SE transformations for each frame
3. Transform images according to the absolute SE transformations
4. Estimate residual affine transformations by optimizing the above loss function using Spatial Transformer Network (STN).
5. End-up with absolute affine transformations for each of the input images
<br />
<br />

### Module 2: Learning
<ins>Code location (main function)</ins>:<br /> 
Main function: *2_learning/main_learning.py*

<ins>Input</ins>:<br /> 
Files that were prepared in module 1, located in: 
*data/final_AFFINE_trans.npy*, *data/imgs.npy*, *data/imgs_big_embd.npy*

<ins>Output</ins>:<br />
- Local subspaces for the background learning, located in: *data/subspaces/*<br /> 
- Model of a trained net for the alignment prediction, located in: *2_learning/Alignment/models/best_model.pt*

<ins>Required params in config.py:</ins><br />
**Local-subspaces learning:**<br />
Method type of the background learning algorithm, that will run on each local domain:
```
se = dict(
    method_type = 'PRPCA',  # choose from: [PCA / RPCA-CANDES / TGA / PRPCA]
)
```
The rest of the parameters can (optionally) remain with the current configuration.

**Alignment-prediction learning:**<br />
Parameters for the regressor net (when learning a map between images and transformations):
```
regress_trans = dict(
    load_model = False,  # 'False' when learning a model from scratch, 'True' when using a trained network's model
    gpu_num = 0,  # number of gpu to use (in case there is more than one)
)
```
The rest of the parameters can (optionally) remain with the current configuration.


<ins>Description</ins>:<br />
Here we learn two tasks, based on the affine transformations that were learned in module 1:
<br>
<p align="center">
<img src="https://github.com/itohamy/JA-POLS_v0/blob/master/tmp/phase2.png" alt=" " width="270" height="240">
</p>

<br>
<p align="center">
<img src="https://github.com/itohamy/JA-POLS_v0/blob/master/tmp/learning_desc.png" alt=" " width="650" height="720">
</p>


### Module 3: Background/Foreground Separation
<ins>Code location (main function)</ins>:

<ins>Input</ins>:

<ins>Output</ins>:

<ins>Required params in config.py:</ins>
