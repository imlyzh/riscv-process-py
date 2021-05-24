from typing import Union
import re
from .common import *
from .instruction import *
from .load import *

offset_match_re: re.Pattern = re.compile(offset_match_re_str)

macro_match_re: re.Pattern = re.compile(macro_match_re_str)


def prep_reg(i: str) -> str:
    if i in register_mapping.values():
        return i
    return register_mapping[i]


def prep_imm(i: str) -> Imm:
    r = macro_match_re.match(i)
    if r:
        return Macro(name=r['name'], body=r['body'])
    r = offset_match_re.match(i)
    if r:
        return Offset(base=r['base'], offset=r['offset'])
    try:
        return int(i)
    except ValueError:
        return i


def preprocess(i: Union[Label, Inst]) -> Union[Label, Inst]:
    if isinstance(i, Label):
        return i
    return Inst(
        code=i.code,
        rd=prep_reg(i.rd) if i.rd else None,
        rs1=prep_reg(i.rs1) if i.rs1 else None,
        rs2=prep_reg(i.rs2) if i.rs2 else None,
        csr=i.csr,  # todo
        imm=prep_imm(i.imm) if i.imm else None
    )
