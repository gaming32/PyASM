from typing import Callable, Literal, Union

Label = Callable[[], None]
Address = int
Referenceable = Union[Label, Address]
Macro = Callable[..., None]

regx = 'regx'
regy = 'regy'
accum = 'accum'
proc = 'proc'

Register = Literal[regx, regy, accum, proc]

def inline_macro(macro: Macro) -> Macro: ...


def jump(label: Referenceable): ...
def call(label: Referenceable): ...
def halt(): ...
def add(addr: Referenceable): ...
def increment(addr: Referenceable): ...

def push(reg: Register): ...
def pull(reg: Register): ...

def load_immediate(reg: Register, val: int): ...
def load_address(reg: Register, addr: Address): ...

def reserve_label(label: str): ...