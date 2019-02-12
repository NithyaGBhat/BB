BinningCode <- function(filename) {
library(dplyr)
library(utils)  
#data_nDV<-read.csv("C:/opencpuapp_ip/cleaned_data_without_DV.csv",stringsAsFactors = FALSE)
data<-read.csv("C:/opencpuapp_ip/data_after_binning.csv",stringsAsFactors = FALSE)
input.df <- data
target.var.name <- "diabetes"

#############################################
names(data)[names(data)==target.var.name] <- "DV"

   
  if(!grepl(".csv$", filename)){
  	stop("Uploaded filename must be a .csv filename!");
  }
  #filename1<-gsub("fakepath","opencpuapp_ip",filename)
	df_full_bin<-utils::read.csv(filename, header = TRUE, stringsAsFactors = FALSE )
   
  list(
	#message = paste("hello ", "c:/opencpuapp_ip/",substr(filename,17,nchar(filename)),".csv",sep="")
	message = paste("Read Successful" )
	)
  
data_nDV<-data.frame(df_full_bin)
final_dataset <- dplyr::inner_join(data, data_nDV,copy = FALSE)
final_dataset$DV <- NULL
#class(final_dataset)

write.csv(data,"C:/opencpuapp_ip/f_dv.csv")
write.csv(final_dataset,"C:/opencpuapp_ip/f_out.csv")

}

#data_nDV<-read.csv("C:/opencpuapp_ip/cleaned_data_without_DV.csv",stringsAsFactors = FALSE)

#BinningCode(data_nDV)
