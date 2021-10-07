df <- read.table('./assignment/question2/data/ECONOMICALLY_ACTIVE_POPULATION.csv',
                 sep = ',',
                 fileEncoding = 'utf-8')[, -1]
unemployment_rate <- t(df[3, c(T, F)])
employment_rate <- t(df[3, c(F, T)])
value_range <- t(df[1, c(F, T)])
data <- data.frame(cbind(unemployment_rate, employment_rate))
colnames(data) <- c('unemployment_rate', 'employment_rate')
rownames(data) <- value_range
matplot(data, type = "b", pch = 1, col = 1:3, ylab = "RATE(%)", xlab = "DATE", labels = F)
axis(side = 2, at = 1:100)
axis(side = 1, at = seq_along(value_range), value_range)
legend('left', legend = c('unemployment_rate', 'employment_rate'), pch = 1, col = 1:3)