module PS1();

	bit[31:0] Q1[];

	initial begin
		$display("---------------------------------------------------------------------------\n");

		$display("---------- Q1. print the array-----------");

		Q1 = new[10];
		for(int i=0; i<10; i++) begin
			Q1[i] = i+1;
		end
		$display("Q1 : %0p", Q1);	

	end

	bit[31:0] Q2[$];
	bit[31:0] Q2_temp[5];

	initial begin
		$display("\n---------------------------------------------------------------------------\n");

		$display("---------- Q2. print the array in reverse order-----------");

		Q2 = '{1,2,3,4,5};
		$display("Q2 : %0p", Q2);
		foreach(Q2[i]) begin
			Q2_temp[i] = Q2[(Q2.size)-1-i];
		end
		$display("Q2_temp : %0p", Q2_temp);
		Q2.reverse();
		$display("using reverse method --> Q2 : %0p", Q2);

	end



	bit[31:0] Q3[$];
	int sum_q3;

	initial begin
		$display("\n---------------------------------------------------------------------------\n");

		$display("---------- Q3. find the sum off all elements-----------");

		Q3 = '{1,2,3,4,5,6,7,8,9,10};
		$display("Q3 : %0p", Q3);

		sum_q3 = 0;

		foreach(Q3[i]) begin
			sum_q3 = Q3[i] + sum_q3;		
		end
		$display("sum : %0d", sum_q3);		
	end


	int Q4[3];
	int q4_s[3];
	int q4_s1[3];
	int q4[6];

	initial begin
		$display("\n---------------------------------------------------------------------------\n");

		$display("---------- Q4. copy one array into another and two into one merge-----------");

		Q4 = '{1,2,3};
		$display("Q4 : %0p", Q4);

		//one-one
		q4_s = Q4;
		$display("Q4 to --> q4_s : %0p", q4_s);

		q4_s1 = '{4,5,6};
		$display("q4_s1 : %0p", q4_s1);

		//two to one
		q4 = {q4_s, q4_s1};
		$display("{q4_s,q4_s1} --> q4  : %0p", q4);

	end


	int Q5[$];
	int dupl[int];
	int dupl_count;

	initial begin
		$display("\n---------------------------------------------------------------------------\n");

		$display("---------- Q5. find the duplicate num in the array-----------");

		Q5 = '{1,2,3,4,5,2,4,5};
		$display("Q5 : %0p", Q5);
		dupl_count = 0;

		for(int i=0; i<Q5.size(); i++) begin
			for(int j = i+1; j<Q5.size(); j++) begin
				if(Q5[i] == Q5[j]) begin
					dupl[i] = Q5[i];
					dupl_count++;
				end
			end
		end
		$display("dupl : %0p", dupl);
		$display("dupl_count : %0d", dupl_count);
	end


	int Q6[$];
	int unq[$];
	bit is_unq;

	initial begin
		$display("\n---------------------------------------------------------------------------\n");

		$display("---------- Q6. unique element in the array-----------");

		Q6 = '{1,2,3,4,3,4,5};
		$display("Q6 : %0p", Q6);

		for(int i=0; i<Q6.size(); i++) begin
			is_unq = 1; //assume is is a unq num.
			for(int j = i+1; j<Q6.size(); j++) begin
				if(Q6[i] == Q6[j]) begin
					is_unq = 0;
					break;
				end
			end

			if(is_unq) begin
				unq.push_back(Q6[i]);
			end
		end
		$display("unq : %0p", unq);
	end


	int Q7[$];
	int freq[int];

	initial begin
		$display("\n---------------------------------------------------------------------------\n");

		$display("---------- Q7. freq of each num-----------");
		Q7 = '{1,2,3,1,2,3,4,5,4};
		$display("Q7 : %0p", Q7);
		for(int i=0; i<Q7.size(); i++) begin
			freq[Q7[i]]++;
		end

		foreach(freq[i]) begin
			$display("element : %0d frequency is %0d times", i, freq[i]);
		end

	end


	int Q8[$];
	int min, max;
	int temp_q8;

	initial begin
		$display("\n---------------------------------------------------------------------------\n");
		$display("---------- Q8. find the min and max num-----------");

		Q8 = '{2,34,5,1,33,67,28,78,31};
		$display("Q8 : %0p", Q8);

		for(int i=0; i<Q8.size(); i++) begin
			for(int j=0; j<Q8.size-1-i; j++) begin
				if(Q8[j] > Q8[j+1]) begin
					temp_q8 = Q8[j];
					Q8[j] = Q8[j+1];
					Q8[j+1] = temp_q8;
				end
			end
		end

		$display("after sort Q8 : %0p", Q8);
		max = Q8[Q8.size()-1];
		$display("max num in this Q8 : %0d", max);
		min = Q8[0];
		$display("min num in this Q8 : %0d", min);

	end

	int Q9[$];
	int odd[int];
	int even[int];

	initial begin
		$display("\n---------------------------------------------------------------------------\n");
		$display("---------- Q9. separate odd and even locations in diff arrays-----------");

		Q8 = '{65,78,98,103,56,71,68,81,122,178,191,209,279,301,356};
		$display("Q8 : %0p", Q8);

		foreach(Q8[i]) begin
			if(i%2==0) begin
				even[i] = Q8[i];
			end
			else begin
				odd[i] = Q8[i];
			end
		end

		$display("even : %0p", even);
		$display("odd : %0p", odd);
	end


	int Q10[$];
	int temp_ass;
	int sorted_arr[$];
	int desorted_arr[$];
	int temp_dess;

	initial begin
		$display("\n---------------------------------------------------------------------------\n");

		$display("---------- Q10. assending and dessending order-----------");
		Q10 = '{1,8,6,3,4,2,5,7,9};
		$display("Q10 : %0p", Q10);


		foreach(Q10[i]) begin
			sorted_arr.push_back(Q10[i]);
			desorted_arr.push_back(Q10[i]);
		end

		for(int i=0; i<sorted_arr.size(); i++) begin
			for(int j=0; j<(sorted_arr.size()-1-i); j++) begin
				if(sorted_arr[j] > sorted_arr[j+1]) begin
					temp_ass = sorted_arr[j];
					sorted_arr[j] = sorted_arr[j+1];
					sorted_arr[j+1] = temp_ass;
				end
			end
		end

		for(int i=0; i<desorted_arr.size(); i++) begin
			for(int j=0; j<(desorted_arr.size()-1-i); j++) begin
				if(desorted_arr[j] < desorted_arr[j+1]) begin
					temp_dess = desorted_arr[j];
					desorted_arr[j] = desorted_arr[j+1];
					desorted_arr[j+1] = temp_dess;
				end
			end
		end

		$display("sorted_arr : %0p", sorted_arr);
		$display("desorted_arr : %0p", desorted_arr);

		Q10.sort();
		$display("using Q10.sort : %0p", Q10);

		Q10.rsort();
		$display("using Q10.rsort : %0p", Q10);
	end


	int Q11[$];
	int Q11_un[$];
	
	initial begin
		$display("\n---------------------------------------------------------------------------\n");
		$display("---------- Q11. insert into sorted and unsorted arrays-----------");

		Q11 = '{12,14,15,17,16,20,19,18};
		$display("Q11 : %0p", Q11);
		Q11.sort();
		$display("after sort Q11 : %0p", Q11);

		Q11.insert(1,13);
		$display("Q11 after insert: %0p", Q11);

		Q11_un = '{2,3,41,21,67,1,27,34};
		$display("Q11_un : %0p", Q11_un);

		Q11_un.insert(7,10000);
		$display("Q11_un after insert : %0p", Q11_un);
	end

	int Q12[$];

	initial begin
		$display("\n---------------------------------------------------------------------------\n");
		$display("---------- Q12. delete a element at disired position-----------");

		Q12 = '{23,34,45,56,78};
		$display("Q12 : %0p", Q12);

		Q12.delete(2);
		$display("Q12 after delete(2) : %0p", Q12);

	end


	int Q13[$];
        int s_min, s_max;
	int temp_q13;	

	initial begin
		$display("\n---------------------------------------------------------------------------\n");
		$display("---------- Q13. find 2nd largest and 2nd smallest num-----------");

		Q13 = '{65,78,98,103,56,71,68,81,122,178,191,209,279,301,356};

		$display("Q13 : %0p", Q13);

		for(int i=0; i<Q13.size; i++) begin
			for(int j=0; j<Q13.size-1-i; j++) begin
				if(Q13[j] < Q13[j+1]) begin
					temp_q13 = Q13[j];
					Q13[j] = Q13[j+1];
					Q13[j+1] = temp_q13;
				end
			end
		end

		s_min = Q13[Q13.size-2];
		s_max = Q13[1];
		$display("after rsort Q13 : %0p", Q13);
		$display("2nd min : %0d", s_min);
		$display("2nd max : %0d", s_max);

	end
endmodule : PS1
