// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 28 00:39:53 2018
// Host        : Alex-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_11 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_11
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [31:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_11_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
iO2Bdkfy0dqqValMR4KhTWXpD0gDQF+kyoly3tZBTZTVs0CbWJ4Owhu4jxMCf8X2gbWR6iweF6Ks
B5dmLHZTDA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dbcEbgyZfx3YLmYpvjegvD9sRQCV1qBv0GqFBvCakC3SMR/H82zqo5uv5MZldBGUVmNHnxF3Vejx
zSqxUKfTNc90CS6quuoQe0eeq3T5XSdgwbNtjPZKvJuJTmQKT96yB3CfQOz13fGjaLrn/8NBUBBh
I7OEoGGg7ADph9V3vRg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bD3a4YgAnaoJx9/hljj2C1rODcUhawTVE1gtdPkNj8/YjemaFM6/sF7Q0CXbDJ7a+OBrB5pUgj3O
Vesi4yVmFp+mGmFarftWat5KmZiP3RVWrXwdzMj+f8T7p+lE3iD4njqUxIUz0TsUaNvFeW0xVNNb
OwTEX04nyt5HrU82dltJCclpFxE6yrP9YvI7l328bphwnC63xxk8T3yXwCrvj3VrIYuDT2yMRxrB
TBCv/Fe2f07JQyV73J7+DGAeJG0B1dTHeu48auQT63g1HsYaUXREihEUKgZe70QlOqlPbrr6Quhx
2LXE8LSdCA+FbJ7LlQc/Sgasj3ZYjM5lhEKleQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCfR7acMSeEtOw1DhZKkUXjh9Uw/vUar7CGDRG9rZcB9NFDtQTltJeuKjFg8eaeKH9HFBMryuX72
/tmzhtFaiSTjr2na4ncL2XV3QRXe7nQaiHdc7cKBcZDvdSSMzOSYcIxLunwLwQTLC7sCvINmlxO1
NXnYzJVL1xb9HP8QVnSYpo1p+gCXcRBZzrOjZjCUnl7F2t3ZZStSGjBEyXVLnV+ouU3+247oJAOa
kC7v+pOtG2ho4KclIg0MGijjPs+jyOFU+b5C+ufQp/zL9GiZ5waCjb/0Y1vkBc9jZKR7YRnv+ASG
ju1uP8oqEXR9742kXRnW4HkMKkCK1MLDgWYdqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L+AGKmFZ1zoRJFd2cA+zxJhkgQ1R0aEjGQCGRFLNNhLHZXpzGDIjdSLjralBVRJ2rD6UcJutapF5
YaMoV9kphGGG2B07dxBuIimVjOxS3ZQJ7ru59ddfGBxUe9EHrv00Q5hTwoxig0lxqnmjSSnfsDeF
weTIqNnXkG5kqqezKC8a2FvUD5QWQBibhK69OAdmhhIOwZmpfvQKbEKgLX70BzcNlmLnttRL7G+q
XZ3fabZ42+JJHDLiIfveB3Gp2Lf2tzTH1u2xx5aEUr9154pnC9PWIwL3y3VBAT1oHR7ScdoGDOEy
HoYUiDibldOidIeKW0KrTeAIuBNmtM4R0R+RSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V5ClnklUs5Wo++EDemG/KeowZlAfqB8SUrvSxPQGrdIwGfUvoCajhuABAWdS/L/pQl7Eyz51aiuw
KzPMrWtQozAEITf1xzvzgKbWZqoi4PQD3rThywFsFq60u8DdvHYM/kEvit0cZVFvG8rAbtlseHLu
0vU1kbrNgxb3bxjOovg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqAgScIUeXUwYGfCC0XDtpcc+mFNm3p8oTcFdtIU1nnlMagpBMqRm5ELc+m/Yw8jBwvcvt4tUFv
u/ypEEw+y12B+5Pr6SmnLJ+NVB3Q3Eyh4Q/d7p3jReIIsUxrlENpCTi4PVXMKr1B1Htzm8F8mXDq
y2UV+0SC+4yrBIntsdS0S8jPBERhfJhzNC5z38pPHANtM4wGGIUuKxIALLz1aq+2AjLbEgFHNrzw
2bJiDwRSTwrY4Yx2MSzYJk3O+cQBUe8nJDPx+aGEvDzQ4ZdJMNg2z+iaiE7OTaqK492Jb/1jvU0j
wlI+n35s2rrnc9QgfljdOJuueruPuYDi5vTTxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nYj/q+ElYJlklnXzCbjkjRhRdtKNqNmOHJlZBIjjbptICIz4vH75xZ23X4ahTlLcf6S/lHb3pIwL
+FiQFiWnZN49pU9Q1iQ4/9D0PFT17TEyOMqFFVfj83TJempcJqYgSvfifYFMjz4Gt5r7s9r56D1q
s24PJWjkrdf1GlpoYiEIESzYl8eteo3P5Ih65YNhWmpwd6koDqyO3qI10VH/DA/Hhs88hio4ean1
Z3FOofhUBUNYa4Ln/AT+oEYBtJGyCJhxE2SE2IZAw6c65Iu9EkMCt/4vzRhtAvqfKjSn3dyC1rsD
skkNhGvFhRxw9WUidrFZFU3OVaoScNj0Z8wWDg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fba/Mmy/hEqhHaT6sMmS6aIwGLDLA3vYmHu9Eb6rmxgnSZYIHNdjETkjvuIpVV9lUvPyHtRr0tOk
mlOxWkaAzP4Ip6vl8f2LPWdHHd9xPdwHNzJM2WmHHTjcecipcxQNKHhHU6boN6x57RhNgrN+SZuJ
+pv3KQU7hts2nn0yJNi9jMK0rIic+ZsC4f4O06pOP6gblsvn1XA/UuxiOPXwBrX6b4uHirXPukNo
cBkSVzfChwLb/oF/cPdVhQCGdQ1O/G7vUen7RpQNH3wfJBVtSlG89liSG0kwTOsUwh76lznrCyIp
fptxqK9jkm+rupgBQthFbUkpgzI5w1nrHu8rDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17168)
`pragma protect data_block
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
1iUgfcaQjUVuQHk=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
