if (!require(ggplot2)) {
    install.packages("ggplot2")
    library(ggplot2)
  }
  
  if (!require(dplyr)) {
    install.packages("dplyr")
    library(dplyr)
  }
  
  # Sample data creation
  data <- data.frame(
    Variable1 = c(19095.467, 19900.7267, 20487.1708, 18389.0196,
                  19709.2381, 23168.953, 24406.4003, 26766.0056,
                  28274.5045, 28762.0914, 28280.9268, 27906.5695,
                  30077.7414, 34442.6875, 40366.8887, 42104.7884,
                  44512.459, 50397.6855, 47396.1202, 38744.1317, 
                  39598.9571, 42109.6419, 42497.3405, 43426.2981,
                  47439.6166, 44964.3911, 40985.2351, 40572.1215, 
                  43203.8141, 42662.5354, 40217.009),
    Variable2 = c(0.65, 0.61, 0.84, 0.78, 1.02, 1.06, 0.94, 1.03, 1.03,
                  0.95, 0.96, 0.85, 0.97, 0.93, 1.14, 1.35, 1.55, 1.84,
                  2.4, 2.92, 3.13, 3.94, 4.15, 5.18, 6.53, 7.71, 7.68, 8.81,
                  10.09, 11.39, 13.5)
  )
  
  # Fit a linear model
  model <- lm(Variable2 ~ Variable1, data = data)
  
  # Plot the data and the regression line
  ggplot(data, aes(x = Variable1, y = Variable2)) +
    geom_point(color = 'blue') +  # Scatter plot of the data
    geom_smooth(method = 'lm', color = 'red') +  # Regression line
    labs(title = "UK - Renewable Energy Investment vs. Economic Performance",
         x = "UK GDP PER CAPITA ($)",
         y = "UK RENEWABLES ENERGIES CONSUMPTION (%)")
  