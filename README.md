Verilator SV Template
==================

This repo has basic scaffolding for an Verilator project.

Useful files
------------

- `src/dut.sv` contains the DUT module, `dut`; most of your changes should go here.
- `src/top.sv` is the top module that instantiates `dut`.
- `tb_top.cpp` is the test bench that verilator uses to instantiate/drive `top`.

Pre-reqs
--------

You should install verilator, at minimum.  You also probably want surfer or gtkwave. Surfer is available on Homebrew. Depending on platform, gtkwave might be available as package, flatpack, or build from source.

Commands
--------

Useful commands defined as make targets:

- `make Vtop` to compile
- `make run` to run simulator
- `make gtkwave` to launch gtkwave
- `make surfer` to launch surfer

