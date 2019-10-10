library(lubridate)
library(readr)


reg_ts = read.csv("Registrants/Registrants.csv", stringsAsFactors = FALSE)

myts <- ts(reg_ts, start = c(2015, 1), end = c(2019, 10), frequency = 12)





start(reg_ts$REGDATE)
end(reg_ts$REGDATE)
