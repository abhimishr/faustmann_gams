*** |  (C) 2008-2019 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

* choose solver
option lp   = cplex ;
option nlp  = conopt;

$include "./faustmann/sets.gms"
$include "./macros.gms"
$include "./faustmann/declarations.gms"
$include "./faustmann/input.gms"
$include "./faustmann/equations.gms"
$include "./faustmann/preloop.gms"
$include "./faustmann/presolve.gms"
$include "./faustmann/calculations.gms"