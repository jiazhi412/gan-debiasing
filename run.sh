# train a standard attribute classifier for each target attribute
python main.py --experiment baseline --attribute 9
python main.py --experiment baseline --attribute 26
python main.py --experiment baseline --attribute 13
python main.py --experiment baseline --attribute 33
python main.py --experiment baseline --attribute 19
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
python get_scores.py --attribute 19

python get_scores.py --attribute 20

# estimate hyperplanes and compute complementary latent vectors z' (our augmentation)
python linear.py --attribute 9
python linear.py --attribute 26
python linear.py --attribute 13
python linear.py --attribute 33
python linear.py --attribute 19

# generate images from z'. Set image output directory and latent vector filename.
python generate_images.py --experiment pair --attribute 9
python generate_images.py --experiment pair --attribute 26
python generate_images.py --experiment pair --attribute 13
python generate_images.py --experiment pair --attribute 33
python generate_images.py --experiment pair --attribute 19

# train our models (i.e. target classifiers trained with our augmented data).
python main.py --experiment model --attribute 9
python main.py --experiment model --attribute 26
python main.py --experiment model --attribute 13
python main.py --experiment model --attribute 33
python main.py --experiment model --attribute 19
python main.py --experiment model --attribute 3

# supplement settings 
python main.py --experiment model --attribute 20 --num_train 26248
    parser.add_argument('--num_train', type=int, default=160000)

python main.py --experiment model --attribute 9 --test_mode True
python main.py --experiment model --attribute 26 --test_mode True
python main.py --experiment model --attribute 13 --test_mode True
python main.py --experiment model --attribute 33 --test_mode True
python main.py --experiment model --attribute 19 --test_mode True
python main.py --experiment model --attribute 3 --test_mode True
python main.py --experiment model --attribute 27 --test_mode True
python main.py --experiment model --attribute 7 --test_mode True
python main.py --experiment model --attribute 20 --test_mode True



# 9 blond hair
# 26 pale skin
# 13 chubby
# 33 wavy hair
# 19 high cheekbone
# 3 bags under eye
# 27 pointy nose
# 7 big nose
# 14 double chin


# 32 straight hair
# 8 black hair
# 11 brown hair
# 17 gray hair 


return ['5_o_Clock_Shadow', 'Arched_Eyebrows', 'Attractive', 'Bags_Under_Eyes', 'Bald', 'Bangs',  'Big_Lips', 'Big_Nose', 'Black_Hair', 'Blond_Hair', 'Blurry', 'Brown_Hair', 'Bushy_Eyebrows', 'Chubby', 'Double_Chin', 'Eyeglasses', 'Goatee', 'Gray_Hair', 'Heavy_Makeup', 'High_Cheekbones', 'Male', 'Mouth_Slightly_Open', 'Mustache', 'Narrow_Eyes', 'No_Beard', 'Oval_Face', 'Pale_Skin', 'Pointy_Nose', 'Receding_Hairline', 'Rosy_Cheeks', 'Sideburns', 'Smiling', 'Straight_Hair', 'Wavy_Hair', 'Wearing_Earrings', 'Wearing_Hat', 'Wearing_Lipstick', 'Wearing_Necklace', 'Wearing_Necktie', 'Young']


# 20 male