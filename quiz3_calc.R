
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

sigma <- 2*3/(qt(.975,8))
sigma
# Question 7

#Suppose that 18 obese subjects were randomized, 9 each, to a new diet pill and
#a placebo. Subjects’ body mass indices (BMIs) were measured at a baseline and
#again after having received the treatment or placebo for four weeks. The
#average difference from follow-up to the baseline (followup - baseline) was −3
#kg/m2 for the treated group and 1 kg/m2 for the placebo group. The
#corresponding standard deviations of the differences was 1.5 kg/m2 for the
#treatment group and 1.8 kg/m2 for the placebo group. Does the change in BMI
#over the four week period appear to differ between the treated and placebo
#groups? Assuming normality of the underlying data and a common population
#variance, calculate the relevant *90%* t confidence interval. Subtract in the
#order of (Treated - Placebo) with the smaller (more negative) number first.

xm <- -3 ; ym <- 1 
xsd <- 1.5 ; ysd <- 1.8 
Sp <- (1.5+1.8)/2
Sp <- sqrt((1.5^2+1.8^2))/2
xm-ym + c(-1,1)*qt(.95,18-2)*Sp*sqrt(2/9)
# Question 6
xm <- 4 ; xsd <- 0.6 
ym <-  5 ; yvar <- 0.68
Sp <- sqrt(mean(c(xvar,yvar)))
xm-ym +c(-1,1)*qt(.975,10+10-2)*Sp*sqrt(2/10)
