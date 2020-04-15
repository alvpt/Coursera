##corr <- function(directory, threshold = 0){
    ## 'directory' is a character vector of length 1 indcating
    ## the location of the CSV files
  
    ## 'threshold'is a numeric vector oflength 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0.
  
    ## Return a numeric vector of correlations 
    ## NOTE: Do not round the result
##}

v_cor = vector()
threshold =150

## 1º. Determinar los archivos que cumplen el treshold.

allfiles = complete(getwd(), id=1:332)

v = allfiles$nobs

v_th = which(v>=threshold)

print(v_th)



## 2º. Extraer de cada archivo las filas completas.

l = length(v_th)
v_th_for = 1:l



for(i in v_th_for){
  
  #Create string of the file to be read.
  if (v_th[i] <  10){
    
    file = paste("00",v_th[i],".csv", sep = "")
    
  } else if ((v_th[i] >=  10) & (v_th[i] <  100)){
    
    file = paste("0",v_th[i],".csv", sep = "")
    
  } else {
    
    file = paste(v_th[i],".csv", sep = "")
    
  }
  
  monitor <- read.table(file, sep=",", header = T)#All the rows
  compare_list = vector()
  
  date <- monitor[["Date"]] #Column associated to the Data
  date_good <- complete.cases(date)
  
  sulfate <- monitor[["sulfate"]] #Column associated to the sulfate
  sulfate_good <- complete.cases(sulfate) #Logic vector which determines Valid and Na values.
  sulfate = sulfate[sulfate_good]
  
  nitrate <- monitor[["nitrate"]] #Column associated to the nitrate
  nitrate_good <- complete.cases(nitrate)
  nitrate = nitrate[nitrate_good]
  
  id_c <- monitor[["ID"]] #Column associated to the ID
  id_good <- complete.cases(id_c)
  
  k=0
  l_monitor = length(date_good)
  
  v_compare = vector()
  
  for(j in 1:l_monitor){
    if(date_good[j]==T && sulfate_good[j]==T && nitrate_good[j]==T && id_good[j]==T){
      v_compare[j] = 1
    }    
    else{
      v_compare[j] = 0
    }
    
  }
  
  w = which(v_compare==1)
  

## 3º. Crear dos vectores: 1 para sufate, y otro para nitrate

sulf = vector()
nitr = vector()
l_ns_for = length(sulfate)


for(n in 1:l_ns_for){
  sulf=c(sulf,sulfate[n])
  nitr=c(nitr,nitrate[n])
}



v_cor = c(v_cor,cor(sulf,nitr, method="pearson"))
my_data=cbind(nitr,sulf)

}


print(head(v_cor))

## 4º. Añadir el resultado de la correlación a otro vector.