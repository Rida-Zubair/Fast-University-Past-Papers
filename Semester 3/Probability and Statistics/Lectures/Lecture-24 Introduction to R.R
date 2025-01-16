
## Basics of R ################################################################################
##(R AS CACLULATOR) ###########################################################################
#Addition
2+3
#subtraction
2-3
#Multiplication
2*3
#Division
2/3
#Power
2^3
#All in One
2+3;2-3;2*3;2/3
#Logarithm
log(10) ## means natural logarithm
log10(5) ## base 10 log
#antilog
exp(1)
#Squareroot
sqrt(9)
#factorial
factorial(3)
#rounding off
round(5.2)
round(5.7)
round(5.5)
round(6.5)

#ASSGNMENT OPERATORS ##########################################################################
x<-2 # which assigns 2 to x
x
x=2  # which assigns 2 to x
x
x+2
x-5
sqrt(x)
y=2*x
y
# Character Data
x <- "data"
x
# To find the length of a character
nchar(x)
nchar("hello")
nchar(3)
nchar(452)
## SEQUENCES ##################################################################################
x=seq(1:10)
x
x=seq(0,5,0.5)
x
x=seq(1,100,length=20)
x
#Generating Sequence of equal length
x<-seq(min(x),max(x),(max(x)-min(x))/100)
x
# finding specific number on a certain position 
x=seq(1,100,length=5)
x
x[3]
x[3:4]
x[2:4]

## VECTORS ####################################################################################
# Creating Vectors
x=c(2,4,6,8,10)
x
y=(1:5)    ## alternative way
y
x[1]       # Position of a an Element
x[1:2]     # For Consecutive Elements
x[c(1, 4)] # For Non-Consecutive Elements

# Character Vectors
x=c("Islamabad", "Lahore", "Karachi")
x
## Remove Elements from Numeric Vector
x <- c(1, 2, 2, 2, 3, 4, 5, 5, 7, 7, 8, 9, 12, 12, 13)
x
x=x[! x %in% 13] # remove 13 a single value
x
x <- x[! x %in% c(1, 4, 5)] # remove 1, 4, and 5
x
x <- x[! x %in% 2:10] # remove values between 2 and 10
x
x <- x[!(x < 3 | x > 10)]
x
## Remove Elements from Character Vector 
x <- c('Mavs', 'Nets', 'Hawks', 'Bucks', 'Spurs', 'Suns')
x
x=x[! x %in% "Suns"] # remove Suns a single value
x
x <- x[! x %in% c('Mavs', 'Spurs')] #remove 'Mavs' and 'Spurs' from vector
x
## Operations on vector ######################################################################
x <- c(1, 2, 2, 2, 3, 4, 5, 5, 7, 7, 8, 9, 12, 12, 13)
x
sqrt(x)
x^2
x^4
x*x
y=x^2
y
z=x+y
Z
y
x
x+y
z=x+y
z
x<5
x>3
## Operations on a vector
x<-c(1,32,73,44,5,61,55,100,20,81)
x
y=c(21:30)
length(y)
length(x)
max(x) ##maximum value inx
min(x) ##minimum value inx
sum(x) ##total of all the values in x
mean(x) ##arithmetic average of the values inx
median(x) ##median value inx
range(x) ##vector of minxand maxx
var(x) ##sample variance ofx
sort(x) ##a sorted version of x
summary(x)

## TYPE OF DATA ###############################################################################
#The type of data contained in a variable is checked with the class function
class(x)
x=c(1:5)
x
y=c(.2,0.5,0.8)
y
z=c("red","blue","green")
z
class(x)
class(y)
class(z)

## DATA FRAMES #################################################################################
Students=c("Ahmad", "Sana", "Ali", "Noor", "Ayesha","Imran", "Omer", "Saba","Zain","Zoha")
Students
Gender=c("M", "F", "M", "F", "F","M", "M", "F","M","F")
Ethnicity=c("Punjab", "KPK", "Sindh", "ICT", "ICT","Balochistan", "Punjab", "Punjab","ICT","KPK")
Statistics=c(55,58,61,62,65,70, 72,76,80,83)
Statistics
Mathematics=c(60,65,68,70,73, 75,78, 82,85,90)
Mathematics
MDF=data.frame(Students, Gender,Ethnicity, Statistics, Mathematics)
MDF
nrow(MDF)
ncol(MDF)
dim(MDF)
names(MDF)
names(MDF)[3]
rownames(MDF)
head(MDF)
tail(MDF)

## DATA VISUALIZATION ###########################################################################
## Bar Chart ####################################################################################

## Bar Chart for Gender ##
Gender=c("M", "F", "M", "F", "F","M", "M", "F","M","F")
x<- c(5,5)
x
N <- c("M","F")
N
# Bar chart Command
barplot(x,names.arg=N,xlab="GENDER",ylab="Number Of Students",col="green",main="BAR CHART FOR GENDER",border="red")

## Bar Chart for Ethnicity ##
Ethnicity=c("Punjab", "KPK", "Sindh", "ICT", "ICT","Balochistan", "Punjab", "Punjab","ICT","KPK")
x<- c(2,3,1,1,3)
x
N <- c("KPK","Punjab", "Sindh","Balochistan","ICT")
N
# Barchart Command
barplot(x,names.arg=N,xlab="Provinces",ylab="Number Of Students",col="green",main="BAR CHART FOR ETHNICITY",border="red")

