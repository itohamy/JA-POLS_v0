

paths = dict(
    my_path = '/Users/irita/Documents/Master/Research/Tracking/Moving Camera - code/JA-POLS_v0/',
)


images = dict(
    img_sz = (250, 420, 3),
)


se = dict(
    data_type = 'video',  # 'images', 'video'
    video_name = 'jitter.mp4',  # relevant when data_type = 'video'
    img_type = '*.png',  # relevant when data_type = 'images'
    #starting_frame = 20,  # the frame number that will be placed in the middle of the panoramic region
)


stn = dict(
    device = '/cpu:0',   # '/gpu:0', '/gpu:1'
    load_model = False,
    num_stn = 3,
    iter_per_epoch = 1,
    batch_size = 10,
    weight_stddev = 1e-5,
    activation_func = "relu",  # "tanh" ,"relu"
    delta = 0.025,
    sigma = 0.7, # for Geman-Mecclure
    align_w = 1,
    regul_w = 1,
    regul_w2 = 0,
    alignment_reg = 10000,
    regulator_reg = 100,
    first_regulator = 'SE',
    second_regulator = 'SIMPLE',
    lrn_rate = 1e-5,
    ordered_batch = False,
)


pols = dict(
    shift_sz = 40,
    window_sz = (250, 420),  # (850 - 400, 1220 - 400),  #(120, 170),
    k = 1,  # relevant for: pca, TGA, empca
    trimming_percent = 97,  # relevant for: TGA
    method_type = 'TGA',  # pca / rpca_candes_v1 / TGA / ipca / empca / PRPCA
    overlap_percent = 0, # 0,  #0.5,  # minimum % of overlapped pixels out of d_tilde needed to consider an overlapped image (used in "get_overlapped_imgs")
    min_data_points = 5,  # minimum number of images to learn subspace from.
    is_zeromean = True,  # "Flase" when using PRPCA, "True" when using TGA.
    data_path = 'Data_Global/',

    # Comment: if we want to learn the whole panorama (global model): overlap_percent=0, window_sz=img_emb_sz
)


regress_trans = dict(
    load_model = False,
    gpu_num = 0,
    model_name = 'googlenet',  # Models to choose from [googlenet, resnet, alexnet, vgg, squeezenet, densenet, inception]
    batch_size = 64,
    num_epochs = 200,  #200
    learning_rate = 0.001,
    val_prct = 0.2,

    # If augmentations are needed, set to True, and choose # of them per image
    augment = True,
    aug_num_per_img = 5,
    aug_std=0.1,

    class_num = 6,  # Fixed
    test_name = 'test_false_aug',
    feature_extract = False,  # Flag for feature extracting. When False, we finetune the whole model, when True we only update the reshaped layer params
    model_path = 'Regress_transformations/models/best_model.pt',
    data_path = 'DATA/jitter/',
)


bg_tool = dict(
    gpu_num = 0,
    data_type = 'benchmark',  # 'benchmark', 'video', 'syn'
    video_path = 'movies/kitchen.mp4',
    benchmark_path = 'benchmark/cp/',
    syn_path = 'benchmark/garden_short/',
    benchmark_img_type = '*.jpg',
    syn_img_type = '.png',
    # process_all_test_imgs = False,
    only_refine = True,   # means that there is only SIFT refinement, where the image is placed in the center and warped towards the panorama. Put big gap_refine if true.
    gap_refine = 100,  # in the refinement process, this is the number of pixels gap we look at in the panorama, around the enclosing square.
    M_start = 0,   # start from this frame number
    M = 22, # number if test images to process, if '' is False
    use_gt_theta = False,
    add_synthetic = False,
    overlap_percent = 0.7, # 0, 0.7, #0.5,  # minimum % of overlapped pixels out of (window_sz*window_sz*3) needed to consider a subspace to be overlapped (used in "run_bg_model")
    is_global_model = False,
    is_zeromean = True,    # "Flase" when using PRPCA, "True" when using TGA.
    idx_list = (521,522,523,524,525,603,604,605,606,622,623,624,625,630,631,632,633,694,695,696,697,698),  # save a list of indices to run on, or -1 in case we run on a range (0:M).
                    # CP list: (740,741,742,743,744,822,823,824,825,841,842,843,844,849,850,851,852,913,914,915,916,917)
                    # Garden_small: range(1070, 1500)
                    # Garden_small syn, kitchen syn, jitter syn: (100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214)
                    # Garden_long: (580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714)
    data_path = 'Data_Global/cp/',
    regress_model_path = 'Data_Global/cp/models/best_model.pt',

    # Comment: if we want to project on the whole panorama (global model): is_global_model=True, overlap_percent=0 (and in pols: window_sz=img_emb_sz)
)
