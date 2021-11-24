###########################
#R语言基础知识篇
#R语言学习第4集
#认识R包？
###########################

# 包括3个内容

# 1 为什么要认识R包？
# 实际工作中，我每天都要用到R包，使用R包，可以提供工作效率
# R包可以让你站在巨人的肩膀上学习和应用R语言
# R包涵盖各种领域、场景和环节，我在第3点的实际工作里面介绍了一系列R包

# R包让R语言更强大，更有活力和生命力

# 2 R包是什么？
# R包是一个集合体，它包括代码、数据、文档、测试、描述等内容
# R包可以提升工作效率，促使代码复用、组织协同、智慧共享
# R包符合互联网的开放、开源、合作、协同的精神

# 3 我实际工作常用的R包

# 第一种方式：加载工作所需的R包
# 1 数据导入R包
library(RODBC)
library(readr)
library(readxl)
library(xlsx)
library(openxlsx)
library(haven)
# 2 数据整洁包
library(tidyr)
# 3 数据处理包
library(dplyr)
library(data.table)
# 4 数据可视化包
library(ggplot2)
library(ggthemes)
library(patchwork)
# 5 函数实编程包
library(purrr)
# 6 数据建模包
library(caret)
library(scorecard)
# 7 数据报告包
library(rmarkdown)

# 或者
# 第二种方式：加载工作所需R包
library(pacman)
p_load(
  tidyverse,
  RODBC,
  readxl,
  xlsx,
  openxlsx,
  haven,
  data.table,
  ggthemes,
  patchwork,
  caret,
  scorecard,
  rmarkdown
)

# 欢迎和我学用R语言，添加我微信：luqin360，备注：RStudy。