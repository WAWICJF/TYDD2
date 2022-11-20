library verilog;
use verilog.vl_types.all;
entity sumador_completo is
    port(
        s0              : out    vl_logic;
        clk             : in     vl_logic;
        a1              : in     vl_logic;
        b0              : in     vl_logic;
        a0              : in     vl_logic;
        s1              : out    vl_logic;
        a2              : in     vl_logic;
        b1              : in     vl_logic;
        s2              : out    vl_logic;
        a3              : in     vl_logic;
        b2              : in     vl_logic;
        s3              : out    vl_logic;
        sc              : in     vl_logic;
        b3              : in     vl_logic;
        carry           : out    vl_logic;
        des             : out    vl_logic;
        \0\             : out    vl_logic;
        signo           : out    vl_logic
    );
end sumador_completo;
