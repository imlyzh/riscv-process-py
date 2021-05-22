from typing import Any, Callable, Dict, List, Dict, Optional
import re
from .common import *
from .instruction import Inst


# transform function 掏粪
TF = Callable[[Any], List[Inst]]


def gen_type1_pcode(code):
    return f'{code} {gen_reg_match("rd")}, {gen_sym_match("symbol")}, {gen_reg_match("rt")}'

def gen_type2_pcode(code):
    return f'{code} {gen_reg_match("rd")}, {gen_reg_match("rs")}'

def gen_type3_pcode(code):
    return f'{code} {gen_reg_match("rs")}, {gen_sym_match("offset")}'

def gen_type4_pcode(code):
    return f'{code} {gen_reg_match("rs")}, {gen_reg_match("rt")}, {gen_sym_match("offset")}'

def gen_type5_pcode(code):
    return f'{code} {gen_sym_match("offset")}'

def gen_type6_pcode(code):
    return f'{code} {gen_reg_match("rs")}'


nop = 'nop'
ret = 'ret'
fence = 'fence'
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
    'fsd',
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
    'fneg.d',
]

type3_pcode = [
    'beqz',
    'bnez',
    'blez',
    'bgez',
    'bltz',
    'bgtz',
]

type4_pcode = [
    'bgt',
    'ble',
    'bgtu',
    'bleu',
]

type5_pcode = [
    'j',
    'jal',
    'call',
    'tail',
]

type6_pcode = [
    'jr',
    'jalr',
]

def la_pcode_transform(rd, symbol):
    return [
        Inst('auipc', rd, imm=symbol),
        Inst('addi', rd, rd, imm=symbol)
    ]

def type1_pcode_transform(code, rd, symbol, rt):
    return [
        Inst('auipc', rt, imm=symbol),
        Inst(code, rd, imm=symbol)
    ]

def nop_pcode_transform():
    return [Inst('addi', 'x0', 'x0', imm=0)]

def li_pcode_transform(rd, imm):
    return [Inst('li', rd, imm=imm)]

def mv_transform(rd, rs):
    return [Inst('addi', rd, rs, imm=0)]

def not_transform(rd, rs):
    return [Inst('xori', rd, rs, imm=-1)]

def neg_transform(rd, rs):
    return [Inst('sub', rd, 'x0', rs)]

def negw_transform(rd, rs):
    return [Inst('subw', rd, 'x0', rs)]

def sext_w_transform(rd, rs):
    return [Inst('addiw', rd, rs, imm=0)]

def seqz_transform(rd, rs):
    return [Inst('sltiu', rd, rs, imm=1)]

def snez_transform(rd, rs):
    return [Inst('sltiu', rd, 'x0', rs)]

def sltz_transform(rd, rs):
    return [Inst('slt', rd, rs, 'x0')]

def sgtz_transform(rd, rs):
    return [Inst('slt', rd, 'x0', rs)]

def fmv_s_transform(rd, rs):
    return [Inst('fsgnj.s', rd, rs, rs)]

def fabs_s_transform(rd, rs):
    return [Inst('fsgnjx.s', rd, rs, rs)]

def fneg_s_transform(rd, rs):
    return [Inst('fsgnjn.s', rd, rs, rs)]

def fmv_d_transform(rd, rs):
    return [Inst('fsgnj.d', rd, rs, rs)]

def fabs_d_transform(rd, rs):
    return [Inst('fsgnjx.d', rd, rs, rs)]

def fneg_d_transform(rd, rs):
    return [Inst('fsgnjn.d', rd, rs, rs)]

def beqz_transform(rs, offset):
    return [Inst('beq', rs, 'x0', offset)]

def bnez_transform(rs, offset):
    return [Inst('bne', rs, 'x0', offset)]

def blez_transform(rs, offset):
    return [Inst('bge', 'x0', rs, offset)]

def bgez_transform(rs, offset):
    return [Inst('bge', rs, 'x0', offset)]

def bltz_transform(rs, offset):
    return [Inst('blt', rs, 'x0', offset)]

def bgtz_transform(rs, offset):
    return [Inst('blt', 'x0', rs, offset)]

def bgt_transform(rt, rs, offset):
    return [Inst('blt', rt, rs, offset)]

def ble_transform(rt, rs, offset):
    return [Inst('bge', rt, rs, offset)]

def bgtu_transform(rt, rs, offset):
    return [Inst('bltu', rt, rs, offset)]

def bleu_transform(rt, rs, offset):
    return [Inst('bgeu', rt, rs, offset)]

def j_transform(offset):
    return [Inst('jal', 'x0', offset)]

def jal_transform(offset):
    return [Inst('jal', 'x1', offset)]

def jr_transform(rs):
    return [Inst('jalr', 'x0', rs, imm=0)]

def jalr_transform(rs):
    return [Inst('jalr', 'x1', rs, imm=0)]

def ret_transform(rs):
    return [Inst('jalr', 'x0', 'x1', imm=0)]

def call_transform(offset):
    return [
        Inst('auipc', 'x1', imm=offset),
        Inst('jalr', 'x1', 'x1', imm=offset)
    ]

def tail_transform(offset):
    return [
        Inst('auipc', 'x6', imm=offset),
        Inst('jalr', 'x0', 'x6', imm=offset)
    ]

def fence_transform():
    return [
        Inst('fence', 'iorw', 'iorw')
    ]


matching_list: List[re.Pattern]


def match(i: str) -> List[Inst]:
    r: Optional[re.Match[str]] = None
    for reg in matching_list:
        r = re.match(reg, i)
        if r is not None: break

    if r is None:
        raise MatchException('not a instruction')
    transform: TF
    return transform(**r.groupdict())
	