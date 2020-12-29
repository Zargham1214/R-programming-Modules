#Hierarchical Clustering and Dendogram
rio_csv <- import("cars.csv")
library("dplyr")

# VARIABLE INITIALIZATION ##################################
driveline<-rio_csv$`Engine Information.Driveline`           #variable for Driveling Information
gears<-rio_csv$`Engine Information.Number of Forward Gears` #variable for Number of forward gears

# MULTIPLE SELECTORS #######################################
largecars <- rio_csv[(driveline=="Four-wheel drive" | driveline=="All-wheel drive")&(gears>7), ]

#selecting only quantitative variables in data frame
largecars.fewer <- select_if(largecars, is.numeric)          

#adding new column of ID with previous quantitative variable's data frame
largecars.fewer<-cbind(largecars.fewer,largecars$Identification.ID)

#reordering so the Identifaction.ID column become the first one.
largecars.fewer<-largecars.fewer[,c(10,9,8,7,6,5,4,3,2,1)]

#converting the first column into row names
largecars.fewer2 <- largecars.fewer[,-1]
rownames(largecars.fewer2) <- largecars.fewer[,1]

# COMPUTE AND PLOT CLUSTERS ################################
# Save hierarchical clustering to "hc." This codes uses
# pipes from dplyr.

hc <- largecars.fewer2   %>%  # Get cars data
      dist               %>%  # Compute distance/dissimilarity matrix
      hclust                  # Computer hierarchical clusters

par(mar=c(2,2,2,2))       #fixing the margins
plot(hc,cex=0.5)          # Plot dendrogram
# Clear plots
dev.off()  # But only if there IS a plot
