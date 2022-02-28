import pickle
import os


if __name__ == '__main__':
    save_folder = 'record/model'
    attribute = 'Blond_Hair'
    save_folder = os.path.join(save_folder, attribute)
    with open(save_folder+'/test_results.pkl', 'rb') as f:
        data = pickle.load(f)
    print(data)
