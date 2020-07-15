import angr

b = angr.Project('reversing')
# s = b.factory.entry_state()
# s.inspect.b('reverse+33')
# rdx_bv = s.regs.rdx
# rdx = s.solver.eval(rdx_bv)

simgr = b.factory.simgr()
simgr.explore(find=lambda s: b"correct" in s.posix.dumps(1))
s = simgr.found[0]
print(s.posix.dumps(1))
flag = s.posix.dumps(0)
print(flag)
