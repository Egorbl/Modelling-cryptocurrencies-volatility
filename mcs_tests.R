library(MCS)

################################################################################

volatility_forecasts <- read.csv("~/programming/LTC_vf_w1400_l30")

HMSE = data.frame(matrix(NA, nrow=nrow(volatility_forecasts), 
                           ncol=ncol(volatility_forecasts)-2))
colnames(HMSE) = colnames(volatility_forecasts)[3:ncol(volatility_forecasts)]

HMAE = data.frame(matrix(NA, nrow=nrow(volatility_forecasts), 
                         ncol=ncol(volatility_forecasts)-2))
colnames(HMAE) = colnames(volatility_forecasts)[3:ncol(volatility_forecasts)]

for (row_number in 1:nrow(volatility_forecasts)) {
  for (model_index in 3:ncol(volatility_forecasts)) {
    HMSE[row_number, model_index - 2] = (1 - 
      volatility_forecasts[row_number, model_index] /
      volatility_forecasts[row_number, 2]) ** 2
    
    HMAE[row_number, model_index - 2] = abs(1 - 
      volatility_forecasts[row_number, model_index] /
      volatility_forecasts[row_number, 2])
  }
}

HMSE = HMSE[,-c(5)]
HMAE = HMAE[,-c(5)]

MCSprocedure(HMSE, alpha = 0, B = 1000, statistic = "TR")
MCSprocedure(HMAE, alpha = 0, B = 1000, statistic = "TR")

###############################################################################

volatility_forecasts <- read.csv("~/programming/vf_w1400_l1")

HMSE = data.frame(matrix(NA, nrow=nrow(volatility_forecasts), 
                         ncol=ncol(volatility_forecasts)-2))
colnames(HMSE) = colnames(volatility_forecasts)[3:ncol(volatility_forecasts)]

HMAE = data.frame(matrix(NA, nrow=nrow(volatility_forecasts), 
                         ncol=ncol(volatility_forecasts)-2))
colnames(HMAE) = colnames(volatility_forecasts)[3:ncol(volatility_forecasts)]

for (row_number in 1:nrow(volatility_forecasts)) {
  for (model_index in 3:ncol(volatility_forecasts)) {
    HMSE[row_number, model_index - 2] = (1 - 
                                           volatility_forecasts[row_number, model_index] /
                                           volatility_forecasts[row_number, 2]) ** 2
    
    HMAE[row_number, model_index - 2] = abs(1 - 
                                              volatility_forecasts[row_number, model_index] /
                                              volatility_forecasts[row_number, 2])
  }
}


MCSprocedure(HMSE, alpha = 0, B = 1000, statistic = "TR")
MCSprocedure(HMAE, alpha = 0, B = 1000, statistic = "TR")

################################################################################

volatility_forecasts <- read.csv("~/programming/LTC_vf_w1200_l30")

HMSE = data.frame(matrix(NA, nrow=nrow(volatility_forecasts), 
                         ncol=ncol(volatility_forecasts)-2))
colnames(HMSE) = colnames(volatility_forecasts)[3:ncol(volatility_forecasts)]

HMAE = data.frame(matrix(NA, nrow=nrow(volatility_forecasts), 
                         ncol=ncol(volatility_forecasts)-2))
colnames(HMAE) = colnames(volatility_forecasts)[3:ncol(volatility_forecasts)]

for (row_number in 1:nrow(volatility_forecasts)) {
  for (model_index in 3:ncol(volatility_forecasts)) {
    HMSE[row_number, model_index - 2] = (1 - 
                                           volatility_forecasts[row_number, model_index] /
                                           volatility_forecasts[row_number, 2]) ** 2
    
    HMAE[row_number, model_index - 2] = abs(1 - 
                                              volatility_forecasts[row_number, model_index] /
                                              volatility_forecasts[row_number, 2])
  }
}

HMSE = HMSE[, -c(5)]
HMAE = HMAE[, -c(5)]

MCSprocedure(HMSE, alpha = 0, B = 1000, statistic = "TR")
MCSprocedure(HMAE, alpha = 0, B = 1000, statistic = "TR")

################################################################################

volatility_forecasts <- read.csv("~/programming/vf_w1400_l30")

HMSE = data.frame(matrix(NA, nrow=nrow(volatility_forecasts), 
                         ncol=ncol(volatility_forecasts)-2))
colnames(HMSE) = colnames(volatility_forecasts)[3:ncol(volatility_forecasts)]

HMAE = data.frame(matrix(NA, nrow=nrow(volatility_forecasts), 
                         ncol=ncol(volatility_forecasts)-2))
colnames(HMAE) = colnames(volatility_forecasts)[3:ncol(volatility_forecasts)]

for (row_number in 1:nrow(volatility_forecasts)) {
  for (model_index in 3:ncol(volatility_forecasts)) {
    HMSE[row_number, model_index - 2] = (1 - 
                                           volatility_forecasts[row_number, model_index] /
                                           volatility_forecasts[row_number, 2]) ** 2
    
    HMAE[row_number, model_index - 2] = abs(1 - 
                                              volatility_forecasts[row_number, model_index] /
                                              volatility_forecasts[row_number, 2])
  }
}

HMSE = HMSE[, -c(5)]
HMAE = HMAE[, -c(5)]

MCSprocedure(HMSE, alpha = 0, B = 1000, statistic = "TR")
MCSprocedure(HMAE, alpha = 0, B = 1000, statistic = "TR")