library verilog;
use verilog.vl_types.all;
entity UpDownCounter_8bitExample_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end UpDownCounter_8bitExample_vlg_sample_tst;
