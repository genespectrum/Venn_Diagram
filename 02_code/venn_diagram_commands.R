set.seed(20190708)

install.packages("ggvenn")
install.packages("dplyr")
install.packages("tidyverse")
library(ggvenn)
library(dplyr)
library(tidyverse)


#To import and read the csv file
x_df <- file.choose()
x_df <- read.csv(x_df)

#To convert the data frame into list
x_list <- as.list(x_df)



###############################
# View one category
x_list$DEGs_Upregulated

# ---- Load ggvenn ----
library(ggvenn)

# ---- Bioinformatics-Themed Fancy Venn Plot ----
ggvenn(
  x_list,
  fill_color = c("#0073C2FF", "#EFC000FF", "#868686FF", "#CD534CFF"),
  stroke_size = 0.6,
  set_name_size = 5,
  text_size = 4
)

