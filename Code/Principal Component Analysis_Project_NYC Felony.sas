#PCA with S

DATA work.FELONY;
	INFILE
	'\\tsclient\fedozhu\Desktop\Cat\Baruch\2020spring\9705multivariate\final_project\MV.dat';
	INPUT Borough Precinct Murder Rape Robbery Assault Burglary Larceny LarcenyOfAutomotives;
TITLE "Project STA 9705: NYC Felony";
proc princomp cov out=results plot(ncomp = 2)=score(ellipse);
  var  Murder Rape Robbery Assault Burglary Larceny LarcenyOfAutomotives;
run;
proc print data = results;
  var prin1 prin2;
run;



#PCA with R

DATA work.FELONY;
	INFILE
	'\\tsclient\fedozhu\Desktop\Cat\Baruch\2020spring\9705multivariate\final_project\MV.dat';
	INPUT Borough Precinct Murder Rape Robbery Assault Burglary Larceny LarcenyOfAutomotives;
TITLE "Project STA 9705: NYC Felony";
proc princomp out=results plot(ncomp = 2)=score(ellipse);
  var  Murder Rape Robbery Assault Burglary Larceny LarcenyOfAutomotives;
run;
proc print data = results;
  var prin1 prin2;
run;
