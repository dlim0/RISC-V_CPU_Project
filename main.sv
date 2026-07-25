// -------------------------------------------------------------------
// @author Daniel Lim
// @copyright (C) 2026, <COMPANY>
//
// Created : 24. Jul 2026 11:13 PM
//-------------------------------------------------------------------

    //Motherboard of the RISC-V CPU linking the components of ALU, Control Unit, and memory
module main ();
endmodule : main

    //This portion of the code is dedicated to the Register File
module registerfile ();

endmodule : registerfile    
    //end of regfile
    //This portion of the code is dedicated to the ALU (Artihmetic Logic Unit)
module ALU (
    input logic [31:0] src1, src2, //32 bit inputs
    input logic [2:0] alu_op, //controls ALU operation
    output logic [31:0] out, //32-bit output that is dependent on the result of the operation
    output logic zero //1-bit output used as a status indicator on whether ALU operation resulted in a 0
);
    always_comb begin //begins the sensitivty for comb logic and helps prevents errors
        out = '0; //by default output is 0

        case (alu_op) //based on what alu_op is the specific operator is chosen
            3'b000: out = src1 + src2; //addition
            3'b001: out = src1 - src2; //subtraction
            3'b010: out = src1 & src2; //and (masking non-similar bits)
            3'b011: out = src1 | src2; //or (combines the bits to have all active bits between to sources active)
            3'b101: out = src1 ^ src2; //xor (combines active bits exclusive to the sources)

            default: out = '0; //the value whenever no ALU operator is chosen
        endcase
        zero = ~(|out); //sets the zero flag by using a reducing or to see if ANY bits from out is nonzero (if any are  zero wont flag)
    end
endmodule : ALU
    //end of ALU