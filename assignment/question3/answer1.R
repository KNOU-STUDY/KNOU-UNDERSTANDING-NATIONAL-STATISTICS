item <- c('½Ò', '´ß°í±â', '¹èÃß', '»ç°ú')
year2015 <- data.frame(list(count = c(10, 7.5, 7, 8), price = c(5000, 2000, 1000, 1000)))
rownames(year2015) <- item
year2016 <- data.frame(list(count = c(10, 6.5, 8, 7), price = c(5500, 1800, 800, 1300)))
rownames(year2016) <- item
year2017 <- data.frame(list(count = c(9.5, 8, 6, 8), price = c(5700, 2000, 1200, 1200)))
rownames(year2017) <- item
for (i in 2015:2017) {
    print(i)
    cur <- get(paste0('year', i))
    weight <- round(cur$count * 1000 / sum(cur$count),1)
    print(cbind(cur, weight))
}