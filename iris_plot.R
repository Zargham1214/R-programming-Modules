# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

head(iris)

# PLOT DATA WITH PLOT() ####################################

?plot  # Help for plot()

plot(iris$Species)  # Categorical variable
plot(iris$Petal.Length)  # Quantitative variable
plot(iris$Species, iris$Petal.Width)  # Cat x quant
plot(iris$Petal.Length, iris$Petal.Width)  # Quant pair
plot(iris)  # Entire data frame


plot(iris$Species, iris$Sepal.Length,
     main = "Iris: Sepal Length by zargham",
     col = "red", 
     xlab = "Iris Species",
     ylab = "Sepal Length"
) 

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

