data(tips, package='reshape2')

head(tips)

tips$tip
mean(tips$tip)
sd(tips$tip)

t.test(tips$tip, mu=2.99, alternative='two.sided')

t.test(tip ~ sex, data=tips, var.equal=TRUE)
