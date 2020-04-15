complete <- function(directory, id = 1:332){
  ## 'directory' is a character vector of length 1 incdicating
  ## the location of the CSV files
  
  #'id' is an integer vector inicating the monitor ID numbers
  #'## to be used
  #'
  #'## Return a dta frame of the form:
  #'#id nobs
  #'## 1 117
  #'##2 1041
  #'##...
  #'##where 'id' is the ID number anf 'nob' is the
  #'## numbe of complete cases

  
  l = length(id)
  id_for = 1:l
  
  result_id = vector()
  result_nobs = vector()
  
  
  
  for(i in id_for){
  
     #Create string of the file to be read.
    if (id[i] <  10){
      
      file = paste("00",id[i],".csv", sep = "")
      
    } else if ((id[i] >=  10) & (id[i] <  100)){
      
      file = paste("0",id[i],".csv", sep = "")
      
    } else {
      
      file = paste(id[i],".csv", sep = "")
     
    }
    
    monitor <- read.table(file, sep=",", header = T)#All the rows
    compare_list = vector()
    
    date <- monitor[["Date"]] #Column associated to the Data
    date_good <- complete.cases(date)
    
    sulfate <- monitor[["sulfate"]] #Column associated to the sulfate
    sulfate_good <- complete.cases(sulfate) #Logic vector which determines Valid and Na values.
    
    nitrate <- monitor[["nitrate"]] #Column associated to the nitrate
    nitrate_good <- complete.cases(nitrate)
    
    id_c <- monitor[["ID"]] #Column associated to the ID
    id_good <- complete.cases(id_c)
    
    k=0
    l_monitor = length(date_good)
    
    for(j in 1:l_monitor){
        if(date_good[j]==T && sulfate_good[j]==T && nitrate_good[j]==T && id_good[j]==T){
          k = k+1
        }
     
    }
    
    
    result_id = c(result_id, i)
    result_nobs = c(result_nobs, k)
  
  }
  result <- data.frame(id = result_id, nobs = result_nobs)
  
  result

}

