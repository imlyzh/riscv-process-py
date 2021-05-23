import os

CLANG_PATH = os.environ.get('CLANG_PATH', None)
LLVM_PATH = os.environ.get('LLVM_PATH', None)
if CLANG_PATH is None:
    raise FileNotFoundError('Could not find clang')
if LLVM_PATH is None:
    raise FileNotFoundError('Could not find llvm')

# Only Support riscv32 now
TARGET_ARCH = 'riscv32-unknown-elf'


DATA_DIR = os.path.join(os.curdir, 'data')
CACHE_DIR = os.path.join(os.curdir, 'cache')
