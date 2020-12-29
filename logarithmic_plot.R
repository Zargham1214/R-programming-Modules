# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually


# PLOT DATA WITH PLOT() ####################################

?plot  # Help for plot()

#Logarithmic plot

plot(log, 
     main="Logrithm by zargham",
     xlab="X-axis",
     ylab="y-axis",
     xlim = c(0,3),
     ylim=c(-3,3),
     axes=FALSE,
     lwd=3,
     col="purple",
)
#to make sure both axes intersect at origin
axis(1, pos=0)
axis(2, pos=0)


# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

