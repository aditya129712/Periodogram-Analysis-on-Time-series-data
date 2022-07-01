#For calculating  , we use the following R programming 
y=c(106.7,107.5,107.6,107.6,110.4,108.6,106.6,102.4,98.8,96.8,97.3,91.5,91.7,85.7,83.8,76.4,73.2,70.1,80.1,86.6,90.9,91.5,92.7,96.0,101.9,112.0,126.3,137.3,138.9,129.2,120.4,111.8,108.9,109.6,110.8,111.0,106.0,102.7,101.6,101.5,99.2,97.8,96.0,96.9,100.2)
y
a0=mean(y)
a0
m=mat.or.vec(45,1)
n=mat.or.vec(45,1)
#3#
for(i in 1:45){
  m[i]=y[i]*cos((2*pi*i)/3)
  n[i]=y[i]*sin((2*pi*i)/3)}
a3=(2/45)*sum(m)
a3
b3=(2/45)*sum(n)
b3
i3=(45/2)*((a3^2)+(b3^2))
i3
#4#
for(i in 1:45){
  m[i]=y[i]*cos((2*pi*i)/4)
  n[i]=y[i]*sin((2*pi*i)/4)}
a4=(2/45)*sum(m)
a4
b4=(2/45)*sum(n)
b4
i4=(45/2)*((a4^2)+(b4^2))
i4
#5#
for(i in 1:45){
  m[i]=y[i]*cos((2*pi*i)/5)
  n[i]=y[i]*sin((2*pi*i)/5)}
a5=(2/45)*sum(m)
a5
b5=(2/45)*sum(n)
b5
i5=(45/2)*((a5^2)+(b5^2))
i5
#10#
for(i in 1:45){
  m[i]=y[i]*cos((2*pi*i)/10)
  n[i]=y[i]*sin((2*pi*i)/10)}
a10=(2/45)*sum(m)
a10
b10=(2/45)*sum(n)
b10
i10=(45/2)*((a10^2)+(b10^2))
i10

#12#
for(i in 1:45){
  m[i]=y[i]*cos((2*pi*i)/12)
  n[i]=y[i]*sin((2*pi*i)/12)}
a12=(2/45)*sum(m)
a12
b12=(2/45)*sum(n)
b12
i12=(45/2)*((a12^2)+(b12^2))
i12
#15#
for(i in 1:45){
  m[i]=y[i]*cos((2*pi*i)/15)
  n[i]=y[i]*sin((2*pi*i)/15)}
a15=(2/45)*sum(m)
a15
b15=(2/45)*sum(n)
b15
i15=(45/2)*((a15^2)+(b15^2))
i15
mu=c(3,4,5,10,12,15)
i_mu=c(i3,i4,i5,i10,i12,i15)
i_mu
plot(mu,i_mu,type="o",
     col="blue",
     xlab="Trial  period ----- >",
     ylab="Indicator  function ----- >",
     main="Periodogram",
     col.main="red",
     lwd=2)
grid()
