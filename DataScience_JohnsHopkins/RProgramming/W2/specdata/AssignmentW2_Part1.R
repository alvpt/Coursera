pollutantmean <- function(directory,  pollutant, id = 1:332){
  ## 'directory' is a character vector of length 1 indicating 
  ## the location of the CSV files

  ##'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate"

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!


  setwd(directory)

  column_final = vector()
  column = "sulfate"
  l = length(id)
  id_for = 1:l
  
  
  for(i in id_for){
    
  
    #Create string of the file to be read.
    if (id[i] <  10){
        
          file = paste("00",id[i],".csv", sep = "")
          print(file)
          
          monitor <- read.table(file, sep=",", header = T) #All the rows
          column <- monitor[[pollutant]] #Column associated to the pollutant
          column_good <- complete.cases(column) #Logic vector which determines Valid and Na values.
          column = column[column_good] #Final vector with correct values
          column_final = c(column_final,column)
          
      } else if ((id[i] >=  10) & (id[i] <  100)){
        
          file = paste("0",id[i],".csv", sep = "")
          print(file)
          
          monitor <- read.table(file, sep=",", header = T) #All the rows
          column <- monitor[[pollutant]] #Column associated to the pollutant
          column_good <- complete.cases(column) #Logic vector which determines Valid and Na values.
          column = column[column_good] #Final vector with correct values
          column_final = c(column_final,column)
          
      } else {
        
          file = paste(id[i],".csv", sep = "")
          print(file)
          
          monitor <- read.table(file, sep=",", header = T) #All the rows
          column <- monitor[[pollutant]] #Column associated to the pollutant
          column_good <- complete.cases(column) #Logic vector which determines Valid and Na values.
          column = column[column_good] #Final vector with correct values
          column_final = c(column_final,column)
          
      }
  }  
  
  
  
  print(mean(column_final))
  
}  
  

  