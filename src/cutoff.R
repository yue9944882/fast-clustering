
cutoff<-function(ll){
  vec<-ll$vec;
  quan<-ll$quan;
  densi<-length(vec[vec<quan])
}

minus_scan<-function(vec){
  vec[vec==0]<-(-1)
  return(vec)  
}
