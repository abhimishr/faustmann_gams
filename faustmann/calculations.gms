
*loop(T2,
solve faustmann using nlp maximizing VAR_net_present_value;
$include "./faustmann/postsolve.gms"
*);

* store all results in gdx file
execute_Unload "fulldata.gdx";
*execute "gdx2xls fulldata.gdx"
execute "gdxdump fulldata.gdx > results.txt"
;
