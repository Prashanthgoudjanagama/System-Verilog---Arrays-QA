/*

	Queue:
		1. A collection of homogeneous elements.
		2. Can be of any data type.
		3. Supports dynamic insertion and removal of elements.
		4. Syntax: <datatype> name [$];
		5. Available methods: size, delete, insert, push_front, push_back, pop_front, pop_back.

		   
*/



module Q4();

	bit[31:0] Q[$];

	initial begin
		$display("\n-------------------------------------------------\n");
		Q = '{10, 20, 30, 40};
		$display("Q : %0p", Q);
		$display("Q size : %0d", Q.size);

		$display("\n--------insert method--------");
		Q.insert(2, 100);
		$display("Q --> (2, 100) : %0p", Q);
		$display("Q size : %0d", Q.size);
		
		$display("\n--------push front method--------");
		Q.push_front(1000);
		$display("Q --> (1000) : %0p", Q);
		$display("Q size : %0d", Q.size);
		
		$display("\n--------push back method--------");
		Q.push_back(10000);
		$display("Q --> (10000) : %0p", Q);
		$display("Q size : %0d", Q.size);

		$display("\n--------pop front method--------");
		Q.pop_front();
		$display("Q : %0p", Q);
		$display("Q size : %0d", Q.size);

		$display("\n--------pop back method--------");
		Q.pop_back();
		$display("Q  : %0p", Q);
		$display("Q size : %0d", Q.size);

		$display("\n--------delete method----------");
		Q.delete(2);
		$display("Q  : %0p", Q);
		$display("Q size : %0d", Q.size);
		
		Q.delete();
		$display("Q  : %0p", Q);
		$display("Q size : %0d", Q.size);
	end


endmodule : Q4
