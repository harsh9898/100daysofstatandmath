data <- datasets::data
# mean 
base::mean(data$mpg)

# trimmed_mean
base::mean(data$mpg, trim = 0.2)

# weighted mean
stats::weighted.mean(data$mpg, data$cyl)

# median
stats::median(data$mpg)

# weighted median
install.packages('spatstat')
library(spatstat)
spatstat.geom::weighted.median(data$mpg, data$cyl)

# percentile
stats::quantile(data$mpg)

# 25th 50th and 95h percentile
stats::quantile(data$mpg, c(.25,.5,.95))

# since 50th percentile is equal to median following shoud be TRUE
stats::quantile(data$mpg, c(.5)) == stats::median(data$mpg)


