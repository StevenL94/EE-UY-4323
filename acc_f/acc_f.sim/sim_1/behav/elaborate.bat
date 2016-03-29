@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto beb83fc3a1d64161ae5070312941e50e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot acc_f_behav xil_defaultlib.acc_f -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
