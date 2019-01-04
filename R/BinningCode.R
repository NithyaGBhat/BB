BinningCode <- function(filename) {
#data_nDV<-read.csv("C:/opencpuapp_ip/cleaned_data_without_DV.csv",stringsAsFactors = FALSE)
r_data<-read.csv("C:/opencpuapp_ip/data_after_binning.csv",stringsAsFactors = FALSE)
input.df <- r_data
target.var.name <- "diabetes"


#############################################
install.packages("dplyr",repos = "http://cran.us.r-project.org")
#library(dplyr)
names(r_data)[names(r_data)==target.var.name] <- "DV"
data_nDV<-data.frame(filename)
final_dataset <- dplyr::inner_join(r_data, data_nDV, by = NULL, copy = FALSE)
final_dataset$DV <- NULL

write.csv(data,"C:/opencpuapp_ip/f_dv.csv")
write.csv(final_dataset,"C:/opencpuapp_ip/f_out.csv")

}

#data_nDV<-read.csv("C:/opencpuapp_ip/cleaned_data_without_DV.csv",stringsAsFactors = FALSE)

#BinningCode(data_nDV)
