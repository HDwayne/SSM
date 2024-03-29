@echo off
REM ****************************************************************************
REM Vivado (TM) v2023.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Jan 26 10:24:58 +0100 2024
REM SW Build 4029153 on Fri Oct 13 20:14:34 MDT 2023
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim test_pulse_gen_time_synth -key {Post-Synthesis:sim_1:Timing:test_pulse_gen} -tclbatch test_pulse_gen.tcl -view C:/Users/hdway/Documents/vivado/SSM/zybo_tp2/zybo_tp2.sim/test_pulse_gen_behav.wcfg -log simulate.log"
call xsim  test_pulse_gen_time_synth -key {Post-Synthesis:sim_1:Timing:test_pulse_gen} -tclbatch test_pulse_gen.tcl -view C:/Users/hdway/Documents/vivado/SSM/zybo_tp2/zybo_tp2.sim/test_pulse_gen_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
