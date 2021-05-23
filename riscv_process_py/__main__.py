from riscv_process_py import *


def main(i: str):
    r = [preprocess(i) for i in load(i)]
    print(r)


main("beqz a0, step114514")
