
ix<-rep(0,len)
n<-rep(0,len)

dmax<-max(ret)

for(i in 2:len){
  
  ix[oden[i]]<-dmax+0.00000001
  
  for(j in 1:(i-1)){
    
    
    oi<-oden[i]
    oj<-oden[j]
    
    if(oi<oj){
      tmp<-oi
      oi<-oj
      oj<-tmp
    }
    
    dist<-ret[oi,oj]
    
    
    if(dist<ix[oden[i]]){
      ix[oden[i]]<-dist
      n[oden[i]]<-oden[j]
    }
     
  }
}

ix[oden[1]]=max(ix)






