#Step 1 - Replace empty values with NA
kidney_disease[kidney_disease==""] <- NA

#Step 2 - Replace missing numerical values with mean value from the same column.
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
kidney_disease$sod[is.na(kidney_disease$sod)]<-meanSOD

meanPOT <- mean(kidney_disease$pot, na.rm = TRUE)
kidney_disease$pot[is.na(kidney_disease$pot)]<-meanPOT

meanHemo <- mean(kidney_disease$hemo, na.rm = TRUE)
kidney_disease$hemo[is.na(kidney_disease$hemo)]<-meanHemo

meanPCV <- mean(as.numeric(kidney_disease$pcv), na.rm = TRUE)
kidney_disease$pcv[is.na(kidney_disease$pcv)]<-meanPCV

meanWC <- mean(as.numeric(kidney_disease$wc), na.rm = TRUE)
kidney_disease$wc[is.na(kidney_disease$wc)]<-meanWC

meanRC <- mean(as.numeric(kidney_disease$rc), na.rm = TRUE)
kidney_disease$rc[is.na(kidney_disease$rc)]<-meanRC