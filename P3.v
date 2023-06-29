module P3(clk, rst_n, sort_val, sort, sort_data);

parameter data_width = 8;

input                        clk;
input                        rst_n;
input                        sort_val;
input      [data_width-1:0]  sort;
output reg [data_width- 1:0] sort_data;

always @(posedge clk or negedge rst_n) 
begin
    if (~rst_n) sort_data <= 8'b0;
    else if (sort_val) sort_data <= sort; 
end
endmodule