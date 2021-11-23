################
#EDA案例
################

library(tidyverse)
library(lubridate)


# 1 加载数据集 -----------------------------------------------------------------

df <- read_csv("./data/nobel_winners.csv")
df


# 缺失值分析
df %>% 
  map_df(~ sum(is.na(.))) %>% 
  View

# 性别缺失的原因分析？
df %>% 
  count(laureate_type)


# 2 探索的问题集 ----------------------------------------------------------------

# 1）每个学科颁过多少次奖？
df %>% 
  count(category)

# 可视化
df %>% 
  count(category) %>% 
  ggplot(aes(x = category, y = n, fill = category)) +
  geom_col() +
  geom_text(aes(label = n), vjust = -0.25) +
  theme_classic() +
  theme(legend.position = "none") 


# 有序的可视化
df %>% 
  count(category) %>% 
  ggplot(aes(x = fct_reorder(category, n), y = n, fill = category)) +
  geom_col() +
  geom_text(aes(label = n), vjust = -0.25) +
  labs(title = "Number of Nobel prizes in different disciplines") +
  theme_classic() +
  theme(legend.position = "none") 

library(ggthemr)

# 参考资料：
# https://bookdown.org/wangminjie/R4DS/eda-nobel.html
