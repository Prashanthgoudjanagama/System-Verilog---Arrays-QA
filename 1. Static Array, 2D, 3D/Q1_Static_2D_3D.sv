// Q1. store the elements in the array and print them ?

module Q1 ();
	
	// static array
	bit[31:0] static_array[10];  //once it declare we can't change the size.

	// 2D array --> declare it by using [rows][columns]
	bit[31:0] array_2D[3][3];

	// 3D array --> declare iy by using [copies][rows][columns]
	bit[31:0] array_3D[2][2][3];


	initial begin
		$display("\n------------------------------static array-------------------------------------\n");

		//direct storing
		//static_array = '{10, 20, 30, 40, 50, 60, 70, 80, 90, 100}; 

		//storing using loop
		for(int i=0; i<10; i++) begin
			static_array[i] = i*10;
		end	
		
		$display("static_array : %0p", static_array);
		foreach(static_array[i]) begin
			$display("static_array[%0d] = %0d", i, static_array[i]);
		end
	end


	initial begin
		$display("\n-------------------------------array 2D----------------------------------------\n");

		//direct storing
		//array_2D = '{'{1,2,3}, '{4,5,6}, '{7,8,9}};

		// storing using loop
		for(int i=0; i<3; i++) begin
			for(int j=0; j<3; j++) begin
				array_2D[i][j] = (j+1)*10;
			end

		end

		$display("array_2D : %0p", array_2D);
		foreach(array_2D[i,j]) begin
			$display("array_2D[%0d][%0d] = %0d", i, j, array_2D[i][j]);
		end

	end


	initial begin
		$display("\n-------------------------------array 3D----------------------------------------\n");

		//direct storing
		//array_3D = '{'{'{1,2,3}, '{4,5,6}}, '{'{10,20,30}, '{40,50,60}}};

		//using foreach loop
		for(int i=0; i<2; i++) begin
			for(int j=0; j<2; j++) begin
				for(int k=0; k<3; k++) begin
					array_3D[i][j][k] = (k+1)*10;
				end
			end
		end

		$display("array_3D : %0p", array_3D);
		foreach(array_3D[i,j,k]) begin
			$display("array_3D[%0d][%0d][%0d] = %0d", i, j, k, array_3D[i][j][k]);
		end

	end


	initial begin
		$display("\n------------------------------matrix print------------------------------------\n");	
		for(int i=0; i<3; i++) begin
			for(int j=0; j<3; j++) begin
				$write("%0d ",array_2D[i][j]);
			end
			$write("\n");
		end
	end



endmodule : Q1
