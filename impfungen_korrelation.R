library(readxl)
impfungen_korrelation <- read_excel("Data/impfungen_korrelation.xlsx")

(cor(impfungen_korrelation$Impfungen,impfungen_korrelation$Covid))^2
