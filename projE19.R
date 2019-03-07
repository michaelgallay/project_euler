#counting sundays


# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?



data <- seq(as.Date("1901-01-01"),as.Date("2000-12-31"), by="months" ) #returns 1st day of each month


data_weekday  <-  weekdays(data) #convert to weekdays by names


table(data_weekday) #summary table by weekday


