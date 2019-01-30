BinningCode <- function(filename) {
#data_nDV<-read.csv("C:/opencpuapp_ip/cleaned_data_without_DV.csv",stringsAsFactors = FALSE)
data<-read.csv("C:/opencpuapp_ip/data_after_binning.csv",stringsAsFactors = FALSE)
input.df <- data
target.var.name <- "diabetes"

#############################################
names(data)[names(data)==target.var.name] <- "DV"

data_nDV<-data.frame(data_nDV)
final_dataset <- dplyr::inner_join(data, data_nDV, by = NULL, copy = FALSE)
final_dataset$DV <- NULL
class(final_dataset)

write.csv(data,"f_dv.csv")
write.csv(final_dataset,"C:/opencpuapp_ip/f_out.csv")

}

#data_nDV<-read.csv("C:/opencpuapp_ip/cleaned_data_without_DV.csv",stringsAsFactors = FALSE)

#BinningCode(data_nDV)
