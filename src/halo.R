
h<-rep(0,len)

for(i in 1:len){
  if(densi[i]<upden[cls[i]]){
    h[i]=1
  }
}

