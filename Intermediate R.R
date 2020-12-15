
## Control Flow (operators and if else)
#-----------------------------------------------------------------------

3 == (2 + 1)
"intermediate" != "r"
TRUE != FALSE
"Rchitect" != "rchitect"


# Comparison of logicals
TRUE == FALSE

# Comparison of numerics
-6*14 != 17-101

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
TRUE == 1


# Comparison of numerics
-6*5+2 >= -10+1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <= 5


# LinkedIn more popular than Facebook
linkedin > facebook


# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?

views <= 14


# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)
last
# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
15 < last & last <=20


# The social data (linkedin, facebook, views) has been created for you

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook <10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >=12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14


# They all evaluate to FALSE:

!TRUE
!(5 > 3)
!!FALSE

x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))


# li_df is pre-loaded in your workspace

"
             day1 day2 day3 day4 day5 day6 day7
employee_1     2    3    3    6    4    2    0
employee_2    19   23   18   22   23   29   25
employee_3    24   18   15   19   18   22   17
employee_4    22   18   27   26   19   21   25
employee_5    25   25   26   31   24   36   37
employee_6    22   20   29   26   23   22   29
employee_7     0    4    2    2    3    4    2
employee_8    12    3   15    7    1   15   11
employee_9    19   22   22   19   25   24   23
employee_10   23   12   19   25   18   22   22
employee_11   29   27   23   25   29   30   17
employee_12   13   13   20   17   12   22   20
employee_13    7   17    9    5   11    9    9
employee_14   26   27   28   36   29   31   30
employee_15    7    6    4   11    5    5   15
employee_16   32   35   31   35   24   25   36
employee_17    7   17    9   12   13    6   12
employee_18    9    6    3   12    3    8    6
employee_19    0    1   11    6    0    4   11
employee_20    9   12    6   13   12   13   11
employee_21    6   15   15   10    9    7   18
employee_22   17   17   12    4   14   17    7
employee_23    1   12    8    2    4    4   11
employee_24    5    8    0    1    6    3    1
employee_25    2    7    5    3    1    5    5
employee_26   29   25   32   28   28   27   27
employee_27   17   15   17   23   23   17   22
employee_28   26   32   33   30   33   28   26
employee_29   27   29   24   29   26   31   28
employee_30    4    1    1    2    1    7    4
employee_31   22   22   17   20   14   19   13
employee_32    9   11    7   10    8   15    5
employee_33    6    5   12    5   17   17    4
employee_34   18   17   12   22   22   13   12
employee_35    2   12   13    7   10    6    2
employee_36   32   26   20   23   24   25   21
employee_37    5   13   12   11    6    5   10
employee_38    6   10   11    6    6    2    5
employee_39   30   37   32   35   37   41   42
employee_40   34   33   32   35   33   27   35
employee_41   15   19   21   18   22   26   22
employee_42   28   29   30   19   21   19   26
employee_43    6    8    6    7   17   11   14
employee_44   17   22   27   24   18   28   24
employee_45    6   10   17   18   13   10    7
employee_46   18   19   22   17   21   15   23
employee_47   21   27   28   28   26   17   25
employee_48   10   18   20   18   12   19   17
employee_49    6   15   15   15   10   14    2
employee_50   30   28   29   31   24   20   25
"

li_df

# Select the second column, named day2, from li_df: second

second = li_df$day2

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes = (second > 25 | second < 5)
extremes

# Count the number of TRUEs in extremes
sum(extremes==TRUE)



# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14
medium
num_views

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15) {
  print("You are popular!")
}

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}



# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  print("Showing Facebook information")
  
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  print("Your number of views is average")
  
} else {
  print("Try to be more visible!")
}



#Have Have a look at the following statements:
  
#If number is set to 6, "small" gets printed to the console.
#If number is set to 100, R prints out "medium".
#If number is set to 4, "extra small" gets printed out to the console.
#If number is set to 2500, R will generate an error, as result will not be defined.

number = 6

if (number < 10) {
  if (number < 5) {
    result <- "extra small"
  } else {
    result <- "small"
  }
} else if (number <= 100) {
  result <- "medium"
} else {
  result <- "Error"
}
print(result)


