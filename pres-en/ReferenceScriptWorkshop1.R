#### QCBS Workshop 1 
#### R reference script 
## November 2020 


# Part 2: Using R as a calculator

## Additions and Subtractions
1 + 1
10 - 1 

## Multiplications and Divisions
2 * 2
8 / 2

## Exponents 
2^3

## Challenge 
# Use R to calculate the following testing question.
2 + 16 * 24 - 56 

## Challenge 
# Use R to calculate the following testing question.
2 + 16 * 24 - 56 / (2 + 1) - 457

## Challenge 
# What is the area of a circle, with a radius of 5cm?
3.1416 * 5^2

# Note that R has some built-in constants such as pi,therefore: 
pi * 5^2


# Part 3: Manipulating Objects in R

# Objects are one of the most useful concepts in R. 
# You can store values as named objects using the assignment operator "<-"
objectName <- "assignedValue" 

## Objects naming: good practices 

# Try to have short and explicit names 
# Adding spaces before the "<-" is recommended 
# When typing the object names, R will return its value 
mean_x <- (2 + 6) / 2
mean_x 

## Challenge
# Create an object with a name (of your choice) that starts with a number. What happens?
4object <- 4  #Error: unexpected symbol in "4object"

# Create an object with a value of 1+1.718282 (Euler's  number) and name it "euler.value"
euler_value <- 1 + 1.718282
euler_value


# Part 3: Manipulating Objects in R - Data types and structure

# Core data types: Numeric (integer and double values), character, logical

## Numeric-type: Integer and double values

# Double values
(x <- 1.1)
typeof(x)

# Integer values
(y <- 2L) #Here the L sets this as an integer
typeof(y)

## Character-type
z <- "You are becoming very good in this!"
typeof(z)

## Logical-type
t <- TRUE
typeof(t)

f <- FALSE
typeof(f)


# Data structures: Scalars, vectors, matrices, data frames

## Scalars

# - An object that has just a single value or unit like a number or 
# - a text string is called a scalar.
# - By creating combinations of scalars, 
# - we can create data with different structures in R

## Vectors

# - A vector object is just a combination of several scalars stored as a single object
# - Like scalars, vectors can be of numeric-, logical-, character-types, 
# - but never a mix of them!

# Creating vectors with  the c() function // c() stands for combine or concatenate 
vector <- c("value1", "value2")

## Numeric vectors 
num_vector <- c(1, 4, 3, 98, 32, -76, -4)
num_vector 

## Character vectors 
char_vector <- c("blue", "red", "green")
char_vector

## Logical vectors 
bool_vector <- c(TRUE, TRUE, FALSE)
bool_vector

bool_vector2 <- c(T, T, F)
bool_vector2

# Creating vectors of sequential values using a:b, seq() and rep()

## a:b
1:8

7.5:1.5

## seq()
seq(from = 1, to = 10, by = 2)

seq(from = 20, to = 2, by = -2)

## rep()
rep(x = 1:3, each = 2, times = 2)

rep(x = c(1, 2), each = 3)

## Challenge
# 1. Create a vector containing the first 5 odd numbers, starting from 1
# 2. Name it odd_n
# 3. You can use any of the previous functions we have previously learned!
odd_n <- c(1, 3, 5, 7, 9)
# or
odd_n <- seq(from = 1, to = 9, by = 2)

## Operations using vectors: what happens when we add and multiply the two objects together?
x <- c(1:5)
y <- 6
x + y
x * y

# Break!!

## Matrices

# - Matrices are nothing but a bunch of vectors stacked together!
# - They have two dimensions, determined by rows and columns.
# - Like vectors and scalars matrices can contain only one type of data

# Creating matrices using: matrix(), cbind(), rbind()

## matrix() 
matrix(data = 1:10,
       nrow = 5,
       ncol = 2)

matrix(data = 1:10,
       nrow = 2,
       ncol = 5)

## rbind()
nickname <- c("kat", "gab", "lo")
animal <- c("dog", "mouse", "cat")
rbind(nickname, 
      animal)

## cbind()
cbind(nickname, animal)

## Operations using matrices:
(mat_1 <- matrix(data = 1:9,
                 nrow = 3,
                 ncol = 3))

(mat_2 <- matrix(data = 9:1,
                 nrow = 3,
                 ncol = 3))

mat_1 * mat_2

## Challenge
# 1. Create an object containing a matrix with 2 rows and 3 columns, with values from 1 to 6, sorted per column.
# 2. Create another object with a matrix with 2 rows and 3 columns, with the names of six animals you like.
# 3. Create a third object with 4 rows and 2 columns:
#  - in the first column, include the numbers from 2 to 5; and,
#  - in the second column, include the first name of participants in this workshop.
# 4. Compare them and tell us what differences have you detected (despite their values).
(step_1 <- matrix(data = 1:6,
                  nrow = 2,
                  ncol = 3))

(step_2 <- matrix(
  data = c("cheetah", 
           "tiger", 
           "ladybug",
           "deer",
           "monkey",
           "crocodile"),
  nrow = 2,
  ncol = 3))

step_3 <- cbind(c(2:5), 
                c("linley", 
                  "jessica", 
                  "joe",
                  "emma"))

## Data frames 

# - Used to store data tables
# - A list of vectors of the same length
# - Columns = variables
# - Rows = observations, sites, cases, replicates, ...
# - Different columns can have different data types or modes (different than matrices!)

## One of the ways of representing this table in R, is to create vectors:
site_id <- c("A1.01", "A1.02", "B1.01", "B1.02")
soil_pH <- c(5.6, 7.3, 4.1, 6.0)
num_sp <- c(17, 23, 15, 7)
fertilised <- c("yes", "yes", "no", "no")

