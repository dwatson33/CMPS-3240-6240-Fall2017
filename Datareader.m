%DataReader

X=xlsread('tweetsx');
Y=xlsread('tweetsy');

xdata := X
ydata := Y
b := plot::Scatterplot(xdata, ydata):
plot(b)