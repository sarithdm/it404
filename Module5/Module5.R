mydata <- data.frame(c1 = c(1, 2, 3, 4, 5),         
                      c2 = c(6, 7, 8, 9, 10),
                      c3 = c(11, 12, 13, 14, 15))

mydata

mydata$c2

c2

attach(mydata)

library(readr)
UCCar <- read_csv("GitHub/cs466/Module1/data/car.data.csv")

Car <- read.table("GitHub/cs466/Module1/data/car.data.csv",sep=",",header = TRUE)


summary(UCCar)



#Vectors

myvector <- c(1,2,3)

myvector2 <- c(1,2,3,6,7)

myvector[1]

myvector2[3]

sum(myvector)

myvector
addvector <- myvector * 2
addvector

resultvector = myvector+addvector
resultvector


Myvector  <- c("red" ,"yellow" ,"blue")
Myvector

vec

Myvector[2]

X <-c ("red","yellow","blue")
X[2]


vec <- c(1,2,3,4,5,6)
vec + vec


x <- 10

myname <- "sarith"


flag <- TRUE

Flag

flag

myFlag <- FALSE

myFlag

i=10
length(i)

i <- c(1,2,3,4)

length(i)

i <- "yourname"
length(i)


a <- array(1:20)
a
a[1]
a[20]
a[-1]
#5.3 Index matrices
x <- array(1:20, dim=c(4,5))
x
y <- array(21:40, dim=c(4,5))
y
#The array() function

Z <- array(1:24, dim=c(3,4,2))
Z

Z <- array(1:36, dim=c(3,4,3))
Z

Z <- array(1:72, dim=c(3,4,3,2))
Z

Z <- array(1:144, dim=c(3,4,3,2,2))
Z

x <- array(1:60)
x


Z <- array(x, dim=c(5,2,2))
Z

Z <- array(x, dim=c(5,4,2))
Z

A <- array(x, dim=c(5,2,1))
A

B <- array(y, dim=c(5,2,1))
B

A+B
A*B
B+1

A
B
#5.5 The outer product of two arrays
#If a and b are two numeric arrays,
#their outer product is an array whose dimension vector is obtained by concatenating their two
#dimension vectors (order is important), and whose data vector is got by forming all possible
#products of elements of the data vector of a with those of b.
p = c(1,2,3)
q =c(10,20)
pq <- outer(p, q, "*")
pq
qp <- outer(q, p, "*")
qp


a = c(10,100)
b = c(1,2,3,4)
ab <-outer(a,b,"*")
ab
xy <- outer(x, y, "*")
x

#5.7 Matrix facilities

x <- array(1:20, dim=c(4,5))
x
y <- array(21:40, dim=c(4,5))
y
x*y

x %*% y

y <-t(y)
y

#matrix of element by element products a
x * y

x <- array(c(10,20,12,30), dim=c(2,2))
x
y <- array(c(5,7,6,8), dim=c(2,2))
y
x * y

x %*% y
x <- array(1:4, dim=c(2,2))
x
y <- array(10:13, dim=c(2,2))
y

x * y

#matrix product
x %*% y

y <- t(y)

x %*% y


x <- array(1:6, dim=c(2,3))
x
y <- array(10:15, dim=c(2,3))
y

y <- t(y)

x * y

x %*% y


Lst <- list(name="Fred", wife="Mary", no.children=3,
            child.ages=c(4,7,9))

length(Lst)
Lst
Lst$name
Lst$no.children


list.A <- list(name1="Fred")
list.B <- list(name2="John")
#6.2.1 Concatenating lists

list.AB <- c(list.A, list.B)

list.AB$name1
list.AB$name2

#Data frames


mydata <- data.frame(c1 = c(1, 2, 3, 4, 5),         
                     c2 = c(6, 7, 8, 9, 10),
                     c3 = c(11, 12, 13, 14, 15))

mydata


mydata1 <- data.frame(c11 = c(1, 2, 3, 4, 5),         
                      c22 = c(6, 7, 8, 9, 10),
                      c33 = c(11, 12, 13, 14, 15))

mydata1

mydata1$c11

c11

mydata$c1

c1

#The attach function allows to access variables of a data.frame without calling the data.frame.

attach(mydata1)

c22


library(readr)

#Reading data from files
UCCar <- read_csv("GitHub/cs466/Module1/data/car.data.csv")
View(UCCar)
Car <- read.table("GitHub/cs466/Module1/data/car.data.csv",sep=",",header = TRUE)
View(Car)                  

uciCar <- read_csv("GitHub/cs466/Module1/data/car.data.csv")

is.data.frame(uciCar)

sublist <- list(10,20,30)
mylist <- list(20,20,"apple",sublist)
mylist


length(uciCar$buying)

is.vector(uciCar$buying)

lugbootf <-factor(uciCar$lug_boot)
lugbootf

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa",
           "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
           "sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa",
           "sa", "act", "nsw", "vic", "vic", "act")
#Notice that in the case of a character vector, "sorted" means sorted in alphabetical order.
# factor is similarly created using the factor() function:
statef <- factor(state)
statef


summary(protein)

str(protein)


cor(protein$RedMeat,protein$WhiteMeat)
cov(protein$RedMeat,protein$WhiteMeat)
sd(protein$RedMeat)



library(ggplot2)


x <- rnorm(50)
x
y <- x + rnorm(50 , mean=0 , sd=0.5)
y

data <- as.data.frame(cbind(x,y))
data

ggplot(data,aes(x=x,y=y)) +
  geom_point(size=2)

ggplot(protein,aes(x=RedMeat,Fish)) +geom_point(size=2)


#Visualization Before Analysis

data (anscombe)


