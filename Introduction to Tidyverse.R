# Loading the gapminder and dplyr packages
# 
# Before you can work with the gapminder dataset, you'll need to load two R 
# packages that contain the tools for working with it, then display the gapminder 
# dataset so that you can see what it contains.
# 
# To your right, you'll see two windows inside which you can enter code: 
#   The script.R window, and the R Console. All of your code to solve each 
# exercise must go inside script.R.
# 
# If you hit Submit Answer, your R script is executed and the output is shown 
# in the R Console. DataCamp checks whether your submission is correct and gives 
# you feedback. You can hit Submit Answer as often as you want. If you're stuck, 
# you can ask for a hint or a solution.
# 
# You can use the R Console interactively by simply typing R code and hitting 
# Enter. When you work in the console directly, your code will not be checked 
# for correctness so it is a great way to experiment and explore.

install.packages("gapminder")
library(gapminder)
install.packages("dplyr")
library(dplyr)


#How many observations (rows) are in the dataset?

summary(gapminder)
dim(gapminder)
View(gapminder)

# Add a filter() line after the pipe (%>%) to extract only the observations 
# from the year 1957. Remember that you use == to compare two values.


# Filter the gapminder dataset for the year 1957
gapminder %>%
  filter(year==1957)


# Filter the gapminder data to retrieve only the observation from China in 
# the year 2002.

gapminder %>%
  filter(country=="China", year == 2002)

# Sort in ascending order of lifeExp

gapminder %>%
  arrange(lifeExp)

# Sort in descending order of lifeExp

gapminder %>%
  arrange(desc(lifeExp))


# Filter for the year 1957, then arrange in descending order of population

gapminder %>%
  filter(year == 1957) %>%
  arrange(desc(pop))


# Use mutate() to change the existing lifeExp column, by multiplying it 
# by 12: 12 * lifeExp.

gapminder %>%
  mutate(lifeExp = 12*lifeExp)


# Use mutate() to add a new column, called lifeExpMonths, 
# calculated as 12 * lifeExp.

gapminder %>%
  mutate(lifeExpMonths = 12 * lifeExp)


gapminder %>%
  mutate(lifeExpMonths = 12*lifeExp) %>%
  filter(year == 2007) %>%
  arrange(desc(lifeExpMonths))















