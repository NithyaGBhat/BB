BinningCode <- function(filename) {
#data_nDV<-read.csv("C:/opencpuapp_ip/cleaned_data_without_DV.csv",stringsAsFactors = FALSE)
data<-read.csv("C:/opencpuapp_ip/data_after_binning.csv",stringsAsFactors = FALSE)
input.df <- data
target.var.name <- "diabetes"


#############################################
install.packages("dplyr",repos = "http://cran.us.r-project.org")
#library(dplyr)
names(data)[names(data)==target.var.name] <- "DV"
final_dataset <- dplyr::inner_join(data, filename, by = NULL, copy = FALSE)
final_dataset$DV <- NULL

write.csv(data,"C:/opencpuapp_ip/f_dv.csv")
write.csv(final_dataset,"C:/opencpuapp_ip/f_out.csv")

}

#data_nDV<-read.csv("C:/opencpuapp_ip/cleaned_data_without_DV.csv",stringsAsFactors = FALSE)

#BinningCode(data_nDV)
