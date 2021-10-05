df <- read.table('./assignment/question1/data/TFR.csv', sep = ',')
year <- 2010:2019
tfr <- df[1,]
plot(year, tfr, type = 'o', col = 'red')
axis(1, at = 2010:2019)