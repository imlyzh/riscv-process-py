from typing import Optional
from dataclasses import dataclass


@dataclass
class Inst:
	code: str
	rd: Optional[str] = None
	rs1: Optional[str] = None
	rs2: Optional[str] = None
	csr: Optional[str] = None
	imm: Optional[str] = None

	def __getitem__(self, item: str) -> Optional[str]:
		return getattr(self, item)
