/*
	associative array:
		1. stores the entries in sparse matrix.
		2. do not have any storage until it is used.
		3. main use of this array is; 
		    -> Instead of allocating 1000 locations dynamically and using only 3 specific addresses (10, 100, 1000),
		       wasting memory—you can use an associative array. 
		    -> This way, memory is allocated only when accessed, ensuring efficient storage.
		4. syntax: <datatype> asso [<keytype>];
		5. methods: size, exists, num, delete, prev, next, first, last.

*/

module Q3();

	bit[31:0] ass_int[int];
	string ass_string[string];


	initial begin
		$display("\n----------------------------------------------------------------\n");
		ass_int = '{10:23, 20:54, 100:34};
		$display("ass_int size : %0d", ass_int.size());
		$display("ass_int num : %0d", ass_int.num());

		$display("ass_int : %0p\n", ass_int);

		if(ass_int.exists(14)) begin
			$display("14 is exists and data : %0d", ass_int[14]);
		end
		else begin
			$display("14 is not exists");
		end

		if(ass_int.exists(10)) begin
			$display("10 is exists and data : %0d\n", ass_int[10]);
		end
		else begin
			$display("10 is not exists");
		end

		ass_int.delete(10);
		$display("ass_int size after delete : %0d", ass_int.size());
		$display("ass_int num after delete : %0d", ass_int.num());
		$display("ass_int : %0p\n", ass_int);

		ass_int.delete();
		$display("ass_int size after compl delete : %0d", ass_int.size());
		$display("ass_int num after compl delete : %0d", ass_int.num());
		$display("ass_int : %0p", ass_int);
		

	end


	string index;

	initial begin
		$display("\n----------------------------------------------------------------\n");

		ass_string = '{"BOX0":"guava", "BOX1":"apples", "BOX2":"mangos", "BOX3":"banana"};

		$display("ass_string size : %0d", ass_string.size());
		$display("ass_string num  : %0d", ass_string.num());
		$display("ass_string : %0p\n", ass_string);


		ass_string.first(index);
		$display("ass_string first : %0s\n", index);

		index = "BOX2";

		ass_string.next(index);
		$display("ass_string next to BOX2 : %0s\n", index);

		ass_string.prev(index);
		$display("ass_string prev from last : %0s\n", index);

		ass_string.last(index);
		$display("ass_string last : %0s\n", index);

		ass_string.delete("BOX3");	
		$display("ass_string size after box3 delete : %0d", ass_string.size());
		$display("ass_string num after box3 delete  : %0d", ass_string.num());
		$display("ass_string after box3 delete : %0p\n", ass_string);
	end

endmodule : Q3
