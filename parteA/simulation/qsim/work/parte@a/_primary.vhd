library verilog;
use verilog.vl_types.all;
entity parteA is
    port(
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        LED             : out    vl_logic
    );
end parteA;
