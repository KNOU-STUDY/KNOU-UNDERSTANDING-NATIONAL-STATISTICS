df <- read.table('./assignment/question2/data/EMPLOYED_BY_GENDER_AND_AGE_RATE.csv', sep = ',')[-1, c(-1, -2)]
rate <- colSums(df)
df <- t(rbind(df))

value_range <- 2011:2020
matplot(df, type = "b", pch = 1, col = 1:4, ylab = "비율(%)", xlab = "DATE", labels = F)
axis(side = 2, at = 1:100)
axis(side = 1, at = seq_along(value_range), value_range)
legend('left', legend = c('20대', '30대', '40대', '50대'), pch = 1, col = 1:4)
