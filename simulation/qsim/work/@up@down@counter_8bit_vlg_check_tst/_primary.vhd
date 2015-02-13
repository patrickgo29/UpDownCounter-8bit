library verilog;
use verilog.vl_types.all;
entity UpDownCounter_8bit_vlg_check_tst is
    port(
        count           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end UpDownCounter_8bit_vlg_check_tst;
