/*
Dynamic array: size can be set during the runtime.
	methods: 
		* new()   :
		* size()  :
		* delete():
*/



module Q2();

	bit[31:0] dynamic[];
	bit[31:0] dynamic_1[];



	initial begin

		$display("\n-----------------------------------------------------------------\n");
		$display("dynamic array size before new : %0d", dynamic.size());

		dynamic = new[10];
		
		
		$display("dynamic array size after new : %0d", dynamic.size());

		//using direct 
		foreach(dynamic[i]) begin
			dynamic[i] = i*10; 
		end
		
		$display("dynamic : %0p", dynamic);

		dynamic.delete();
		$display("dynamic array size after delete : %0d", dynamic.size());
		
		
		$display("dynamic : %0p", dynamic);
	end


	initial begin

		$display("\n-----------------------------------------------------------------\n");
		$display("dynamic_1 array size before new : %0d", dynamic_1.size());

		//dynamic_1 = new[10]('{1,2,3,4,5,6,7,8,9,10});
		dynamic_1 = new[10](dynamic);
		$display("dynamic_1 array size after new : %0d", dynamic_1.size());
		$display("dynamic_1 = %0p", dynamic_1);

	end


endmodule 
