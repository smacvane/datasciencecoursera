## set directory
setwd("C:/Users/smacvane/OneDrive/R/Coursera/datasciencecoursera")
dataset <- read.csv("hw1_data.csv")

## column names
names(dataset)
colnames(dataset)
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day" 

## Extract the first 2 rows of the data frame and print them to the console
print(dataset[1:2, ])

## How many observations (i.e. rows) are in this data frame?
nrow(dataset)

## Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
print(dataset[152:153, ])

##What is the value of Ozone in the 47th row?
print(dataset[47, 1]) ## print(dataset[47, ]) or print(dataset[47, "Ozone"]) also would work

##How many missing values are in the Ozone column of this data frame
miss <- is.na(dataset[, "Ozone"])  ## A vector of TRUE/FALSE
sum(miss)

## What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
use <- !is.na(dataset[, "Ozone"])  ## Find non-missing values
mean(dataset[use, "Ozone"])

##Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
newdataset <- dataset[ which(dataset$Ozone > 31 & dataset$Temp > 90), ]
mean(newdataset$Solar.R)
##What is the mean of "Temp" when "Month" is equal to 6? 
newdataset2 <- subset(dataset, Month == 6)
mean(newdataset2$Temp)
##What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
newdataset3 <- subset(dataset, Month == 5)
max(newdataset3$Ozone, na.rm = TRUE)