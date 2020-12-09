library(data.table)
set.seed(1L)

## Create a data table
DT <- data.table(V1 = rep(c(1L, 2L), 5)[-10],
                 V2 = 1:9,
                 V3 = c(0.5, 1.0, 1.5),
                 V4 = rep(LETTERS[1:3], 3))

class(DT)
DT
DT[3:4,]
DT[3:4] # same
DF[3:4,]
slice(DF, 3:4) # same
#Discard rows using negative indices
DT[!3:7,]
DT[-(3:7)] # same
DF[-(3:7),]
slice(DF, -(3:7)) # same

#Filter rows using a logical expression
DT[V2 > 5]
DT[V4 %chin% c("A", "C")] # fast %in% for character
filter(DF, V2 > 5)
filter(DF, V4 %in% c("A", "C"))