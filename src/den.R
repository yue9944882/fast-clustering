

upden<-rep(0,len)

for(i in 1:(len-1)){
  for(j in (i+1):len){
    
    if(cls[i]!=cls[j] && ret[j,i]<quan){
      
      avgr=0.5*(densi[i]+densi[j])
      if(avgr>upden[cls[i]])upden[cls[i]]=avgr
      if(avgr>upden[cls[j]])upden[cls[j]]=avgr
      
    }
    
  }
}


