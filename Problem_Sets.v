// Sequential Logic
  // Latches and Flip-Flops
    // D Flip Flop
      // Objective: Create a single D Flip-Flop
      module top_module (
        input clk,    
        input d,
        output reg q );

        always @(posedge clk) 
          q <= d;
      endmodule

    //Dff8
    // Objective: Create 8 D flip-flops. All DFFs should be triggered by the positive edge of clk.
    module top_module (
      input clk,
      input [7:0] d,
      output [7:0] q
    );

    always @(posedge clk) 
        q <= d;
    endmodule

    //Dff8r
    // Objective: Create 8 D flip-flops with active high synchronous reset. All DFFs should be triggered by the positive edge of clk.
    module top_module (
      input clk,
      input reset,            // Synchronous reset
      input [7:0] d,
      output [7:0] q
    );

    always @(posedge clk) 
        if (reset) begin
            q <= 0;
        end
    	else begin
            q <= d;
        end
    endmodule

    //Dff8p 
    // Objective: Create 8 D flip-flops with active high synchronous reset. The flip-flops must be reset to 0x34 rather than zero. All DFFs should be triggered by the negative edge of clk.
    module top_module (
      input clk,
      input reset,
      input [7:0] d,
      output [7:0] q
  );

    always @ (negedge clk) 
        if (reset) begin
            q <= 8'b00110100;
        end
        else begin
         	q <= d;
        end
    endmodule





