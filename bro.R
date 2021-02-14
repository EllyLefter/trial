rownames=c("urban","rural")
colnames=c("<3 km(within reach)",">3km(far reach)")
c<-matrix(c(2701,2862,982,2483),
          nrow = 2,
          byrow = T,
          dimnames = list(rownames, colnames))
c
chisq.test(c)


#stacked bar plot
library(tidyverse)
data(mtcars)
attach(mtcars)
my_tab<- table(cyl)
my_tab

barplot(my_tab, main = "Absolute frequency",
        col=rainbow(4))


barp<-barplot(my_tab, col=rainbow(4), ylim = c(0, 15))
text(barp, my_tab + 0.5 , labels = my_tab)


barplot(my_tab,
        main = "Ellys Custom bar tab",
        xlab = "No of cylinders",
        ylab = "frequency",
        border="pink",
        col = c("skyblue", "green", "orange"))
