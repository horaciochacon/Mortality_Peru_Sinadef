library(lubridate)

# Format yesterday's date
date <- strftime(today()-1,"%d%m%Y")

# Create base URL + specific Queries
url <- "https://cloud.minsa.gob.pe/s/NctBnHXDnocgWAg/download?path=%2F&files="
file <- paste0("SINADEF_DATOS_ABIERTOS_",date,".xlsx&")
secret <- "downloadStartSecret=dp4ml4dtulr"

# Download File
download.file(paste0(url,file,secret),"data/sinadef.xlsx")
