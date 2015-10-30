

sla<-scale(la)
sma<-scale(ma)

ret<-fastdist(sla,sma)

len<-length(sla)

quan<-quantile(ret,0.02)

densi<-NULL

for(i in 1:len){
  
  if(i==len){
    ret1<-NULL;
  }else{
    ret1<-ret[(i+1):(len),i]
  }
  if(i==1){
    ret2<-NULL
  }else{
    ret2<-ret[i,1:(i-1)]
  }
  
  retx<-append(ret1,ret2,length(ret1))
  
  densi<-append(densi,length(retx[retx<quan]),length(densi))
  
}

oden<-order(densi,decreasing = TRUE)


