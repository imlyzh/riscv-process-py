from typing import Union
from .common import *
from .instruction import *
from .load import *


def prep_reg(i: str) -> str:
    if i in register_mapping.values():
        return i
    return register_mapping[i]


def prep_imm(i: str) -> Union[str, int]:
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
