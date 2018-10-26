#Practice for import and export
dir('./data2')
list.files('./data2')
file.exists('./data2')
file.exists('./data3')
file.exists('./data2/mtcars.csv')

#Reading from a flat file
?scan
data_file = scan("./data2/hhe.txt", what='character')
?head
head(data_file)
tail(data_file)
class(data_file)
data_file

#Read from CSV
iris
write.csv(iris, './data2/iris.csv', row.names=F)
read1 = read.csv('./data2/iris.csv', header=T)
read1
class(read1)
str(read1)
str(iris)
head(read1)
head(iris)

read2 = read.table('./data2/iris.csv', header=T, sep=',')
class(read2)
str(read2)

#Read CSV file from web
read3 = read.table('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat', header=F, sep=' ')
str(read3)
head(read3)
tail(read3)

#Read a gsheet
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
?gsheet2tbl
gsheet2tbl(url_gsheet)
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
df_gsheet
str(df_gsheet)

#Read a .xlsx
library(xlsx)
?read.xlsx
df_excel1 = read.xlsx('./data2/chumma.xlsx', 2, header = T)
df_excel1
df_excel2 = read.xlsx('./data2/chumma.xlsx', 1, header = F)
df_excel2