$ontext
f_dash.l(T) = 1;

loop(loop_i,
  solve faustmann using nlp maximizing V(T);
$include "./faustmann/postsolve.gms"
);

* store all results in a gdx file
execute_Unload "fulldata.gdx";
*execute "gdx2xls fulldata.gdx"
execute "gdxdump fulldata.gdx > results.txt"
;

$offtext

loop(loop_i,
solve faustmann using nlp maximizing time;
$include "./faustmann/postsolve.gms"
);

* store all results in a gdx file
execute_Unload "fulldata.gdx";
*execute "gdx2xls fulldata.gdx"
execute "gdxdump fulldata.gdx > results.txt"
;
