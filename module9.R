#preparing all the packages we'll be using
install.packages(lattice)
library(lattice)
install.packages(ggplot2)
library(ggplot2)
DATA <- women

#basic built in R visual functions
plot(DATA, type='o',col=219, main = "Weight woman", col.main = 3)

#visual functions in Lattice package
xyplot(weight~height, data = DATA, pch = 'X', main = "Women Weight - Lattice", col = 2)

#Visual functions in the ggplot package
ggplot(DATA, aes(weight,height)) + geom_point() + ggtitle("Women's Weight - ggplot2") + theme(plot.title = element_text(lineheight=.8, face="bold", color = "orange"))
