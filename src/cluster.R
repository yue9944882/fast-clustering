

cls<-rep(0,len)

gamma<-rep(0,len)

for(i in 1:len){
  gamma[i]<-densi[i]*ix[i]
}


og<-order(gamma,decreasing = TRUE)

for(i in 1:5){
  pos<-og[i]
  cls[pos]<-i
}


           
for(i in 1:len){
  if(cls[oden[i]]==0){
    tmp<-n[oden[i]]
    cls[oden[i]]=cls[n[oden[i]]]
  }
}














