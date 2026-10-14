# SPDX-License-Identifier: Apache-2.0
"""What a slice does before the hub has sent anything: the chain numbers itself.

A slice shows `uio + 1` on `uo` and takes `uio` as its position, so the bottom chip (uio tied
to 0) reads 1 and each chip above it one more. The matching itself is checked against the
bit-exact model in the project's own test benches (rtl/tb/tb_mini.v, host/stereo/chain.py).
"""
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


@cocotb.test()
async def test_chain_numbering(dut):
    clock = Clock(dut.clk, 40, unit="ns")           # 25 MHz
    cocotb.start_soon(clock.start())

    dut.ena.value = 1
    dut.ui_in.value = 0                             # no sync: no frame from the hub
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1
    await ClockCycles(dut.clk, 10)

    assert dut.uio_oe.value == 0, "the bidirectional pins must stay inputs"
    for below in (0, 1, 2, 3, 7):
        dut.uio_in.value = below
        await ClockCycles(dut.clk, 6)
        assert int(dut.uo_out.value) == below + 1, f"slice above {below}: uo = {int(dut.uo_out.value)}"
