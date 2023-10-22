library(tidyverse)
library(readxl)
library(data.table)

sheet_names <- excel_sheets("SEPTA_Data_10-20-23.xlsx")
## pull in each sheet
data1 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 1, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[1]][1])

data2 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 2, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[2]][1])
  
data3 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 3, skip = 11) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[3]][1])

data4 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 4, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[4]][1])

data5 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 5, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[5]][1])

data6 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 6, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[6]][1])


data7 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 7, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[7]][1])

data8 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 8, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[8]][1])

data9 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 9, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[9]][1])

data10 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 10, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[10]][1])

data11 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 11, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[11]][1])

data12 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 12, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[12]][1])

data13 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 13, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[13]][1])

data14 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 14, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[14]][1])

data15 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 15, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[15]][1])

data16 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 16, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[16]][1])

data17 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 17, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[17]][1])

data18 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 18, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[18]][1])

data19 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 19, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[19]][1])

data20 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 20, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[20]][1])

data21 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 21, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[21]][1])

data22 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 22, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[22]][1])

data23 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 23, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[23]][1])

data24 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 24, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[24]][1])

data25 <- read_excel("SEPTA_Data_10-20-23.xlsx", sheet = 25, skip = 9) %>%
  gather("stop", "late_mins", -"Train Number") %>%
  distinct() %>%
  mutate(line = sheet_names[[25]][1])

data <- rbind(data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data25)

data <- data %>% 
  filter((!`Train Number` %like% 'Created' )) %>%
  drop_na(`Train Number`)

