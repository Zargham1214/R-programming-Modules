#Regression testing
?mtcars
head(mtcars)
data <- mtcars

# Define variable groups
x <- as.matrix(data[, -1])
y <- data[, 1]

# REGRESSION WITH SIMULTANEOUS ENTRY #######################

# Using variable groups
reg1 <- lm(y ~ x)

# Or specify variables individually

# Results
reg1           # Coefficients only
summary(reg1)  # Inferential tests

