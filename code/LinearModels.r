data(father.son, package='UsingR')
head(father.son)

library(ggplot2)

ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point()
ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point() + 
    geom_smooth(method='lm')

height1 <- lm(sheight ~ fheight, data=father.son)
height1

33.8866 + 0.5141*60
33.8866 + 0.5141*50
33.8866 + 0.5141*72

boros <- tibble::tribble(
    ~ Boro, ~ Pop, ~ Size, ~ Random,
    'Manhattan', 1600000, 23, 7,
    'Brooklyn', 2600000, 78, 24,
    'Queens', 2330000, 104, pi,
    'Bronx', 1455000, 42, 21,
    'Staten Island', 475000, 60, 3
)
boros

library(useful)

build.x( ~ Pop, data=boros)
build.x( ~ Pop + Size, data=boros)
build.x( ~ Pop + Size + Random, data=boros)

build.x( ~ Pop + Boro, data=boros)

library(readr)
land <- read_csv('data/manhattan_Train.csv')

View(land)

value1 <- lm(TotalValue ~ LotArea, data=land)
value1

value2 <- lm(TotalValue ~ LotArea + UnitsTotal, data=land)
value2

unique(land$OwnerType)

value3 <- lm(TotalValue ~ LotArea + UnitsTotal + OwnerType, data=land)
value3

summary(value3)

library(coefplot)

coefplot(value3, sort='magnitude')
coefplot(value3, sort='magnitude', predictors=c('UnitsTotal', 'LotArea'))

value4 <- lm(TotalValue ~ I(LotArea/1000) + I(UnitsTotal/10) + OwnerType, 
             data=land)
coefplot(value4, sort='magnitude')

value5 <- lm(TotalValue ~ scale(LotArea) + scale(UnitsTotal) + OwnerType,
             data=land)
coefplot(value5, sort='magnitude')
sd(land$UnitsTotal)

multiplot(value1, value2, value3, sort='magnitude')
multiplot(value1, value2, value3, sort='magnitude', single=FALSE)
