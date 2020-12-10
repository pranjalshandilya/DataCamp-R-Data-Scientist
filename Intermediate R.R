
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



## Loops 
#-----------------------------------------------------------------------

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



