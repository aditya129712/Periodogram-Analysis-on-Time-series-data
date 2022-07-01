#For calculating  and evaluating the ANOVA, we use the following R-program:
  y=c(200,208,208,204,204,207,207,204,202,199,201,198,200,202,203,205,207,211,204,206,203,203,201,198,200,206,207,206,200,203,203,200,200,195,202,204)
  a0=mean(y)
  a0
  m=mat.or.vec(36,1)
  n=mat.or.vec(36,1)
  #36#
  for(i in 1:36){
    m[i]=y[i]*cos((2*pi*i)/36)
    n[i]=y[i]*sin((2*pi*i)/36)}
  a36=(2/36)*sum(m)
  a36
  b36=(2/36)*sum(n)
  b36
  i_36=(36/2)*((a36^2)+(b36^2))
  i_36
  #18#
  for(i in 1:36){
    m[i]=y[i]*cos((2*pi*i)/18)
    n[i]=y[i]*sin((2*pi*i)/18)}
  a18=(2/36)*sum(m)
  a18
  b18=(2/36)*sum(n)
  b18
  i_18=(36/2)*((a18^2)+(b18^2))
  i_18
  #12#
  for(i in 1:36){
    m[i]=y[i]*cos((2*pi*i)/12)
    n[i]=y[i]*sin((2*pi*i)/12)}
  a12=(2/36)*sum(m)
  a12
  b12=(2/36)*sum(n)
  b12
  i_12=(36/2)*((a12^2)+(b12^2))
  i_12
  #9#
  for(i in 1:36){
    m[i]=y[i]*cos((2*pi*i)/9)
    n[i]=y[i]*sin((2*pi*i)/9)}
  a9=(2/36)*sum(m)
  a9
  b9=(2/36)*sum(n)
  b9
  i_9=(36/2)*((a9^2)+(b9^2))
  i_9
  #36/5#
  for(i in 1:36){
    m[i]=y[i]*cos((2*pi*i)/(36/5))
    n[i]=y[i]*sin((2*pi*i)/(36/5))}
  a365=(2/36)*sum(m)
  a365
  b365=(2/36)*sum(n)
  b365
  i_36_5=(36/2)*((a365^2)+(b365^2))
  i_36_5
  #6#
  for(i in 1:36){
    m[i]=y[i]*cos((2*pi*i)/6)
    n[i]=y[i]*sin((2*pi*i)/6)}
  a6=(2/36)*sum(m)
  a6
  b6=(2/36)*sum(n)
  b6
  i_6=(36/2)*((a6^2)+(b6^2))
  i_6
  mu=c(36,18,12,9,36/5,6)
  i_mu=c(i_36,i_18,i_12,i_9,i_36_5,i_6)
  i_mu
  plot(mu,i_mu,type="o",
       col="blue",
       xlab="Trial  period ----- >",
       ylab="Indicator  function ----- >",
       main="Periodogram",
       col.main="red",
       lwd=2)
  grid()
  tss=sum((y-a0)^2)
  tss
  ms=i_mu/2
  ms
  ess=tss-sum(i_mu)
  ess
  mse=ess/23
  mse
  obs_f=ms/mse
  obs_f
  tab_f=qf(1-0.05,2,23,0)
  tab_f
  