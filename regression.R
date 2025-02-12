library(tidyverse)
library(ISLR2)

# Do colleges with full-time enrollments have lower graduation rates?
# Is this different for public/private institutions?
# Is it different for more selective schools?

# Create the scatter plot to see the relationship between Full Time Enrollment and Graduation Rate
ggplot(College, aes(x = FTE, y = Grad.Rate)) + 
  geom_point(aes(color = as.factor(Private))) +
  labs(title = "Graduation Rate vs Full-time Enrollment",
       x = "Full-Time Enrollment Percentage",
       y = "Graduation Rate") +
  theme_minimal() +
  scale_color_manual(values = c("blue", "red"), name = "Institution Type", 
                     labels = c("Public", "Private"))

# Fit the regression model to see if FTE impacts Grad Rate
model <- lm(Grad.Rate ~ FTE + Private + Top10perc, data = College)
summary(model)