## Pie Chart ###################################################################################

## Pie Chart for Gender ##
Gender=c("M", "F", "M", "F", "F","M", "M", "F","M","F")
x<- c(5,5)
x
labels <- c("M","F")
labels
piepercent<- round(100*x/sum(x), 1)
piepercent
# Plot the chart.
pie(x, labels = piepercent, main = "Pie Chart for Gender",col = rainbow(length(x)))
legend("topright", c("M","F","Mumbai"), cex = 0.8,fill = rainbow(length(x)))

## Pie Chart for Ethnicity ##
Ethnicity=c("Punjab", "KPK", "Sindh", "ICT", "ICT","Balochistan", "Punjab", "Punjab","ICT","KPK")
x<- c(2,3,1,1,3)
x
labels <- c("KPK","Punjab", "Sindh","Balochistan","ICT")
labels
piepercent<- round(100*x/sum(x), 1)
piepercent
# Plot the chart.
pie(x, labels = piepercent, main = "Pie Chart for Ethnicity",col = rainbow(length(x)))
legend("topright", c("KPK","Punjab", "Sindh","Balochistan","Mumbai"), cex = 0.8,fill = rainbow(length(x)))

## Box Plot ###################################################################################################
## Box Plot for Statistics #####
Statistics=c(55,58,61,62,65,70, 72,76,80,83)
boxplot(Statistics, main="Box and Whisker Plot", xlab="Marks in Statistics", col="red", pch=20, horizontal = TRUE)
## Box Plot for Mathematics #####
Mathematics=c(60,65,68,70,73, 75,78, 82,85,90)
boxplot(Mathematics, main="Box and Whisker Plot", xlab="Marks in Mathematics", col="yellow", pch=20, horizontal = TRUE)

## Multiple Boxplots in Same Plot ##
Statistics=c(55,58,61,62,65,70, 72,76,80,83)
Mathematics=c(60,65,68,70,73, 75,78, 82,85,90)
MD=data.frame(Statistics, Mathematics)
MD
boxplot(MD, main="Box and Whisker Plot",xlab="Marks", ylab="Subjects", col=c("red","yellow","yellow"), pch=20, horizontal = TRUE)

## SCATTER PLOT ################################################################################
Statistics=c(55,58,61,62,65,70, 72,76,80,83)
Mathematics=c(60,65,68,70,73, 75,78, 82,85,90)
SD=data.frame(Statistics,Mathematics)
SD
# Scatter Plot Command
plot(Statistics ~ Mathematics,
     data = SD,
     main = "Scatterplot of Marks in Mathematics and Statistics",
     col = "red",
     xlab = "Marks in Mathematics",
     ylab = "Marks in Statistics",
     pch=16)

## Regression Analysis #
#Simple Linear Regression Model
#y=price of house, x1=number of bedrooms, x2=number of baths
x1=c(3,2,4,2,3,2,5,4)
x2=c(2,1,3,1,2,2,3,2)
y=c(292000, 264600, 317500, 265500, 302000, 275500, 333000, 307500)
LDF=data.frame(y,x1,x2)
LDF

# SLRM using Price of house and number of bedrooms
#Correlation Coefficient
cor(y,x1)

#SLRM
lm(y~x1,data=LDF)
slrm<-lm(y~x1, data=LDF)
slrm$fitted.values
summary(slrm)
## Predict ##
predict(slrm,list(x1=11))
slrm$fitted.values
slrm$fitted.values
slrm$residuals
## SLRM Scatter Plot with Regression Line ############################################################################################
plot(y ~ x1,
     data =LDF,
     main = "Scatterplot of House Price and Number of Bedrooms",
     col = "blue",
     xlab = "Number of Bedrooms",
     ylab = "Price of a House",pch=16)
abline(slrm,col = "red", lwd=3)

# SLRM using Price of house and number of baths
#Correlation Coefficient
cor(y,x2)

#SLRM
lm(y~x2,data=LDF)
slrm<-lm(y~x1, data=LDF)
slrm
summary(slrm)
## Predict ##
predict(slrm,list(x2=9))

# Scatter Plot with Regression Line
plot(y ~ x2,
     data =LDF,
     main = "Scatterplot of House Price and Number of Baths",
     col = "blue",
     xlab = "Number of Baths",
     ylab = "Price of a House",pch=16)
abline(slrm,col = "red", lwd=3)

#Multiple Linear Regression Model
x1=c(3,2,4,2,3,2,5,4)
x2=c(2,1,3,1,2,2,3,2)
y=c(292000, 264600, 317500, 265500, 302000, 275500, 333000, 307500)
length(x1)
length(x2)
length(y)

#Scatter Plots
pairs(LDF)

# Correlation Matrix
# Instal Library datarium
library(datarium)
cor(LDF)

#MLRM
MLRM=lm(y~x1+x2)
MLRM
summary(MLRM)
## Predict ##
predict(MLRM,list(x1=3, x2=2))