if (number < 10) {
  if (number < 5) {
    result <- "extra small"
  } else {
    result <- "small"
  }
} else if (number < 100) {
  result <- "medium"
} else {
  result <- "large"
}
print(result)


# Finish the control-flow construct with the following behavior:
#   
# If both li and fb are 15 or higher, set sms equal to double the sum of li and fb.
# If both li and fb are strictly below 10, set sms equal to half the sum of li and fb.
# In all other cases, set sms equal to li + fb.
# Finally, print the resulting sms variable to the console.


# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li>=15 & fb>=15) {
  sms <- 2 * (li + fb)
} else if (li<15 & fb<10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console

print(sms)


#=======================================================================
## Loops 
#=======================================================================

# Code a while loop with the following characteristics:
#   
# The condition of the while loop should check if speed is higher than 30.
# Inside the body of the while loop, print out "Slow down!".
# Inside the body of the while loop, decrease the speed by 7 units and assign 
# this new value to speed again. This step is crucial; otherwise your while loop
      # will never stop and your session will expire.
# # If your session expires when you run your code, check the body of your 
      # while loop carefully: it's likely that you made a mistake.

# Initialize the speed variable
speed <- 64

# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed<- speed - 7
}

# Print out the speed variable
print(speed)

# If the speed is greater than 48, have R print out "Slow down big time!", and 
    # decrease the speed by 11.
# Otherwise, have R simply print out "Slow down!", and decrease the speed by 6.
# If the session keeps timing out and throwing an error, you are probably stuck 
    # in an infinite loop! Check the body of your while loop and make sure you are 
    # assigning new values to speed.


# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed = speed - 11
  } else {
    print("Slow down!")
    speed = speed - 6
  }
}


# Adapt the while loop such that it is abandoned when the speed of the vehicle is 
# greater than 80. This time, the speed variable has been initialized to 88; keep 
# it that way.

# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80 ) {
    break
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}


# Finish the while loop so that it:
  # prints out the triple of i, so 3 * i, at each run.
      # is abandoned with a break if the triple of i is divisible by 8, 
  # but still prints out this triple before breaking.




# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3*i)
  if ( (3*i)%%8 == 0 ) {
    break
  }
  i <- i + 1
}


# Write a for loop that iterates over all the elements of linkedin and prints out 
# every element separately. Do this in two ways: using the loop version 1 and the 
# loop version 2 in the example code above.


# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (i in linkedin) {
  print(i)
}

# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}


# As in the previous exercise, loop over the nyc list in two different ways to 
# print its elements:
#   
# Loop directly over the nyc list (loop version 1).
# Define a looping index and do subsetting using double brackets (loop version 2).


# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (i in nyc) {
  print(i)
}



# Loop version 2
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}



# Finish the nested for loops to go over the elements in ttt:
#   
#      [,1] [,2] [,3]
# [1,] "O"  NA   "X" 
# [2,] NA   "O"  "O" 
# [3,] "X"  NA   "X" 
#   
# The outer loop should loop over the rows, with loop index i (use 1:nrow(ttt)).
# The inner loop should loop over the columns, with loop index j (use 1:ncol(ttt)).
# Inside the inner loop, make use of print() and paste() to print out information 
# in the following format: "On row i and column j the board contains x", where x 
# is the value on that position.


# The tic-tac-toe matrix ttt has already been defined for you

ttt

# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i ,"and column", j ,"the board contains", ttt[[i,j]]))
  }
}


# Add code to the for loop that loops over the elements of the linkedin vector:
#   
# If the vector element's value exceeds 10, print out "You're popular!".
# If the vector element's value does not exceed 10, print out "Be more visible!"

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 10 ) {
    print("You are popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}



# Extend the for loop with two new, separate if tests in the editor as follows:
#   
# If the vector element's value exceeds 16, print out "This is ridiculous, I'm 
# outta here!" and have R abandon the for loop (break).
# If the value is lower than 5, print out "This is too embarrassing!" and 
# fast-forward to the next iteration (next).


# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  # Add if statement with next
  if (li < 5){
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}



# Initialize the variable rcount, as 0.
# Finish the for loop:
# if char equals "r", increase the value of rcount by 1.
# if char equals "u", leave the for loop entirely with a break.
# Finally, print out the variable rcount to the console to see if your code is correct.



rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]
chars


# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "r"){
    rcount = rcount+1
  }
  if (char == "u"){
    break
  }
}

