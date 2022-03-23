##Section: 01-preparing-for-the-workshop.R 

###Notice ###
#                                                                            #
#This is an automatically generated script based on the code chunks from the #
#book for this workshop.                                                     #
#                                                                            #
#It is minimally annotated to allow participants to provide their comments:  #
#a practice that we highly encourage.                                        #
#                                                                            #
#Note that the solutions to the challenges are also included in this script. #
#When solving the challenges by yourself, attempt to not scroll and peek at  #
#the solutions.                                                              #
#                                                                            #
#Happy coding!                                                               #



##Section: 02-introduction.R 

output <- "This is the output"
output

[1] 1 2 3 4 5
[6] 6 7 8 9 10

x <- c("2", -3, "end", 0, 4, 0.2)
as.numeric(x)

x*10


##Section: 03-r-as-calculator.R 

1+1

10-1

2*2

8/2

2^3

2 + 16 * 24 - 56

2 + 16 * 24 - 56 / (2 + 1) - 457

3.1416 *5^2

pi * 5^2


##Section: 04-manipulate-objects.R 

# Let's create an object called mean_x.
# The # symbol is used in R to indicate comments. It is not processed by R.
# It is important to add comments to code so that it can be understood and used by other people.
mean_x <- (2 + 6) / 2
# Typing its name will return its value.
mean_x

y <- x = 5
y = x <- 5
y
x

euler_value <- 1 + 1.718282

euler_value

(x <- 1.1)
typeof(x)

(y <- 2L)
typeof(y)

z <- "You are becoming very good in this!"
typeof(z)

t <- TRUE
typeof(t)

f<- FALSE
typeof(f)

#Examples of scalars
a <- 100
b <- 3/100
c <- (a+b)/b
d <- "species"
e <- "genus"

# Create a numeric vector with the c (which means combine or concatenate) function.
# We will learn about functions soon!
num_vector <- c(1, 4, 3, 98, 32, -76, -4)

# Create a character vector. Always use "" to delimit text strings!
char_vector <- c("blue", "red", "green")

# Create a logical or boolean vector. Don't use "" or R will consider this as text strings.
bool_vector <- c(TRUE, TRUE, FALSE)

#It is also possible to use abbreviations for logical vectors.
bool_vector2 <- c(T, T, F)

1:8

7.5:1.5

seq(from = 1, to = 10, by = 2)

seq(from = 20, to = 2, by = -2)

rep(x = 1:3, each = 2, times = 2)

rep(x = c(1,2), each = 3)

odd_n <- c(1, 3, 5, 7, 9)

odd_n <- seq(from = 1, to = 9, by = 2)
odd_n


odd_n <- c(1, 3, 5, 7, 9)
odd_n

dput(odd_n)
# The output can be copied-pasted to create a new object by using the structure() function
structure(c(1, 3, 5, 7, 9))

# Create two numeric vectors.
x <- c(1:5)
y <- 6
# Remember that the : symbol, when used with numbers, is the sequence operator.
# It tells R to create a series of numbers increasing by 1.
# c(1:5) or 1:5 is equivalent to x <- c(1,2,3,4,5)

# Let's sum both vectors.
# 6 is added to all elements of the x vector.
x + y

# Let's multiply x by y
x * y


matrix(data = 1:10,
       nrow = 5,
       ncol = 2)

matrix(data = 1:10, 
       nrow = 2, 
       ncol = 5)

nickname <- c("kat", "gab", "lo")
animal <- c("dog", "mouse", "cat")

rbind(nickname, animal)

cbind(nickname, animal)

(mat_1 <- matrix(data = 1:9,
                 nrow = 3,
                 ncol = 3))
(mat_2 <- matrix(data = 9:1,
                 nrow = 3,
                 ncol = 3))

# The product of the matrices is:
mat_1 * mat_2

#Step 1:
(step_1 <- matrix(data = 1:6, nrow = 2, ncol = 3))

#Step 2
(step_2 <- matrix(data = c("cheetah",
                           "tiger",
                           "ladybug",
                           "deer",
                           "monkey",
                           "crocodile"),
                  nrow = 2,
                  ncol = 3))

#Step 3
step_3 <- cbind(c(2:5),
                c("linley",
                  "jessica",
                  "joe",
                  "emma"))

# We first start by creating vectors.
site_id <- c("A1.01", "A1.02", "B1.01", "B1.02") #identifies the sampling site
soil_pH <- c(5.6, 7.3, 4.1, 6.0) #soil pH
num_sp <- c(17, 23, 15, 7) #number of species
fertilised <- c("yes", "yes", "no", "no") #identifies the treatment applied

