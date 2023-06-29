module P2(clk, sort_rdy, dat1, dat2,dat3, dat4, sort);

parameter data_width = 8;

input                  clk;
input                  sort_rdy;
input [1:0]            dat1;
input [1:0]            dat2;
input [1:0]            dat3;
input [1:0]            dat4;
inout [data_width-1:0] sort;

reg   [data_width-1:0] S;
reg   [1:0]            array [1:4];
reg   [data_width-1:0] temp;
integer i, j;

assign sort = S;

always @(posedge clk) 
begin
    if(sort_rdy) begin
    array[1] = dat1;
    array[2] = dat2;
    array[3] = dat3;
    array[4] = dat4;
    end
    for (i = 4; i > 0; i = i - 1) begin
        for (j = 1; j < i; j = j + 1) begin
            if (array[j] < array [j + 1]) begin
                temp = array[j];
                array [j] = array [j + 1];
                array [j + 1] = temp;
            end
        end
    end
end

always @(posedge clk) 
begin
    S [data_width-1:6] = array[1];
    S [5:4] = array[2];
    S [3:2] = array[3];
    S [1:0] = array[4];
end

endmodule