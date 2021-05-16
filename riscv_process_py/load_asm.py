from typing import Dict, Iterable, List, Match, Optional, Pattern
import re
from functools import reduce
from operator import add

from .instruction import Inst

x_reg = r'(x\d{1,2})'

s_reg = r'(s\d{1,2})'

t_reg = r'(t[0-6])'

a_reg = r'(a[0-7])'

reg_regex = r'({x_reg}|{s_reg}|{t_reg}|{a_reg}|zero|ra|sp|gp|tp|fp|)'.format(
	x_reg=x_reg,
	s_reg=s_reg,
	t_reg=t_reg,
	a_reg=a_reg)

number_regex = r'((+|-)?0x\d+|(+|-)?\d+)'

sym = r'\w+'

symbol = r'(({a})|({b}))'.format(a=number_regex, b=sym)


class MatchException(Exception):
	def __init__(self, *args: object) -> None:
		super().__init__(*args)
		self.body = args[0]


def gen_reg_matching(name: str) -> str:
	return r'(?P<{name}>{reg})'.format(name=name, reg=reg_regex)


def gen_imm_matching(name: str) -> str:
	return r'(?P<{name}>{imm})'.format(name=name, imm=number_regex)


def gen_params_matching(name: str) -> str:
	if name in ('rd', 'rs1', 'rs2'):
		return gen_reg_matching(name)
	if name in ('imm', 'symbol'):
		return gen_imm_matching(name)
	if name == 'csr':
		# todo: Complete csr
		pass
	raise MatchException('你这玩意能返回点啥你自己心里没点数啊')


def gen_matching(code: str, *matchs: str) -> str:
	re_list = [gen_params_matching(i) for i in matchs]
	r = ", ".join(re_list)
	return code + " " + r

def gen_type1_matching(code: str) -> str:
	return gen_matching(code, 'rd', 'rs1', 'rs2')

def gen_type2_matching(code: str) -> str:
	return gen_matching(code, 'rd', 'rs1', 'imm')

def gen_type3_matching(code: str) -> str:
	return gen_matching(code, 'rs1', 'rs2', 'imm')

def gen_type4_matching(code: str) -> str:
	return gen_matching(code, 'rd', 'imm')

def gen_type5_matching(code: str) -> str:
	return gen_matching(code)

def gen_csr1_matching(code: str) -> str:
	return gen_matching(code, 'rd', 'csr', 'rs1')

def gen_csr2_matching(code: str) -> str:
	return gen_matching(code, 'rd', 'csr', 'imm')


type1_list = [
	'sll',
	'srl',
	'sra',
	'add',
	'sub',
	'xor',
	'or',
	'and',
	'slt',
	'sltu',
]

type2_list = [
	'slli',
	'srli',
	'srai',
	'addi',
	'xori',
	'ori',
	'andi',
	'slti',
	'sltiu',
	'jalr',
	'lb',
	'lh',
	'lbu',
	'lhu',
	'lw'
]

type3_list = [
	'beq',
	'bne',
	'blt',
	'bge',
	'bltu',
	'bgeu',
	'sb',
	'sh',
	'sw'
]

type4_list = [
	'lui',
	'auipc',
	'jal',	
]

type5_list = [
	'fence',
	'fence.i',
	'ecall',
	'ebreak'
]

csr1_list = [
	'csrrw',
	'csrrs',
	'csrrc',
]

csr2_list = [
	'csrrwi',
	'csrrsi',
	'csrrci',
]


type1_matching_table = {
	i: gen_type1_matching(i)
	for i in type1_list
}

type2_matching_table = {
	i: gen_type2_matching(i)
	for i in type2_list
}

type3_matching_table = {
	i: gen_type3_matching(i)
	for i in type3_list
}

type4_matching_table = {
	i: gen_type4_matching(i)
	for i in type4_list
}

type5_matching_table = {
	i: gen_type5_matching(i)
	for i in type5_list
}

csr1_matching_table = {
	i: gen_csr1_matching(i)
	for i in csr1_list
}

csr2_matching_table = {
	i: gen_csr2_matching(i)
	for i in csr2_list
}

matching_str_lists: List[Dict[str, str]] = [
	type1_matching_table,
	type2_matching_table,
	type3_matching_table,
	type4_matching_table,
	type1_matching_table,
	csr1_matching_table,
	csr2_matching_table,
]

matching_str_list: List[str] = reduce(add, [list(i.values()) for i in matching_str_lists])

matching_list: List[Pattern[str]] = [re.compile(i) for i in matching_str_list]

def matching(i: str) -> Inst:
	r: Optional[Match[str]] = None
	for reg in matching_list:
		r = re.match(reg, i)
		if r is not None: break

	if r is None:
		raise MatchException('not a instruction')

	record = r.groupdict()
	return Inst(
		record['code'],
		record.get('rd'),
		record.get('rs1'),
		record.get('rs2'),
		record.get('csr'),
		record.get('imm'))