# Print out rcount
print(rcount)



#=======================================================================
## Functions
#=======================================================================


# Consult the documentation on the mean() function
?mean

# Inspect the arguments of the mean() function
args(mean)


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)


# Inspect avg_li and avg_fb
print(avg_li)
print(avg_fb)




# Calculate the mean of the element-wise sum of linkedin and facebook and store 
#     the result in a variable avg_sum.
# Calculate the mean once more, but this time set the trim argument equal to 0.2 
#     and assign the result to avg_sum_trimmed.
# Print out both avg_sum and avg_sum_trimmed; can you spot the difference?


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

?mean

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)
avg_sum

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean((linkedin+facebook), trim = 0.2)
avg_sum_trimmed

# Inspect both new variables
avg_sum
avg_sum_trimmed



# Calculate the average number of LinkedIn profile views, without specifying any 
#     optional arguments. Simply print the result to the console.
# Calculate the average number of LinkedIn profile views, but this time tell R to 
#     strip missing values from the input vector.


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)

# Advanced average of linkedin
mean(linkedin, na.rm = TRUE)



# Use abs() on linkedin - facebook to get the absolute differences between the daily 
# Linkedin and Facebook profile views. Place the call to abs() inside mean() to 
# calculate the Mean Absolute Deviation. In the mean() call, make sure to specify 
# na.rm to treat missing values correctly!


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation

mean(abs(linkedin - facebook), na.rm = T)


# Which of the following statements about the read.table() function are true?
#   
# header, sep and quote are all optional arguments.
# row.names and fileEncoding don't have default values.
# read.table("myfile.txt", "-", TRUE) will throw an error.
# read.table("myfile.txt", sep = "-", header = TRUE) will throw an error.


?read.table



# Create a function pow_two(): it takes one argument and returns that number squared 
# (that number times itself).
# Call this newly defined function with 12 as input.
# Next, create a function sum_abs(), that takes two arguments and returns the sum 
# of the absolute values of both arguments.
# Finally, call the function sum_abs() with arguments -2 and 3 afterwards.


# Create a function pow_two()
pow_two <- function(x) {
  return(x*x)
}


# Use the function
pow_two(12)

# Create a function sum_abs()

sum_abs <- function(x,y){
  z<- abs(x)+abs(y)
  return(z)
}

# Use the function
sum_abs(-2,3)



# There are situations in which your function does not require an input. 
# Let's say you want to write a function that gives us the random outcome of 
# throwing a fair die:

throw_die <- function() {
  number <- sample(1:6, size = 1)
  number
}

throw_die()


# Add an optional argument, named print_info, that is TRUE by default.
# Wrap an if construct around the print() function: this function should only be 
# executed if print_info is TRUE.
# Feel free to experiment with the pow_two() function you've just coded.


# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if (print_info == TRUE){
    print(paste(x, "to the power two equals", y))
    return(y)
  } 
}


#===============================================================================

two_dice <- function() {
  possibilities <- 1:6
  dice1 <- sample(possibilities, size = 1)
  dice2 <- sample(possibilities, size = 1)
  dice1 + dice2
}

two_dice()
two_dice()

#===============================================================================

increment <- function(x, inc = 1) {
  x <- x + inc
  x
}
count <- 5
a <- increment(count, 2)
b <- increment(count)
count <- increment(count, 2)

a
b
count



# Finish the function definition for interpret(), that interprets the number of 
# profile views on a single day:
# The function takes one argument, num_views.
#   If num_views is greater than 15, the function prints out "You're popular!" to 
#   the console and returns num_views.
#   Else, the function prints out "Try to be more visible!" and returns 0.
#   Finally, call the interpret() function twice: on the first value of the linkedin 
#   vector and on the second element of the facebook vector.
  
# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
    
  } else {
    print("Try to be more visible!")
    return(0)
    
  }
}

