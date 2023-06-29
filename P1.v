module P1(clk, client_val, client_data, dat1, dat2, dat3, dat4);

parameter data_width = 8;

input                       clk;
input                       client_val;
input      [data_width-1:0] client_data;
output reg [1:0]            dat1;
output reg [1:0]            dat2;
output reg [1:0]            dat3;
output reg [1:0]            dat4;

always @(posedge clk) 
begin
    if (client_val) begin
        dat1 <= client_data [data_width-1:6];
        dat2 <= client_data [5:4];
        dat3 <= client_data [3:2];
        dat4 <= client_data [1:0];
    end
end

endmodule