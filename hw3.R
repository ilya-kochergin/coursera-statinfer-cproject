
#Load the data set mtcars in the datasets R package. Calculate a 95% confidence interval to the nearest MPG for the variable mpg.
# 
# What is the lower endpoint of the interval?
# What is the upper endpoint of the interval?
# 
# Do library(datasets) and then data(mtcars) to get the data. Consider t.test for calculations. You may have to install the datasets package.
t.test(mtcars$mpg)
#Suppose that standard deviation of 9 paired differences is 1. What value would
#the average difference have to be so that the lower endpoint of a 95% students
# t confidence interval touches zero?
mn <- qt(.975,8)/3
# Give the number here to two decimal places

# Consider the mtcars dataset. Construct a 95% T interval for MPG comparing 4 to
# 6 cylinder cars (subtracting in the order of 4 - 6) assume a constant
# variance.
# 
# What is the lower endpoint of the interval to 1 decimal place? What is the
# upper endpoint of the interval to 1 decimal place?
tresult <- t.test(mpg~cyl,data=subset(mtcars,cyl %in% c(4,6)),paired=FALSE,var.equal=TRUE)
signif(tresult$conf.int,3)
tresult
