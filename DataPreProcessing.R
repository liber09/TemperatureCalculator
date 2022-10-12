#Step1 - Replace missing numerical values with mean value from the same column.
meanAge <- mean(kidney_disease$age, na.rm = TRUE)
kidney_disease$age[is.na(kidney_disease$age)]<-meanAge

meanBP <- mean(kidney_disease$bp, na.rm = TRUE)
kidney_disease$bp[is.na(kidney_disease$bp)]<-meanBP

meanSG <- mean(kidney_disease$sg, na.rm = TRUE)
kidney_disease$sg[is.na(kidney_disease$sg)]<-meanSG

meanAL <- mean(kidney_disease$al, na.rm = TRUE)
kidney_disease$al[is.na(kidney_disease$al)]<-meanAL

meanSU <- mean(kidney_disease$su, na.rm = TRUE)
kidney_disease$su[is.na(kidney_disease$su)]<-meanSU

meanBGR <- mean(kidney_disease$bgr, na.rm = TRUE)
kidney_disease$bgr[is.na(kidney_disease$bgr)]<-meanBGR

meanBU <- mean(kidney_disease$bu, na.rm = TRUE)
kidney_disease$bu[is.na(kidney_disease$bu)]<-meanBU

meanSC <- mean(kidney_disease$sc, na.rm = TRUE)
kidney_disease$sc[is.na(kidney_disease$sc)]<-meanSC

meanSOD <- mean(kidney_disease$sod, na.rm = TRUE)
kidney_disease$sod<-meanSOD

meanPOT <- mean(kidney_disease$pot, na.rm = TRUE)
kidney_disease$pot[is.na(kidney_disease$pot)]<-meanPOT

meanHemo <- mean(kidney_disease$hemo, na.rm = TRUE)
kidney_disease$hemo[is.na(kidney_disease$hemo)]<-meanHemo

kidney_disease$pcv[kidney_disease$pcv == ''] <- NA
kidney_disease$pcv[] <- lapply(kidney_disease$pcv, as.numeric)
meanPCV <- mean(kidney_disease$pcv, na.rm = TRUE)
kidney_disease$pcv[is.na(kidney_disease$pcv)]<-meanPCV