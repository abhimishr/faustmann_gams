
EQ_discount_factor..    VAR_discount_factor
                        =e=
                        1/exp(SCALAR_interest_rate*VAR_time);

EQ_growth..             VAR_forest_volume
                        =e=
                        SCALAR_a*SCALAR_b*1.64*(6.36-6**(VAR_time/SCALAR_b))**3.897;

EQ_growth_marginal..    VAR_forest_volume_forest_derivative
                        =e=
                        PAR_forest_volume_marginal;

EQ_net_present_value..  VAR_net_present_value*(1-VAR_discount_factor)
                        =e=
                        (SCALAR_price*VAR_forest_volume*VAR_discount_factor-SCALAR_replanting_cost);

EQ_land_rent..          VAR_land_rent
                        =e=
                        SCALAR_interest_rate*VAR_net_present_value;


EQ_value_at_harvest..   VAR_value_at_harvest
                        =e=
                        SCALAR_price * VAR_forest_volume;

EQ_faustmann..
  SCALAR_price * VAR_forest_volume_forest_derivative
  =e=
  SCALAR_interest_rate*VAR_value_at_harvest + VAR_land_rent
  ;

Model faustmann / all /;
