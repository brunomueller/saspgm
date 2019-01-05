/*
 * simple example
 */

data newClass;
  set sashelp.class;
run;

title "some listing";
proc print data=newClass;
run;
title;