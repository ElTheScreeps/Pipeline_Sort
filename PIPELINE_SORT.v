module PIPELINE_SORT(clk, rst_n, client_val, sort_rdy, client_data, sort_data, client_rdy, sort_val);

parameter data_width = 8;

input                    clk;
input                    rst_n;
input                    client_val;
input                    sort_rdy;
input   [data_width-1:0] client_data;
output  [data_width-1:0] sort_data;
output                   client_rdy;
output                   sort_val;

reg  [data_width-1:0] sort;
reg  [1:0]            count;
reg  [1:0]            dat1;
reg  [1:0]            dat2;
reg  [1:0]            dat3;
reg  [1:0]            dat4;

wire [1:0]            a;
wire [1:0]            b;
wire [1:0]            c;
wire [1:0]            d;
wire [data_width-1:0] s;

always @(posedge clk or negedge rst_n) 
begin
    if (~rst_n) count    <= 'b0;
    else if (sort_rdy) count <= count + 1; 
end

assign sort_val = (count == 2'b11) ? 1 : 0; 
assign client_rdy = (sort_rdy) ? 1 : 0; 

P1 u1(.clk, .client_val, .client_data, .dat1(a), .dat2(b), .dat3(c), .dat4(d));
P2 u2(.clk, .sort_rdy, .dat1(a), .dat2(b), .dat3(c), .dat4(d), .sort(s));
P3 u3(.clk, .rst_n, .sort_val, .sort(s), .sort_data);

endmodule