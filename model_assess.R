# Function for determining 
# 1)Root mean square error (RMSE)
# 2)mean absolute error (MAE)
# 3)Percent bias (Pbias) 
# 2 inputs:
# a)pred: predistion model Data
# b)obs :observation Data

model_assess = function(Pred, obs){
 tibble(RMSE = sqrt(mean((Pred - obs)^2)), MAE = mean(abs(obs-pred)), 
        pbias =  100*abs(obs-pred)/abs(obs))
 }