# Call the interpret function twice
interpret(linkedin[[2]])
interpret(facebook[[1]]) 
  
  
# Make return_sum an optional argument, that is TRUE by default.
# Inside the for loop, iterate over all views: on every iteration, add the result 
# of interpret(v) to count. Remember that interpret(v) returns v for popular days, 
# and 0 otherwise. At the same time, interpret(v) will also do some printouts.
# Finish the if construct:
#   If return_sum is TRUE, return count.
# Else, return NULL.
# Call this newly defined function on both linkedin and facebook. 


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0
  
  for (v in views) {
    count = count + interpret(v)
  }
  
  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)
  
  
  
  
#=======================================================================
## The apply Family
#=======================================================================  
  
# Have a look at the strsplit() calls, that splits the strings in pioneers on the : 
#     sign. The result, split_math is a list of 4 character vectors: the first vector 
#     element represents the name, the second element the birth year.
# Use lapply() to convert the character vectors in split_math to lowercase letters: 
#     apply tolower() on each of the elements in split_math. Assign the result, which 
#     is a list, to a new variable split_low.
# Finally, inspect the contents of split_low with str(). 
  
  
  
 ?lapply
# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year
split_math <- strsplit(pioneers, split = ":")
unlist(split_math)

# Convert to lowercase strings: split_low
split_low <- lapply(split_math, tolower)

# Take a look at the structure of split_low
str(split_math)  



# Apply select_first() over the elements of split_low with lapply() and assign the 
#     result to a new variable names.
# Next, write a function select_second() that does the exact same thing for the 
#     second element of an inputted vector.
# Finally, apply the select_second() function over split_low and assign the output 
#     to the variable years.

# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(x) {
  x[1]
}

# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)
names
# Write function select_second()
select_second <- function(y) {
  y[2]
}

# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)





# Transform the first call of lapply() such that it uses an anonymous function that 
#     does the same thing.
# In a similar fashion, convert the second call of lapply to use an anonymous version 
#     of the select_second() function.
# Remove both the definitions of select_first() and select_second(), as they are no 
#     longer useful.


# Named function
triple <- function(x) { 3 * x }

# Anonymous function with same implementation
function(x) { 3 * x }


# split_low has been created for you
split_low

# Transform: use anonymous function inside lapply
select_first <- function(x) {
  x[1]
}
names <- lapply(split_low, function(x) {x[1]})

# Transform: use anonymous function inside lapply
select_second <- function(x) {
  x[2]
}
years <- lapply(split_low, function(x) {x[2]})


# Use lapply() twice to call select_el() over all elements in split_low: once with 
# the index equal to 1 and a second time with the index equal to 2. Assign the result 
# to names and years, respectively.



# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)
class(split_low)
# Generic select function
select_el <- function(x, index) {
  x[index]
}

# Use lapply() twice on split_low: names and years

names <- lapply(split_low, select_el, index = 1)
years <- lapply(split_low, select_el, index = 2)


lapply(split_low, function(x) {
  if (nchar(x[1]) > 5) {
    return(NULL)
  } else {
    return(x[2])
  }
})

?gsub



temp = 
# [[1]]
# [1]  3  7  9  6 -1
# 
# [[2]]
# [1]  6  9 12 13  5
# 
# [[3]]
# [1]  4  8  3 -1 -3
# 
# [[4]]
# [1]  1  4  7  2 -2
# 
# [[5]]
# [1] 5 7 9 4 2
# 
# [[6]]
# [1] -3  5  8  9  4
# 
# [[7]]
# [1] 3 6 9 4 1







# temp has already been defined in the workspace
temp

# Use lapply() to find each day's minimum temperature
lapply(temp, min)

# Use sapply() to find each day's minimum temperature
sapply(temp, min)

# Use lapply() to find each day's maximum temperature
lapply(temp, max)

# Use sapply() to find each day's maximum temperature
sapply(temp, max)


# Finish the definition of extremes_avg(): it takes a vector of temperatures and 
#     calculates the average of the minimum and maximum temperatures of the vector.
# Next, use this function inside sapply() to apply it over the vectors inside temp.
# Use the same function over temp with lapply() and see how the outputs differ.





# temp is already defined in the workspace
temp

