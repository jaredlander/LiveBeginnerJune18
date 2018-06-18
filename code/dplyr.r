library(dplyr)

data(diamonds, package='ggplot2')

diamonds

head(diamonds)
head(diamonds, n=10)
head(diamonds, n=3)

tail(diamonds)
tail(diamonds, n=7)

head(diamonds)
diamonds %>% head()

head(diamonds, n=3)
diamonds %>% head(n=3)

tail(diamonds, n=5)
diamonds %>% tail(n=5)

diamonds

tail(head(diamonds, n=4), n=1)
diamonds %>% head(n=4) %>% tail(n=1)

diamonds %>% head()

select(diamonds, carat, price)
diamonds

select(diamonds, carat, price)
diamonds %>% select(carat, price)
diamonds %>% select(carat, price, color)
diamonds %>% select(carat, color, price)

diamonds %>% slice(4)
diamonds %>% slice(c(4, 17, 20))

diamonds %>% filter(carat > 1)
diamonds %>% filter(carat > 1 & cut == 'Ideal')
diamonds %>% filter(cut == 'Ideal' | cut == 'Good')