# We then combine them to create a data frame with the data.frame function.
soil_fertilisation_data <- data.frame(site_id, soil_pH, num_sp, fertilised)

# Visualise it!
soil_fertilisation_data

dput(soil_fertilisation_data)

# It's possible to rebuild the initial data frame (with some associated metadata as the class of variables) by copying and pasting the previous output:
structure(list(site_id = c("A1.01", "A1.02", "B1.01", "B1.02"
), soil_pH = c(5.6, 7.3, 4.1, 6), num_sp = c(17, 23, 15, 7),
treatment = c("Fert", "Fert", "No_fert", "No_fert")),
class = "data.frame", row.names = c(NA, -4L))

# Let's first create a numeric and a character vector.
# There is no need to do this again if you already did it in the previous exercise!
odd_n <- c(1, 3, 5, 7, 9)

# To obtain the value in the second position, we do as follows:
odd_n[2]


# We can also obtain values for multiple positions within a vector with c()
odd_n[c(2, 4)]

# We can remove values pertaining to particular positions from a vector using the minus (-) sign before the position value
odd_n[c(-1, -2)]

odd_n[-4]

# If you select a position that is not in the numeric vector
odd_n[c(1,6)]

# You can use logical statement to select values.
odd_n[odd_n > 4]

# Extract all elements of the character vector corresponding exactly to "blue".
char_vector[char_vector == "blue"]
# Note the use of the double equal sign ==.


num_vector <- c(1, 4, 3, 98, 32, -76, -4)

num_vector[4]


num_vector[c(1, 3)]

num_vector[c(-2, -4)]

num_vector[6:10]


# Let's reuse the data frame we created earlier (soil_fertilisation_data)
# Extract the 1st row of the data frame
soil_fertilisation_data[1, ]

# Extract the 3rd columm
soil_fertilisation_data[, 3]

# Extract the 2nd element of the 4th column
soil_fertilisation_data[2, 4]

# Extract lines 2 to 4
soil_fertilisation_data[2:4]

#Remember that our soil_fertilisation_data data frame had column names?
soil_fertilisation_data

#We can subset columns using column names:
soil_fertilisation_data[ , c("site_id", "soil_pH")]

# And, also subset columns from it using "$"
soil_fertilisation_data$site_id

# First, let's create two vectors for comparison.
x2 <- c(1:5)
y2 <- c(1, 2, -7, 4, 5)

# Let's verify if the elements in x2 are greater or equal to 3.
# R returns a TRUE/FALSE value for each element (in order).
x2 >= 3

# Let's see if the elements of x2 are exactly equal to those of y2.
x2 == y2

# Is 3 not equal to 4? Of course!
3 != 4

# Let's see which values in x2 are greater than 2 but smaller than 5.

x2 > 2 & x2 < 5
# You have to write x2 twice.
# If you write x2 > 2 & < 5, you will get an error message.


odd_n[odd_n >4]

char_vector <- c("blue", "red", "green")
char_vector[char_vector == "blue"]


char_vector
is.numeric(char_vector)

odd_n
is.numeric(odd_n)


char_vector
is.character(char_vector)

odd_n
is.character(odd_n)

char_vector

is.vector(char_vector)

char_vector == "blue"

char_vector[char_vector == "blue"]

char_vector == "blue"

char_vector[char_vector == "blue"]

soil_fertilisation_data$num.sp * num_vector[c(1:4)]
# or
soil_fertilisation_data[, 3] * num_vector[c(1:4)]


(soil_fertilisation_data$num_sp * num_vector[c(1:4)]) > 25


##Section: 05-functions.R 

sum(1, 2)

a <- 3
b <- 5
sum(a, b)

a <- 1:5

b <- 2

result_add <- a + b

result_sum <- sum(a,b)

result_add

result_sum

sum(result_sum, 5)

log(8, base = 2)

log(8, 2)
log(2, 8)

log(x = 8, base = 2)
log(base = 2, x = 8)

a <- 1:100
b <- a^2
plot(a, b)
plot(b, a)
plot(x = a, y = b)
plot(y = b, x = a)

a <- 1:100
b <- a^2

plot(a, b)

plot(b, a)

plot(x = a, y = b)

plot(y = b, x = a)


##Section: 06-packages.R 

install.packages("ggplot2")

qplot(1:10, 1:10)

library("ggplot2")
qplot(1:10, 1:10)

library("ggplot2")
qplot(1:10, 1:10)

detach(package:ggplot2)

??sequence

?seq

seq(from = 0, to = 10, by = 2)

seq(0, 10, 2)

numbers <- c(2, 4, 22, 6, 26)
sort(numbers, decreasing = TRUE)


##Section: 07-final-considerations.R 




##Section: 08-references.R 




