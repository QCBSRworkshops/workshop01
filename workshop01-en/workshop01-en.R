## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  comment = "#",
  collapse = TRUE,
  warning = FALSE,
  message = FALSE,
  cache = TRUE, # turn into FALSE before pushing
  fig.width=5, fig.height=5, fig.retina=3,
  fig.align = 'center'
)
options(repos=structure(c(CRAN="http://cran.r-project.org")))

if (!require("waffle")) install.packages("waffle")
if (!require("ggpubr")) install.packages("ggpubr")

library(waffle)
library(ggpubr)


## ----echo = FALSE, results = "asis"-------------------------------------------
qcbsRworkshops::get_badges(workshop_id = 1, style = "for-the-badge", clip = FALSE)


## ---- echo = FALSE------------------------------------------------------------
library(DiagrammeR)
  grViz("
      digraph {

      node [shape = oval, fillcolor = PaleTurquoise]
      'Data \n (Excel, SQL)'; Graphs; Tables; Statistics

      node [shape = box]
      Sigmaplot; Excel; SAS

      ##add arrows
      edge [arrowhead = none]
      'Data \n (Excel, SQL)' -> Sigmaplot; 'Data \n (Excel, SQL)' -> Excel; 'Data \n (Excel, SQL)' -> SAS; Graphs -> Word; Tables -> Word; Statistics -> Word;  Graphs -> Powerpoint; Tables -> Powerpoint; Statistics -> Powerpoint

      edge [arrowhead = normal]
      Sigmaplot -> Graphs; Excel -> Tables; SAS -> Statistics; Word -> Report; Powerpoint -> Report

      }")



## ---- echo = FALSE------------------------------------------------------------
library(DiagrammeR)
  grViz("
      digraph {

      node [shape = oval, fillcolor = PaleTurquoise]
      'Data \n (Excel, SQL)'; Graphs; Tables; Statistics

      node [shape = box]
      Sigmaplot; Excel; SAS

      ##add arrows
      edge [arrowhead = none]
      'Data \n (Excel, SQL)' -> Sigmaplot; 'Data \n (Excel, SQL)' -> Excel; 'Data \n (Excel, SQL)' -> SAS; Graphs -> Word; Tables -> Word; Statistics -> Word;  Graphs -> Powerpoint; Tables -> Powerpoint; Statistics -> Powerpoint

      edge [arrowhead = normal]
      Sigmaplot -> Graphs; Excel -> Tables; SAS -> Statistics; Word -> Report; Powerpoint -> Report

      }")



## ---- echo = FALSE------------------------------------------------------------
grViz("
      digraph {

      node [shape = oval, fillcolor = PaleTurquoise]
      'Data \n (Excel, SQL)'; Graphs; Tables; Statistics

      node [shape = box]
      R

      ##add arrows
      edge [arrowhead = none]
      'Data \n (Excel, SQL)' -> R;

      edge [arrowhead = normal]
      R -> Graphs; R -> Tables; R -> Statistics; Graphs -> Report; Tables -> Report; Statistics -> Report; R -> Report

      }")



## ---- echo = FALSE,   fig.width=10, fig.height=6------------------------------
# Data from https://gist.github.com/daroczig/3cf06d6db4be2bbe3368#file-results-csv

# Load the data 
pkgs  = read.csv(file = "../data/results.csv")

# Load ggplot 
library(ggplot2)

# Graph 
ggplot(pkgs, aes(as.Date(first_release), index)) +
    geom_line(size = 2) +
    scale_x_date(date_breaks = '1 year', date_labels = '%Y') +
    scale_y_continuous(breaks = seq(0, 16000, 1000)) +
    xlab('') + ylab('') + theme_bw() +
    ggtitle('Number of R packages published on CRAN') + 
  theme(axis.ticks = element_line(colour = "black"), 
    panel.grid.minor = element_line(linetype = "blank"), 
    plot.title = element_text(size = 25, face = "bold"),
    axis.text = element_text(size = 18, colour = "black", vjust = 0), 
    axis.text.x = element_text(size = 18, colour = "black", vjust = 0.5, angle = 90), 
    axis.text.y = element_text(size = 18, vjust = 0.5, colour = "black"), 
    panel.background = element_rect(fill = NA)) +
  labs(x = NULL, y = NULL)


## ---- include = FALSE---------------------------------------------------------
output <- "This is the output"


## -----------------------------------------------------------------------------
output


## ---- echo = TRUE-------------------------------------------------------------
seq(1, 100, by = 2)


## ----error=TRUE, message=TRUE, warning=TRUE-----------------------------------
x <- c("2", -3, "end", 0, 4, 0.2)
as.numeric(x)


## ---- error = TRUE------------------------------------------------------------
x*10


## -----------------------------------------------------------------------------
1 + 1

10 - 1


## -----------------------------------------------------------------------------
2 * 2

8 / 2


## -----------------------------------------------------------------------------
2^3


## -----------------------------------------------------------------------------
2 + 16 * 24 - 56


## -----------------------------------------------------------------------------
2 + 16 * 24 - 56 / (2 + 1) - 457


## ----echo = FALSE, fig.height = 4, fig.width = 4------------------------------
radius <- 1
theta <- seq(0, 2 * pi, length = 200)

par(pty="s") # create a square plot instead of a rectangle

# Plot canvas
plot(c(-1, 1), c(-1, 1), 
     type = "n", ann = F, axes = F, asp = 0,
     title = NULL,
     xaxs="i", yaxs =  "i") #remove padding

# Add circle
lines(x = radius * cos(theta), 
      y = radius * sin(theta), lwd =4)
arrows(0, 0, x1 = 1, length = 0, lwd = 4, col = "red")

# Center of the circle 
points(0,0, pch = 20)

# Add text to indicate the radius 
text(x = 0.05, y = .2, "radius = 5 cm", cex = 1.5)


## ----echo = FALSE, fig.height = 4, fig.width = 4------------------------------
radius <- 1
theta <- seq(0, 2 * pi, length = 200)

par(pty="s") # create a square plot instead of a rectangle

# Plot canvas
plot(c(-1, 1), c(-1, 1), 
     type = "n", ann = F, axes = F, asp = 0,
     title = NULL,
     xaxs="i", yaxs =  "i") #remove padding

# Add circle
lines(x = radius * cos(theta), 
      y = radius * sin(theta), lwd =4)
arrows(0, 0, x1 = 1, length = 0, lwd = 4, col = "red")

# Center of the circle 
points(0,0, pch = 20)

# Add text to indicate the radius 
text(x = 0.05, y = .2, "radius = 5 cm", cex = 1.5)


## -----------------------------------------------------------------------------
3.1416 * 5^2


## -----------------------------------------------------------------------------
pi * 5^2


## ---- eval = TRUE, echo = TRUE------------------------------------------------
money_talks <- "ACDC"
money_talks


## ---- eval = TRUE, echo = TRUE------------------------------------------------
9 -> my_birthday_month
my_birthday_month


## -----------------------------------------------------------------------------
mean_x <- (2 + 6) / 2

mean_x


## -----------------------------------------------------------------------------
meanx<-(2+6)/2
meanx


## ---- eval = FALSE------------------------------------------------------------
## Error: unexpected symbol in "your object name"


## -----------------------------------------------------------------------------
euler_value <- 1 + 1.718282

euler_value


## -----------------------------------------------------------------------------
(x <- 1.1)
typeof(x)


## -----------------------------------------------------------------------------
(y <- 2L)
typeof(y)


## -----------------------------------------------------------------------------
z <- "You are becoming very good in this!"
typeof(z)


## -----------------------------------------------------------------------------
t <- TRUE
typeof(t)


## -----------------------------------------------------------------------------
f <- FALSE
typeof(f)


## -----------------------------------------------------------------------------
x <- 1.1
x


## -----------------------------------------------------------------------------
euler_value <- 1 + 1.718282
euler_value


## -----------------------------------------------------------------------------
a <- 100
b <- 3 / 100
c <- (a + b) / b


## -----------------------------------------------------------------------------
d <- "species"
e <- "genus"
f <- "When is the next pause again?"


## ----echo = FALSE-------------------------------------------------------------
library(waffle)
library(ggpubr)

scalar.parts <- c('TRUE' = 1, 'FALSE' = 19)

scalar.waffle <- waffle(scalar.parts, 
                        rows = 4, 
                        colors = c("black", "white"),
                        legend_pos = "none",
                        title = "Scalar")

vector.parts <- c('TRUE' = 4, 'FALSE' = 16)

vector.waffle <- waffle(vector.parts, 
            rows = 4, 
            colors = c("black", "white"),
            legend_pos = "none",
            title = "Vector")

ggarrange(
  scalar.waffle, vector.waffle,
  ncol = 2, nrow = 1
)


## ---- eval = FALSE------------------------------------------------------------
## vector <- c(value1, value2, ...)


## -----------------------------------------------------------------------------
num_vector <- c(1, 4, 32, -76, -4)
num_vector


## -----------------------------------------------------------------------------
char_vector <- c("blue", 
                 "red", 
                 "green")
char_vector


## -----------------------------------------------------------------------------
bool_vector <- c(TRUE, TRUE, FALSE) # or c(T, T, F)
bool_vector


## -----------------------------------------------------------------------------
1:8


## -----------------------------------------------------------------------------
7.5:1.5


## -----------------------------------------------------------------------------
seq(from = 1, to = 10, by = 2)


## -----------------------------------------------------------------------------
seq(from = 20, to = 2, by = -2)


## -----------------------------------------------------------------------------
rep(x = 1:3, each = 2, times = 2)


## -----------------------------------------------------------------------------
rep(x = c(1, 2), each = 3)


## -----------------------------------------------------------------------------
odd_n <- c(1, 3, 5, 7, 9)


## -----------------------------------------------------------------------------
odd_n <- seq(from = 1, to = 9, by = 2)

odd_n


## -----------------------------------------------------------------------------
dput(odd_n)


## -----------------------------------------------------------------------------
x <- c(1:5)
y <- 6


## ---- echo = TRUE-------------------------------------------------------------
x + y


## ---- echo = TRUE-------------------------------------------------------------
x * y


## ----echo = FALSE-------------------------------------------------------------
library(waffle)
library(ggpubr)

scalar.parts <- c('TRUE' = 1, 'FALSE' = 19)

scalar.waffle <- waffle(scalar.parts, 
                        rows = 4, 
                        colors = c("black", "white"),
                        legend_pos = "none",
                        title = "Scalar")

vector.parts <- c('TRUE' = 4, 'FALSE' = 16)

vector.waffle <- waffle(vector.parts, 
            rows = 4, 
            colors = c("black", "white"),
            legend_pos = "none",
            title = "Vector")

matrix.parts <- c('TRUE' = 16, 'FALSE' = 4)

matrix.waffle <- waffle(matrix.parts, 
            rows = 4, 
            colors = c("black", "white"),
            legend_pos = "none",
            title = "Matrix")

ggarrange(
  scalar.waffle, vector.waffle, matrix.waffle,  
  ncol = 3,
  nrow = 1
)


## -----------------------------------------------------------------------------
matrix(data = 1:10,
       nrow = 5,
       ncol = 2)


## -----------------------------------------------------------------------------
matrix(data = 1:10,
       nrow = 2,
       ncol = 5)


## -----------------------------------------------------------------------------
nickname <- c("kat", "gab", "lo")
animal <- c("dog", "mouse", "cat")


## -----------------------------------------------------------------------------
rbind(nickname, 
      animal)


## -----------------------------------------------------------------------------
cbind(nickname, animal)


## -----------------------------------------------------------------------------
(mat_1 <- matrix(data = 1:9,
       nrow = 3,
       ncol = 3))


## -----------------------------------------------------------------------------
(mat_2 <- matrix(data = 9:1,
       nrow = 3,
       ncol = 3))


## -----------------------------------------------------------------------------
mat_1 * mat_2


## -----------------------------------------------------------------------------
(step_1 <- matrix(data = 1:6,
       nrow = 2,
       ncol = 3))


## -----------------------------------------------------------------------------
(step_2 <- matrix(
  data = c("cheetah", 
           "tiger", 
           "ladybug",
           "deer",
           "monkey",
           "crocodile"),
  nrow = 2,
  ncol = 3))


## -----------------------------------------------------------------------------
step_1


## -----------------------------------------------------------------------------
step_2


## -----------------------------------------------------------------------------
step_3 <- cbind(c(2:5), 
                c("linley", 
                  "jessica", 
                  "joe",
                  "emma"))


## -----------------------------------------------------------------------------
step_3


## ----echo = FALSE-------------------------------------------------------------
library(waffle)
library(ggpubr)

scalar.parts <- c('TRUE' = 1, 'FALSE' = 19)

scalar.waffle <- waffle(scalar.parts, 
                        rows = 4, 
                        colors = c("black", "white"),
                        legend_pos = "none",
                        title = "Scalar")

vector.parts <- c('TRUE' = 4, 'FALSE' = 16)

vector.waffle <- waffle(vector.parts, 
            rows = 4, 
            colors = c("black", "white"),
            legend_pos = "none",
            title = "Vector")

matrix.parts <- c('TRUE' = 16, 'FALSE' = 4)

matrix.waffle <- waffle(matrix.parts, 
            rows = 4, 
            colors = c("black", "white"),
            legend_pos = "none",
            title = "Matrix")

data.frame.parts <- c('blue' = 4, 'red' = 4, 'purple' = 4, 'green' = 4, 'yellow' = 4)

data.frame.waffle <- waffle(data.frame.parts, 
            rows = 4, 
            colors = c("blue", "red", "purple", "red", "blue"),
            legend_pos = "none",
            title = "Data frame")

ggarrange(
  scalar.waffle, vector.waffle, matrix.waffle, data.frame.waffle, 
  ncol = 4,
  nrow = 1
)


## -----------------------------------------------------------------------------
site_id <- c("A1.01", "A1.02", "B1.01", "B1.02")
soil_pH <- c(5.6, 7.3, 4.1, 6.0)
num_sp <- c(17, 23, 15, 7)
fertilised <- c("yes", "yes", "no", "no")


## -----------------------------------------------------------------------------
soil_fertilisation_data <- data.frame(site_id, soil_pH, num_sp, fertilised)


## -----------------------------------------------------------------------------
soil_fertilisation_data


## ----comment = NA, eval = FALSE-----------------------------------------------
dput(soil_fertilisation_data)


## ----eval = FALSE-------------------------------------------------------------
## structure(list(site_id = c("A1.01", "A1.02", "B1.01", "B1.02"
## ), soil_pH = c(5.6, 7.3, 4.1, 6), num_sp = c(17, 23, 15, 7),
## treatment = c("Fert", "Fert", "No_fert", "No_fert")),
## class = "data.frame", row.names = c(NA, -4L))


## -----------------------------------------------------------------------------
structure(list(site_id = c("A1.01", "A1.02", "B1.01", "B1.02"
), soil_pH = c(5.6, 7.3, 4.1, 6), num_sp = c(17, 23, 15, 7), 
treatment = c("Fert", "Fert", "No_fert", "No_fert")), 
class = "data.frame", row.names = c(NA, -4L))


## -----------------------------------------------------------------------------
(odd_n <- seq(1,9, by = 2))


## -----------------------------------------------------------------------------
odd_n[2]


## -----------------------------------------------------------------------------
odd_n[c(2, 4)]


## -----------------------------------------------------------------------------
odd_n[-c(1, 2)]


## -----------------------------------------------------------------------------
odd_n[-4]


## -----------------------------------------------------------------------------
num_vector <- c(1, 4, 3, 98, 32, -76, -4)


## -----------------------------------------------------------------------------
num_vector[4]


## -----------------------------------------------------------------------------
num_vector[c(1, 3)]


## -----------------------------------------------------------------------------
num_vector[c(-2, -4)]


## -----------------------------------------------------------------------------
num_vector[6:10]


## -----------------------------------------------------------------------------
soil_fertilisation_data


## -----------------------------------------------------------------------------
soil_fertilisation_data[ , c("site_id", "soil_pH")]


## -----------------------------------------------------------------------------
soil_fertilisation_data$site_id


## -----------------------------------------------------------------------------
odd_n[odd_n > 4]


## -----------------------------------------------------------------------------
char_vector <- c("blue", "red", "green")


## -----------------------------------------------------------------------------
char_vector[char_vector == "blue"]


## -----------------------------------------------------------------------------
char_vector
is.numeric(char_vector)


## -----------------------------------------------------------------------------
odd_n
is.numeric(odd_n)


## -----------------------------------------------------------------------------
char_vector
is.character(char_vector)


## -----------------------------------------------------------------------------
odd_n
is.character(odd_n)


## -----------------------------------------------------------------------------
char_vector
is.vector(char_vector)


## ---- eval = FALSE------------------------------------------------------------
## char_vector == "blue"
## 
## char_vector[char_vector == "blue"]


## -----------------------------------------------------------------------------
char_vector == "blue"


## -----------------------------------------------------------------------------
char_vector[char_vector == "blue"]


## -----------------------------------------------------------------------------
soil_fertilisation_data$num_sp * num_vector[c(1:4)]


## -----------------------------------------------------------------------------
soil_fertilisation_data[, 3] * num_vector[c(1:4)]


## -----------------------------------------------------------------------------
(soil_fertilisation_data$num_sp * num_vector[c(1:4)]) > 25


## ---- eval = FALSE------------------------------------------------------------
## function_name(argument1 = value, argument2 = value, ..., argument4 = value)


## -----------------------------------------------------------------------------
a <- 3
b <- 5

sum(a, b)


## -----------------------------------------------------------------------------
mean(soil_fertilisation_data$num_sp)


## -----------------------------------------------------------------------------
a <- c(1:5)
b <- 2

result_add <- a + b

result_sum <- sum(a, b)


## -----------------------------------------------------------------------------
result_add

result_sum

sum(result_sum, 5)


## ----eval = FALSE-------------------------------------------------------------
## matrix(data, nrow, ncol)


## -----------------------------------------------------------------------------
matrix(data = 1:12, nrow = 3, ncol = 4)


## -----------------------------------------------------------------------------
matrix(data = 1:12, 3, 4)


## -----------------------------------------------------------------------------
matrix(1:12, 4, 3)


## ---- eval = FALSE------------------------------------------------------------
## a <- 1:100
## b <- a^2
## 
## plot(a, b, type = "l")
## plot(b, a, type = "l")
## plot(x = a, y = b, type = "l")
## plot(y = b, x = a, type = "l")


## ---- echo = F, fig.height=7,fig.width=9--------------------------------------
a <- 1:100
b <- a^2
par(mfrow = c(2, 2), mar = c(4, 4, 1, 1))
plot(a, b, type = "l")
plot(b, a, type = "l")
plot(x = a, y = b, type = "l")
plot(y = b, x = a, type = "l")


## ----eval=F-------------------------------------------------------------------
## plot(a, b, type = "l")


## ---- echo = FALSE, fig.width = 3.6, fig.height = 3.6-------------------------
par(mar = c(4, 4, 1, 1))
plot(a, b, type = "l")


## ----eval = FALSE-------------------------------------------------------------
## plot(b, a, type = "l")


## ---- echo = FALSE, fig.width = 3.6, fig.height = 3.6-------------------------
par(mar = c(4, 4, 1, 1))
plot(b, a, type = "l")


## ----eval = FALSE-------------------------------------------------------------
## plot(x = a, y = b, type = "l")


## ---- echo = FALSE, fig.width = 3.6, fig.height = 3.6-------------------------
par(mar = c(4, 4, 1, 1))
plot(x = a, y = b, type = "l")


## ----eval = FALSE-------------------------------------------------------------
## plot(y = b, x = a, type = "l")


## ---- echo = FALSE, fig.width = 3.6, fig.height = 3.6-------------------------
par(mar = c(4, 4, 1, 1))
plot(y = b, x = a, type = "l")


## ---- eval = FALSE------------------------------------------------------------
## install.packages("ggplot2")


## ---- eval = FALSE------------------------------------------------------------
## Installing package into '/home/labo/R/x86_64-redhat-linux-gnu-library/3.3'
## (as 'lib' is unspecified)


## ---- eval = FALSE, echo = FALSE----------------------------------------------
## library(ggplot2)


## ---- eval = FALSE------------------------------------------------------------
## qplot(1:10, 1:10)


## ---- eval = FALSE------------------------------------------------------------
## ## Error: could not find function "qplot"


## -----------------------------------------------------------------------------
library(ggplot2)


## ---- fig.width = 4, fig.height = 4-------------------------------------------
qplot(1:10, 1:10)


## ---- eval = FALSE------------------------------------------------------------
## ??sequence


## ---- eval = FALSE------------------------------------------------------------
##   ?seq


## ----class = "fragment"-------------------------------------------------------
seq(from = 0, to = 10, by = 2)


## ----class = "fragment"-------------------------------------------------------
seq(0, 10, 2)


## ----class = "fragment"-------------------------------------------------------
numbers <- c(2, 4, 22, 6, 26)
sort(numbers, decreasing = TRUE)

