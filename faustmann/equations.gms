*** |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$ontext

GROWTH(T).. f(T) =e= system.exp(9.75 - (3000/(300*ord(T))) - (740/(ord(T)*80)) - (1500/(80**2)) - (34/ord(T)**2) );

InGrRt(T).. IGR(T) =e= f_dash(T)/(f(T)+1);

*NPV.. V =e= SUM(T,(1-e**(-r*ord(T)))**(-1) * (p * f(T) * e**(-r*ord(T)) - c));
NPV(T).. V(T) =e= (1-e**(-r*ord(T)))**(-1) * (p * f(T) * e**(-r*ord(T)) - c);

faust_eq(T).. IGR(T) =e= r + ((r*V(T))/(p*f(T)+1));

Model faustmann / all /;

$offtext
timing_up..
time =l= 100;

timing_lo..
time =g= 20;

growth..
*f_t =e= exp(9.75 - 3418/(300*time) - 740/(time*80) - 34/(time**2) - 1527/(80**2));
f_t =e= a*b*1.64*(6.36-6**(time/b))**3.897;

growth_m..
f_d_t =e= par_f_d_t;

NPV..
V*(1-exp((-1)*r)) =e= (p*f_t*exp((-1)*r)-c);

rNPV..
rV =e= r*V;


val..
pft =e= p * f_t;

*faustmann_eq.. f_d_t =n= (r + (rV/pft)) * f_t;
faustmann_eq.. p * f_d_t - r*pft - rV =e= 0;

Model faustmann / all /;
