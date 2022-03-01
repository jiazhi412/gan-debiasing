import pickle
import os
import argparse



if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--attribute', type=str)
    opt = vars(parser.parse_args())

    save_folder = 'record/model'
    attribute = opt['attribute']
    save_folder = os.path.join(save_folder, attribute)
    with open(save_folder+'/test_results.pkl', 'rb') as f:
        data = pickle.load(f)
    print(data)
