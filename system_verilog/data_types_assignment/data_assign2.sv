/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign2.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and functions 
***************************************************************************/
ssign2;
  int dy[];
  function dy_array(input int size);
    dy= new[size];
    foreach(dy[i])
      dy[i]=$random;
  endfunction
  function dy_array_max();
    int temp;
    for(int i=0;i<dy.size();i++) begin
      for(int j=i+1;j<dy.size();j++) begin
        if(dy[i]>dy[j]) begin
          temp=dy[i];
          dy[i]=dy[j];
          dy[j]=temp;
        end
      end
    end
    $display("Max value of Dynamic array=%0d",dy[dy.size()-1]);
    $display("Second Max value of Dynamic array=%0d",dy[dy.size()-2]);
    $display("The ascending ordered array:");
    foreach(dy[i])
      $display("dy[%0d]=%0d",i,dy[i]);
  endfunction
    initial begin

  //Part 2a
  //ADD_CODE: The array method to return the maximum value stored in the array
    //part 2b
  //ADD_CODE: Modify the Part 1 function to arrange the array with out array met                                                                                                             hod
  //ADD_CODE: write a function to arrange the the array in the ascending order
  //HINT : using a loop you can compare the values of the array with previous va                                                                                                             lue
      repeat(30) begin
      //ADD_CODE: call the function
      //ADD_CODE: Display the elements of the dynamic array
      //ADD_CODE: Display the array and the maximum value
      //ADD_CODE: Display the maximum value of the array and second largest valu                                                                                                             e in the array
  dy_array(10);
    $display("size of an Dynamic array=%0d",dy.size());
    foreach(dy[i])
      $display("dy[%0d]=%0d",i,dy[i]);
    //$display("\n");
  dy_array_max();
        $display("\n");
      end
  #10 $finish;
    end
endmodule

