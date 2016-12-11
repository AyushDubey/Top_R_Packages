#ggplot2
install.packages("ggplot2")
library(ggplot2)

############## qplot Function of ggplot2 ######################
#using qplot function of ggplot2 for scatterplot
head(iris)

#plot between sepal.length vs petal.length for iris data
qplot(Sepal.Length,Petal.Length,data = iris)

#coloring different species
qplot(Sepal.Length,Petal.Length,data = iris, color = Species)

#coloring different species
qplot(Sepal.Length,Petal.Length,data = iris, color = Species, size = Petal.Width)

#making plots more visible 
qplot(Sepal.Length,Petal.Length,data = iris, color = Species, size = Petal.Width
      ,alpha = 0.5)

#more decorating plots with heading and xlabel and ylabel
qplot(Sepal.Length,Petal.Length,data = iris, colour = Species, size = Petal.Width
      ,alpha = 0.5,xlab = "Sepal-Length",ylab = "Petal-Length",
      main = "SEPAL VS PETAL")

#geom argument is used to decide wat kind of plot do we want
#by default geom is always point and therefore scatterplot.
qplot(Sepal.Length,Petal.Length,data = iris, colour = Species, size = Petal.Width
      ,alpha = 0.5,xlab = "Sepal-Length",ylab = "Petal-Length",
      main = "SEPAL VS PETAL",geom = "hist")

#################
