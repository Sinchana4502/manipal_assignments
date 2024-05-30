/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign7.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and queue data type 
***************************************************************************/
module data_assign7;
  //ADD_CODE: Declare a queue with unbounded value off type bit[7:0]
    bit [7:0] queue[$];
  //ADD_CODE: Write a function to assign 15 random values to the queue
    function void assign_random_values();
    for (int i = 0; i < 15; i++) begin
      queue.push_back($urandom_range(0, 255));
    end
  endfunction
  //ADD_CODE: Display all the elements of the queue and size of the queue
  function void display_queue();
    $display("Queue elements: %p", queue);
    $display("Queue size: %0d", queue.size());
  endfunction
  //ADD_CODE: Write a function to reverse the elements of the queue without queue method
  function void reverse_queue_manual();
    bit [7:0] temp;
    int size = queue.size();
    for (int i = 0; i < size/2; i++) begin
      temp = queue[i];
      queue[i] = queue[size-i-1];
      queue[size-i-1] = temp;
    end
  endfunction
  
 nitial
    begin
      random();
      $display("the original queue");
      display();
      //ADD_CODE:ADD a queue method to reverse the elements of the code
      //ADD_CODE: HINT Add loops
      //ADD_CODE: Display the reversed queue elements and size
      reverse();
      $display("Reversed Queue:");
      display();
      //ADD_CODE: Call the function to display the reverse elements of the above queue
      //ADD_CODE: Display the elements. The queue elements matches with original value
      //queue method to reverse the queue
      q.reverse();
      display();
    end
endmodule
 
