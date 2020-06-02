setwd("D:/Sistema/Escritorio/cuadrados")

library(semPLS)

modelo_estructural <-as.matrix(read.csv(paste0("D:/Sistema/Escritorio/cuadrados/","Modelo_Estructural.csv")))
modelo_error_de_medicion <-as.matrix(read.csv(paste0("D:/Sistema/Escritorio/cuadrados/","modelo_erro_de_medicion.csv")))

#CFE = read.table("cfe.csv",header=TRUE,sep=",")
#CFEE = data.frame(CFE)
CFE<-as.matrix(read.csv(paste0("D:/Sistema/Escritorio/cuadrados/","cfe.csv")))
#CFEE = data.frame(CFE[,-1], row.names=CFE[,1])
#data(CFEE)

CFEE.data <- data.frame(CFE[,-1], row.names=CFE[,1])

hIMSC <- plsm(data = CFE,strucmod = modelo_estructural,measuremod = modelo_error_de_medicion)

2+2


