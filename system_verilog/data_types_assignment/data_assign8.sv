/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign8.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and dynamic array differences
***************************************************************************/
module data_assign8 (); // module name and file name same
  
  //ADD_CODE: Declare a dynamic array of dyn_arr
    int dyn_arr[];
  //ADD_CODE: Declare the the size of an array
   int size = 100;
  //ADD_CODE: write a function to assign even values to the first 50 elements of the array
    function void assign_even_values();
    dyn_arr = new[size];
    for (int i = 0; i < 50; i++) begin
      dyn_arr[i] = 2 * (i + 1);
    end
  endfunction
  //ADD_CODE: Display the value of the array 
    initial begin
    assign_even_values();
    $display("Dynamic Array after assigning even values: %p", dyn_arr);
    end
  //ADD_CODE: Now write another function to add odd values to the last 50 elements
    function void add_odd_values();
    for (int i = 50; i < size; i++) begin
      dyn_arr[i] = 2 * (i - 50) + 1;
    end
  endfunction 
  //ADD_CODE: Display all the 100 elements of the array
    initial
    begin
    add_odd_values();
    $display("Dynamic Array after adding odd values: %p", dyn_arr);
    end
  //ADD_CODE: Write a method to delete the 90th element of the array
  function void delete_90th_element();
    if (size > 90) begin
      for (int i = 90; i < size - 1; i++) begin
        dyn_arr[i] = dyn_arr[i + 1];
      end
      dyn_arr = dyn_arr.resize(size - 1);
    end
  endfunction
  //ADD_CODE: Write a method to delete the compelte array
  function void delete_array();
    dyn_arr.delete();
  endfunction

  //Please repeat the same code with associative array with name assoc_arr and compare your findings
 end 
endmodule
 
