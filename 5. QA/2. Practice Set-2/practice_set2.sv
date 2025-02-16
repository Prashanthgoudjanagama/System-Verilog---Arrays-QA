module PS2();

	int Q14[3][3];


	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q14. print the matrix 3x3----------\n");

		Q14 = '{'{1,2,3},'{4,5,6},'{7,8,9}};

		for(int i=0; i<3; i++) begin
			for(int j=0; j<3; j++) begin
				$write("	%0d", Q14[i][j]);
			end
			$write("\n");
		end
	end


	int Q15_a[3][3];
	int Q15_b[3][3];

	int Q15_sum[3][3];

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q15. addition of two matrix 3x3----------\n");

		foreach(Q15_a[i,j]) begin
			Q15_a[i][j] = i*j;
			Q15_b[i][j] = (i+1)*(j+1);
		end

		foreach(Q15_a[i,j]) begin
			Q15_sum[i][j] = Q15_a[i][j] + Q15_b[i][j];
		end
		$display("*********matrix A************");
		foreach(Q15_a[i,j]) begin
			$write("	%0d", Q15_a[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end


		$display("\n*********matrix B************");
		foreach(Q15_b[i,j]) begin
			$write("	%0d", Q15_b[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end


		$display("\n*********matrix sum************");
		foreach(Q15_sum[i,j]) begin
			$write("	%0d", Q15_sum[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end

	end

	int Q16_a[3][3];
	int Q16_b[3][3];

	int Q16_sub[3][3];

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q16. substraction of two matrix 3x3----------\n");

		foreach(Q16_a[i,j]) begin
			Q16_a[i][j] = (8*i)*(j+1);
			Q16_b[i][j] = (i+1)*(j+1);
		end

		foreach(Q16_a[i,j]) begin
			Q16_sub[i][j] = Q16_a[i][j] - Q16_b[i][j];
		end
		$display("*********matrix A************");
		foreach(Q16_a[i,j]) begin
			$write("	%0d", Q16_a[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end


		$display("\n*********matrix B************");
		foreach(Q16_b[i,j]) begin
			$write("	%0d", Q16_b[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end


		$display("\n*********matrix sub************");
		foreach(Q16_sub[i,j]) begin
			$write("	%0d", Q16_sub[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end
	end

	int Q17_a[3][3];
	int Q17_b[3][3];
	int Q17_mult[3][3];

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q17. multiplication of two matrix 3x3----------\n");

		Q17_a = '{'{1,2,3},'{4,5,6},'{7,8,9}};
		Q17_b = '{'{1,1,1},'{2,2,2},'{3,3,3}};
		Q17_mult = '{default:0};

		for(int i=0; i<3; i++) begin
			for(int j=0; j<3; j++) begin
				for(int k=0; k<3; k++) begin
					Q17_mult[i][j] = Q17_mult[i][j] + (Q17_a[i][k] * Q17_b[k][j]);
				end
			end
		end
		
		$display("*********matrix A************");
		foreach(Q17_a[i,j]) begin
			$write("	%0d", Q17_a[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end


		$display("\n*********matrix B************");
		foreach(Q17_b[i,j]) begin
			$write("	%0d", Q17_b[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end


		$display("\n*********matrix mult************");
		foreach(Q17_mult[i,j]) begin
			$write("	%0d", Q17_mult[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end


	end


	int Q18_a[3][3];
	int Q18_aT[3][3];

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q18. A transpose a of matrix 3x3----------\n");

		Q18_a = '{'{1,3,5},'{7,9,0},'{2,4,6}};


		foreach(Q18_a[i,j]) begin
			Q18_aT[i][j] = Q18_a[j][i];
		end

		$display("*********matrix A************");
		foreach(Q18_a[i,j]) begin
			$write("	%0d", Q18_a[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end


		$display("\n*********matrix A transpose************");
		foreach(Q18_aT[i,j]) begin
			$write("	%0d", Q18_aT[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end
	end


	int Q19_a[3][3];
	int right_sum;
	int left_sum;

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q19. sum right and left diagonals a of matrix 3x3----------\n");

		Q19_a = '{'{1,2,3},'{4,5,6},'{7,8,9}};

		right_sum = 0;
		left_sum = 0;

		for(int i=0; i<3; i++) begin
			right_sum = right_sum + Q19_a[i][3-1-i];
			left_sum = left_sum + Q19_a[3-1-i][i];
		end

		foreach(Q19_a[i,j]) begin
			$write("	%0d",Q19_a[i][j]);
			if(j==2) begin
				$write("\n");
			end
		end

		$display("sum of right diagonal : %0d", right_sum);
		$display("sum of left diagonal : %0d", left_sum);


	end

	int Q20_a[3][3];
	int row_sum[3];
	int col_sum[3];

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q20. sum each rows and left columns a of matrix 3x3----------\n");

		Q20_a = '{'{12,24,36},'{13,26,39},'{14,28,42}};

		foreach(Q20_a[i,j]) begin
			$write("	%0d", Q20_a[i][j]);
			if(j == 2) begin
				$write("\n");
			end
		end
		
		foreach(Q20_a[i,j]) begin
			row_sum[i] = row_sum[i] + Q20_a[i][j];
			col_sum[i] = col_sum[i] + Q20_a[j][i];
		end

		for(int i=0; i<3; i++) begin
			$display("row_sum[%0d] : %0d", i, row_sum[i]);
		end
		for(int i=0; i<3; i++) begin
			$display("col_sum[%0d] : %0d", i, col_sum[i]);
		end
	end



	int Q21_upper[3][3];
	int Q21_lower[3][3];
	bit is_upper, is_lower;

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q21. upper and lower triagle of matrix 3x3----------\n");

		Q21_upper = '{'{1,2,3},'{0,4,5},'{0,0,6}};
		Q21_lower = '{'{1,0,0},'{2,3,0},'{4,5,6}};

		$display("\n ***** matrix A ******");
		foreach(Q21_upper[i,j]) begin
			$write("	%0d",Q21_upper[i][j]);
			if(j==2) begin
				$write("\n");
			end
		end

		is_upper = 1;
		is_lower = 1;

		foreach(Q21_upper[i,j]) begin
			if(i>j && Q21_upper[i][j]!=0) begin
				is_upper = 0;
				break;
			end 
		end

		if(is_upper == 1) begin
			$display("\ngiven matrix is a upper triangle matrix");
		end
		else begin
			$display("\ngiven matrix is not a upper triangle matrix");
		end

		$display("\n ***** matrix B ******");
		foreach(Q21_lower[i,j]) begin
			$write("	%0d",Q21_lower[i][j]);
			if(j==2) begin
				$write("\n");
			end
		end
		
		foreach(Q21_lower[i,j]) begin
			if(i<j && Q21_lower[i][j]!=0) begin
				is_lower = 0;
				break;
			end			
		end

		if(is_lower == 1) begin
			$display("given matrix is a lower triangle matrix");
		end
		else begin
			$display("given matrix is not a lower triangle matrix");
		end

	end

	int Q22_a[3][3];
	int det_a;

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q22. calculate the det of matrix 3x3----------\n");

		det_a = 0;

		Q22_a = '{'{9,8,7}, '{6,5,4}, '{1,2,1}};

		foreach(Q22_a[i,j]) begin
			$write("	%0d",Q22_a[i][j]);
			if(j==2) begin
				$write("\n");
			end
		end

		det_a = (Q22_a[0][0]*((Q22_a[1][1]*Q22_a[2][2])-(Q22_a[2][1]*Q22_a[1][2]))) - (Q22_a[0][1]*((Q22_a[1][0]*Q22_a[2][2])-(Q22_a[2][0]*Q22_a[1][2]))) + (Q22_a[0][2]*((Q22_a[1][0]*Q22_a[2][1])-(Q22_a[2][0]*Q22_a[1][1])));

		$display("\ndet_a : %0d", det_a);
	end


	int Q23_a[3][3];
	int zero_count;

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q23. given matrix 3x3 is sparse matrix or not----------\n");

		Q23_a = '{'{2,0,1},'{1,1,0},'{0,6,0}};

		$display("\n***** matrix A *****\n");	
		foreach(Q23_a[i,j]) begin
			$write("	%0d",Q23_a[i][j]);
			if(j==2) begin
				$write("\n");
			end
		end

		foreach(Q23_a[i,j]) begin
			if(Q23_a[i][j] == 0)begin
				zero_count++;
			end
		end

		if(zero_count > 4) begin
			$display("\nzero count is >4 so : sparse matrix");
		end
		else begin
			$display("\nzero count is not >4 so : not sparse matrix");	
		end

	end


	int Q24_a[2][2];
	int Q24_b[2][2];
	bit is_equal;

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q24. check two matrix 2x2 are equal or not----------\n");

		Q24_a = '{'{1,2},'{1,2}};
		Q24_b = '{'{1,2},'{1,2}};

		$display("\n***** matrix A *****\n");	
		foreach(Q24_a[i,j]) begin
			$write("	%0d",Q24_a[i][j]);
			if(j==1) begin
				$write("\n");
			end
		end
		
		$display("\n***** matrix B *****\n");	
		foreach(Q24_b[i,j]) begin
			$write("	%0d",Q24_b[i][j]);
			if(j==1) begin
				$write("\n");
			end
		end

		foreach(Q24_a[i,j]) begin
			if(Q24_a[i][j] == Q24_b[i][j]) begin
				is_equal = 1;
			end	
			else begin
				is_equal = 0;
				break;
			end
		end

		if(is_equal == 1) begin
			$display("\nBoth A and B matrix are equal");
		end
		else begin
			$display("\nBoth A and B matrix are not equal");
		end
	end

	int Q25_a[3][3];
	int is_ident;

	initial begin
		$display("\n--------------------------------------------------------------------------------------\n");
		$display("\---------Q25. check identity matrix----------\n");

		Q25_a = '{'{1,0,0},'{0,1,0},'{0,0,1}};
		
		$display("\n***** matrix A *****\n");	
		foreach(Q25_a[i,j]) begin
			$write("	%0d",Q25_a[i][j]);
			if(j==2) begin
				$write("\n");
			end
		end

		foreach(Q25_a[i,j]) begin
			if(((i==j) && (Q25_a[i][j] == 1)) || ((i!=j)&&(Q25_a[i][j] == 0))) begin
				is_ident = 1;	
			end
			else begin
				is_ident = 0;
				break;
			end
		end

		if(is_ident == 1) begin
			$display("\nGiven matrix is a identity matrix");
		end
		else begin
			$display("\nGiven matrix is not a identity matrix");
		end
	end
endmodule : PS2
