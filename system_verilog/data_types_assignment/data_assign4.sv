/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign4.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of structure data type 
***************************************************************************/
//Declare _assign4;

typedef struct {
        int coins;
        real rupees;
        } money;
 //To create the instance of the structure
        money money_t;
  initial
    begin
      //Assign directvalues to the structure variables
       money_t ={5,10} ;

      //Display the values of the memebers
       $display("%0p", money_t);

      //Assign values using the memebers name
       money_t.coins = 7;
       money_t.rupees = 11.50;


      //Display the values
        $display(" coins = %0d, Rupees = %0.2f", money_t.coins, money_t.rupees);


      //Assign all elements of structure to zero
       money_t.coins = 0;
       money_t.rupees = 0.0;


      //Display the values
        $display(" coins = %0d, Rupees = %0.2f", money_t.coins, money_t.rupees);

  end
endmodule


