data <- datasets::mtcars
# standard deviation 
stats::sd(data$mpg)

# variance
# variance = sd ^ 2
(stats::sd(data$mpg))^2

# weighted mean
stats::weighted.mean(data$mpg, data$cyl)

# mean absolute deviation from mean
stats::mad(mtcars$mpg,
           center = mean(mtcars$mpg))

# mean absolute deviation from median
stats::mad(mtcars$mpg,
           center = median(mtcars$mpg))

#range
range(mtcars$mpg)
max(mtcars$mpg) - min(mtcars$mpg)

# percentile
stats::quantile(data$mpg)

# 25th 50th and 95h percentile
stats::quantile(data$mpg, c(.25,.5,.95))

# IQR 
Q3 <- stats::quantile(data$mpg, c(.75))
Q1 <- stats::quantile(data$mpg, c(.25))
IQR <- Q3 - Q1
print(IQR)

# with in-built function
stats::IQR(mtcars$mpg)

