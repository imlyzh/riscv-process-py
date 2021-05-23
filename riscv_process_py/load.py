from typing import List
import re
from .load_asm import match as load_asm
from .load_pseudocode import match as load_pseudocode
from .common import *
from .instruction import Inst

label_re = re.compile(label)


def load_label(i: str) -> Optional[Label]:
    r = label_re.match(i)
    if r is None:
        return None
    return Label(r['label'])


def load(i: str) -> List[Union[Inst, Label]]:
    i = i.lower()
    r = load_label(i)
    if r:
        return [r]
    r = load_asm(i)
    if r:
        return [r]
    r = load_pseudocode(i)
    if r:
        return r
    raise MatchException()

