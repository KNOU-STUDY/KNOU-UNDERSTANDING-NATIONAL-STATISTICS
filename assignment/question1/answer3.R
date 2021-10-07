df <- read.table(
    file = './assignment/question1/data/POPULATION_ESTIMATE(2010~2030).csv',
    sep = ',',
    header = T,
    na.strings = '-',
)
df <- t(df[, c(-1, -2)])
colname <- c('생산연령인구', '고령인구', '청소년인구')
colnames(df) <- colname
year <- 2010:2030
matplot(df, x = year, type = "b", pch = 1, col = 1:3)
legend('topleft', legend = colname, pch = 1, col = 1:3)