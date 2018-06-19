library(readr)

land <- read_csv('data/manhattan_Train.csv')

table(land$Landmark)
View(land)
table(land$HistoricDistrict)

names(land)
historic1 <- glm(HistoricDistrict ~ TotalValue + NumFloors + LotArea + Built,
                 data=land,
                 family=binomial)

library(dplyr)

land <- land %>% 
    mutate(HistoricDistrict=factor(HistoricDistrict))

head(land$HistoricDistrict)
head(land$OwnerType)

class(land$OwnerType)
class(land$HistoricDistrict)

head(as.integer(land$HistoricDistrict))

historic1 <- glm(HistoricDistrict ~ TotalValue + NumFloors + LotArea,
                 data=land,
                 family=binomial)

historic1
summary(historic1)

library(coefplot)

class(historic1)

coefplot(historic1, sort='magnitude')
