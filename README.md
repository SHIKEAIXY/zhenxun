</div>
<div align="center">
<br>
    <img src="图片/真寻.png" width="80%">

</div>

# 前言

大家都知道一键脚本这个东西吧
- 没错真寻也有
- 但是不建议使用脚本，很容易出问题，出了还不好修
- 所以还是建议手动安装
- 你要是非用脚本也拦不住你对吧 [官方传送门](https://github.com/zhenxun-org/zhenxun_bot-deploy)

### 来下载2000张真寻图片吧~

既然是喜欢真寻的肯定也喜欢真寻的表情包/头像/壁纸吧

[点击此处获取高达2000张的超级可爱的真寻表情包吧！！！](https://gitee.com/SHIKEAIXY/zhenxun-wallpaper-picture)

## 聊天群QQ：778502891

## 部署问题找我（可能没时间看，但一定会回）QQ：536606294

## 与真寻相关  

1. 有什么问题可以在本库提Issues或者加上方聊群询问

2. Windows系统的教程请查看[master分支](https://gitee.com/SHIKEAIXY/zhenxun) | 或查看[Web教程](https://docs.qsyhh.icu/docs/windows)

3. [点击查看zhenxun_bot的介绍](https://github.com/HibiKier/zhenxun_bot/blob/main/README.md)

4. [点击查看zhenxun_bot的版本号](https://github.com/HibiKier/zhenxun_bot/releases)

5. [点击查看zhenxun_bot使用说明](https://hibikier.github.io/zhenxun_bot)

## 介绍

1. 一个linux（Ubuntu）系统的[zhenxun_bot](https://github.com/HibiKier/zhenxun_bot)安装教程

2. 需要有一定的基础 如果没有一些基础的话可会困难重重哒 为了自己喜欢的真寻加油鸭！

3. 真寻bot非常可爱 嗯 非常可爱！！！非常可爱！！！非常可爱！！！

4. 真寻bot是一个基于 [Nonebot2](https://github.com/nonebot/nonebot2) 和 [~~Go-cqhttp~~](https://github.com/Mrs4s/go-cqhttp) 的开发，以 [Postgresql](https://www.postgresql.org/) 作为数据库，非常可爱的绪山真寻bot

<a href='https://gitee.com/SHIKEAIXY/zhenxun/stargazers'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/star.svg?theme=dark' alt='star的人'></img></a>
<a href='https://gitee.com/SHIKEAIXY/zhenxun/members'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/fork.svg?theme=dark' alt='fork的人'></img></a>
[![](https://img.shields.io/badge/Python-v3.9+-DeepSkyBlue)](https://www.python.org)
[![](https://img.shields.io/badge/Poetry-brightgreen.svg)](https://python-poetry.org)
[![](https://img.shields.io/badge/Nonebot-2.0.0-yellow)](https://nb2.baka.icu)
[![](https://img.shields.io/badge/Ggo--cqhttp-1.0.0-red)](https://docs.go-cqhttp.org/)
[![](https://img.shields.io/badge/TRSS--Yunzai/Miao--Yunzai-ws--plugin-red)](https://gitee.com/xiaoye12123/ws-plugin)
[![](https://img.shields.io/badge/Gensokyo-QQAPI-red)](https://github.com/Hoshinonyaruko/Gensokyo)

# 正文啦！

# 一 首先你应该准备一个Ubuntu 22并且是2H2G+的服务器

# 二 安装宝塔面板或者XTerminal

<details>
  <summary>安装宝塔面板（不建议）</summary>

### 打开服务器控制台找到SSH连接工具输入下方内容回车即可

```
wget -O install.sh https://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh ed8484bec
```

### 等待安装完成后打开面板（密码请牢记，如无法打开请开放端口）

</details>

<details>
  <summary>安装XTerminal（无安卓和苹果端）</summary>

1. [点击此处下载XTerminal](https://www.xterminal.cn)

2. 下载完成后打开点击新建服务器（+号）
<br>
    <img src="图片/XTerminal新建ssh.png" width="70%">

3. 写上一个名字/ip地址/登录密码后创建即可
<br>
    <img src="图片/XTerminal绑定ssh.png" width="70%">

3.1 你的登录密码会在你的服务商控制台显示（不知道在哪里就去百度搜，太多了我没办法去列举每个服务商不一样）

4. 创建完成点击连接
<br>
    <img src="图片/XTerminal连接ssh.png" width="70%">

</details>

# 二 前置准备

### ①安装poetry与ffmpeg和中文字体

##### 由于Ubuntu 22系统自带python3.10，这里无需再次安装

1. 打开终端依次输入下方内容进行安装

```
sudo apt update
sudo apt upgrade
sudo apt install -y screen
sudo pip install --upgrade pip
sudo pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
sudo apt update && sudo apt install -y wget git screen ffmpeg
sudo apt install -y python3-pip
sudo pip install poetry
sudo apt install fonts-wqy-microhei
sudo fc-cache -f -v
```

# 三 安装PostgreSQL数据库

<details>
  <summary>使用宝塔面板安装PostgreSQL数据库</summary>

1. 打开软件商店搜索PostgreSQL管理器并安装（默认安装即可）
<br>
    <img src="图片/安装PostgreSQL管理器.png" width="70%">

2. 安装完成后点击`设置`
<br>
    <img src="图片/安装PostgreSQL.png" width="70%">

3. 然后点击`版本管理`，安装12.10版本（时间较长）
<br>
    <img src="图片/安装PostgreSQL2.png" width="70%">

4. 安装完成后点击`数据库列表`创建/添加数据库
<br>
    <img src="图片/创建PostgreSQL.png" width="70%">

5. `数据库名/用户名/密码`全部填写`zhenxun`后点击`确定`
<br>
    <img src="图片/创建PostgreSQL2.png" width="70%">

</details>

<details>
  <summary>使用XTerminal(终端)安装PostgreSQL数据库</summary>

1. 安装PostgreSQL数据库

```
sudo apt install -y postgresql postgresql-contrib

```

2. 创建数据库(依次输入)

```
sudo su - postgres
psql
CREATE USER zhenxun WITH PASSWORD 'zhenxun'
CREATE DATABASE zhenxun OWNER zhenxun
exit
exit
```

</details>

ok火速下一步

# 四 开始安装真寻本体

首先安装Git，以有可跳过

```
sudo apt install git
```

---

<details>
  <summary>安装dev分支重构真寻bot(逐渐完善中...但不推荐安装)</summary>

<br>
    <img src="图片/dev真寻.png" width="50%">
    
1.github下载真寻本体

```
cd /root/
git clone --depth 1 -b dev https://github.com/HibiKier/zhenxun_bot ./Bot/zhenxun_bot
```

2.依次执行下面内容安装依赖以及连接数据库

```
cd Bot/zhenxun_bot

sed -i 's|bind.*|bind: str = "postgres://zhenxun:zhenxun@127.0.0.1:5432/zhenxun"|g' zhenxun/configs/config.py
poetry shell
poetry add pyyaml@latest
poetry lock --no-update
poetry install
sudo pip install playwright
playwright install chromium
exit
```

3.设置超级用户，复制命令后将123456789修改完自己大号的QQ号

```
sed -i 's/SUPERUSERS.*/SUPERUSERS=["123456789"]/g' .env.dev
```

4.由于dev默认开启kaihiela(kook)，不连接将会无法启动，非使用kook连接需手动把env.dev里如图内容注释或删掉
<br>
    <img src="图片/kook问题.png" width="50%">

5.由于dev版中由于数据迁移所用，暂未考虑新建数据库没有sign_group_users所导致无法启动，应删zhenxun/builtin_plugins/_init_.py中删除如图内容
<br>
    <img src="图片/数据库表.png" width="50%">

6.启动真寻(虚拟环境内)，会在 zhenxun/configs 和 data/configs 目录下生成各种配置文件

```
screen -S zhenxundev
poetry shell
python bot.py
```

（如果你没有这些需求可以忽略这步，毕竟默认配置了）

7.打开 zhenxun/configs/config.yaml，里面包含的是各种插件的配置项，填写完毕后重启真寻Bot

```
screen -r zhenxundev
poetry shell
python bot.py
```

</details>

dev分支支持更多协议端，如DODO,Kook等，但还在完善，仅部署QQ真寻暂不建议使用

---

<details>
  <summary>main主分支真寻bot(推荐)</summary>

1.github下载真寻本体

```
cd /root/
git clone --depth 1 https://github.com/HibiKier/zhenxun_bot ./Bot/zhenxun_bot
```

2.依次执行下面内容安装依赖以及连接数据库

```
cd Bot/zhenxun_bot

sed -i 's|bind.*|bind: str = "postgres://zhenxun:zhenxun@127.0.0.1:5432/zhenxun"|g' configs/config.py
poetry shell
poetry add pyyaml@latest
poetry lock --no-update
poetry install
sudo pip install playwright
playwright install chromium
```

3.设置超级用户，复制命令后将123456789修改完自己大号的QQ号

```
sed -i 's/SUPERUSERS.*/SUPERUSERS=["123456789"]/g' .env.dev
```

4.启动真寻(虚拟环境内)，会在 configs 和 data/configs 目录下生成各种配置文件

```
screen -S zhenxun
poetry shell
python bot.py
```

（如果你没有这些需求可以忽略这步，毕竟默认配置了）

5.打开 configs/config.yaml，里面包含的是各种插件的配置项，填写完毕后重启真寻Bot

```
screen -r zhenxun
poetry shell
python3 bot.py
```

</details>

主分支相对稳定，部署QQ机器人，强烈推荐使用！

---

6. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r -d name //强制打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

# 五 连接zhenxun_bot

<details>
  <summary>使用go-cqhttp连接真寻bot（不建议）</summary>

# 再提醒你一句，gocq作者已经不再更新，签名服务以无法解决Gocq45问题

## ①安装go-cqhttp

1. 下载go-cqhttp

### gitee下载

```
cd /root/Bot
git clone --depth 1 https://gitee.com/SHIKEAIXYY/Qsign.git ./Gocq&Qsugn/unidbg-fetch-qsign-1.1.9
git clone -b go-cqhttp_1.2.0_linux_arm64.deb --depth 1 https://gitee.com/SHIKEAIXY/zhenxun.git ./Gocq&Qsugn/go-cqhttp_linux_amd64
```

下载后请配置`linux_amd64`而`unidbg-fetch-qsign-1.1.9`一会要用

## ②配置Go-cqhttp

1.打开config.yml文件，修改`QQ账号和密码`保存即可（先不要重新启动！！！）

2.如果你打算使用他人签名请修改`go-cqhttp_linux_amd64/config.yml`中`35-36行内容`（注意缩进）后保存修改即可
```
url: 'https://huai-huai-8-9-78.hf.space'
key: 'ngm'
```

# 部署签名api（可选后面使用他人签名）

### ①下载java 

1.下载Jdk
```
sudo apt install openjdk-18-jdk
```

### ②使用

1.输入
```
screen -S api
cd /root/Gocq&Qsugn/unidbg-fetch-qsign-1.1.9/unidbg-fetch-qsign&&bash bin/unidbg-fetch-qsign --basePath=txlib/8.9.78
```

没有闪退即可使用（默认使用8.9.78版本）

2.切记api不要关闭！！！

### ③配置

1.端口默认是`801`

2.key默认为`114514`

3.如需修改可打开`unidbg-fetch-qsign-1.1.9\txlib`找到你要修改的版本打开这个文件如修改`8.9.71`则打开`8.9.71\config.json`进行修改并修改gocq的配置文件

### ④启动 Go-cqhttp

1. 启动go-cqhttp

输入以下内容回车即可
```
screen -S gocq
cd /root/Bot/Gocq&Qsugn/go-cqhttp_linux_amd64
go-cqhttp
```

2. 我说过Gocq寄了，无法登录就更换签名版本（唯一的办法，不一定能行）

3. 如果出现以下内容则不用管它，不影响登录和使用

```
[WARNING]: Callback error: Packet timed out, Or response data is empty
[ERROR]: Protocol -> parse incoming packet error: return code unsuccessful: -10005
```

4. 自动提交滑块ticket无反应
- 这个不知道有没有解决办法
- 如果没反应请使用`2. 手动抓取提交`
- [使用安卓手机点击此处下载](https://maupdate.rainchan.win/txcaptcha.apk)


5. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r -d name //强制打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

### ⑤关于其他签名协议登录

1.现在个个版本都不稳定，看你73版本到最新版本哪个能登了

2.换登录版本教程在`go-cqhttp_linux_amd64\data\versions\修改版本.md`中

</details>

---

<details>
  <summary>使用[云崽]的[ws插件]跳过gocq使用icqq连接真寻bot（在2024年2月5号的晚上7点ICQQ删库...建议各位早日使用Gensokyo）</summary>

## 安装云崽

### ①安装前置

1. 下载node.js

<details>
  <summary>使用宝塔面板安装node.js</summary>

打开宝塔的软件商店搜索`Node.js版本管理器`并下载20.9.0的版本（也可以下载16/18的版本）
<br>
    <img src="图片/下载node管理器.png" width="70%">

</details>

<details>
  <summary>使用XTerminal安装node.js</summary>

终端依次输入下方内容

```
sudo apt install apt-transport-https curl ca-certificates software-properties-common
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
```

</details>

2.安装云崽机器人

因为TRSS Yunzai不依赖与Miao-Plugin与Genshin(俩大型原神插件)，所以本教程使用TRSS崽

``` 
bash <(curl -L https://gitee.com/SHIKEAIXY/zhenxun/raw/linux/Yunzai.sh)
```

<details>
  <summary>如果不想使用sh一键下载可点击此处手动下载</summary>

&nbsp;2.1. 输入以下内容并回车 

```
cd /root/Bot/
```
```
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai ./Yunzai/TRSS-Yunzai
```
```
cd Yunzai/TRSS-Yunzai
```
```
npm --registry=https://registry.npmmirror.com install pnpm -g
```
```
//可选
pnpm config set registry https://registry.npmmirror.com
```
```
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
```
```
pnpm i
```

</details>
&nbsp;

3. 安装redis数据库

<details>
  <summary>使用宝塔面板安装redis数据库</summary>

还是打开软件商店搜索`redis`（剩下的你自己搞吧，这么简单你不会还不会吧？）

</details>

<details>
  <summary>使用XTerminal安装redis数据库</summary>

终端输入下方内容

```
sudo apt install redis-server
```

安装完成后 Redis 服务会自动启动

可以使用以下命令来检查 Redis 服务的运行状态（如果 Redis 服务正在运行，你将看到类似于 "active (running)" 的输出）

```
sudo systemctl status redis-server
```

Redis 在系统启动时自动启动可以使用下方命令

```
sudo systemctl enable redis-server
```

</details>

4. 自建签名（如使用他人api可跳过）

先安装一下Jdk
```
sudo apt install openjdk-18-jdk
```

然后下载unidbg-fetch-qsign
```
cd /root/Bot/
git clone --depth 1 https://gitee.com/touchscale/Qsign
```

然后启动unidbg-fetch-qsign（此处的8.9.78可修改）
```
screen -S api
cd Qsign/unidbg-fetch-qsign&&bash bin/unidbg-fetch-qsign --basePath=txlib/8.9.78
```

#### ④机器人/配置（此时应该在root/Bot目录执行）

```
cd TRSS-Yunzai
screen -r yunzai
node app
```

1. 等待Bot的启动完成

2. 对`该窗口(运行Yunzai的Cmd)`输入`以下内容并回车`
 - 上方自建签名
```
#QQ签名http://127.0.0.1:801/sign?key=114514
```
 - 使用他人签名
```
#QQ签名https://huai-huai-8-9-78.hf.space/sign?key=ngm
```

3. 对`该窗口(运行Yunzai的Cmd)`输入`以下内容并回车`
 - 密码登录：QQ号 114514 密码 1919810 登录设备 安卓手机(1)/平板(2)
```
#QQ设置114514:1919810:2
```

4. 设置主人：发送 `#设置主人`，`日志获取验证码`并发送（QQ设置主人）

5. 触发滑动验证，需要获取ticket通过验证，请选择获取方式:`这里选择 0.自动获取ticket 进行扫码即可`

6. 连接本地bot(给云崽机器人QQ发送)

```
#ws添加连接
``` 
```
zhenxun_bot,1
``` 
```
ws://127.0.0.1:8080/onebot/v11/ws/
``` 
7. 发送`#ws查看连接`来查看是否连接成功

出现带以下内容的图片，则代表连接成功
```
连接名字: zhenxun_bot
连接类型: 1
当前状态: 已连接
```

8. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r -d name //强制打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

## 后续启动云崽
```
screen -r -d yunzai
node app
```

### 注意不要关闭云崽和真寻本体

如果连接失败大概率就是你关了真寻或者真寻启动失败了

### 更新ICQQ

私库ICQQ，需你的 GitHub 账号（且在库内）

```
cd plugins/ICQQ-Plugin
pnpm login --scope=@icqqjs --auth-type=legacy --registry=https://npm.pkg.github.com
// 执行完成后需输入账号+密码/密钥
pnpm add icqq@npm:@icqqjs/icqq
```

</details>

---

<details>
  <summary>使用Gensokyo(QQBot)连接真寻bot</summary>

# 没必要评价第三方好还是官方好，各有各的好处和弊端，能接受就用，接受不了就别用，别一天天的骂来骂去，~~你就算骂也别骂到人家开发者上去，咱能不能有点良心？~~
# 别拿着建议的理由去骂开发者，人家更不更新跟你什么关系，没强迫你更新吧？你要是认为Gensokyo更新太快就别用，把开发者气跑了你就开心高兴了？

### ①说明：

1. 新框架`Gensokyo` 视频：https://www.bilibili.com/video/BV1Aw411K7Z5

2. `Gensokyo`仓库：https://github.com/Hoshinonyaruko/Gensokyo

3. `Gensokyo`gitee镜像：https://gitee.com/sanaefox/Gensokyo

4. `Gensokyo`教程 https://www.bilibili.com/read/cv27523883

5. `Gensokyo`的`web端`用户名和密码已全部修改为`zhenxun`

6. `Gensokyo` QQ群：196173384

### ②注册企业账号

1. 随随便便注册一个企业qq开放平台账号：https://q.qq.com
<br>
    <img src="图片/企业注册.png" width="50%">

2. 登录企业qq开放平台账号并创建机器人
<br>
    <img src="图片/创建机器人.png" width="50%">

3. 填好信息后点击下一步

4. 打开后点击`基础信息-信息`
<br>
    <img src="图片/资质认证.png" width="50%">

5. 点击`详情`
<br>
    <img src="图片/资质认证2.png" width="50%">

6. 点击`进入认证`后填写相关信息并点击提交审核进行认证（目前不认证无法上线机器人，可沙箱使用）
<br>
    <img src="图片/资质认证3.png" width="50%">

### ④下载配置Gensokyo

1. 下载gensokyo-linux-amd64（取用v423，更新时间2024.6.9）若发现教程的Gensokyo版本更新，可以选择无视更新
```
cd /root/Bot/
git clone --depth 1 -b gensokyo-linux-amd64 https://gitee.com/SHIKEAIXY/zhenxun.git ./Gensokyo
```

2. 打开下载的`Gensokyo`后并双击打开`config.yml`

3. 打开之前的网站`q.qq.com`点击`开发-开发设置`并复制`ID 令牌 秘钥`填写到`config.yml配置文件`的7~10行
<br>
    <img src="图片/配置Gensokyo2.png" width="50%">
<br>
    <img src="图片/配置Gensokyo.png" width="50%">

4. 将自己服务器的公网ip填入`server_dir`
<br>
    <img src="图片/配置Gensokyo3.png" width="50%">

5. 并开放端口号`15630`（不配置将无法发送图片，不会就百度搜下吧）

6. 如果你没有公网ip可使用早苗的图床

将`server_dir`和`port`修改为下方内容

```
server_dir: "sanae.online"
port: "443" 
``` 
然后将`lotus`的`false`设置为`true`后保存即可使用
<br>
    <img src="图片/Gensokyo图床.png" width="50%">

7. 以上完成后，输入下方内容命令（此时应该在root/Bot/Gensokyo路径中）

```
screen -S gsk
chmod +x gensokyo-linux-amd64
sudo ./gensokyo-linux-amd64
```

8. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r -d name //强制打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

### ⑤配置沙箱使用机器人

1. 打开QQ点击新创建聊群（不超过20人的群）

2. 再次回到网站`q.qq.com`

3. 点击`开发-沙箱配置`后找到`在QQ群配置`将聊群修改为刚刚创建的聊群（如果失败就几秒后再试试）
<br>
    <img src="图片/机器人沙箱.png" width="50%">

4. 接下来回到QQ打开刚刚创建的聊群，点击右上角的`三个横杠`，点击`管理群-群机器人`，找到你的机器人点击添加

5. 接下来@机器人并发送真寻帮助查看是否可以发图  如：@冰祈 真寻帮助

6. 如果不行自己查看上文中让填写的ip是否为公网ip并且开放了端口号，如都设置了还不行那就去Gensokyo群问，我不到啊

**注意！！！**
 
 `zhenxun_bot`与`Gensokyo`需全部运行，不可关闭

</details>

---

<details>
  <summary>LLOneBot</summary>

https://llonebot.github.io/zh-CN/guide/getting-started

## 连接真寻

#### 安装完成需开起反向Websocket连接后并填入真寻ws地址

```
ws://127.0.0.1:8080/onebot/v11/ws/
```

</details>

---

<details>
  <summary>Lagrange.OneBot</summary>

https://lagrangedev.github.io/Lagrange.Doc/Lagrange.OneBot/Config

## 连接真寻

#### 安装完成需修改配置文件连接部分

```
{
  "Type": "ReverseWebSocket",
  "Host": "127.0.0.1",
  "Port": 8080,
  "Suffix": "/onebot/v11/ws/",
  "ReconnectInterval": 5000,
  "HeartBeatInterval": 5000,
  "AccessToken": ""
}
```

</details>

---

<details>
  <summary>Shamrock</summary>

https://whitechi73.github.io/OpenShamrock/guide/getting-started.html

## 连接真寻

#### 安装完成需修改配置文件ws地址

```
ws://127.0.0.1:8080/onebot/v11/ws/
```

</details>

---

# 六 重新启动真寻

关机/页面关上了该怎么重新启动真寻？

1. 打开真寻根目录cmd运行（root/Bot/zhenxun_bot）

```
screen -r -d zhenxun
如果你使用的是dev版真寻应使用
screen -r -d zhenxundev
```
```
poetry shell
```
```
python3 bot.py
```

2. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r -d name //强制打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

# 七 真寻插件下载
 
[插件安装问题](https://github.com/zhenxun-org/nonebot_plugins_zhenxun_bot/issues/27)

[真寻索引库](https://github.com/zhenxun-org/nonebot_plugins_zhenxun_bot)

[nb商店（不是全部都谦融）](https://nonebot.dev/store/plugins)

---

## 插件的下载方法

1. 方法一：手动拉取

在zhenxun_bot/plugins中cmd运行

简单说明：git clone为拉取，--depth 1为最近一次提交，使用该命令可加快下载速度
```
git clone --depth 1 + 仓库地址
```

---

2. 方法二：指令下载

请给你的真寻机器人发送`查看插件仓库`查看

发送完成后可发送`安装插件+序号`如：安装插件2 进行下载即可

如需卸载发送`卸载插件+序号`即可

---

下载时长会和你的网络与仓库大小有关系 