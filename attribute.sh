i=19

# python main.py --experiment baseline --attribute ${i}
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