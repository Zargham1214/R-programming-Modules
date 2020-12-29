
# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually


# PLOT DATA WITH PLOT() ####################################

?plot  # Help for plot()

#Speed vs distance plot

Speed <- cars$speed
Distance <- cars$dist
plot(Speed, Distance, panel.first = grid(5, 5),
     main="Speed vs Distance plot by zargham",
     pch = 19, 
     cex = 1, 
     col = "green")



# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

