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
View(gapminder)

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




# Load the ggplot2 package after the gapminder and dplyr packages.
# 
# Filter gapminder for observations from the year 1952, and assign it to a 
# new dataset gapminder_1952 using the assignment operator (<-).

install.packages("ggplot2")

library(ggplot2)

gapminder_1952 <- gapminder %>% filter(year == 1952)

head(gapminder_1952)


# Change to put pop on the x-axis and gdpPercap on the y-axis
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()


# Create a scatter plot with pop on the x-axis and lifeExp on the y-axis
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + geom_point()


# Change the existing scatter plot (code provided) to put the x-axis 
# (representing population) on a log scale.


gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Change this plot to put the x-axis on a log scale
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
  geom_point()+scale_x_log10()



# Scatter plot comparing pop and gdpPercap, with both axes on a log scale
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap))+geom_point()+
  scale_x_log10()+scale_y_log10()



# Scatter plot comparing pop and lifeExp, with color representing continent

ggplot(gapminder_1952, aes(x = pop, y = lifeExp, col = continent))+ geom_point() + 
  scale_x_log10()



ggplot(gapminder_1952, aes(x = pop, y = lifeExp, col = continent))+ geom_point() + 
  scale_x_log10()


ggplot(gapminder_1952, aes(x = pop, y = lifeExp, color = continent,size = gdpPercap)) +
  geom_point() +
  scale_x_log10()


# Create a scatter plot of gapminder_1952 with the x-axis representing population 
# (pop), the y-axis representing life expectancy (lifeExp), and faceted to have one
# subplot per continent (continent). Put the x-axis on a log scale.

ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + geom_point() + scale_x_log10() + facet_wrap(~continent)


# Scatter plot comparing gdpPercap and lifeExp, with color representing continent
# and size representing population, faceted by year
ggplot(gapminder, aes(x=gdpPercap, y = lifeExp, col = continent, 
                      size = pop)) + geom_point() + scale_x_log10() + facet_wrap(~year)


# Use the median() function within a summarize() to find the median life expectancy. 
# Save it into a column called medianLifeExp.


gapminder %>%
  summarize(medianlifeExp = median(lifeExp))


# Filter for 1957 then summarize the median life expectancy

gapminder %>%
  filter(year == 1957) %>%
  summarize(medianlifeExp = median(lifeExp))


# Filter for 1957 then summarize the median life expectancy and the maximum GDP per 
# capita


gapminder %>%
  filter(year == 1957)%>%
  summarize(medianlifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))


# Find the median life expectancy (lifeExp) and maximum GDP per capita (gdpPercap) 
# within each year, saving them into medianLifeExp and maxGdpPercap, respectively.

gapminder %>%
  group_by(year)%>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))%>%
  arrange(desc(medianLifeExp))
  

# Filter the gapminder data for the year 1957. Then find the median life expectancy 
# (lifeExp) and maximum GDP per capita (gdpPercap) within each continent, saving them 
# into medianLifeExp and maxGdpPercap, respectively.

gapminder %>%
  filter(year == 1957)%>%
  group_by(continent)%>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))


# Find the median life expectancy (lifeExp) and maximum GDP per capita (gdpPercap) 
# within each combination of continent and year, saving them into medianLifeExp and 
# maxGdpPercap, respectively.


gapminder %>%
  group_by(continent, year)%>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))


# Use the by_year dataset to create a scatter plot showing the change of median life 
# expectancy over time, with year on the x-axis and medianLifeExp on the y-axis. Be 
# sure to add expand_limits(y = 0) to make sure the plot's y-axis includes zero.


by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),maxGdpPercap = max(gdpPercap))


ggplot(by_year, aes(x = year, y = medianLifeExp)) + geom_point() + expand_limits(y=0)


# Summarize medianGdpPercap within each continent within each year: by_year_continent
by_year_continent <- gapminder %>%
  group_by(year, continent)%>%
  summarize(medianGdpPercap = median(gdpPercap))

# Plot the change in medianGdpPercap in each continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, col = continent)) + geom_point() + expand_limits(y=0)



# Summarize the median GDP and median life expectancy per continent in 2007
by_continent_2007 <- gapminder %>%
  filter(year==2007)%>%
  group_by(continent)%>%
  summarize(medianLifeExp = median(lifeExp), medianGdpPercap = median(gdpPercap))


# Use a scatter plot to compare the median GDP and median life expectancy
ggplot(by_continent_2007, aes(x = medianGdpPercap, y = medianLifeExp, col = continent)) + geom_point() + expand_limits(y=0)



# Use group_by() and summarize() to find the median GDP per capita within each year, 
# calling the output column medianGdpPercap. Use the assignment operator <- to save it 
# to a dataset called by_year.
# Use the by_year dataset to create a line plot showing the change in median GDP per 
# capita over time. Be sure to use expand_limits(y = 0) to include 0 on the y-axis.


by_year <- gapminder%>%
  group_by(year)%>%
  summarise(medianGdpPercap = median(gdpPercap))
  
ggplot(by_year, aes(x = year, y = medianGdpPercap))+ geom_line() + expand_limits(y = 0)



# Use group_by() and summarize() to find the median GDP per capita within each year and
# continent, calling the output column medianGdpPercap. Use the assignment operator 
# <- to save it to a dataset called by_year_continent.
# Use the by_year_continent dataset to create a line plot showing the change in median
# GDP per capita over time, with color representing continent. Be sure to use 
# expand_limits(y = 0) to include 0 on the y-axis.

# Summarize the median gdpPercap by year & continent, save as by_year_continent

by_year_continent <- gapminder %>%
  group_by(year, continent)%>%
  summarize(medianGdpPercap = median(gdpPercap))



# Create a line plot showing the change in medianGdpPercap by continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, col = continent)) + geom_line() + expand_limits(y=0)


# Summarize the median gdpPercap by continent in 1952
by_continent <- gapminder%>%
  filter(year == 1952)%>%
  group_by(continent)%>%
  summarize(medianGdpPercap = median(gdpPercap))


# Create a bar plot showing medianGdp by continent

ggplot(by_continent, aes(x = continent, y = medianGdpPercap)) + geom_col()


# Filter for observations in the Oceania continent in 1952
oceania_1952 <- gapminder%>%
  filter(year==1952 & continent=='Oceania')

oceania_1952

# Create a bar plot of gdpPercap by country
ggplot(oceania_1952, aes(x = country, y = gdpPercap)) + geom_col()



# Use the gapminder_1952 dataset to create a histogram of country population 
# (pop_by_mil) in the year 1952. Inside the histogram geom, set the number of 
# bins to 50.


library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952) %>%
  mutate(pop_by_mil = pop / 1000000)


# Create a histogram of population (pop_by_mil)
ggplot(gapminder_1952, aes(x=pop_by_mil)) + geom_histogram(bins = 50)


#Use the gapminder_1952 dataset (code is provided) to create a histogram 
#of country population (pop) in the year 1952, putting the x-axis on a log 
#scale with scale_x_log10().

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a histogram of population (pop), with x on a log scale
ggplot(gapminder_1952, aes(x=pop)) + geom_histogram() + scale_x_log10()

#Use the gapminder_1952 dataset (code is provided) to create a boxplot 
#comparing GDP per capita (gdpPercap) among continents. Put the y-axis on a 
#log scale with scale_y_log10().

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a boxplot comparing gdpPercap among continents
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) + geom_boxplot() + scale_y_log10()


# Add a title to this graph: "Comparing GDP per capita across continents"
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) +
  geom_boxplot() +
  scale_y_log10() +
  ggtitle("Comparing GDP per capita across continents")































