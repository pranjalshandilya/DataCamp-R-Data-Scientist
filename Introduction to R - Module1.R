# Q1

mat = matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
mat
colMeans(mat)


# Q2-3

mat1 = matrix(list('x','y','z',
                   47,'A',34,
                   13,'B',50,
                   5,'C',22,
                   46,'D',42), nrow =5, ncol = 3, byrow = T)
mat1

mat2 = data.frame(mat1)

mat2

class(mat2)

mat2[,3]

# Q4 

fri = c(9, 36, 2, 29, 44)
fri[3]

# Q5

mat4 = matrix(c(2,4,8,4,8,4), nrow = 3, ncol = 2)
mat4

mat4 + 2



# Q6

x = c('red', 'green', 'green','red', 'red' )
y = factor(x)
summary(y)


# Q7

q = c(47,24,18,33,31,15)
q[c(2,3,5)]


# Q8

item = c('A','B','B','A','B')
cost = c(50,46,28,38,20) 
profit = c(15,5,10,12,5)
sold_out = c(FALSE,TRUE,FALSE,FALSE,TRUE)


df = data.frame(item,cost,profit,sold_out)
df

df1 = subset(df, profit>12)
df1



# Q9

x = c(17,37,12,48,19)
y = c('A','B','C','D','E')
z = c('sep', 'jul', 'jun', 'feb', 'mar')
df = data.frame(x,y,z)
df
df[1:3, 1:2]


# Q10

x = c(5,4,24,2)
y = c('Aug', 'Sep', 'Oct','Nov')
names(x) = y

?names
y
x[c('Oct', 'Nov')]











