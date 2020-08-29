decompile a.out and get program using ghidra

to analyze code where we bit shift,strcmp,XOR and checks for EXPECTED_PREFIX

python -m venv angr

source angr/bin/activate

python -m pip install angr


asking for 16 byte input in the program

and gives a binary output and need to look where it is with angr to find the routes and location of the data


finding values of failure and success hex values and also the base address

flag_length is 15 with a null byte maybe


we use `angr` a tool for binary analysis and use it for finding hex value address for various functions and set boundaries around them and then to use claripy and the solver engines to compute and jump across addresses,executing the solve.py to stdout the flag.


### Further reading

https://docs.angr.io/core-concepts
