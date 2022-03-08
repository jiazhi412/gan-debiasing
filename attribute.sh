i=17

python main.py --experiment baseline --attribute ${i}
python get_scores.py --attribute ${i}
python linear.py --attribute ${i}
python generate_images.py --experiment pair --attribute ${i}
python main.py --experiment model --attribute ${i}

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

# 20 male