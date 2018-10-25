#installing dplyr

df1
library(dplyr)
df1 %>% group_by(gender) #%>% summarise(max(marks), min(marks2))
df1 %>% group_by(gender, course) %>% count