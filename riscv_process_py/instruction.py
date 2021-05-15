from typing import Optional
from dataclasses import dataclass

@dataclass
class Inst:
	code: str
	rd: Optional[str]
	rs1: Optional[str]
	rs2: Optional[str]
	csr: Optional[str]
	imm: Optional[str]

	def __dict__(self):
		r = [
			i
			for i in dict(self).items()
			if i[1] is not None
		]
		return dict(r)