# Finish function definition of extremes_avg
extremes_avg <- function(x) {
  ( min(x) + max(x) ) / 2
}

# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)


# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)



# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
  c(min = min(x), max = max(x))
}

# Apply extremes() over temp with sapply()
sapply(temp, extremes)

# Apply extremes() over temp with lapply()
lapply(temp, extremes)



# temp is already prepared for you in the workspace

# Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)
freezing_s

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)

# Are freezing_s and freezing_l identical?
identical(freezing_s, freezing_l)



# Apply the function basics() over the list of temperatures, temp, using vapply(). 
# This time, you can use numeric(3) to specify the FUN.VALUE argument.




# temp is already available in the workspace

# Definition of basics()
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}

# Apply basics() over temp using vapply()
vapply(temp, basics, numeric(3))


# temp is already available in the workspace

# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))


# Convert all the sapply() expressions on the right to their vapply() counterparts. 
# Their results should be exactly the same; you're only adding robustness. 
# You'll need the templates numeric(1) and logical(1).


# temp is already defined in the workspace

# Convert to vapply() expression
vapply(temp, max, numeric(1))

# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))



#=======================================================================
## The useful functions
#=======================================================================  

# Calculate the sum of the absolute rounded values of the training errors. You can 
# work in parts, or with a single one-liner. There's no need to store the result in 
# a variable, just have R print it.


# The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

# Sum of absolute rounded values of errors

sum(round(abs(errors)))



# Fix the error by including code on the last line. Remember: you want to call 
# mean() only once!

# Don't edit these two lines
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

# Fix the error
mean(c(abs(vec1), abs(vec2)))


# R features a bunch of functions to juggle around with data structures::
# seq(): Generate sequences, by specifying the from, to, and by arguments.
# rep(): Replicate elements of vectors and lists.
# sort(): Sort a vector in ascending order. Works on numerics, but also on character 
#         strings and logicals.
# rev(): Reverse the elements in a data structures for which reversal is defined.
# str(): Display the structure of any R object.
# append(): Merge vectors or lists.
# is.*(): Check for the class of an R object.
# as.*(): Convert an R object from one class to another.
# unlist(): Flatten (possibly embedded) lists to produce a vector.


# The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- unlist(linkedin)
fb_vec <- unlist(facebook)


# Append fb_vec to li_vec: social_vec
social_vec <- append(li_vec, fb_vec)
social_vec
# Sort social_vec
sort(social_vec)
sort(social_vec, decreasing = T)


rep(seq(1, 7, by = 7), times = 2)


# Using the function seq(), create a sequence that ranges from 1 to 500 in increments 
# of 3. Assign the resulting vector to a variable seq1.
# Again with the function seq(), create a sequence that ranges from 1200 to 900 in 
# increments of -7. Assign it to a variable seq2.
# Calculate the total sum of the sequences, either by using the sum() function twice
# and adding the two results, or by first concatenating the sequences and then using 
# the sum() function once. Print the result to the console.

# Create first sequence: seq1
seq1 <- seq(1,500, by = 3)

# Create second sequence: seq2
seq2 <- seq(1200, 900, by = -7)

# Calculate total sum of the sequences
sum(append(seq1, seq2))


# Use grepl() to generate a vector of logicals that indicates whether these email 
# addressess contain "edu". Print the result to the output.
# Do the same thing with grep(), but this time save the resulting indexes in a 
# variable hits.
# Use the variable hits to select from the emails vector only the emails that 
# contain "edu".

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl("edu", emails)

# Use grep() to match for "edu", save result to hits
hits <- grep("edu", emails)

# Subset emails using hits
emails[hits]



# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for .edu addresses more robustly
grepl("@.*\\.edu$", emails)

# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep("@.*\\.edu$", emails)

# Subset emails using hits
emails[hits]



# With the advanced regular expression "@.*\\.edu$", use sub() to replace the match 
# with "@datacamp.edu". Since there will only be one match per character string, 
# gsub() is not necessary here. Inspect the resulting output.

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "global@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use sub() to convert the email domains to datacamp.edu
sub("@.*\\.edu$", "@datacamp.edu", emails)

