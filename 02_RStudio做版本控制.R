####################################
#RStudio通过git和Github做版本控制
####################################

# 第一步：配置Git，通过ssh连接Github
# 1 打开Git bash
# 2 配置注册Github时候的用户名和邮箱
# git config --global user.name "您的Github注册用户名"
# git config --global user.email "您的Github注册邮箱"
# 3 生成 ssh key 
# ssh-keygen -t rsa -C "您的Github注册邮箱"
# 4 进入Github, 点击头像下Setting 选择SSH and GPG keys，创建一个ssh key
# 5 测试是否成功
# ssh -T git@github.com

# 第二步：RStudio的Git和Github配置
# 1 选择Tools,打开Global Options, 选择Git/SVN配置Git和SSH RSA Key

# 第三步：创建项目和版本控制
# 1 RStudio创建项目，以创建好R_Study_Project项目为例
# 2 安装usethis包，R控制台运行语句：usethis::use_git()
# 3 进入Github，创建R_Study_Project仓库
# 4 把本地项目push到R_Study_Project仓库
# git status
# git add .
# git commit -m "R Study"
# git remote add origin "项目的ssh访问链接"
# git push -u origin master
