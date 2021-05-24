from typing import Optional, Union
from dataclasses import dataclass

from riscv_process_py import Offset, Macro

Imm = Union[str, int, Offset, Macro]


@dataclass
class Inst:
	code: str
	rd: Optional[str] = None
	rs1: Optional[str] = None
	rs2: Optional[str] = None
	csr: Optional[str] = None
	imm: Optional[Imm] = None

	def __getitem__(self, item: str) -> Optional[str]:
		return getattr(self, item)
