import re
from typing import Any, Callable, List, Optional, Dict

from .common import *
from .instruction import Inst

# transform function 掏粪
TF = Callable[[Any], List[Inst]]
Records = Dict[str, re.Pattern]


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
li = f'li {gen_reg_match("rd")}, {gen_imm_match("imm")}'

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


def scope(i: str) -> TF:
    def type1_transform(code: str, rd: str, symbol: str, rt: str):
        return [
            Inst('auipc', rt, imm=symbol),
            Inst(code, rd, imm=symbol),
        ]

    if i in type1_pcode:
        return type1_transform

    def la_transform(rd: str, symbol: str):
        return [
            Inst('auipc', rd, imm=symbol),
            Inst('addi', rd, rd, imm=symbol),
        ]

    def nop_transform():
        return [
            Inst('addi', 'x0', 'x0', imm='0'),
        ]

    def li_transform(rd: str, imm: str):
        return [
            Inst('li', rd, imm=imm),
        ]

    def mv_transform(rd: str, rs: str):
        return [
            Inst('addi', rd, rs, imm='0'),
        ]

    def not_transform(rd: str, rs: str):
        return [
            Inst('xori', rd, rs, imm='-1')
        ]

    def neg_transform(rd: str, rs: str):
        return [
            Inst('sub', rd, 'x0', rs),
        ]

    def negw_transform(rd: str, rs: str):
        return [
            Inst('subw', rd, 'x0', rs),
        ]

    def sext_w_transform(rd: str, rs: str):
        return [
            Inst('addiw', rd, rs, imm='0'),
        ]

    def seqz_transform(rd: str, rs: str):
        return [
            Inst('sltiu', rd, rs, imm='1'),
        ]

    def snez_transform(rd: str, rs: str):
        return [
            Inst('sltiu', rd, 'x0', rs),
        ]

    def sltz_transform(rd: str, rs: str):
        return [
            Inst('slt', rd, rs, 'x0'),
        ]

    def sgtz_transform(rd: str, rs: str):
        return [
            Inst('slt', rd, 'x0', rs),
        ]

    def fmv_s_transform(rd: str, rs: str):
        return [
            Inst('fsgnj.s', rd, rs, rs),
        ]

    def fabs_s_transform(rd: str, rs: str):
        return [
            Inst('fsgnjx.s', rd, rs, rs),
        ]

    def fneg_s_transform(rd: str, rs: str):
        return [
            Inst('fsgnjn.s', rd, rs, rs),
        ]

    def fmv_d_transform(rd: str, rs: str):
        return [
            Inst('fsgnj.d', rd, rs, rs),
        ]

    def fabs_d_transform(rd: str, rs: str):
        return [
            Inst('fsgnjx.d', rd, rs, rs),
        ]

    def fneg_d_transform(rd: str, rs: str):
        return [
            Inst('fsgnjn.d', rd, rs, rs),
        ]

    def beqz_transform(rs: str, offset: str):
        return [
            Inst('beq', rs, 'x0', offset),
        ]

    def bnez_transform(rs: str, offset: str):
        return [
            Inst('bne', rs, 'x0', offset),
        ]

    def blez_transform(rs: str, offset: str):
        return [
            Inst('bge', 'x0', rs, offset),
        ]

    def bgez_transform(rs: str, offset: str):
        return [
            Inst('bge', rs, 'x0', offset),
        ]

    def bltz_transform(rs: str, offset: str):
        return [
            Inst('blt', rs, 'x0', offset),
        ]

    def bgtz_transform(rs: str, offset: str):
        return [
            Inst('blt', 'x0', rs, offset),
        ]

    def bgt_transform(rt: str, rs: str, offset: str):
        return [
            Inst('blt', rt, rs, offset),
        ]

    def ble_transform(rt: str, rs: str, offset: str):
        return [
            Inst('bge', rt, rs, offset),
        ]

    def bgtu_transform(rt: str, rs: str, offset: str):
        return [
            Inst('bltu', rt, rs, offset),
        ]

    def bleu_transform(rt: str, rs: str, offset: str):
        return [
            Inst('bgeu', rt, rs, offset),
        ]

    def j_transform(offset: str):
        return [
            Inst('jal', 'x0', offset),
        ]

    def jal_transform(offset: str):
        return [
            Inst('jal', 'x1', offset),
        ]

    def jr_transform(rs: str):
        return [
            Inst('jalr', 'x0', rs, imm='0'),
        ]

    def jalr_transform(rs: str):
        return [
            Inst('jalr', 'x1', rs, imm='0'),
        ]

    def ret_transform():
        return [
            Inst('jalr', 'x0', 'x1', imm='0'),
        ]

    def call_transform(offset: str):
        return [
            Inst('auipc', 'x1', imm=offset),
            Inst('jalr', 'x1', 'x1', imm=offset),
        ]

    def tail_transform(offset: str):
        return [
            Inst('auipc', 'x6', imm=offset),
            Inst('jalr', 'x0', 'x6', imm=offset),
        ]

    def fence_transform():
        return [
            Inst('fence', 'iorw', 'iorw'),
        ]

    return locals()[i + '_transform']


comp = re.compile

other_pair: Records = {
    'nop': comp(nop),
    'ret': comp(ret),
    'fence': comp(fence),
    'la': comp(la),
}

type1_pair: Records = {
    i: comp(gen_type1_pcode(i)) for i in type1_pcode
}

type2_pair: Records = {
    i: comp(gen_type2_pcode(i)) for i in type2_pcode
}

type3_pair: Records = {
    i: comp(gen_type3_pcode(i)) for i in type3_pcode
}

type4_pair: Records = {
    i: comp(gen_type4_pcode(i)) for i in type4_pcode
}

type5_pair: Records = {
    i: comp(gen_type5_pcode(i)) for i in type5_pcode
}

type6_pair: Records = {
    i: comp(gen_type6_pcode(i)) for i in type6_pcode
}

matching_list: Records = {}
matching_list.update(other_pair)
matching_list.update(type1_pair)
matching_list.update(type2_pair)
matching_list.update(type3_pair)
matching_list.update(type4_pair)
matching_list.update(type5_pair)
matching_list.update(type6_pair)


def match(i: str) -> List[Inst]:
    inst: Optional[str] = None
    r: Optional[re.Match[str]] = None
    for ins, reg in matching_list:
        inst = ins
        r = re.match(reg, i)
        if r is not None:
            break

    if r is None:
        raise MatchException('not a instruction')
    transform = scope(inst)
    return transform(**r.groupdict())
