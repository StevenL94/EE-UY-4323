@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 24189fd1147449588981fcec2d521509 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot adder_behav xil_defaultlib.adder -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
