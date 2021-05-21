from typing import Any, Callable, Dict, List, Dict
from .common import *
from .instruction import Inst


transfrom_function = Callable[[Dict[str, Any]], List[Inst]]


def gen_type1_pcode(code):
    return f'{code} {gen_reg_match("rd")}, {gen_sym_match("symbol")}, {gen_reg_match("rt")}'

def gen_type2_pcode(code):
    return f'{code} {gen_reg_match("rd")}, {gen_reg_match("rs")}'

def gen_type3_pcode(code):
    return f'{code} {gen_reg_match("rs")}, {gen_imm_match("offset")}'

def gen_type4_pcode(code):
    return f'{code} {gen_imm_match("offset")}'

def gen_type5_pcode(code):
    return f'{code} {gen_reg_match("rs")}'


nop = 'nop'
ret = 'ret'
la = f'la {gen_reg_match("rd")}, {gen_sym_match("symbol")}'
li = f'li, {gen_reg_match("rd")}, {gen_imm_match("imm")}'


type1_pcode = [
    'lb',
    'lh',
    'lw',
    'ld',
    'sb',
    'sh',
    'sw',
    'sd',
    'flw',
    'fld',
    'fsw',
    'fsd'
]

type2_pcode = [
    'mv',
    'not',
    'neg',
    'negw',
    'sext.w',
    'seqz',
    'snez',
    'sltz',
    'sgtz',
    'fvm.s',
    'fabs.s',
    'fneg.s',
    'fvm.d',
    'fabs.d',
    'fneg.d'
]




def type1_pcode_transform(code, rd, symbol, rt):
    return [
        Inst('auipc', rt, imm=symbol),
        Inst(code, rd, imm=symbol)
    ]


ld = f'li {gen_reg_match("rd")}, {gen_imm_match("imm")}'

def mv_transform(rd, rs):
    return [Inst('addi', rd, rs, imm=0)]

def not_transform(rd, rs):
    return [Inst('xori', rd, rs, imm=-1)]


