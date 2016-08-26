# Data Wrangling Assignment - Titanic Exercise

#Installing the required packages

install.packages("dplyr")
suppressMessages( library(dplyr) )

install.packages("tidyr")
suppressMessages( library(tidyr) )

install.packages("ggplot2")
suppressMessages( library(ggplot2) )

# Task 0: Loading Data into RStudio
titanic<- read.csv("~/Desktop/Data Science/4 Data Exploration/Titanic Exercise/Titanic---Data-Exploration/titanic_clean.csv")
glimpse(titanic)

# Exercise Code

# Check out the structure of titanic
str(titanic)

# Use ggplot() for the first instruction
ggplot(titanic, aes(factor(pclass), fill = sex ) ) + 
  geom_bar(position = "dodge")

# Use ggplot() for the second instruction
ggplot(titanic, aes(factor(pclass), fill = sex ) ) + 
  geom_bar(position = "dodge") +
  facet_grid(".~ survived")

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
ggplot(titanic, aes(factor(pclass), age, col = sex ) ) + 
  geom_jitter(position = posn.j, size = 3, alpha = 0.5) +
  facet_grid(".~ survived")
