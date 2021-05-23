import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-i', '--include', help='included dir for clang')
parser.add_argument('-t', '--target', help='target repo\'s name for learning')
parser.add_argument('--no_cached', help='learning without using cache', action='store_true')
if __name__ == '__main__':
    args = parser.parse_args()
