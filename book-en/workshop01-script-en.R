##Section: 01-preparing-for-the-workshop.R 




##Section: 02-introduction.R 

> output
[1] "This is the output"

[1] 1 2 3 4 5
[6] 6 7 8 9 10


##Section: 03-r-as-calculator.R 

2 + 16 * 24 - 56

2 + 16 * 24 - 56 / (2 + 1) - 457


##Section: 04-manipulate-objects.R 

# Let's create an object called mean_x.
# The # symbol is used in R to indicate comments. It is not processed by R.
# It is important to add comments to code so that it can be understood and used by other people.
mean_x <- (2 + 6) / 2
# Typing its name will return its value.
> mean_x
[1]  4

> y <- x = 5
Error in y <- x = 5 : object 'y' not found
> y = x <- 5
> y
[1] 5
> x
[1] 5


> euler_value <- 1 + 1.718282

# Create a numeric vector with the c (which means combine or concatenate) function.
# We will learn about functions soon!
> num_vector <- c(1, 4, 3, 98, 32, -76, -4)

# Create a character vector. Always use "" to delimit text strings!
> char_vector <- c("blue", "red", "green")

# Create a logical or boolean vector. Don't use "" or R will consider this as text strings.
> bool_vector <- c(TRUE, TRUE, FALSE)

#It is also possible to use abbreviations for logical vectors.
> bool_vector2 <- c(T, T, F)

> odd_n <- c(1, 3, 5, 7, 9)

> odd_n <- c(1, 3, 5, 7, 9)
> odd_n
[1] 1 3 5 7 9

> dput(odd_n)
c(1, 3, 5, 7, 9)

# The output can be copied-pasted to create a new object by using the structure() function
> structure(c(1, 3, 5, 7, 9))

# Create two numeric vectors.
> x <- 1:5

# An equivalent form is: x <- c(1:5).
> y <- 6
# Remember that the : symbol, when used with numbers, is the sequence operator.
# It tells R to create a series of numbers increasing by 1.
# Equivalent to this is x <- c(1,2,3,4,5)

# Let's sum both vectors.
# 6 is added to all elements of the x vector.
> x + y
[1]  7 8 9 10 11

# Let's multiply x by itself.
> x * y
[1]  6 12 18 24 30


# We first start by creating vectors.
> site_id <- c("A1.01", "A1.02", "B1.01", "B1.02")
> soil_pH <- c(5.6, 7.3, 4.1, 6.0)
> num_sp <- c(17, 23, 15, 7)
> treatment <- c("Fert", "Fert", "No_fert", "No_fert")

# We then combine them to create a data frame with the data.frame function.
my_df <- data.frame(site_id, soil_pH, num_sp, treatment)

# Visualise it!
my_df

> dput(my_df)
structure(list(site_id = c("A1.01", "A1.02", "B1.01", "B1.02"
), soil_pH = c(5.6, 7.3, 4.1, 6), num_sp = c(17, 23, 15, 7),
treatment = c("Fert", "Fert", "No_fert", "No_fert")),
class = "data.frame", row.names = c(NA, -4L))

# It's possible to rebuild the initial data frame (with some associated metadata as the class of variables) by copying and pasting the previous output:
> structure(list(site_id = c("A1.01", "A1.02", "B1.01", "B1.02"
), soil_pH = c(5.6, 7.3, 4.1, 6), num_sp = c(17, 23, 15, 7),
treatment = c("Fert", "Fert", "No_fert", "No_fert")),
class = "data.frame", row.names = c(NA, -4L))

# Let's first create a numeric and a character vector.
# There is no need to do this again if you already did it in the previous exercise!
> odd_n <- c(1, 3, 5, 7, 9)

# Extract the second element of the numeric vector.
> odd_n[2]
[1]  3

# Extract the second and fourth elements of the numeric vector.
> odd_n[c(2, 4)]
[1]  3 7

