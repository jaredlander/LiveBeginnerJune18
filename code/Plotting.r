library(ggplot2)
data(diamonds, package='ggplot2')

ggplot(diamonds)

ggplot(diamonds, aes(x=carat, y=price))

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1, size=1)

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(shape=1, size=1)
