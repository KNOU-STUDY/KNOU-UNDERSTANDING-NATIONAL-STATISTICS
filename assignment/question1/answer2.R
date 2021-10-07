df <- read.table(
    file = './assignment/question1/data/FUTURE_TOTAL_FERTILITY_RATE(2010~2030).csv',
    sep = ',',
    header = T,
    fileEncoding = "utf-8",
    na.strings = '-',
)
year <- 2010:2030
tfr <- df[1,-1]
plot(year, tfr, type = 'o', col = 'red')
axis(1, at = year)