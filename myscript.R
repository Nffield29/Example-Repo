plot(example_data$xdata, example_data$ydata, col="orange")

p1 = 1
p2 = 0.2
#do the fit
fit = nls(ydata ~ p1*cos(p2*xdata) + p2*sin(p1*xdata), data = example_data, start = list(p1=p1, p2=p2))
#plot the fitted line
new = data.frame(xdata = seq(min(example_data$xdata), max(example_data$xdata), len=200))
lines(new$xdata, predict(fit,newdata=new), col="orange")
