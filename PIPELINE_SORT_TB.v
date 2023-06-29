module PIPELINE_SORT_TB();

parameter data_width = 8;

reg                   clk;
reg                   rst_n;
reg                   client_val;
reg                   sort_rdy;
reg  [data_width-1:0] client_data;

wire [data_width-1:0] sort_data;
wire                  client_rdy;
wire                  sort_val;

always #5 clk = ~clk;

initial begin
clk         = 0;
rst_n       = 0;
client_val  = 1;
sort_rdy    = 1;
client_data = 8'b11001001;
repeat(1) @(posedge clk);
rst_n       = 1;
repeat(4) @(posedge clk);
client_val  = 0;
sort_rdy    = 0;
repeat(10) @(posedge clk);
end

PIPELINE_SORT T(.clk, .rst_n, .client_val, .sort_rdy, .client_data, .sort_data, .client_rdy, .sort_val);
    
endmodule