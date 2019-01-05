/*
 * simple example
 */

data newClass;
  set sashelp.class;
run;

proc print data=newClass;
run;