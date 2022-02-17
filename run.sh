# train a standard attribute classifier for each target attribute
python main.py --experiment baseline

# sample random latent vectors z and generated images
python generate_images.py --experiment orig --attribute 9
python generate_images.py --experiment orig --attribute 20

# hallucinate labels for the generated images with the trained baseline models.
python get_scores.py

# estimate hyperplanes and compute complementary latent vectors z' (our augmentation)
python linear.py


python generate_images.py --experiment pair


python main.py --experiment model

# 9 blond hair
# 20 pale skin