# We then combine them using the data.frame() function 
soil_fertilisation_data <- data.frame(site_id, soil_pH, num_sp, fertilised)


# Part 3: Manipulating Objects in R - Indexing

## Indexing vectors 
# You  can use indexing to chose a particular position, let's start by making a vector.
odd_n <- seq(1,9, by = 2)
# To obtain the second value of our `odd_n` vector
odd_n[2]
# It also work with multiple positions: 
odd_n[c(2, 4)]
# It can be used to remove some values at particular positions 
odd_n[-c(1, 2)]

## Challenge
# Start by making a new vector num_vector
num_vector <- c(1, 4, 3, 98, 32, -76, -4)
# 1. Extract the 4th value of num_vector;
# 2. Extract the 1st and 3rd values;
# 3. Extract all values except for the 2nd and the 4th;
# 4. Extract from the 6th to the 10th value.
num_vector[4]

num_vector[c(1, 3)]

num_vector[c(-2, -4)]

num_vector[6:10]

## Indexing from matrices and data frames

# Subset columns from data frame
soil_fertilisation_data[ , c("site_id", "soil_pH")]

# And, also subset columns from it using $:
soil_fertilisation_data$site_id

## Indexing with logical operators

# Numeric values
odd_n[odd_n > 4]

# Character string
char_vector <- c("blue", "red", "green")
char_vector[char_vector == "blue"]

# Test is values within a vector or a matrix are numeric
char_vector
is.numeric(char_vector)

odd_n
is.numeric(odd_n)

# or whether they are a character type
char_vector
is.character(char_vector)

odd_n
is.character(odd_n)

# or if they are vectors
char_vector
is.vector(char_vector)

## Challenge
# Explore the difference between these two lines of code:
char_vector == "blue"
char_vector[char_vector == "blue"]

## Challenge
# 1. Extract the num_sp column from soil_fertilisation_data and multiply its value by the first four values of num_vec.
# 2. After that, write a statement that checks if the values you obtained are greater than 25.

soil_fertilisation_data$num_sp * num_vector[c(1:4)]
#or
soil_fertilisation_data[, 3] * num_vector[c(1:4)]

soil_fertilisation_data$num_sp * num_vector[c(1:4)] > 25

## Other kinds of data structure: arrays and lists


# Part 3: Manipulating Objects in R -  Built-in functions

## Functions 

# A function is a tool to simplify your life.
# 
# It allows you to quickly execute operations on objects without having to write every mathematical step.
# 
# A function needs entry values called **arguments** (or parameters). It then performs hidden operations using these arguments and gives a **return value**.
# To use (call) a function, the command must be structured properly, following the "grammar rules" of the `R` language: the syntax.
# function_name(argument 1, argument 2)

## Using functions: arguments

# Arguments are **values** and **instructions** the function needs to run.
# Objects storing these values and instructions can be used in functions:

a <- 3
b <- 5
sum(a, b)

mean(soil_fertilisation_data$num_sp)

## Challenge
# 1. Create a vector a that contains all the numbers from 1 to 5.
# 2. Create an object b that has a value of 2.
# 3. Add a and b together using the basic + operator and save the result in an object called result_add.
# 4. Add a and b together using the sum function and save the result in an object called result_sum.
# 5. Are result_add and result_sum different?
# 6. Add 5 to result_sum using the sum() function.

a <- c(1:5)
b <- 2
result_add <- a + b
result_sum <- sum(a, b)

result_add
result_sum
sum(result_sum, 5)

## Arguments

# Arguments each have a **name** that can be provided during a function call.
# If the name is not present, the order of the arguments does matter.
# If the name is present, the order does not matter.

##Challenge
# Plot() is a function that draws a graph of y as a function of x. 
# It requires two arguments names x and y. 
# What are the differences between the following lines?

a <- 1:100
b <- a^2

plot(a, b, type = "l")
plot(b, a, type = "l")
plot(x = a, y = b, type = "l")
plot(y = b, x = a, type = "l")



# Part 4: Installing and using R packages

## Packages 

#To install packages on your computer, use the install.packages() function.
# install.packages("packageName")

#Installing a package is not enough to use it. You need to load it into your workspace 
# Use the library() function 

install.packages("ggplot2")

qplot(1:10, 1:10)

library(ggplot2)

qplot(1:10, 1:10)


## Getting help 
# Searching for functions
# To find a function that does something specific in your installed packages, you can use `??` followed by a search term.
# Let's say we want to create a *sequence* of odd numers between 0 and 10 as we did earlier. We can search in our packages all the functions with the word "sequence" in them:

??sequence 

# OK! SO let's use the seq() function!!
# But wait... how does it work? What arguments does it need?
# To find information about a function in particular, use `?`

?seq

## Challenge
# 1. Create a sequence of even numbers from 0 to 10 using the seq() function.
#  2. Create a unsorted vector of your favourite numbers, then sort your vector in reverse order.
seq(from = 0, to = 10, by = 2)
seq(0, 10, 2)

numbers <- c(2, 4, 22, 6, 26)
sort(numbers, decreasing = T)


## Challenge
# Find the appropriate functions to perform the following operations:
# - Square root
# - Calculate the mean of numbers
# - Combine two data frames by columns
# - List availables objects in your workspace

?sqrt 
?mean
?cbind
?ls 

## Some useful R websites

# - http://stats.stackexchange.com
# - https://www.zoology.ubc.ca/~schulter/R/
# - http://statmethods.net/
# - http://rseek.org/
# - http://cookbook-r.com/
# - http://cran.r-project.org/doc/contrib/Baggott-refcard-v2.pdf


## Thank you for attending!
########################### END OF SCRIPT ################################
