
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
# Suppose that 18 obese subjects were randomized, 9 each, to a new diet pill and
# a placebo. Subjects' body mass indices (BMIs) were measured at a baseline and
# again after having received the treatment or placebo for four weeks. The
# average difference from follow-up to the baseline (followup - baseline) was 3
# kg/m2 for the treated group and 1 kg/m2 for the placebo group. The
# corresponding standard deviations of the differences was 1.5 kg/m2 for the
# treatment group and 1.8 kg/m2 for the placebo group. The study aims to answer
# whether the change in BMI over the four week period appear to differ between
# the treated and placebo groups.

# What is the pooled variance estimate? (to 2 decimal places)
n1 <- n2 <- 9
x1 <- -3  ##treated
x2 <- 1  ##placebo
s1 <- 1.5  ##treated
s2 <- 1.8  ##placebo
spsq <- ( (n1 - 1) * s1^2 + (n2 - 1) * s2^2) / (n1 + n2 - 2)
S_p_2 <-  ((8))