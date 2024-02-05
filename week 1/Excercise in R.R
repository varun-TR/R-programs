########### Example 1 ##################

#Write functions to evaluate following mathematical formulas
#a) y = 5e^(-x)
#b) z = sqrt(x^2+y^2)

######## Example 2 #####################

# a) Read in the "Cereal" dataset, look at the first few rows with head and 
#inspect the data types of the variables in the dataframe with str 

data = read.csv('/Users/trsaivarun/Desktop/R programs/week 1/Cereals.csv')
head(data) 
str(data)

# b) Add a new variable to the dataset called ’totalcarb’, 
#which is the sum of ’carbo’ and ’sugars'

data['Totalcarbs'] = data['carbo']+data['sugars']
data

# c) How many cereals in the dataframe are ’hot’ cereals? 

table(data$Cold.or.Hot == 'H')


#or

hot_cereals=subset(data,Cold.or.Hot == "H")

hot_cereals
nrow(hot_cereals)

# d) How many unique suppliers are included in the dataset?

length(table(data$Supplier))


# e) Take a subset of the dataframe with only the
# supplier ’K’ (Kellogg’s)

s_k = subset(data,Supplier == 'K')
s_k



# f) Take a subset of the dataframe of all cereals that
#have less than 80 calories, 
#AND have more than 20 units of vitamins.

data1 = subset(data,calories<80 & vitamins>20)
data1

# g) Take a subset of the dataframe containing cereals that 
#contain at least 1 unit of sugar, 
#and keep only the variables ’Cereal.name’, 
#’calories’ and ’calories’. 

data2= subset(data,sugars >= 1 , select = c("Cereal.name","calories","vitamins"))
data2




table(is.na(data))

data=na.omit(data)

data
#Then inspect the first few rows of the dataframe with head.



# h) For one the above subset, write to a new CSV file

write.csv(data,'/Users/trsaivarun/Desktop/R programs/week 1/Cereals_pure.csv', row.names = F)

# i) Rename the column ’Supplier’ to ’Producer’
names(data)[names(data)=="Supplier"] = "Producer"
data
# j)  change hot.or cold into a factor variable

names(data)[names(data)=="factors"] = "Cold.or.Hot"

data$Producer = factor(data$Producer)
str(data)

data$factor = factor(data$factor)
str(data)

names(data)[names(data)=="factor"] = "Cold.or.Hot"
str(data)
