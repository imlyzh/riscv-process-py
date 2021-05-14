### Abstract Instruction Define

# AInst
class AInst:
	opcode: str


# Write register instruction
class HaveRD:
	rd: str


class HaveFunct3:
	funct3: str


class HaveRS1:
	rs1: str


class HaveRS2:
	rs2: str

##############################################

class RTypeInst(AInst, HaveRD, HaveFunct3, HaveRS1, HaveRS2):
	funct7: str


class ITypeInst(AInst, HaveRD, HaveFunct3, HaveRS1):
	imm: str


class STypeInst(AInst, HaveFunct3, HaveRS1, HaveRS2):
	imm0: str
	imm1: str


class SBTypeInst(AInst, HaveFunct3, HaveRS1, HaveRS2):
	imm0: str
	imm1: str
	imm2: str
	imm3: str


class UTypeInst(AInst, HaveRD):
	imm: str


class UJTypeInst(AInst, HaveRD):
	imm0: str
	imm1: str
	imm2: str
	imm3: str

