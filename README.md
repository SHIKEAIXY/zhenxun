</div>
<div align="center">
<br>
    <img src="图片/真寻.png" width="80%">

</div>

## [点击此处查看真寻bot安装时报错的解决问题](https://gitee.com/SHIKEAIXY/zhenxun/blob/master/Installation%20issues.md)

还未完善...

# 前言

大家都知道一键脚本这个东西吧
- 没错真寻也有
- 虽然一键脚本离上一次更新才两个月
- 但是不建议使用一键脚本，很容易出问题，出了还不好修
- 所以还是建议手动安装

### 来下载2000张真寻图片吧~

既然是喜欢真寻的肯定也喜欢真寻的表情包/头像/壁纸吧

[点击此处获取高达2000张的超级可爱的真寻表情包吧！！！](https://gitee.com/SHIKEAIXY/zhenxun-wallpaper-picture)

你看我这么努力可以点点star吗 求求你了


## 与真寻相关  

1. 有什么问题可以提Issues

2. linux系统的教程网上一堆 我就不出了 可以参考别人的安装[点击查看linux安装教程](https://lonelyenderman.top/archives/781)

3. [点击查看zhenxun_bot的介绍](https://github.com/HibiKier/zhenxun_bot/blob/main/README.md)

4. [点击查看zhenxun_bot的更新内容](https://github.com/HibiKier/zhenxun_bot/releases)

5. [点击查看zhenxun_bot使用说明](https://hibikier.github.io/zhenxun_bot/ )

## 介绍

1. 一个win系统的[zhenxun_bot](https://github.com/HibiKier/zhenxun_bot)安装教程

2. 需要有一定的基础 如果没有一些基础的话可会困难重重哒 为了自己喜欢的真寻加油！

3. 真寻bot非常可爱 嗯 非常可爱！！！非常可爱！！！非常可爱！！！

4. 真寻bot是一个基于 [Nonebot2](https://github.com/nonebot/nonebot2) 和 [go-cqhttp](https://github.com/Mrs4s/go-cqhttp) 的开发，以 [postgresql](https://www.postgresql.org/) 作为数据库，非常可爱的绪山真寻bot

<a href='https://gitee.com/SHIKEAIXY/zhenxun'><img src='https://gitee.com/SHIKEAIXY/zhenxun/widgets/widget_3.svg?color=1ec1c7' alt='Fork me on Gitee'></img></a>

<a href='https://gitee.com/SHIKEAIXY/zhenxun/stargazers'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/star.svg?theme=dark' alt='star的人'></img></a>
<a href='https://gitee.com/SHIKEAIXY/zhenxun/members'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/fork.svg?theme=dark' alt='fork的人'></img></a>

本仓库访问量 统计时间4.16 （好可怜）

[![访问量](https://profile-counter.glitch.me/zhenxun/count.svg)](https://gitee.com/SHIKEAIXY/zhenxun.git)

# 正文啦！
# 一 准备工作

## 安装 版本大于3.8且小于3.11的python 和 poetry
[![](https://img.shields.io/badge/python-v3.8+-DeepSkyBlue)](https://gitee.com/SHIKEAIXY/zhenxun)
[![](https://img.shields.io/badge/poetry-brightgreen.svg)](https://gitee.com/SHIKEAIXY/zhenxun)
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

[这里我推荐白鲸 点击此处下载](https://www.bjch999.com/app/download?platform=3&channel=download_03&mid=false&ts=1694193912977&app=bj)

注册邮箱可以随缘填写（一个设备注册次数有限）

下载后打开TZ 火速下一步

2. 打开Powershell（需要管理员权限）运行

不会打开？不要慌 点击此处 [如何在Windows 10/11中打开PowerShell](https://www.51cto.com/article/696873.html)

打开后输入下面内容并回车（安装时间较长）

```
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | python -
```

2.1 如无法安装可使用pip安装前先升级pip（此步骤无需进行3的变量环节）
```
python -m pip install -U pip
```

```
pip install poetry
```

3. 然后将`%APPDATA%\Python\Scripts`添加到PATH环境变量(位置在右键此电脑→属性→高级系统设置→环境变量)
<br>
    <img src="图片/变量.png" width="50%">

4. 打开cmd发送poetry查看是否有版本输出

如果没有请重启电脑 重新打开cmd输入 poetry

还不行？[点击此处解决](https://www.baidu.com)


# 二 安装postgresql

## ①下载postgresql数据库
[点击此处将下载Postgresql-15.1-1版本安装包](https://get.enterprisedb.com/postgresql/postgresql-15.1-1-windows-x64.exe)

不想要15.1版本的可以自行下载别的版本（目前只要是9.0以上的版本都可以）

## ②安装postgresql数据库

1.双击安装程序，点击Next（打不开报错？不要找我 我也不会）
<br>
    <img src="图片/安装数据库.png" width="50%">

2.选择安装路径（对路径没有要求不用改 默认c盘），继续Next

安装路径中不要出现中文！（防止报错）
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

# 三 开始安装真寻本体

1.github下载真寻本体(下载失败建议打开上文中提到的tz)

```
git clone --depth 1 https://github.com/HibiKier/zhenxun_bot
```

2.执行下面内容

```
poetry install
poetry shell
playwright install chromium
```

3.设置超级用户，打开 .env.dev 文件（在真寻根目录），在中添加自己大号（主人）的QQ号，12345678为QQ号

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
```

（如果你没有这些需求可以忽略这步，毕竟默认配置了）

6.打开 configs/config.yaml，里面包含的是各种插件的配置项，填写完毕后重启真寻Bot

# 四 安装 go-cqhttp 

### 前言：

如果你是[云崽](https://gitee.com/Le-niao/Yunzai-Bot)用户则可以使用[ws插件](https://gitee.com/xiaoye12123/ws-plugin)跳过gocq连接bot
<details>
  <summary>点击此处查看云崽连接教程</summary>

1. 请安装[云崽的ws-plugin](https://gitee.com/xiaoye12123/ws-plugin)连接本地ws地址（端口默认为8080）并保持云崽的运行

打开[云崽](https://gitee.com/Le-niao/Yunzai-Bot)根目录
```
cd Yunzai-Bot 
```
下载[ws-plugin](https://gitee.com/xiaoye12123/ws-plugin)
```
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
```
安装依赖
```
pnpm install --filter=ws-plugin
```

2. 重新启动`云崽`机器人

3. 连接本地bot(给云崽机器人发送)

```
#ws添加连接zhenxun_bot,ws://127.0.0.1:8080/onebot/v11/ws/,1,5,0
``` 
4. 发送`#ws查看连接`来查看是否连接成功

出现以下内容，则代表连接成功
```
连接名字: zhenxun_bot
连接类型: 1
当前状态: 已连接
```
### 注意不要关闭云崽和真寻本体

</details>

**如果你使用了ws插件连接，可忽略剩下的步骤，直接跳转到`七 真寻插件下载`即可** 

---


## ①下载go-cqhttp 

### gitee下载
```
git clone --depth 1 https://gitee.com/SHIKEAIXY/1.1.9unidbg_and_gocq.git
```
### zip下载

[点击此处下载签名和go-cqhttp](https://gitee.com/SHIKEAIXY/1.1.9unidbg_and_gocq/repository/archive/master.zip)

下载后请配置`windows_amd64`而`unidbg-fetch-qsign-1.1.9`请不要删！！！

## ②配置go-cqhttp

1.打开config.yml文件，修改`QQ账号和密码`保存即可（先不要重新启动！！！）
<br>
    <img src="图片/账号.png" width="70%">

# 五 部署签名api

### ①下载java 

1.[点击此处下载17.42的java](https://cloud.tianyi.one/d/%E9%98%BF%E9%87%8C%E4%BA%91%E7%9B%98/yunzai/zulu17.42.19-ca-jdk17.0.7-win_x64.msi)

2.安装完成后打开cmd运行`java`查看是否有输出

[如果没有输出点击此处查看如何配置变量，如果你看不懂那就没办法了](https://blog.csdn.net/qq_41436122/article/details/82620080)

配置完成后重新启动服务器后再打开cmd运行`java`查看是否有输出

### ②使用

1.打开`1.1.9unidbg_and_gocq\unidbg-fetch-qsign-1.1.9`双击运行`一键启动.bat` (就[下载go-cqhttp](https://gitee.com/SHIKEAIXY/zhenxun/blob/master/README.md#%E4%B8%8B%E8%BD%BDgo-cqhttp)下载的那个文件里面)

没有闪退即可使用

2.签名启动成功后再重新启动 go-cqhttp.bat 登录即可

3.切记api不要关闭！！！

### ③配置

1.端口默认是`520`

2.key默认为`1314`

3.如需修改可打开`unidbg-fetch-qsign-1.1.9\txlib`找到你要修改的版本打开这个文件如修改`8.9.71`则打开`8.9.71\config.json`进行修改即可
<br>
    <img src="图片/签名配置端口key.png" width="50%">

### ④启动 go-cqhttp

1.返回上一目录打开`windows_amd64`文件

2.双击 `go-cqhttp.bat` 进行验证即可
<br>
    <img src="图片/gocq_bat.png" width="50%">

3.如果出现以下内容则不用管它，不影响登录和使用 **（如果你看着变扭请看下一条）** 

```
[WARNING]: Callback error: Packet timed out, Or response data is empty
[ERROR]: Protocol -> parse incoming packet error: return code unsuccessful: -10005
```

4.在gocq运行的页面中使用`ctrl+c`后输入下方内容回车启动即可
```
go-cqhttp
```

5.自动提交滑块ticket无反应
- 这个不知道有没有解决办法
- 如果没反应请使用`2. 手动抓取提交`
- [使用安卓手机点击此处下载](https://maupdate.rainchan.win/txcaptcha.apk)

### ⑤关于其他签名协议登录

1.签名的70协议比较稳定，一般不需要进行更换

2.如果实在想换且不会可以提iss询问，没什么用的教程就不写了（其实是不知道怎么表达）

# 六 重新启动真寻

关机/页面关上了该怎么重新启动真寻？

1.双击打开go-cqhttp.bat

2.打开真寻根目录cmd运行

```
poetry shell
```
```
python bot.py
```
#### 启动代码介绍
- poetry shell 这个是进入虚拟环境
- python bot.py 这个是用python来运行bot.py这个文件

# 七 真寻插件下载

[插件安装问题](https://github.com/zhenxun-org/nonebot_plugins_zhenxun_bot/issues/27)

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

# 贡献者

感谢以下贡献者

[@fafa](https://gitee.com/rushingfafa)&nbsp;[@晴风](https://gitee.com/rock8526652)&nbsp;[@脆脆鲨](https://gitee.com/JMCCS)&nbsp;[@鹤望兰](https://gitee.com/hewang1an)&nbsp;@冀安&nbsp;@花花&nbsp;@多用途歼击坦克-炎黄