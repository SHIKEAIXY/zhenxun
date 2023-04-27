</div>
<div align="center">
<br>
    <img src="图片/真寻.png" width="50%">

</div>

# 真寻安装教程

1. 有什么问题可以提Issues

2. linux系统的教程网上一堆 我就不出了 可以参考别人的安装[点击查看linux安装教程](https://lonelyenderman.top/archives/781)

3. [点击查看zhenxun_bot的介绍](https://github.com/HibiKier/zhenxun_bot/blob/main/README.md)

4. [点击查看zhenxun_bot的更新内容](https://github.com/HibiKier/zhenxun_bot/releases)

5. [点击查看zhenxun_bot使用说明](https://hibikier.github.io/zhenxun_bot/ )

### 介绍

1. 一个win系统的[zhenxun_bot](https://github.com/HibiKier/zhenxun_bot)安装教程

2. 需要有一定的基础 如果没有一些基础的话可会困难重重哒 为了自己喜欢的真寻加油！

3. 真寻bot非常可爱 嗯 非常可爱！！！非常可爱！！！非常可爱！！！

4. 真寻bot是一个基于 [Nonebot2](https://github.com/nonebot/nonebot2) 和 [go-cqhttp](https://docs.go-cqhttp.org/) 的开发，以 [postgresql](https://www.postgresql.org/) 作为数据库，非常可爱的绪山真寻bot

<a href='https://gitee.com/SHIKEAIXY/zhenxun'><img src='https://gitee.com/SHIKEAIXY/zhenxun/widgets/widget_3.svg?color=1ec1c7' alt='Fork me on Gitee'></img></a>

<a href='https://gitee.com/SHIKEAIXY/zhenxun/stargazers'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/star.svg?theme=dark' alt='star的人'></img></a>
<a href='https://gitee.com/SHIKEAIXY/zhenxun/members'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/fork.svg?theme=dark' alt='fork的人'></img></a>

本仓库访问量 统计时间4.16 （好可怜）

[![访问量](https://profile-counter.glitch.me/zhenxun/count.svg)](https://gitee.com/SHIKEAIXY/zhenxun.git)


# 一 准备工作

## 安装 版本大于3.8且小于3.11的python 和 poetry
![maven](https://img.shields.io/badge/python-3.8%2B-blue)
![maven](https://img.shields.io/badge/nonebot-2.0.0-yellow)
![maven](https://img.shields.io/badge/go--cqhttp-1.0.0-red)

### ①安装python

这里我推荐安装python3.10.8
[点击下载py3.10.8](https://yshs.lanzouy.com/iFMpG0gdwt9a)

下面两个对钩点上 然后点击Install Now等待安装完成
<br>
    <img src="图片/py安装.png" width="50%">

安装完成打开cmd输入py 查看是否有py版本输出

### ②安装poetry

1. 最好挂个TZ

[这里我推荐白鲸 点击此处下载](https://m.bjch999.com/app/download?platform=3&channel=download_01&mid=false&app=bj)

下载后打开TZ 火速下一步

2. 打开Powershell（需要管理员权限）运行

不会打开？不要慌 点击此处 [如何在Windows 10/11中打开PowerShell](https://www.51cto.com/article/696873.html)

打开后输入下面内容并回车（安装时间较长）

```
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | python -
```

3. 然后将`%APPDATA%\Python\Scripts`添加到PATH环境变量(位置在右键此电脑→属性→高级系统设置→环境变量)
<br>
    <img src="图片/变量.png" width="50%">

4. 打开cmd发送poetry查看是否有版本输出

如果没有请重启电脑 重新打开cmd输入 poetry

还不行？[点击此处解决](https://www.baidu.com/s?wd=poetry%E6%80%8E%E4%B9%88%E5%AE%89%E8%A3%85&rsv_spt=1&rsv_iqid=0xba8c8dad000d7d68&issp=1&f=8&rsv_bp=1&rsv_idx=2&ie=utf-8&tn=baiduhome_pg&rsv_enter=1&rsv_dl=tb&rsv_n=2&rsv_sug3=7&rsv_sug1=6&rsv_sug7=100&rsv_sug2=0&rsv_btype=i&prefixsug=poetry%25E6%2580%258E%25E4%25B9%2588%25E5%25AE%2589%25E8%25A3%2585&rsp=1&inputT=3702&rsv_sug4=3703)

# 二 安装 go-cqhttp 

 go-cqhttp 安装视频教程 不想看视频可以继续按照下面的步骤进行
<br>
    <img src="go-cqhttp安装视频.mp4" width="60%">
 
 不想看视频可以继续按照下面的步骤进行

## ①下载go-cqhttp 
[点击此处下载go-cqhttp](https://github.com/Mrs4s/go-cqhttp/releases/download/v1.0.1/go-cqhttp_windows_amd64.zip)

## ②配置go-cqhttp


1.解压后会得到 go-cqhttp.exe 打开他 跟着写的内容去操作即可
<br>
    <img src="图片1image.png" width="50%">


2.然后会自动生成 go-cqhttp.bat 打开他
<br>
    <img src="图片2image.png" width="50%">


3.首次运行会让你选择通信方式，选择 （反向 Websocket 通信），会生成一个配置文件`config.ymlgo-cqhttp3` 
<br>
    <img src="图片/方式.png" width="50%">

4.打开config.yml文件，将uin修改为bot账号
<br>
    <img src="图片/账号.png" width="50%">

5.在config.yml文件中将

修改为`universal: ws://your_websocket_universal.server`

`universal: ws://127.0.0.1:8080/onebot/v11/ws/`

## ③启动 go-cqhttp

1.重启 go-cqhttp.bat 后选择扫码登录（服务器无法扫码请使用密码登录）

2.保存后重新打开 go-cqhttp.bat 进行登录即可

3.显示连接出现错误？ 这个没事 安装完真寻后会消失
<br>
    <img src="图片/连接错误.png" width="80%">

ok速度下一步

# 三 安装postgresql

## ①下载postgresql数据库
[点击此处将下载Postgresql-15.1-1版本安装包](https://get.enterprisedb.com/postgresql/postgresql-15.1-1-windows-x64.exe)

不想要15.1版本的可以自行下载别的版本（目前只要是9.0以上的版本都可以）

## ②安装postgresql数据库

1.双击安装程序，点击Next
<br>
    <img src="图片/安装数据库.png" width="50%">

2.选择安装路径（对路径没有要求不用改 默认c盘），继续Next

安装路径中不要出现英文！（防止报错）
<br>
    <img src="图片/数据库安装路径.png" width="50%">

3.去掉即可，不影响使用，Stack BuilderNext
<br>
    <img src="图片/取消Stack Builder安装.png" width="50%">

4.数据存储路径（对路径没有要求不用改 默认c盘），Next
<br>
    <img src="图片/数据存储路径.png" width="50%">

5.输入postgres用户的密码，例如：zhenxun（防止后期问题请安装本教程的密码输入 上下全部输入zhenxun）
<br>
    <img src="图片/数据库密码.png" width="50%">

6.默认端口，Next
<br>
    <img src="图片/数据库端口.png" width="50%">

7.接下来一路点Next直到进入安装
<br>
    <img src="图片/一路下一步.png" width="50%">

8.显示下面的图 代表你安装完成
<br>
    <img src="图片/数据库安装完成.png" width="50%">

## ③配置连接

1.找到安装的pgAdmin启动数据库 并启动

打开方法一： 在应用中搜索 pgAdmin 点击展开 找到下面图片显示的打开即可
<br>
    <img src="图片/启动数据库.png" width="80%">


方法二：找到你的 pgAdmin 安装位置 默认是下面的安装路径打开即可
<br>
    <img src="图片/启动数据库.png" width="80%">

[是英文怎么办？点击此处解决](https://blog.csdn.net/weixin_46329056/article/details/125929563?ydreferer=aHR0cHM6Ly93d3cuYmFpZHUuY29tL2xpbms%2FdXJsPUwzNmhIRml6RjMwd2QzWnFEanFpY0NLYzFGbmlGUktRTXhCU21UTmFObjZNM0NxLUY5YzJzYV9IY2kzekV5bEVlTTctNzZnWjVmNC15aTI3ZjE3V3JJVDRnUzMtejdlTHp6aFJPY1Y2Tm9XJndkPSZlcWlkPTgyNjY3OTdjMDAwZTA0NGEwMDAwMDAwMjY0M2FiNDZj)

2.新建连接

左侧栏右键点击后选择，在点击ServersRegister服务器
<br>
    <img src="图片/添加数据库.png" width="50%">

随便给它起一个响亮的名字（
<br>
    <img src="图片/真寻名字.png" width="50%">

填写配置 填写，如果是连接远程服务器的话对应的服务器IP，本地的话可以直接填写 就是安装时配置的端口，没有修改的话默认

就是安装时配置
的密码主机名称/地址127.0.0.1端口5432 密码就是你安装是输入的密码（本教程前面用的是zhenxun）
<br>
    <img src="图片/编辑数据库1.png" width="50%">

 3.点击保存
左侧栏会出现一个可爱真寻
<br>
    <img src="图片/编辑数据库2.png" width="50%">

## ④新建数据库

1.点击展开

2.右击，选择后点击数据库创建数据库
<br>
    <img src="图片/新建数据库.png" width="50%">

3.直接创建

设置数据库名称后点击保存 
<br>
    <img src="图片/保存数据库.png" width="50%">

ok火速下一步

# 四 开始安装真寻

1.github下载真寻本体

```
git clone https://github.com/HibiKier/zhenxun_bot
```

2.执行下面内容（直接复制粘贴就可以 ）

```
pip3 install poetry
poetry install
poetry shell
```

3.设置超级用户，打开 .env.dev 文件（在真寻根目录），在中添加自己的QQSUPERUSERS

    SUPERUSERS=["123456789"]

4.打开 configs/config.py 填写数据库数据

```
-----------------------------------------------------------
-----------------------------------------------------------
 如果你听我的话了 密码和名字与我填的一样 且数据库也在该服务器上 
 可以直接复制以下配置 替换掉 configs/config.py 中的数据库数据
-----------------------------------------------------------
-----------------------------------------------------------

bind: str = ""  # 数据库连接链接
sql_name: str = "postgres"
user: str = "postgres"
password: str = "zhenxun"
address: str = "127.0.0.1"
port: str = "5432"
database: str = "zhenxun"

---------------------------------------------------------------
---------------------------------------------------------------
  -------------------如果没有听我的怎么办呢--------------------
  -----------------按照下面的格式进行修改即可------------------
---------------------------------------------------------------
---------------------------------------------------------------

# 数据库（必要）
# 如果填写了bind就不需要再填写后面的字段了
# 示例："bind": "postgres://user:password@127.0.0.1:5432/database"
bind: str = ""       //数据库连接链接
sql_name: str = "postgres"
user: str = ""       //数据用户名
password: str = ""   //数据库密码
address: str = ""    //数据库地址
port: str = ""       //数据库端口
database: str = ""   //数据库名称

```


5.启动真寻，会在 configs 和 data/configs 目录下生成各种配置文件

```
python bot.py
python3 bot.py
```

6.打开 configs/config.yaml，里面包含的是各种插件的配置项，填写完毕后重启真寻Bot

# 五 启动真寻

关机/页面关上了该怎么启动真寻？

1.双击打开go-cqhttp.bat

2.打开真寻根目录cmd运行

```
poetry shell
python bot.py
python3 bot.py
```

# 六 真寻插件下载

[真寻索引库](https://github.com/zhenxun-org/nonebot_plugins_zhenxun_bot)

[nb商店（不是全部都谦融）](https://nb2.baka.icu/store)

## 单个插件的下载方法

在插件的地址栏链接前面加上https://minhaskamal.github.io/DownGit/#/home?url=
<br>
    <img src="图片/真寻安装插件教程.png" width="70%">

比如说 https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/CRAZYShimakaze/zhenxun_extensive_plugin
<br>
    <img src="图片/真寻安装的插件教程.png" width="70%">

回车就可以自动跳转单插件下载

点击Download
<br>
    <img src="图片/真寻插件下载.png" width="70%">

下载时长会和你的网络与仓库大小有关系