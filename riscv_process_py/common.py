from dataclasses import dataclass
from typing import Union, Optional, Set


class MatchException(Exception):
    pass


@dataclass
class MetaInfo:
    name: str
    value: Optional[Union[str, int, bytes]] = None


@dataclass
class Label:
    value: Union[int, str]


@dataclass
class Macro:
    name: str
    body: str


@dataclass
class Offset:
    base: Union[str, int]
    offset: int


x_reg = r'(x\d{1,2})'

s_reg = r'(s\d{1,2})'

t_reg = r'(t[0-6])'

a_reg = r'(a[0-7])'

reg_re_str = rf'({x_reg}|{s_reg}|{t_reg}|{a_reg}|zero|ra|sp|gp|tp|fp|)'

number_re_str = r'([+-]?(0x)?\d+b?)'

sym_re_str = r'[.\w]+'

offset_sym_re_str = rf'{sym_re_str}\({number_re_str}\)'

offset_match_re_str = rf'(?P<base>{sym_re_str})\((?P<offset>{number_re_str})\)'

macro_sym_re_str = rf'%{sym_re_str}\({sym_re_str}\)'

macro_match_re_str = rf'%(?P<name>{sym_re_str})\((?P<body>{sym_re_str})\)'

symbol_re_str = rf'({macro_sym_re_str})|({offset_sym_re_str})|({sym_re_str})|({number_re_str})'

white = r'\s*'
white1 = r'\s+'

label = rf'{white}(?P<label>{symbol_re_str}){white}:{white}'


def gen_reg_match(name: str) -> str:
    return rf'(?P<{name}>{reg_re_str})'


def gen_imm_match(name: str) -> str:
    return rf'(?P<{name}>{symbol_re_str})'


def gen_sym_match(name: str) -> str:
    return rf'(?P<{name}>{symbol_re_str})'


register_mapping = {
    'zero': 'x0',
    'ra': 'x1',
    'sp': 'x2',
    'gp': 'x3',
    'tp': 'x4',
    't0': 'x5',
    't1': 'x6',
    't2': 'x7',
    'fp': 'x8',
    's0': 'x8',
    's1': 'x9',
    'a0': 'x10',
    'a1': 'x11',
    'a2': 'x12',
    'a3': 'x13',
    'a4': 'x14',
    'a5': 'x15',
    'a6': 'x16',
    'a7': 'x17',
    's2': 'x18',
    's3': 'x19',
    's4': 'x20',
    's5': 'x21',
    's6': 'x22',
    's7': 'x23',
    's8': 'x24',
    's9': 'x25',
    's10': 'x26',
    's11': 'x27',
    't3': 'x28',
    't4': 'x29',
    't5': 'x30',
    't6': 'x31',
}

register_set: Set[str] = set()
register_set.update(register_mapping.keys())
register_set.update(register_mapping.values())
