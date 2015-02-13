library verilog;
use verilog.vl_types.all;
entity UpDownCounter_8bit is
    port(
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        clk             : in     vl_logic;
        count           : out    vl_logic_vector(4 downto 0)
    );
end UpDownCounter_8bit;
