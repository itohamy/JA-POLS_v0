

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

## Usage
JA-POLS method includes 3 steps that run in separate modules:
- Joint alignment: align all input images to a common coordinate system
- Learning of two tasks:
    - Partially-overlapping Local Subspaces (the background)
    - Alignment prediction
- BG/FG separation for a (previously-unseen) input frame 

Configuration parameters: the file config.py includes all required parameters for the 3 modules.

Before start running the code, insert the following config parameter:

Your local path to the JA-POLS folder:
```
paths = dict(
    my_path = '/PATH_TO_JAPOLS_CODE/JA-POLS/',
)
```

The size of a single input frame:
```
images = dict(
    img_sz = (250, 420, 3),
)
```
### Usage of each module:


#### Joint Alignment
<ins>Code</ins>: main function is located in: *1_joint_alignment/main_joint_alignment.py*

<ins>Input</ins>: a video or a sequence of images, that the BG model will be learned from.<br />
This should be located in *input/video* or *input/images* respectively.

<ins>Output</ins>: Affine transformation for each of the input images, located in: *data/final_AFFINE_trans.npy*.<br />
In this file, record *i* contains the affine transformations (6-parameters) that is associated with input image *i*.

<ins>Required params in config.py:</ins> data type (video or a sequence of images), and relevant info about the input data:
```
se = dict(
    data_type = 'images',  # 'images' or 'video'
    video_name = 'jitter.mp4',  # relevant when data_type = 'video'
    img_type = '*.png',  # relevant when data_type = 'images'
)
```

<ins>Description</ins>:<br />
Here we solve a joint-alignment problem: 

<br>
<p align="center">
<img src="https://github.com/itohamy/JA-POLS_v0/blob/master/tmp/joint_align_0.png" alt=" " width="520" height="320">
</p>

<br>
<p align="left">
<img src="https://github.com/itohamy/JA-POLS_v0/blob/master/tmp/joint_align_1.png" alt=" " width="700" height="150">
</p>



#### Learning
<ins>Code location (main function)</ins>: 2_learning/main_learning.py

<ins>Input</ins>:

<ins>Output</ins>:

<ins>Required params in config.py:</ins>


#### Background/Foreground Separation
<ins>Code location (main function)</ins>:

<ins>Input</ins>:

<ins>Output</ins>:

<ins>Required params in config.py:</ins>
