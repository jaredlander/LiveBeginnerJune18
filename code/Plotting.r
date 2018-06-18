library(ggplot2)
data(diamonds, package='ggplot2')

ggplot(diamonds)

ggplot(diamonds, aes(x=carat, y=price))

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1, size=1)

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(shape=1, size=1)

ggplot(diamonds, aes(x=price)) + geom_histogram()
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=10)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=100)
ggplot(diamonds, aes(x=price)) + geom_histogram(bins=200)

ggplot(diamonds, aes(x=price)) + geom_density()
ggplot(diamonds, aes(x=price)) + geom_density(color='red')
ggplot(diamonds, aes(x=price)) + geom_density(aes(color=cut))
ggplot(diamonds, aes(x=price)) + geom_density(aes(color=cut, fill=cut))

ggplot(diamonds, aes(x=price)) + geom_density(color='red', fill='blue')

ggplot(diamonds, aes(x=price)) + 
    geom_density(aes(color=cut, fill=cut)) +
    facet_wrap( ~ cut)

ggplot(diamonds, aes(x=cut, y=price)) + geom_boxplot()
ggplot(diamonds, aes(x=cut, y=price)) + geom_violin()

ggplot(diamonds, aes(x=cut, y=price)) + 
    geom_jitter(alpha=1/5, size=1, shape=1, width=0.35, aes(color=carat)) +
    geom_violin(alpha=1/2, color='grey50', draw_quantiles=c(.25, .5, .75)) + 
    scale_color_gradient('Diamond Size', low='#56B1F7', high='#c91010') + 
    labs(x='Cut', y='Price', title='Price vs Cut and Carat')

library(ggthemes)

p <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point(shape=1, size=1)
p
p + labs(title='Price vs carat')

p + theme_economist()
p + theme_economist() + scale_color_economist()

p + scale_color_tableau()

p + theme_wsj() + scale_color_wsj()
p + theme_fivethirtyeight() + scale_color_fivethirtyeight()
p + theme_tufte()

p + theme_excel()
p + theme_excel() + scale_color_excel()
