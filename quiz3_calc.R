
# Question 1
# 
# In a population of interest, a sample of 9 men yielded a sample average brain
# volume of 1,100cc and a standard deviation of 30cc. What is a 95% Student's T
# confidence interval for the mean brain volume in this new population? 
# [1077,1123] [1092, 1108] [1031, 1169] [1080, 1120]


bme <- 1100
bsd <- 30

bme+c(-1,1)*qt(.975,8)*bsd/sqrt(9)


# Question 2
# 
# A diet pill is given to 9 subjects over six weeks. The average difference in
# weight (follow up - baseline) is -2 pounds. What would the standard deviation
# of the difference in weight have to be for the upper endpoint of the 95% T
# confidence interval to touch 0? 2.10 1.50 2.60 0.30

