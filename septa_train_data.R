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
  drop_na(`Train Number`) %>%
  mutate(outbound_ind = case_when(line %like% 'Out' ~ 1,
                                  TRUE ~ 0))

#lines <- data %>% select(line) %>% distinct() #%>% group_by(stop) %>% summarise(count = n())

#write_clip(lines)

line_info <- read_csv("line-info.csv")
amtrak_info <- read_csv("amtrak_stops.csv")

data_update <- data %>% left_join(line_info, by= 'line') %>%
  mutate(line = line_fix) %>%
  select(-line_fix) %>%
  left_join(amtrak_info, by = 'stop') %>%
  mutate(late_ind = case_when(late_mins > .9 ~ 1,
                              late_mins <= .9 ~ 0),
         late_septa_ind = case_when(late_mins > 5 ~ 1,
                                    late_mins <= 5 ~ 0)) %>%
  mutate_at(vars(amtrak_ind), ~replace_na(., 0))


sheet_names <- excel_sheets("SEPTA_ScheduleData_10-23-23.xlsx") # get sheet names

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 1,  range =cell_cols(1), col_types = 'text')
times1 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 1, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[1]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 2,  range =cell_cols(1), col_types = 'text')
times2 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 2, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[2]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 3,  range =cell_cols(1), col_types = 'text')
times3 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 3, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[3]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 4,  range =cell_cols(1), col_types = 'text')
times4 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 4, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[4]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 5,  range =cell_cols(1), col_types = 'text')
times5 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 5, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[5]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 6,  range =cell_cols(1), col_types = 'text')
times6 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 6, col_types = 'date') %>%
  select(-tops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'tops') %>%
  mutate(line = sheet_names[[6]][1])%>%
  rename(Stops = tops)

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 7,  range =cell_cols(1), col_types = 'text')
times7 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 7, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[7]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 8,  range =cell_cols(1), col_types = 'text')
times8 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 8, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[8]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 9,  range =cell_cols(1), col_types = 'text')
times9 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 9, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[9]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 10,  range =cell_cols(1), col_types = 'text')
times10 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 10, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[10]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 11,  range =cell_cols(1), col_types = 'text')
times11 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 11, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[11]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 12,  range =cell_cols(1), col_types = 'text')
times12 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 12, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[12]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 13,  range =cell_cols(1), col_types = 'text')
times13 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 13, col_types = 'date') %>%
  select(-tops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'tops') %>%
  mutate(line = sheet_names[[13]][1]) %>%
  rename(Stops = tops)

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 14,  range =cell_cols(1), col_types = 'text')
times14 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 14, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[14]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 15,  range =cell_cols(1), col_types = 'text')
times15 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 15, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[15]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 16,  range =cell_cols(1), col_types = 'text')
times16 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 16, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[16]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 17,  range =cell_cols(1), col_types = 'text')
times17 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 17, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[17]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 18,  range =cell_cols(1), col_types = 'text')
times18 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 18, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[18]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 19,  range =cell_cols(1), col_types = 'text')
times19 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 19, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[19]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 20,  range =cell_cols(1), col_types = 'text')
times20 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 20, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[20]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 21,  range =cell_cols(1), col_types = 'text')
times21 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 21, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[21]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 22,  range =cell_cols(1), col_types = 'text')
times22 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 22, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[22]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 23,  range =cell_cols(1), col_types = 'text')
times23 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 23, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[23]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 24,  range =cell_cols(1), col_types = 'text')
times24 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 24, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[24]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 25,  range =cell_cols(1), col_types = 'text')
times25 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 25, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[25]][1])

stops <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 26,  range =cell_cols(1), col_types = 'text')
times26 <- read_excel("SEPTA_ScheduleData_10-23-23.xlsx", sheet = 26, col_types = 'date') %>%
  select(-Stops) %>%
  cbind(., stops) %>%
  gather("train", "time", -'Stops') %>%
  mutate(line = sheet_names[[26]][1])


times <- rbind(times1, times2, times3, times4, times5, times6, times7, times8, times9, times10, times11, times12, times13, times14, times15, times16, times17, times18, times19, times20, times21, times22, times23, times24, times25, times26)


# lines <- data_update_test %>% select(line) %>% distinct() #%>% group_by(stop) %>% summarise(count = n())
# 
# write_clip(lines)


times_lines <- read_csv("times_lines.csv")

# remove outbound_ind from times df
times_lines <- times_lines%>% select(-outbound_ind)

times_update <- times %>% left_join(times_lines, by= 'line') %>%
  mutate(line = line_fix) %>%
  select(-line_fix) %>%
  # extract time only 
  mutate(time = format(time, format = "%H:%M:%S") )

## add times to df

data_update_times <- data_update %>% left_join(times_update, by = c('line', 'stop' = 'Stops', `Train Number` = 'train'))



#---------------------

write_csv(data_update_times, 'septa_data.csv')
