*** |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

variable
time
;

variable
V
rT
f_d_t
f_t
rV
pft
;

parameter par_f_d_t;

equation
timing_up
timing_lo
growth
NPV
growth_m
rNPV
val
faustmann_eq
;


$ontext
variable f(T);
*f(T) = 4*80*1.64*ord(T)/card(T);
*f(T) =e= system.exp(9.75 - (3000/(300*ord(T))) - (740/(ord(T)*80)) - (1500/(80**2)) - (34/ord(T)**2) );

parameter f_dash(T);

variable V;

variable IGR(T);

equation
GROWTH(T)
InGrRt(T)
NPV
;
$offtext
