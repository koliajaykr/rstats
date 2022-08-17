# Exploratory data analysis ####

library(tidyverse) # call r package

jigsaw <- read_csv("data/jigsaw.csv",
                   col_types = cols(Sex = col_factor(),
                                    Employee = col_factor(),
                                    Job_Type = col_factor(),
                                    ID = col_integer()))

jigsaw

head(jigsaw)

tail(jigsaw)

glimpse(jigsaw)

summary(jigsaw)

library(summarytools)

freq(jigsaw)

attach(jigsaw)

ctable(Job_Type, Sex)

plot(Job_Type)

names(jigsaw)

hist(Footspeed)

hist(Strength)

hist(Vision)

#if not already installed then remove # from the below code and run it
#install.packages("tidyverse")

data() # to access data sets available with R

? # to get help
  
dim() # to get the number of rows (sample size) and columns (total variables)

str() # to see a rough structure (number of rows, columns, types of variables) of the data set

glimpse() # a function from {tidyverse}, it is better than str()

View() # it opens your data as a new tab within the rstudio

head() # to see the top five rows of your data

tail() # to see the bottom five rows of your data

#$ # to access a specific variable use dollar sign like this data$variable
  
attach()  # once we attach data then call data variable just by name without $ 

names() # name of all the variables in your data

# three important information about a variable

  length() # the total number of values/scores in a specific variable
  
  class() # the level of measurement of the variable
  
  unique() # a list of all unique scores
  
  table() # frequency distribution
  
  sort() # order of the frequency distribution
  
  summary() # descriptive statistics
  
  boxplot() # graphical freq distribution
  
  hist() # graphical frequency distribution
    
# Descriptive Statistics #####
  
# r pkg to measure mode
library(modeest)

  #the mode
  mlv() #using method "mfv" 
  
  # the mean and median
  library(pastecs)
  stat.desc()
  round() #to round the decimal places
  
  # the fit of the mean variance
  # mean and standard deviation values
  
  # inter-quantile-range
  quantile()
  IQR()
  
  # another R pkg to skim each variable 
  library(skimr)
  skim()
  
  # another r pkg for descriptive statistics
  library(summarytools)
  
  freq() #for frequencies tables
  # report.nas = FALSE to remove NAs
  
  ctable() #for cross-tabulations of pair of nominal variable
  
  descr() #for descriptive statistics
  
  dfSummary() #for dataframe summaries
  
  ## descriptive stats using r pkg psych
  library(psych)
  describe()
  describeBy()
  
  ## freq distribution using graphs
  
  # boxplot
  # diamond prices across the cut
  
  #scatterplot
  # need two quan variables
  
  #qqplot
  qqnorm()
  qqline()
  
  # inspect factor
  library(inspectdf)
  inspect_types(jigsaw) |> 
    show_plot()#types of the variables
  
  inspect_cat(jigsaw) |> 
    show_plot()
  # factor variable freq
  inspect_num() # numeric variable
  inspect_na() # missing values
  
  show_plot()
  
  # a few plots
  diamonds |> 
    ggplot(aes(x = carat,
               y = price,
               color = cut)) +
    geom_point()
  
  diamonds |> 
    ggplot(aes(price,
               fill = cut)) +
    geom_histogram()
  
  ## boxplots
  diamonds |> 
    ggplot(aes(cut, price)) +
    geom_boxplot(fill = "red",
                 alpha = 0.5) +
    geom_jitter(color="blue",
                alpha = 0.2,
                size = 0.4)
  
  ## violin plot
  diamonds |> 
    ggplot(aes(cut, price, fill = cut)) +
    geom_violin(
                 alpha = 0.5)+
    geom_boxplot(width=0.1)
  
  
  
  
