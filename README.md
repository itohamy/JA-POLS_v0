

# JA-POLS

**Authors:** Irit Chelly, Vlad Winter, Dor Litvak, David Rosen, and Oren Freifeld.

This code repository corresponds to our CVPR-20 paper: **JA-POLS: a Moving-camera Background Model via Joint Alignment and Partially-overlapping Local Subspaces**.
JA-POLS is a novel 2D-based method for unsupervised learning of a moving-camera background model, which is highly scalable and allows for relatively-free camera motion.
<br>
<p align="center">
<img src="https://drive.google.com/drive/folders/1fnME3gYM-WvwGps08tWT00ZT6VlWBxfz?ths=true" alt="JA-POLS typical results">
</p>

## Requirements

## Installation

## Usage
JA-POLS method includes 3 steps that run in separate modules:
- Joint alignment
- Learning of two tasks:
    - Partially-overlapping Local Subspaces (the background)
    - Alignment prediction
- BG/FG separation for a (previously-unseen) input frame 

Configuration parameters: the file config.py include all required parameters of the 3 modules.

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
    Code: 1_joint_alignment/

    <ins>Input</ins>: a set of images or a video, that the BG model will be learned from.

    <ins>Output</ins>:

    <ins>Required params in config.py:</ins>
    - If the input frames are images, 


#### Learning

#### Background/Foreground Separation
