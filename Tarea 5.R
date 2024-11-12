install.packages("rpart")
install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

hogar <- read.csv('C:/Users/jerdu/Downloads/db_csv_/db_csv_/HOGAR_BDP.csv', sep = ',')


arbol4 <- rpart(AREA ~
                  DEPARTAMENTO+
                  PCH1+
                  PCH3+
                  PCH5,
                data = hogar, method = "class")


rpart.plot(arbol4, type=2, extra=0, under = TRUE, fallen.leaves = TRUE, box.palette = "BuGn", 
           main ="Predicción de area", cex = 0.5)


H <- data.frame(
  DEPARTAMENTO = c(20),
  PCH1 = c(5),
  PCH3 = c(2),
  PCH5 = c(4)
)

result <- predict(arbol4, H, type="class");
result;