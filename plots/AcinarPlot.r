Data<-read.csv("AcinusExtractionDataFileWithoutOutliers.csv",head=TRUE,sep=";")
summary(Data)
 
quantile(Data$D4,na.rm=TRUE)
quantile(Data$D10,na.rm=TRUE)
quantile(Data$D21,na.rm=TRUE)
quantile(Data$D36,na.rm=TRUE)
quantile(Data$D60,na.rm=TRUE)

boxplot(Data)

## save to TikZ-Graphics, ready for LaTeX
# require(tikzDevice)
# tikz('BoxPlotAcini.tex', standAlone = TRUE, width=5, height=5)
# boxplot(Data)
# devv.off()

## ANOVA (without knowing what I do...)
# fit <- aov(Data$D4 ~ Data$D10)
# plot(fit)

## T-Test (the same results as =ttest(d4,d10,2,3) in Excel)
t.test(Data$D4,Data$D10)
t.test(Data$D4,Data$D21)
t.test(Data$D4,Data$D36)
t.test(Data$D4,Data$D60)

t.test(Data$D10,Data$D21)
t.test(Data$D10,Data$D36)
t.test(Data$D10,Data$D60)

t.test(Data$D21,Data$D36)
t.test(Data$D21,Data$D60)

t.test(Data$D36,Data$D60)