# 
# sub & gsub (2)
# Regular expressions are a typical concept that you'll learn by doing and by seeing 
# other examples. Before you rack your brains over the regular expression in this 
# exercise, have a look at the new things that will be used:
# 
# .*: A usual suspect! It can be read as "any character that is matched zero or more 
# times".
# 
# \\s: Match a space. The "s" is normally a character, escaping it (\\) makes it a 
# metacharacter.
# 
# [0-9]+: Match the numbers 0 to 9, at least once (+).
# 
# ([0-9]+): The parentheses are used to make parts of the matching string available 
# to define the replacement. The \\1 in the replacement argument of sub() gets set to
# the string that is captured by the regular expression [0-9]+.



awards <- c("Won 1 Oscar.",
            "Won 1 Oscar. Another 9 wins & 24 nominations.",
            "1 win and 2 nominations.",
            "2 wins & 3 nominations.",
            "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
            "4 wins & 1 nomination.")

sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)

  

# Ask R for the current date, and store the result in a variable today.
# To see what today looks like under the hood, call unclass() on it.
# Ask R for the current time, and store the result in a variable, now.
# To see the numerical value that corresponds to now, call unclass() on it.

# Get the current date: today
today <- Sys.Date()

# See what today looks like under the hood
today
unclass(today)

# Get the current time: now
now <- Sys.time()

# See what now looks like under the hood
unclass(now)


# %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)


# In the editor on the right, three character strings representing dates have been 
# created. Convert them to dates using as.Date(), and assign them to date1, date2, 
# and date3 respectively. The code for date1 is already included.
# 
# Extract useful information from the dates as character strings using format(). 
# From the first date, select the weekday. From the second date, select the day of 
# the month. From the third date, you should select the abbreviated month and the 
# 4-digit year, separated by a space.


# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2)
date3 <- as.Date(str3, format = "%d/%b/%Y")
date3
# Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")




# Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"

# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time2 <- as.POSIXct(str2)

# Convert times to formatted strings
format(time1, "%M")
format(time2, "%I:%M %p")



# Calculate the number of days that passed between the last and the first 
# day you ate pizza. Print the result.
# 
# Use the function diff() on pizza to calculate the differences between 
# consecutive pizza days. Store the result in a new variable day_diff.
# 
# Calculate the average period between two consecutive pizza days. Print 
# the result.

# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)

# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza)
day_diff

# Average period between two consecutive pizza days
mean(day_diff)


# Calculate the difference between the two vectors logout and login, 
# i.e. the time the user was online in each independent session. 
# Store the result in a variable time_online.
# 
# Inspect the variable time_online by printing it.
# 
# Calculate the total time that the user was online. Print the result.
# 
# Calculate the average time the user was online. Print the result.


# login and logout are already defined in the workspace
# Calculate the difference between login and logout: time_online

time_online <- login - logout


# Inspect the variable time_online
summary(time_online)
time_online

# Calculate the total time online
sum(time_online)

# Calculate the average time online
mean.difftime(time_online)


# Use as.Date() to convert the astro vector to a vector containing Date 
# objects. You will need the %d, %b and %Y symbols to specify the format. 
# Store the resulting vector as astro_dates.
# 
# Use as.Date() to convert the meteo vector to a vector with Date objects. 
# This time, you will need the %B, %d and %y symbols for the format argument. 
# Store the resulting vector as meteo_dates.
# 
# With a combination of max(), abs() and -, calculate the maximum absolute 
# difference between the astronomical and the meteorological beginnings of 
# a season, i.e. astro_dates and meteo_dates. Simply print this maximum 
# difference to the console output.





# Convert astro to vector of Date objects: astro_dates
astro <- c("20-Mar-2015", "25-Jun-2015" ,"23-Sep-2015" ,"22-Dec-2015")
astro_dates <- as.Date(astro, format = "%d-%b-%Y" )
astro_dates

# Convert meteo to vector of Date objects: meteo_dates
meteo <- c("March 1, 15",  "June 1, 15" ,"September 1, 15",  "December 1, 15" )
meteo_dates <- as.Date(meteo, format = "%B %d, %y")
meteo_dates

# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(diff(astro_dates-meteo_dates)))









