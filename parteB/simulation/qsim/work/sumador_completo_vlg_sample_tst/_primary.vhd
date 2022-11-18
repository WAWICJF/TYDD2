library verilog;
use verilog.vl_types.all;
entity sumador_completo_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_cin          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sumador_completo_vlg_sample_tst;
