@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 753322aedeca45658dd338c6f3be1cb0 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot eight_behav xil_defaultlib.eight -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
