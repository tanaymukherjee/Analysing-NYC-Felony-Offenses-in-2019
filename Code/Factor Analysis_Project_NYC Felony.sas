DATA work.FELONY;
	INFILE "/folders/myfolders/data/nyc_felony.dat";
	INPUT Borough $ Precinct Murder Rape Robbery Assault Burglary Larceny 
		LarcenyOfAutomotives;
	TITLE "Project STA 9705: NYC Felony";

	/* PRINCIPAL FACTOR METHOD */
PROC FACTOR METHOD=PRIN PRIORS=MAX ALL;
	VAR Murder Rape Robbery Assault Burglary Larceny LarcenyOfAutomotives;

	/* PRINCIPAL FACTOR METHOD */
PROC FACTOR METHOD=PRIN PRIORS=SMC NFACT=2 ROTATE=VARIMAX PLOTS=ALL;
	VAR Murder Rape Robbery Assault Burglary Larceny LarcenyOfAutomotives;