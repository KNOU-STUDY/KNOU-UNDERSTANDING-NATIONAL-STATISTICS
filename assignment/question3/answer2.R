year2015 <- data.frame(list(count = c(10, 7.5, 7, 8), price = c(5000, 2000, 1000, 1000)))
year2016 <- data.frame(list(count = c(10, 6.5, 8, 7), price = c(5500, 1800, 800, 1300)))
year2017 <- data.frame(list(count = c(9.5, 8, 6, 8), price = c(5700, 2000, 1200, 1200)))
for (i in 2015:2017) {
    cur <- get(paste0('year', i))
    weight <- round(cur$count * 1000 / sum(cur$count), 1)
    assign(paste0('year', i), cbind(cur, weight))
}

rate2016 <- sum(year2015$weight * (year2016$price / year2015$price)) / 10
rate2017 <- sum(year2015$weight * (year2017$price / year2015$price)) / 10
for (i in 2016:2017) {
    cur <- get(paste0('rate', i))
    print(i)
    print(cur)
}