# Extract all but the two first elements of the numeric vector.
> odd_n[c(-1, -2)]
[1] 5 7 9

# If you select a position that is not in the numeric vector
> odd_n[c(1,6)]
[1] 1 NA
# There is no sixth value in this vector so R returns a null value (i.e. NA)
# NA stands for 'Not available'.

# You can use logical statement to select values.
> odd_n[odd_n > 4]
[1] 5 7 9

# Extract all elements of the character vector corresponding exactly to "blue".
> char_vecteur[char_vecteur == "blue"]
[1]  "bleu"
# Note the use of the double equal sign ==.


> num_vector[4]
[1] 3

> num_vector[c(1, 3)]
[1] 1  5

> num_vector[c(-2, -4)]
[1] 1  5  6  -2  4

> char_vector == "blue"
> char_vector[char.vector == "blue"]

> char_vector[c(TRUE, FALSE, FALSE)]
[1] "blue"
# We specify which value is true,
# i.e. the value we want R to return (the first one)
# which corresponds to "blue".

# Let's reuse the data frame we created earlier (my_df)
# Extract the 1st row of the data frame
> my_df[1, ]

# Extract the 3rd columm
> my_df[, 3]

# Extract the 2nd element of the 4th column
> my_df[2, 4]

# Extract lines 2 to 4
> my_df[c(2,4), ]

# Extract the "site_id" column by referring directly to its name
# The dollar sign ($) allows such an operation!
> my_df$site_id

# Extract the "site_id" and "soil_pH" variables
> my_df[, c("site_id","soil_pH")]

# First, let's create two vectors for comparison.
> x2 <- c(1:5)
> y2 <- c(1, 2, -7, 4, 5).

# Let's verify if the elements in x2 are greater or equal to 3.
# R returns a TRUE/FALSE value for each element (in order).
> x2 >= 3
[1] FALSE FALSE TRUE TRUE TRUE

# Let's see if the elements of x2 are exactly equal to those of y2.
> x2 == y2
[1] TRUE TRUE FALSE TRUE TRUE

# Is 3 not equal to 4? Of course!
> 3 != 4
[1] TRUE

# Let's see which values in x2 are greater than 2 but smaller than 5.
# You have to write x2 twice.
# If you write x2 > 2 & < 5, you will get an error message.
> x2 > 2 & x2 < 5
[1] FALSE FALSE TRUE TRUE FALSE

> my_df$num.sp * num.vector[c(1:4)]
[1] 17  92  45 686
# or
> my_df[, 3] * num_vector[c(1:4)]
[1]  17  92  45 686


> (my_df$num.sp * num.vector[c(1:4)]) > 25
[1] FALSE TRUE TRUE FALSE


##Section: 05-functions.R 

> sum(1, 2)

> a <- 3
> b <- 5
> sum(a, b)
[1] 8

> a <- 1:5
> b <- 2
> result_add <- a + b
> result_sum <- sum(a, b)

> result_add
[1]  3 4 5 6 7

> result_sum
[1] 17

> sum(result_sum, 5)
[1] 22

log(8, base = 2)

> a <- 1:100
> b <- a^2
> plot(a, b)
> plot(b, a)
> plot(x = a, y = b)
> plot(y = b, x = a)

plot(a, b)

plot(b, a)

plot(x = a, y = b)

plot(y = b, x = a)


##Section: 06-packages.R 

> install.packages("ggplot2")

> qplot(1:10, 1:10)

> library("ggplot2")
> qplot(1:10, 1:10)

> detach(package:ggplot2)

> ??sequence

> ?seq

> seq(from = 0, to = 10, by = 2)
[1] 0 2 4 6 8 10

> seq(0, 10, 2)
[1] 0 2 4 6 8 10

> numbers <- c(2, 4, 22, 6, 26)
> sort(numbers, decreasing = TRUE)
[1]  26 22  6  4  2


##Section: 07-final-considerations.R 




##Section: 08-references.R 




