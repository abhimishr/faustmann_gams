variable
VAR_time                                Faustmann rotation time which maximizes NPV (yrs)
VAR_net_present_value                   Net present value of the harvest rotation (USD)
VAR_forest_volume_forest_derivative     Marginal of forest growth volume
VAR_forest_volume                       Forest volume at a given time
VAR_land_rent                           Present value of investment returns lost by not harvesting now
VAR_value_at_harvest                    Market value if harvest happend in current time
VAR_discount_factor                     Discount factor
;

parameters
PAR_forest_volume_marginal              Marginal of forest growth
;

equation
EQ_discount_factor                      Discount factor
EQ_growth                               Forestr volume at a given time
EQ_net_present_value                    Net present value of the harvest rotation (USD)
EQ_growth_marginal                      Marginal of forest growth volume
EQ_land_rent                            Present value of investment returns lost by not harvesting now
EQ_value_at_harvest                     Market value if harvest happend in current time
EQ_faustmann                            Faustmann equation deciding optimal rotation
;
