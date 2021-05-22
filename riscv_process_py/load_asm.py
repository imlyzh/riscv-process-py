from typing import Dict, List, Match, Optional, Pattern
import re
from functools import reduce
from operator import add

from .instruction import Inst
from .common import *


def gen_params_matching(name: str) -> str:
    if name in ('rd', 'rs1', 'rs2'):
        return gen_reg_match(name)
    if name in ('imm', 'symbol'):
        return gen_imm_match(name)
    if name == 'csr':
        return gen_reg_match(name)
    raise MatchException(f'Unknown symbol: {name}')


def gen_matching(code: str, *symbols: str) -> str:
    regexes = [gen_params_matching(i) for i in symbols]
    r = ", ".join(regexes)
    return code + " " + r


def gen_type1_matching(code: str) -> str:
    return gen_matching(code, 'rd', 'rs1', 'rs2')


def gen_type2_matching(code: str) -> str:
    return gen_matching(code, 'rd', 'rs1', 'imm')


def gen_type3_matching(code: str) -> str:
    return gen_matching(code, 'rs1', 'rs2', 'imm')


def gen_type4_matching(code: str) -> str:
    return gen_matching(code, 'rd', 'imm')


def gen_type5_matching(code: str) -> str:
    return gen_matching(code)


def gen_csr1_matching(code: str) -> str:
    return gen_matching(code, 'rd', 'csr', 'rs1')


def gen_csr2_matching(code: str) -> str:
    return gen_matching(code, 'rd', 'csr', 'imm')


type1_list = [
    'sll',
    'srl',
    'sra',
    'add',
    'sub',
    'xor',
    'or',
    'and',
    'slt',
    'sltu',
]

type2_list = [
    'slli',
    'srli',
    'srai',
    'addi',
    'xori',
    'ori',
    'andi',
    'slti',
    'sltiu',
    'jalr',
    'lb',
    'lh',
    'lbu',
    'lhu',
    'lw'
]

type3_list = [
    'beq',
    'bne',
    'blt',
    'bge',
    'bltu',
    'bgeu',
    'sb',
    'sh',
    'sw'
]

type4_list = [
    'lui',
    'auipc',
    'jal',
]

type5_list = [
    'fence',
    'fence.i',
    'ecall',
    'ebreak'
]

csr1_list = [
    'csrrw',
    'csrrs',
    'csrrc',
]

csr2_list = [
    'csrrwi',
    'csrrsi',
    'csrrci',
]

type1_matching_table = {
    i: gen_type1_matching(i)
    for i in type1_list
}

type2_matching_table = {
    i: gen_type2_matching(i)
    for i in type2_list
}

type3_matching_table = {
    i: gen_type3_matching(i)
    for i in type3_list
}

type4_matching_table = {
    i: gen_type4_matching(i)
    for i in type4_list
}

type5_matching_table = {
    i: gen_type5_matching(i)
    for i in type5_list
}

csr1_matching_table = {
    i: gen_csr1_matching(i)
    for i in csr1_list
}

csr2_matching_table = {
    i: gen_csr2_matching(i)
    for i in csr2_list
}

matching_str_lists: List[Dict[str, str]] = [
    type1_matching_table,
    type2_matching_table,
    type3_matching_table,
    type4_matching_table,
    type1_matching_table,
    csr1_matching_table,
    csr2_matching_table,
]

matching_str_list: List[str] = reduce(add, [list(i.values()) for i in matching_str_lists])

matching_list: List[Pattern[str]] = [re.compile(i) for i in matching_str_list]


def matching(inst_str: str) -> Inst:
    r: Optional[Match[str]] = None
    for reg in matching_list:
        r = re.match(reg, inst_str)
        if r is not None:
            break

    if r is None:
        raise MatchException(f'Can not resolve: {inst_str} as an instruction')

    record = r.groupdict()
    return Inst(
        record['code'],
        record.get('rd'),
        record.get('rs1'),
        record.get('rs2'),
        record.get('csr'),
        record.get('imm'),
    )
