data felony;
	infile "/folders/myfolders/MV.DAT";
	input borough $ precinct $ murder rape robbery assault burglary gl glmv;
run;
proc candisc out=nyc;
	class borough;
run;
proc print data=nyc;
run;
proc plot data=nyc;
	plot can2*can1=borough;
	plot can2*can1=borough $ precinct;
run;