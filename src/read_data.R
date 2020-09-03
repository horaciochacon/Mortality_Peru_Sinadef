library(tidyverse)
library(readxl)
library(janitor)

sinadef <- read_excel("data/sinadef.xlsx",skip = 3)
sinadef <- sinadef %>% 
  clean_names()
