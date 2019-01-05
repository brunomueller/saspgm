/* Get syntax help */
%varListPattern(!help)

/* Test with a bad dataset name */
%varListPattern(sashelp.mon100)

/* Test where no variables meet the criteria specified */
%varListPattern(sashelp.class,*9?,N)

/* List all numeric variables with a name ending in '9' to the SAS Log*/
%varListPattern(sashelp.mon1001,*9,N,D)

/* List all numeric variables where '9' is the second from the last */
/* character in the name to the SAS Log*/
%varListPattern(sashelp.mon1001,*9?,N,D)

/* List all numeric variables where '9' is the second from the last */
/* character in the name to the SAS Log*/
%varListPattern(sashelp.mon1001,*1*,A,D)

/* Print SASHELP.CLASS - only variables with a second letter of 'E'*/
title 'SASHELP.CLASS variables with E as the second letter';
proc print data=sashelp.class (obs=5);
   var %varListPattern(sashelp.class,?e*);
run;
title;
