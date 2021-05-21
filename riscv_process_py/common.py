

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


def gen_reg_match(name: str) -> str:
	return rf'(?P<{name}>{reg_regex})'


def gen_imm_match(name: str) -> str:
	return rf'(?P<{name}>{number_regex})'

def gen_sym_match(name: str) -> str:
	return rf'(?P<{name}>{number_regex})'

