DATA NYC_Felony;
INFILE 'MV.DAT';
INPUT Borough $ Precinct Murder Rape Robbery Assault Burglary Larceny LarcenyOfAutomotives;

PROC GLM;
CLASS Borough;
MODEL Murder Rape Robbery Assault Burglary Larceny LarcenyOfAutomotives = Borough;
MANOVA H=Borough/PRINTE PRINTH;

CONTRAST 'Brooklyn vs. Queens'
Borough 0 0 1 -1 0;
CONTRAST 'Bronx vs. the other 4 Boroughs'
Borough -1 4 -1 -1 -1;

MANOVA H=Borough/PRINTE PRINTH;

RUN;
