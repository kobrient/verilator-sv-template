`ifndef __MACROS_SVH
`define __MACROS_SVH

`define DFF(q,d,clk) always @(posedge clk) q <= d;
`define DFF_EN(q,d,clk,en) always @(posedge clk) if (en) q <= d;

`define DEBUG(msg) \
    $display("@[%-d] %-d %s: %s", $time(), top.cclk_count, `"DEBUG`", $sformatf msg);

`define VWARN(name, antecedent, consequent, msg) \
    name: assert property (@(posedge clk) disable iff(reset) (antecedent) |-> (consequent)) else $warning(msg);

`define VASSERT(name, antecedent, consequent, msg) \
    name: assert property (@(posedge clk) disable iff(reset) (antecedent) |-> (consequent)) else $error(msg);

`define CHK_ONEHOT(name, valid, bits) \
    name: assert property (@(posedge clk) disable iff(reset) (valid) |-> $onehot(bits)) else $error($sformatf("ONEHOT check failed! %b",bits));

`endif // __MACROS_SVH
