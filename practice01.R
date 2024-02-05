library(tidyverse)

str(midwest)

g = ggplot(midwest, aes(x=area,y=poptotal)) + geom_point() +geom_smooth(method='lm')
plot(g)
g1 = g + coord_cartesian(xlim=c(0,01),ylim=c(0,1000000))
