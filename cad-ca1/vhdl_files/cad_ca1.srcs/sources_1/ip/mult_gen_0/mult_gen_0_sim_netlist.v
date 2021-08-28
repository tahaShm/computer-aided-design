// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Nov 15 15:42:55 2019
// Host        : DESKTOP-3BCIA6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Taha/Desktop/cad_ca1/cad_ca1.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tffg1156-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [7:0]P;

  wire [3:0]A;
  wire [3:0]B;
  wire [7:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_15 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "4" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "7" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_15" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_15
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [3:0]A;
  input [3:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [7:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [3:0]A;
  wire [3:0]B;
  wire [7:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_15_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
KGg++J83s0yJ7o2/XMVLkRRTRjS0oC9h86tQjl1+xE1m53Uwmm0+K41skiYHo3Urr6lMQ4q2jL5Y
R/1NOu1WGg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jCBx8aLaNWpgdwu0tsffQfmLNKET4Uy44Upxw9AlkO9Ma9Y+tqZHrHroYhGJUxa/dyJZ7Z0HDJ1t
hUhVV6SjuhVMs1NLM1MVw9F3MTSW7MB/qx7j0WAj62FJgoxsCtt6g392p1JAAosX8yACeLKiQ0KF
mnMpugzqSRDI445k7So=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zdO8kU0uCj5Mggk0oLUcYcllNQJVD7vxIj25evesPPwBvXuv6EUsbKmUaCAlFUyG0YQ0mxWxXmzV
V/dRqKxqZ1ZI8+mX4IFaTJSCcYctMZsCl+2EWvQQHakV4QzWuCyca1phNacrRJfur8Ssc/Mhbez3
GLQCRrSfyBYyi3u9J+SAJRcJapyB1syXXhclDtup6m1z2C5S+NX/ql6kVXkcd9P+C5ordunfutgU
6uco8UymF/9QFYiBCWlTkHAgd7DH3dCI1E72N2H/KpX0/0xFBk++NCVuNucOwd9h4/hAyr4L+SI0
6Dzmn6kaBO4lnMAj5P58GIeWO/EtqrPeWg4UJw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdbUT4bIXyyFULrG0eEn0kqX6tjVoWssNb1FURO5jvyN5IkvkkDKCSLsd4J+2RE35ttJ20+4IZm2
p3H/UGCxkuCYtlZzovVpVf93DlhFUM2iSGd/L3evdLLL8VYETZTScGFdFXqiqe4ggXPHQCSEPD+e
PmMIJTGQka0DD3H+w+9t5Po/+M8b4r1y70l3Py7aYMeCEsZ/yHRmk8szsOjUbwvFEJk8SPXrEERg
EYMIrbryPHXq5E2fCL7hTgHa+bzIdFQOc2/8wn8YMVTmIJCZLBZDXvGSSm16cifWzXKHbPSly8js
RAoD2yYva4rr9cUy8jEyEpUcPGnaJXBDnB7lsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eGYl/A3vBqVYodgklvBXVlduDkQKDOe941//b/7D71XaDbW1Cqv7m5eqy+I7bUTyBfnKRV6WeTtg
K2eZlSMADPLNGmIEawb1T81kHA95L4SgxCaMDbzt0t5pO+IQTca0KxjvPFPjj860AZ/Y4IJCgD9Z
vZNfcSeez7bqGB9kVNzxh40hdeBm7XY8a+5R/yPufF2S8KSSaiPSvYwD8yXOBzVoRhqA9q5PWKTd
u6qoeWMnQ1r/hIDsge5oDE06b6+zC7odC460K8KIOtKzeCrfWezkynmD7wBR1fdIwh9FGe2Uq4lO
ZbT2QFx8Ga5NQIwIIZZci/uL4Tw/7+CPKEoddw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k1GN+kT7KgRIHJs5Cw+hQb7EZrReCsvXgXeCjz4o0RyqpPm8XlxoPCNX4kR8BSaVxBTPm8qGrOj8
IkQcLP4XpLGNjMzOE8knGvgjraCBhhY/bboSihIYbJYXuKW0k/ErxcqbMup3dsmp8N5M+ZYpiEuF
88HraBjchDshDh5xlcY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jzBUDUoUQBD0tzi9B/VXNwpoyjUIKBzxkVyikkxc/QHKpaIlgud+eCQD6psG9RUWZouQN8CQmJEY
0K5qgvfm7GxXMbjLUwnVBRg4Uzfc4OTySfJMu1k9/qGISvYwf4r0rzMMp9aPgp+ElEwTGx3z9N0A
vWNdEjCI2mqdxmP3Q9AYUPTudILppELRMP4SJijczuRIhtAKpxFjTP2gL8zQE0aq1kkWRZfaHW1t
wV7tZ/jCUxkX8uj8DL6Bei6oBC1nTm/FjPhi+htKla8XNUEftaqUre2/0Sxhsxl/FTAzaex9fCj4
AMt2l6o0FpW5JlLhGnTYhWm/bgsyGCPBg6lSjQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qmuf157slXNNRM+T0X863Wol/GvByzBeMbpadxwmNnU2czJhNh8fu/ScAqfxuPB0IO1ozDTHwo1n
Z8hU7MskNuQdKbdhkIN/FhMjq3GkdqbsQMf7XEQ7RJs1jAmDP2BrcrlNgKKsNkR+XMXEDV9rCaw2
HhpLqjo+xWTRRdAEylMNe9AT025P/Jn2YE+PbehpHHJxlRHoYdODt5C+xk9xa718hgFgudKD/1Jj
G3CSykrEsdvO94doM8qZC77SJA07nwPcTakm6FMVB/ucyp/OFc7qYv7v16uNI4oxFD2BgCmd8vv4
Kt0XUpb4VjhNwT8hd1MrhwYBu9Eneyzq45PBJg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
daR5CMsNcC+WDLEVzAmjrk30QFLhDm4ALIVoV1JlquChPY2RKBfzj+VninKtgJ1LhBcsDZyPyVS3
KPc1/H5atu/P2NmziucFOMEaUvrZ59UdT96jDSe9tXAhyWio+sXz7tbMi+POUIDWF7Mp9Dic0nNc
IE7cv4YfiGPsTsJESE7TtyPNv5txEHtXT7Xr4Hca0iNtL16C5igfyHC+Ve6WmYw2zxNQANDlMC4j
CGZk39s1sL9IfktW7FvdMaInOXr9wISlqteh2vzGqGgOnjQ9Aa5gPbrJnzmiT/6JFK0fpU4+8Ihl
xkk3ud/3RV3gZPuTxxOGcddpL2CbHSiOPz6boA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6704)
`pragma protect data_block
TwgRRlPcOnvXK1HVswdLjS9AbPKX2rEkwYv3vNjNDFpYpPwLipLXPjmrpRei76fyWKbX0E9Mekdn
NesPTbmfzsUUrp9HPy258V2tlzrEZMv9arAXIhrqc378ZSFkP3lN1XGrDAmT0pB+aV7PEzj3Mct6
tROoYhZV/yBIK79lPIXLMs9O4FsU2qQ/mRq+m3fOwF0vCcz7JzmpwyebeI/69Uf7ShS4a0gUAFXd
xkbKdoWBd4/dnHgdBmkNQJujPs3AQMvkRIkopKXdrAUXhdQnMNvA/skidvmlnAySuaiQno/hx2vf
e9TRdf08kRt4O65O1bXaQvtLoTlV/vd9MIODy/Fh5IboVRuIwIaJKkMIpYiyRXm8iV44FJOdhRCY
h2YdgccXOHhV7BGl/iI6g+QuxUzXrPFL5mH9XSloXGjLCEYvziN4mrc5KPVJobWw7Utm4BS8AjXB
wG98BXs4qwQjbEb6raDG45D2uRzjag3M0lKHn36SiAHjMZ1X2X4rUHDaZw7n+C+uVKwsPk4DevAT
SMwL3Xm1CPmS+AJLdm6ezsJvc742dFnCNtjDOtH+kxjhkksOp7WVXHxr8vxtvKiPP2i/ypjZEFHA
OBPRpHOSztH8Ubn2LkhbeyhOil3sxEkCuglob3qAqhVaQnTiEFxx+jbs9l1rmCqaETQahFS9tob2
yP1izh10EqAlfyWSzABaLW1jEZwPLtE/NpzZL98IOaQE+/K4rGaxP/SaJvYaEhw+Xlq1gKOfRLas
QyqYS8kU68LfKyy3taJEyCo14mH8m6d8gjfuhfw8WCi+LC0bFTHaD3ouMfp+G6Y2jkcIi2MYlZkq
e4frzd2HL4ioC+XuKkRQuIxoLtdG0emIa7K29vGklsblNj+uJRZ4u4Y5yquGgo9w4e2oJSxKd2Io
IlrYhFygYzXVNmcD9pzAjZsjD0UHNZzEaMZdVtW23X1x77eSP/r1FCpMxi/LoIyoRcPM73SOkNgp
BmCw4NJeW41RmWSGp9EqUFzbjin1LfgyaCGrd0d3Cq8Z0YpJs7d4Bfo968WvhDLRImL24Hn+wdvx
ESdEHa0Aqym66oyLDCqvjZ7J1Mw5d1V7gVvPvhHW4/ws+7n6btesbG/Kk1mFcKbVhytuy08bNXAa
GoA1L+j46sbNg7LDmIgCjbEtafc38pzz7xquCGSFYctNeTswpuY3u+rPuaviYMJcJXMexAiigOCr
sxwY7S0O86jceqiuHAU1+Xeq6g4yomFztPS4DnXttiAxLpAQ8vfpIrnO46AzU2LaqxzyZ7QZmVIE
O3mRdemRFVcNE5Syzo90fSoj8/zdG8U/xnfIGBwF7Ed6IQkqCUj3oVWUbxEWGMOI0Zo8b5dxLQIm
3GvHWlzjnkO0yGrlJYTpv1FxXXUwCRagjSj5Owv9ZNdpPRIzCGGN6TNiVK/ysuHTXENdG/ssROlS
vsmbK0EfZ0hBbM0y4+6SaAlj9UiFT8DwlddbpLMcTdf6hRJ5+mOSNAwOHCp+lY2cjNOxA9PKo5qc
VHWfe+NzvzpRFQpdrUsczugCG8WjKX5R91vCNGC22F07BDjyW0QtGlqUZeJCOIDBqolJiyim5Uuz
4lvM3MNB7FtlTv/4eNS7BvCZZpteToZ6scYlfaINdXBxVu1zd7H77THcsrwpHe58xSdfuUA2xziK
/6m0jQ+Drl+MIARDRnsV+Hn4A+7N8geWjduW/ajyb85Kc8/aomG025dp3+h9EaDJ7rLP60eSJ3Wh
R97P/y4EiyMVEOATo1veJUTe2AyBWZC7jDvxw0Ck1RqG3xvX3L5LhASy6vGxPDoPawqF4fbaSqEW
uqQ3cO9uhRmblA5Gqe4XwqRK5K1wBbE9DUhGeTHctsBmQcOrfoZtFjNog7ywuduaMhq6khIrnmp8
bsJ1jkJeRuhh0cMRVmlk942OidP/IRCy9dh8okUITGrMH541PxQTxjNOl5jzDSPwodZtP8BbIIrS
8PkL8hMbEd6Enx+9zx+Yj/AIq2iCjPD6HJnhdNMxTFyVzp1Xr+mmDAM+32/IG5QDIy8cCFC7C1ak
7H0ZQXIPQZ2NzEhv1CMOZz10xKbeLyorz0Q2hCSbR7VEWc+9LZgD6DvzMLeXuWNYE5ZqT5ehPj8f
Fq2GhnJFLqhlxI9uON/iSGXXAtLI8x4LDyrQAOrBtpk5gi5ipckT8X774xsD2piMIpoeV0Oy588Q
x1gPv2NFLxPArXwx1aCWKmWDV7HE3QgxiV3F8jp3FlpO8bWF9oNEYmh9yAaar4UTM0MHIX8GP7Wu
Ep3YTD476Tw/yYKpu8cIt4l2qUtlARHJ8Hgr9aLEP7Yx9fNqGcmmLHzVkBY6O8Vxv1aXEtwnCjI1
33kkVovKrrgid1s3Ep8LoUUWngBo1lst4FYhezwuSpCah1O5aZT69hy0WEgCwEleZRxM6lJk3Hvj
itJuILxGHHPc7nUh8zlgPW5i60svnMq2L+kaPjVkGlH694krJnrFGPlvQyh/ymQodvx9nIV0zRqx
kfuCRamQs2bkZY7y8qoHctrmNSMOsrhI9k7Ogx76OK307Qe1ZSxWAgZDD0WVIWWo22Zbw+pJVhmt
ji2T9DTmNumGk754jkuUqxFkzvzR5Fg+rp99bwrr3xlPIc0Z1dbTXMIAwoQwu+a0qRH4879PdyxM
puOopY84zNsSyqqm2yJXdnqAvXG59gPij2h2wrikiJ9KfZ0D40rH6LryoCFrK1vasqzZWKohKTqS
rHrKWSbT7yIuFN9ZwmszHqmlp2m/DTLiw0bl7jMoJ/+DC5URSTw+7gRuKqqWtPuOyxmXGqFWkmMD
bOSbWaO6+mpVN8+SwJHa2izGr7vCv5rWITkQUKSxlQbU3O2cNz5cqlIZY0rOLg8h12xNCdcvzvCZ
J+KdqtuOflcdTlZXWyscvF+unK2YEN+fgVHN3rm7t96UYqm7M4Pp1QbIxbNs2XGOLJcg5PLUhL4Q
qBEj9LP2R+D+35ioiwupiePd2i086h4+3XPO4+YAQ4v/Wrc3hQQQx+Hh6yAsrss/ZHEXG2CZiITQ
jjMNwr9sSAykIsNHjJopMFEPaXYWB/pTJ9VxN1NDdeZgIlo28ei5HBXqCddT0xw4YO61pbSh2sJq
lTA3ZISlL9Nh4H0RncWEefBJMSfICjvbVO5JoRE55J1B7lJdTY8g8kPvuV04H8gmEFpOn6UP2gkB
0wWAcp95NYRUIVW2X5Te0lSOMiwsmQLb1PXjkU/rPoHGrrRMuF+m0bUtKaI4nAd8rmfBJbB0PLFo
dKVHSIjtIX+SnjETzb40mkMmSkD98e4pjA3BHeN2VFJ3ZGR3jrrDiUafVhQE9Vvgkj45fvMyBszw
+MnZVITIii0tP7yL3SFWnuvxb+nLB+46oGMYjSiblMy/aCIPmmJOI7CjedbS+apRcLBxeWsvHJgc
Gijme3o9BbFoS/PbWBVE3CXm3coRZ0GM31Q0SjXSn0woeB1NRBk1KUhQZ1ZoNfDT5c/WoZDMkpwj
nBxccn6wuIDv9XOqFYZ3o5ZI3lQKeYb1lLz5nivh/GTV2gYIIRh3ikQ0IOa0istWPfrotOVjLkfX
Of4DXMuNO+HgllzQx+c6MoYsBs35MDNAECZpUV1H+e64JhrwIIo9l4yQ3MHGCdfofspo3n5fKkho
doIUiVZwvj0xkQbw/mVZDl1ORZOY2QU37JdV7vggE/3bOxPzuFJu+pNevWvCeElzxElnZrAcUOOh
Ijv7WyGxbf90cOfJURaicw2kquphFVT9DvYHTsIrrBakvHNqGSuKArVm6pJb1qDu8SYmTnVOysnX
H2oeiUYE+gR2sq2Rr7IWxFG7Z1yekj9mlqWN0O9HtT9NTTOo/j+J8GB1zS+mwawehFtiRh283kjX
gz/Er2hvvMlDz6Y72QJOn16Ut+yR2nN7GpmffLsGuVDoNVx2Dg4iiPhb1QEW4Yc6Xr8KQuUNEMOX
7cduSkN2VjWYIlJ+p6lN8MIDf/2zS2Qfu+qpkoAOusNlhd5wFLzCGIOXkvJIxxgkHEkalRj/x7zF
tO7DYDsXQaXs+OCO2U8UPg32YE4GTi1I88FIm9vrVy236gfq/WSNyqiyR+4oIw0YpVxJxphUh0Dl
ER3unptG/5+Vxc8mXniLtjK3vQIUNl0bj1Kz42W6JtN9B8QphNGLDv+4bfGXK0lUjYT4JqeJ526c
6Wwuca0g+tM/NlwOCics5PmbzOai5qNe+rPBJuJVfkS33qskU6dCbB3yxMJ8qyycdzDanclfGqAY
6R2NQ6BHmI75N5fdVduIkHtXEzqXm/VN1AzkSNdzBBYtOcBikTEza5WYFuRWG0xsM7PgkL0FX9Vo
gwSxq2K8li7d/EKkSiqEJ1ieVFlOO7LyX3dnqjzp73aelliMWVrfMfSqblNhNdTCVuAdLkwENWgd
Dslk1ucnBOZJ9PzW1uo7IWPYz+D8l3achmZkbrWacHHzBMh4d38mjZ05qzMhL8wjl0WzTxIolyW1
zpfWDCRfRKeU1zrnKEfxBku8M9RryalGbhdMadVhFLHPBBQLsDNaYTcvSAV5lBf5VnOroj+sXUAQ
I/pGC4iLjaLS4vp/d7gWOn67c5tJ5tCgH3OPq6XzWhrhDIm2Tb6hlpTWRjAm5vnqy7a0qGrOj0Nt
UecJCtvGmjyOYNYdpzaQTV7491K2SfqkhvRhFg5wmf3mDy0gAoMJ6H5/WwlNuDVtfkiP/JIFsqp3
gPHpvxx+lq1rAQVCNmAbF+/q0VpVeLXXxKkmlen0juHLW9P/C0cfrEWs1xo7zXW0TL3UhxTZCd8c
q10LaFpxfTQ4KoJiSpIjkcCpUEvLUugvUTXBHipCESNphYKufDrBBeL1LCyxtEFFC8WbT5G0tvdc
zrARP6lmTEOFnprwbgX+elaQXuA8hu4FRmcGuWTtbkcZT1rVq+D5hHzSPGhTHNTQb34GYzQ4rPGC
TDH7fdgOzrxQVpcx1uzKkmrYmLsAaw8mpVzjdTS66QZwKI1CPs/GeLzP10rPRmNl6po4wOh7m+/U
4uhEydm+P3KCxPdSZNmEc08febKYkYJgK3amRMFF8LkAHYSkLFxqJOOfcxwHJVwWt5G2RnIhxMBo
xlg3Xg+W51U+kzJ2nbY9GmiQDGY1lsSaIiCTvB+zL4HeMw0eVQJynYzY5Cp3zkTkmn4KfFA8hEXm
aJXk295X3HmxNqfLomXfVX8ijh3LkxXITxT1nsOzSRklpuizFD0HaiWe9ZmhMiMM9+jxDlBaU3Cn
Att+ydhr3cnddWhreXm5+aZ3H/wtIOAUCVQj2MI9PcZoTTy+opOgWqlTK6nbV7N2taNUprN0I+6y
iD0mMRgK3gEG+TdWtfHiay4MSh8xPWfGxE9vf9iMBa2SB3aHy2d71G9/HA3UTOym1T7X3fHXaLvi
ZjJug/FM88dLa+AMngcIiLLjOcg3BgWlCEtiql78ROltw3o392adWRgSX9kXviiOxnR+Hu13Ad17
hSnvK2x/+RBB58MjtMOP8Te1ozYeTl7LxAvwnDHKyIiGVe9qx4MpLgnHnbNdYf327244m7edaL7f
pcQwtmaTyro8ooCkl5fhmoOj/iSsjRyo/FI9EPEAGEeNx4Dcdv/6xUv7ImvFS0MqNWzc40BIERKw
r5kzE+XA/icLxDDbui7NLknj1kpKtrcCfbyLXwqr4+94+Glthi0I2s1hQycBDAgnytTq+8eWzYaC
TNwfGwFoCWhD5bC0DIlHFZ4brWPf4yqUDkhaoaiw8VsL0oq2E91SQdjM7bzQ+A8FFl1lbWWvUh7V
YNy8OO8yxnhgugZ3LyOhAgDgAEbunc4K1Aqv5Q72h0VO9ffQRiYozD/vKR6HmGXeuAo9gy0FlgaB
RJkrvyAIFF7y/uw3u121RDSN/qcoiTDFUxVO31RstEojSwLudlJXJtFsquQA2lxdKDQ9aQV7oOsZ
286kFuu2pAGTcAmz5Oi5BMxyL877xbRaaou++LkgNw/XrakeNIz9RITOkhIZlf06VjWgZznR+sPG
n8HzTimlrPz/ZT1g9oc7KDxWOcdJSKaN4E3e6pP8fbwfIxw8sPiQSKRuiQacvgpfaZ1BM65s3MAg
HTYzOtVV5uQj/x7vkkJ2jFhErzIR5t3cQacNSrt9HwDT7mgRInlE3ey0ysuZPKFr2MIMEehp1r62
OWDQVpPI8D5pJh3THJB4jnNVMZiXQcVPgVI3gAFzmHZUx6NJoa3ZfMiSIdeQEMlrMC/qY0lc8jLs
rORL+psmY5qvI9K3RXzbY3v33aX3Gh5ESsOUsXJvisTCA8ke338uwTG9QOl7gYaLYBEgnKrdlm8X
Zw8t/Sks+gLBucpBTdHz3FJBiJb/w+icuYN8DSTR5Zuy7+gwD5oDW2KoLLtuv9MghyQmOhOW4nuq
bVkEE5ESBA1vq9bDjWxBSgQsX/I02t9TQQNkR1sm/43rT3WZcc6kVFOZLAuLSxA1u+CFb4dLyAgG
KQz/prgcN5idOn9vh1ZBc+quFosBQi3d2tNnaRGui97US5YmUBzFfC0tcsxKHss6LqPm/2kIaAvU
CLMACUBeNlVt7Z/7BYS72On+b4dz8rpBkeoGR/qpSnjuLbIV5Fh81n6nKBulxhIzlOUno3WMR0mG
IF0877WpcMwoHMj42/zvyVh6FfNNyAm5UrmJ5XVRsZnWMMQx8Mgv9qkX3OGOoW3q3VcLoQoPT0ck
K9GCnFDc/vQXlG90yqo2ksTez99/wmajkhZjS8NUXPVx1XiQvc2fRACgkcO/034/22RSl7+4LhYv
2lhJNDy+1ZxZnKPXQ0K3Z1nPAk02jOt2C6fKVSFbt+RdMbYW3E/hMl3edhW77noXeW4t3ODx948e
Sgppwc3jLULlyLTlpbhAALCysVX5zsIBrmgYjRo9Ivp0xPP72TwwRKwhtDIRm9Qlk5TJ4Twi6uys
5ue6cR1iMURT0m47VImgjf9OLqhFE3XlQyc7FNByEBPGjEoNqDrytTBxy3BtXDQVinRlqP+VUJ3R
miuxpy3rSH+s4u+RfZ53I8KzvfHIV7QWBsKC42rJwOxSvvFgFrntVppKGaAnbCJMOu6/wgq82SRz
hdhsS/1fxdB0UjpL8hjuv4vFpM9sLRxZ8ecGs8ri+ieApPBN0ReBLy5dtU8iVDK/fCe3q71RCQIT
QaYsbxhjh52hOpKcBERG/GI5KStrjwN+UT6Ojy9/35Vp3xIpWxWbQFJr7yVL+spMZ/4P4ioKUfas
kv4j3jxJ72pDmq3i9etW6tjsE7CtLlgIA2qJqd0CtzKfOfa8Po7IHtwnp6CcXdMx2/I+kriDRRzH
Sh02Bkd9VVOfFibFBzinhFbk9874RCBZ37AsoIMEgwHuT+eEBr0LXv0bs9uGoegUD5yHIa5skbTm
zwzx8AyWnwOIv0k4Ra8soDPFzoC9QJy9tQEv46rdK7WB1SDyhSBwCQAYV7lE80QX1JkAMSDJwdSp
JGAXnVQ1aoNllIgVbbQ8lVhSOgveQOMU4PbEt5TApr4H95wkcz7RJwKHg4GDvFgb/wvP+VdtUF2h
8Q2lN+BOmFKuj4oJ8l8EeSt958/5a11O5kEgXTkciwyrT4g3K9CPYB0heILskJUe2TY3ftsbO0pM
/drQDGjhkKLqGXRsjly/2nsi+1VS8EcQq8CFDr0n48WCkrDCz3h50DaY1JnUkq812PHQX+o8RmU2
KY/x9R4Sn3KZU+Tc9SHr49km+1m3gzwSj54MUTQmFO7dKojZNS23H0CIqdudSv03FxxFNiSiEsLm
MnVhjXj+vOhfJ2QxG9zE/tEWwzJvRjiBwV64w0R5qGCGGIvpRjZ7TYRYDWwT5/GOjOlXHET4MfXo
i+2PIrlUSwl7O01pV+6w844+GJcB66typzU/nFG/YhaUprQTnMobadeBgTlfvFxBO1tBLnvIRrrW
jfRJD/n27+E26peeEKBTNElkewEKSEcBrhfhfivHZAdwtkPDXYZA8VDIj/Mg7hUf0zAghsoSC7t+
aV5QMb92b/AKwMPvf4a8fIPoscap8tQ0bZSm/a9ctM85l8a+v6brqa7dvYX7CQw77ZCQje+cabVR
FRo2tHxAwjYyWlsGQgu+0/pvfWUqt8TbdhmcjZTNo/oeSOe5EvQYd2uojh9S8lxPSV7jjnt0KPhH
ZcnFi6eqjeuXrWiaDwV30QapaXtYQLuO4Q2ONA7UHrwuug9wzAHPRTm1GuXsmzuKOFa1QOJzhLQv
fBphGx8GusqPb9ZqsN7f/xOyy/mgcjei50MHfinU/SSotFqHMIcs0eggtIYntvyu2A1eX6tExihE
CjbD4feHBayG83U5qEeW7nGDcYrTKI2ytSbyQP58Dkd89KPj1EU0mIxLvHao1iwsG0+VnCVA0AcO
Y7UXzqLJ3TBH4uKIflA337UbxOk/uNn2zxDiXelrYR75NLd6UGGqWk/7N1owY/xd7/oV/ZGZG+X7
AGhWPZTXG9KZhnhYLou+1x8kdqy1PkWPoS+Bz65Bw1G7Hma80U162HCShyIlFJ5iBFeF7t4gqXeK
j35o02W7Kl1MBZOu9UgdxcXL0Dq2Vtzkftl2acWSibD4PwaKTU2bwC1QpoUF3fpaWkPhsHU8W3SK
vZnkFwRXumkPruVLdBFlhvx66GPzLf0aSwiNUv6BYPqiN4DPCeRcdFtErM2aY/gGJZL2TTkpco8q
Ejlthk5ExdKieSfWfmx22D8Sy6qFgoh6pZBByQkM+94+RwLzY/OWHedM3yjuYEfK+pog9bA1KuYy
o6hiTqAKyH64GD1mhLfpNQvtoL7OFyGhm+1ev5I1jY6DJ0vw6V1iNIUSCSoJIST5unA4sxz3uIgj
mfT0l0qMhye2vHL7wcnbdOBMHD2pxPGl1EFM5NirfeqAjFUbB9f7cT47XUzqN1MqsbNdYFdJ/mkN
7V0ll3PWwWW8Bvwn0qGGCXWUbmpPtH959gd9vrKdxArPAe4=
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
