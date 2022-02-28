# train a standard attribute classifier for each target attribute
python main.py --experiment baseline --attribute 9
python main.py --experiment baseline --attribute 26
python main.py --experiment baseline --attribute 13
python main.py --experiment baseline --attribute 33
python main.py --experiment baseline --attribute 32

python main.py --experiment baseline --attribute 20

# sample random latent vectors z and generated images
# !! doesn't need to assign attribute
python generate_images.py --experiment orig

# hallucinate labels for the generated images with the trained baseline models.
python get_scores.py --attribute 9
python get_scores.py --attribute 26
python get_scores.py --attribute 13
python get_scores.py --attribute 33

python get_scores.py --attribute 20

# estimate hyperplanes and compute complementary latent vectors z' (our augmentation)
python linear.py --attribute 9
python linear.py --attribute 26
python linear.py --attribute 13
python linear.py --attribute 33

# generate images from z'. Set image output directory and latent vector filename.
python generate_images.py --experiment pair --attribute 9
python generate_images.py --experiment pair --attribute 26
python generate_images.py --experiment pair --attribute 13
python generate_images.py --experiment pair --attribute 33

# train our models (i.e. target classifiers trained with our augmented data).
python main.py --experiment model --attribute 9
python main.py --experiment model --attribute 26
python main.py --experiment model --attribute 13
python main.py --experiment model --attribute 33

python main.py --experiment model --attribute 9 --test_mode True
python main.py --experiment model --attribute 26 --test_mode True
python main.py --experiment model --attribute 13 --test_mode True
python main.py --experiment model --attribute 33 --test_mode True
# 9 blond hair
# 26 pale skin
# 13 chubby
# 33 wavy hair
# 32 straight hair


# 20 male