</div>
<div align="center">
<br><img src="Img/真寻.png" width="80%">

</div>

## [点击此处查看真寻bot安装时报错的解决问题](https://gitee.com/SHIKEAIXY/zhenxun/blob/master/Installation%20issues.md)

还未完善...

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

## 与真寻相关  

1. 有什么问题可以在本库提Issues

2. Windows系统的教程请查看[master分支](https://gitee.com/SHIKEAIXY/zhenxun) | 或查看[Web教程](https://docs.qsyhh.icu/docs/windows/)

3. [点击查看zhenxun_bot的介绍](https://github.com/HibiKier/zhenxun_bot/blob/main/README.md)

4. [点击查看zhenxun_bot的版本号](https://github.com/HibiKier/zhenxun_bot/releases)

5. [点击查看zhenxun_bot使用说明](https://hibikier.github.io/zhenxun_bot)

## 介绍

1. 一个Linux(Ubuntu)系统的[zhenxun_bot](https://github.com/HibiKier/zhenxun_bot)安装教程

2. 需要有一定的基础(x) 如果没有一些基础的话可会困难重重哒 为了自己喜欢的真寻加油鸭！

3. 真寻bot非常可爱 嗯 非常可爱！！！非常可爱！！！非常可爱！！！

4. 真寻bot是一个基于 [Nonebot2](https://github.com/nonebot/nonebot2) 和 [~~Go-cqhttp~~](https://github.com/Mrs4s/go-cqhttp) 的开发，以 [postgresql](https://www.postgresql.org/) 作为数据库，非常可爱的绪山真寻bot

<a href='https://gitee.com/SHIKEAIXY/zhenxun/stargazers'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/star.svg?theme=dark' alt='star的人'></img></a>

[![](https://img.shields.io/badge/Python-v3.8+-DeepSkyBlue)](https://www.python.org)
[![](https://img.shields.io/badge/Poetry-brightgreen.svg)](https://python-poetry.org)
[![](https://img.shields.io/badge/Nonebot-2.0.0-yellow)](https://nb2.baka.icu)
[![](https://img.shields.io/badge/TRSS--Yunzai-ws--plugin-red)](https://gitee.com/xiaoye12123/ws-plugin)
[![](https://img.shields.io/badge/Gensokyo-QQAPI-red)](https://github.com/Hoshinonyaruko/Gensokyo)

# 正文啦！

# 一 前置准备

## 1⃣️首先你应该准备一个Ubuntu 22+并且是2H2G+的服务器

## 2⃣️安装 宝塔面板 / XTerminal / JuiceSSH+NMM

<details>
  <summary>①安装宝塔面板（不建议）</summary>

### 打开服务器控制台找到SSH连接工具输入下方内容回车即可

```
wget -O install.sh https://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh ed8484bec
```

### 等待安装完成后打开面板（密码请牢记，如无法打开请开放终端宝塔给出的端口号）

</details>

<details>
  <summary>②安装XTerminal(Windows)</summary>

1. [点击此处下载XTerminal](https://www.xterminal.cn)

2. 下载完成后打开点击新建服务器（+号）
<br><img src="Img/SSH/XTerminal新建ssh.png" width="70%">

3. 写上一个名字/ip地址/登录密码后创建即可
<br><img src="Img/SSH/XTerminal绑定ssh.png" width="70%">

 - 你的登录密码会在你的服务商控制台显示（不知道在哪里可以去百度搜下）

4. 创建完成点击连接
<br><img src="Img/SSH/XTerminal连接ssh.png" width="70%">

</details>

<details>
  <summary>③安装JuiceSSH+NMM（Android）</summary>
  
JuiceSSH是SSH终端连接

NMM是用来文件管理

1. [点击此处下载JuiceSSH+NMM](https://musetransfer.com/s/zp0v5jxym)

2. 打开NMM左上角三个横杠再点击➕最后选择SFTP
<br><img src="Img/SSH/NMM.png" width="70%">

3. 填写配置确定即可
 - 主机：IP
 - 用户名：默认为root（一般情况）
 - 密码：登录密码
 - 其他任意
 
4. 打开JuiceSSH点击快速连接
<br><img src="Img/SSH/JuiceSSH.png" width="70%">
  
5. 配置连接
 - 格式就是：登录名@IP
 - 如：root@111.45.14
 - 最后确定输入密码
</details>

## 2⃣️安装poetry与ffmpeg和中文字体等

##### 由于Ubuntu 22+  系统自带python3.10，这里无需再次安装

1. 打开终端输入下方内容进行安装

```
sudo apt update && sudo apt upgrade && sudo apt install -y screen && sudo pip install --upgrade pip && sudo pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && sudo apt update && sudo apt install -y wget git screen ffmpeg && sudo apt install -y python3-pip && sudo pip install poetry && sudo apt install fonts-wqy-microhei && sudo fc-cache -f -v
```

## 3⃣️安装PostgreSQL数据库

<details>
  <summary>①使用宝塔面板安装PostgreSQL数据库</summary>
  
宝塔也可以SSH连接，也可以用apt安装

1. 打开软件商店搜索PostgreSQL管理器并安装（默认安装即可）
<br><img src="Img/宝塔/安装PostgreSQL管理器.png" width="70%">

2. 安装完成后点击`设置`
<br><img src="Img/宝塔/安装PostgreSQL.png" width="70%">

3. 然后点击`版本管理`，安装12.10版本（时间较长）
<br><img src="Img/宝塔/安装PostgreSQL2.png" width="70%">

4. 安装完成后点击`数据库列表`创建/添加数据库
<br><img src="Img/宝塔/创建PostgreSQL.png" width="70%">

5. `数据库名/用户名/密码`全部填写`zhenxun`后点击`确定`
<br><img src="Img/宝塔/创建PostgreSQL2.png" width="70%">

</details>

<details>
  <summary>②使用XTerminal/JuiceSSH(终端)安装PostgreSQL数据库</summary>

1. 安装PostgreSQL数据库

```
sudo apt install -y postgresql postgresql-contrib

```

2. 创建数据库(依次输入)

```
sudo su - postgres
psql
CREATE USER zhenxun WITH PASSWORD 'zhenxun';
CREATE DATABASE zhenxun OWNER zhenxun;
\q
exit
```

</details>

<details>
  <summary>②备份PostgreSQL数据库（提供方法，无需看该步骤）</summary>

1. 打开终端，输入：（创建文件夹+赋予权限）

```
mkdir -p /tmp/Postgres-BF
sudo chmod -R 777 /tmp/Postgres-BF
```

2. 输入：（进入postgres，备份，输入密码zhenxun，退出）

注意！！！需要完成`安装PostgreSQL数据库`全部步骤才能备份数据库
```
sudo -su postgres
pg_dump -U postgres -W -F t -b -v -f "/tmp/Postgres-BF/zhenxun.tar" zhenxun
zhenxun // 这里是上一条命令输入的密码！！！
exit
```

3. 备份的数据将在`/tmp/Postgres-BF/zhenxun.tar`

### 恢复备份的PostgreSQL数据库

注意！！！需要完成`安装PostgreSQL数据库 + 备份PostgreSQL数据库`全部步骤才能备份数据库

1. 终端输入：（赋予权限，进入postgres，恢复备份，退出），/tmp/Postgres-BF/zhenxun.tar是已有的备份压缩文件

```
sudo chmod -R 777 /tmp/Postgres-BF
sudo -su postgres
pg_restore -U postgres -d zhenxun -v "/tmp/Postgres-BF/zhenxun.tar"
exit
```
</details>

ok火速下一步

# 二 开始安装真寻本体

首先安装Git，以有可跳过

```
sudo apt install git
```

---

<details>
  <summary>①安装dev分支重构真寻bot(逐渐完善中...推荐安装)</summary>

<br><img src="Img/真寻/dev真寻.png" width="50%">

虽然但是...阿米已经写很多了，没写的一些比如抽卡...主分支的不是也寄了嘛...
    
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
<br><img src="Img/真寻/kook问题.png" width="50%">

5.由于dev版中由于数据迁移所用，暂未考虑新建数据库没有sign_group_users所导致无法启动，应删zhenxun/builtin_plugins/_init_.py中删除如图内容
<br><img src="Img/真寻/数据库表.png" width="50%">

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


8. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r -d name //强制打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

</details>

dev分支支持更多协议端，如DODO,Kook等，但还在完善，不过强烈推荐使用

---

<details>
  <summary>②main主分支真寻bot（不推荐使用）</summary>

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


6. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r -d name //强制打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

</details>

主分支相对稳定，其实压根不带更新的，太老了，不是很推荐使用

---

# 三 连接zhenxun_bot

<details>
  <summary>①使用[云崽]的[ws插件]跳过gocq使用icqq连接真寻bot</summary>

### 1⃣️安装前置

1. 下载node.js

<details>
  <summary>①使用宝塔面板安装node.js</summary>
  
宝塔也可以SSH连接，也可以用apt安装

打开宝塔的软件商店搜索`Node.js版本管理器`并下载20.9.0的版本（不可以下载低于18的版本）
<br><img src="Img/宝塔/下载node管理器.png" width="70%">

</details>

<details>
  <summary>②使用XTerminal/JuiceSSH安装node.js</summary>

终端依次下方内容

```
sudo apt install apt-transport-https curl ca-certificates software-properties-common && curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt-get install -y nodejs
```

</details>

### 2⃣️安装机器人和插件

1.安装云崽机器人

因为TRSS Yunzai不依赖与Miao-Plugin与Genshin(俩大型原神插件)，所以本教程使用TRSS崽

``` 
bash <(curl -L https://gitee.com/SHIKEAIXY/zhenxun/raw/linux/Yunzai.sh)
```

<details>
  <summary>如果不想使用sh一键下载可点击此处手动下载</summary>

&nbsp; 输入以下内容并回车 

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
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-ICQQ-Plugin ./plugins/ICQQ-Plugin
```
```
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
```
```
npm --registry=https://registry.npmmirror.com install pnpm -g
```
```
//可选
pnpm config set registry https://registry.npmmirror.com
```
```
pnpm i
```

</details>
&nbsp;

#i## 3⃣️安装redis数据库

<details>
  <summary>①使用宝塔面板安装redis数据库</summary>

宝塔也可以SSH连接，也可以用apt安装

还是打开软件商店搜索`redis`（剩下的你自己搞吧，这么简单你不会还不会吧？）

</details>

<details>
  <summary>②使用XTerminal/JuiceSSH安装redis数据库</summary>

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

#### 4⃣️配置ICQQ版本信息

1. 打开路径`Yunzai\TRSS-Yunzai\plugins\ICQQ-Plugin\node_modules\icqq\lib\core`
 - `没有node_modules`这个文件夹就是你依赖没装（pnpm i）

2. 找到`device.js`文件并打开

3. 翻到第`261`行

<br><img src="Img/修改ICQQ版本/修改ICQQ.png" width="50%">

4. 在`261`行后面换成转到`262`行

<br><img src="Img/修改ICQQ版本/修改ICQQ2.png" width="50%">

5. 在`262`行顶格位置粘贴下方内容后保存即可

<br><img src="Img/修改ICQQ版本/修改ICQQ3.png" width="50%">

```
    {
        name: "A9.0.70.e4b76fcc",
        version: "9.0.70.17645",
        ver: "9.0.70",
        subid: 537228487,
        apad_subid: 537228526,
        qua: "V1_AND_SQ_9.0.70_6698_YYB_D",
        channel: "GuanWang",
        sdkver: "6.0.0.2561",
        buildtime: 0x666bfec0,
        bitmap: 0x08f7ff7c,
        ssover: 0x15,
    },
```

6. 至此修改完成

### 5⃣启动️机器人

1. 执行

```
cd TRSS-Yunzai
screen -r yunzai
node app
```

2. 启动机器人
 - 在`TRSS-Yunzai`目录下cmd输入`node app`即可
```
node app
```

当你启动报错237频繁登录/非常用设备登录：

 - 尝试扫码登录Bot
 - 与载挂Bot的设备同一网络登录
 - 在本地常用设备（可登录Bot的设备）进行登录后复制Yunzai/data/icqq/QQ号整个文件夹到服务器的Yunzai/data/路径中后重试
 
### 6⃣️配置机器人

1. 等待Bot的启动完成

2. 对`该窗口(运行Yunzai的Cmd)`输入`以下内容并回车`
 - 白嫖hlh佬
```
#QQ签名https://hlhs-nb.cn/signed/?key=114514
```

3. 对`该窗口(运行Yunzai的Cmd)`输入`以下内容并回车`
 - 密码登录：QQ号 114514 密码 1919810 登录设备 安卓手机(1)/平板(2)，使用扫码登录因密码留空
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

</details>

---

<details>
  <summary>②使用Gensokyo(QQBot)连接真寻bot</summary>

# 没必要评价第三方好还是官方好，各有各的好处和弊端，能接受就用，接受不了就别用，别一天天的骂来骂去

### 1⃣️说明：

1. 新框架`Gensokyo` 视频：https://www.bilibili.com/video/BV1Aw411K7Z5

2. `Gensokyo`仓库：https://github.com/Hoshinonyaruko/Gensokyo

3. `Gensokyo`gitee镜像：https://gitee.com/sanaefox/Gensokyo

4. `Gensokyo`教程 https://www.bilibili.com/read/cv27523883

5. `Gensokyo`的`web端`用户名和密码已全部修改为`zhenxun`

6. `Gensokyo` QQ群：196173384

### 2⃣️注册个体账号

1. 注册一个企业qq开放平台账号：[点我前往注册](https://q.qq.com/#/register?developerType=1)

2. 登录企业qq开放平台账号并创建机器人

<br><img src="Img/Gensokyo/创建机器人.png" width="50%">

3. 填好信息后点击下一步（我相信你会）

### 3⃣️下载配置Gensokyo

1. 下载gensokyo-linux-amd64（取用v459，更新时间2024.7.10）若发现教程的Gensokyo版本更新，可以选择无视更新
```
cd /root/Bot/
git clone --depth 1 -b gensokyo-linux-amd64 https://gitee.com/SHIKEAIXY/zhenxun.git ./Gensokyo
```

2. 打开下载的`Gensokyo`后并双击打开`config.yml`

3. 打开之前的网站`q.qq.com`点击`开发-开发设置`并复制`ID 令牌 秘钥`填写到`config.yml配置文件`的7~10行
<br><img src="Img/Gensokyo/配置Gensokyo2.png" width="50%">
<br><img src="Img/Gensokyo/配置Gensokyo.png" width="50%">

4. 将自己服务器的公网ip填入`server_dir`
<br><img src="Img/Gensokyo/配置Gensokyo3.png" width="50%">

5. 并开放端口号`15630`（不配置将无法发送图片，不会就百度搜下吧）

6. 记得服务器控制台那边也要开放端口`15630`！！！

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

### 4⃣️配置沙箱使用机器人

1. 打开QQ点击新创建聊群（不超过20人的群）

2. 再次回到网站`q.qq.com`

3. 点击`开发-沙箱配置`后找到`在QQ群配置`将聊群修改为刚刚创建的聊群（如果失败就几秒后再试试）
<br><img src="Img/Gensokyo/机器人沙箱.png" width="50%">

4. 接下来回到QQ打开刚刚创建的聊群，点击右上角的`三个横杠`，点击`管理群-群机器人`，找到你的机器人点击添加

5. 接下来@机器人并发送真寻帮助查看是否可以发图  如：@绪山小真寻 真寻帮助

6. 如果不行自己查看上文中让填写的ip是否为公网ip并且开放了端口号，如都设置了还不行那就去Gensokyo群问，我不到啊

## 至于怎么上线你自己研究吧

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