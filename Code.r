# Libraries
library(dyplr)
library(ggplot2)
# Read data
dados <- read.delim("Files/german.data", header = FALSE, sep = "")

# Definingo features e target
X <- dados[,1:20]
y <- dados[,21]

# Estruturando variáveis categóricas
cat <- c("V1", "V3", "V4", "V6", "V7", "V9", "V10", "V12", "V14", "V15", "V17", "V19", "V20")
X[,cat] <- lapply(X[,cat], factor)
str(X)
dim(X)
dim(y)
