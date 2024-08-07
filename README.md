</div>
<div align="center">
<br>
    <img src="Img/真寻.png" width="80%">

</div>

# 后续教程将只在Web更新

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

2. linux系统的教程请查看[linux分支](https://gitee.com/SHIKEAIXY/zhenxun/tree/linux) | 或查看[Web教程](https://docs.qsyhh.icu/docs/linux/)

3. [点击查看zhenxun_bot的介绍](https://github.com/HibiKier/zhenxun_bot/blob/main/README.md)

4. [点击查看zhenxun_bot的版本号](https://github.com/HibiKier/zhenxun_bot/releases)

5. [点击查看zhenxun_bot使用说明](https://hibikier.github.io/zhenxun_bot)

## 介绍

1. 一个Windows系统的[zhenxun_bot](https://github.com/HibiKier/zhenxun_bot)安装教程

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

# 一 准备工作

## ➊ 首先你应该准备一个2核4G+并且是Win10+(2016+推荐最新)的服务器(推荐使用Linux)

---

## ➋安装 版本大于3.9以上Python 与 任意版本的Poetry

### ①安装python

这里我推荐安装Python3.10

[点击下载Py3.10](https://musetransfer.com/s/mpvqvvofz)

下面两个对钩点上 然后点击Install Now等待安装完成
<br><img src="Img/python安装/py安装.png" width="50%">

安装完成打开cmd输入py 查看是否有Py版本输出

### ②安装poetry

1. 使用pip安装
```
python -m pip install -U pip
```
```
pip install poetry
```

2. 打开cmd发送poetry查看是否有版本输出

如果没有请重启电脑 重新打开cmd输入 poetry

还不行？[点击此处解决](https://cn.bing.com)

---

## ➌ 安装Postgresql

### ①下载Postgresql数据库

[点击此处将下载Postgresql-16.3-2版本安装包](https://get.enterprisedb.com/postgresql/postgresql-16.3-2-windows-x64.exe)

不想要16.3-2版本的可以自行下载别的版本（尽量使用新版）

### ②安装postgresql数据库

1.双击安装程序，点击Next（打不开报错？系统用户名不能是中文，计算机名也不能是中文，其他问题。。。不要找我 我也不会）

<br><img src="Img/postgresql数据库/安装数据库.png" width="50%">

2.选择安装路径（对路径没有要求不用改 默认c盘），继续Next

安装路径中不要出现中文！（防止报错）

<br><img src="Img/postgresql数据库/数据库安装路径.png" width="50%">

3.去掉即可，不影响使用，Stack BuilderNext

<br><img src="Img/postgresql数据库/取消Stack Builder安装.png" width="50%">


4.数据存储路径（对路径没有要求不用改 默认c盘），Next

<br><img src="Img/postgresql数据库/数据存储路径.png" width="50%">

5.输入Postgres用户的密码，例如：zhenxun（防止后期问题请按照本教程的密码输入 上下全部输入zhenxun）

<br><img src="Img/postgresql数据库/数据库密码.png" width="50%">

6.默认端口，Next

<br><img src="Img/postgresql数据库/数据库端口.png" width="50%">

7.接下来一路点Next直到进入安装

<br><img src="Img/postgresql数据库/一路下一步.png" width="50%">

8.显示下面的图 代表你安装完成

<br><img src="Img/postgresql数据库/数据库安装完成.png" width="50%">

### ③配置连接

1.找到安装的PgAdmin启动数据库 并启动

在应用中搜索 pgAdmin 点击展开 找到下面图片显示的打开即可

<br><img src="Img/postgresql数据库/启动数据库.png" width="80%">

设置中文：

点击左上角的`file`

<br><img src="Img/postgresql数据库/数据库中文.png" width="50%">

然后再点击左上角的`Preferences`

<br><img src="Img/postgresql数据库/数据库中文2.png" width="50%">

然后依次点击图片中数字的位置

<br><img src="Img/postgresql数据库/数据库中文3.png" width="50%">

2.新建连接

点击`Servers`

<br><img src="Img/postgresql数据库/添加数据库-1.png" width="50%">

然后输入密码勾选保存后确定即可（密码是zhenxun 前面设置的密码）

<br><img src="Img/postgresql数据库/添加数据库0.png" width="50%">

左侧栏右键点击后选择，在点击ServersRegister服务器

<br><img src="Img/postgresql数据库/添加数据库.png" width="50%">

随便给它起一个响亮的名字（

<br><img src="Img/postgresql数据库/真寻名字.png" width="50%">

填写配置，如果是连接远程服务器的话对应的服务器IP，本地的话可以直接填写 就是安装时配置的端口，没有修改的话默认

就是安装时配置的密码主机名称/地址127.0.0.1端口5432 密码就是你安装是输入的密码（本教程前面用的是zhenxun）

<br><img src="Img/postgresql数据库/编辑数据库1.png" width="50%">

3.点击保存

左侧栏会出现一个可爱真寻

<br><img src="Img/postgresql数据库/编辑数据库2.png" width="50%">

### ④新建数据库

1.点击展开

2.右击，选择后点击数据库创建数据库

<br><img src="Img/postgresql数据库/新建数据库.png" width="50%">

3.直接创建

设置数据库名称后点击保存 

<br><img src="Img/postgresql数据库/保存数据库.png" width="50%">

ok火速下一步

## 二 开始安装真寻本体

请安装Git，已有可跳过

[点击我进行下载Git](https://registry.npmmirror.com/-/binary/git-for-windows/v2.45.2.windows.1/Git-2.45.2-64-bit.exe)

---

<details>
  <summary>①安装dev分支重构真寻bot(逐渐完善中...推荐安装)</summary>

<br><img src="Img/安装真寻/dev真寻.png" width="50%">
    
虽然但是...阿米已经写很多了，没写的一些比如抽卡...主分支的不是也寄了嘛...
    
1.github下载真寻本体

```
git clone --depth 1 -b dev https://github.com/HibiKier/zhenxun_bot
```

2.在zhenxun_bot文件夹内(真寻根目录)依次执行下面内容安装依赖（无法进入虚拟可尝试管理员权限打开输入）

```
poetry shell
poetry add pyyaml@latest
poetry lock --no-update
poetry install
playwright install chromium
```

3.设置超级用户，打开 .env.dev 文件（在真寻根目录），在中添加自己大号（主人）的QQ号，123456789为QQ号

    SUPERUSERS=["123456789"]

4.打开 zhenxun/configs/config.py 填写数据库数据

```
-----------------------------------------------------------
-----------------------------------------------------------
 如果你听我的话了 密码和名字与我填的一样 且数据库也在该服务器上 
 可以直接复制以下配置 替换掉 configs/config.py 中的数据库数据
-----------------------------------------------------------
-----------------------------------------------------------

```
```

bind: str = ""  # 数据库连接链接
sql_name: str = "postgres"
user: str = "postgres"
password: str = "zhenxun"
address: str = "127.0.0.1"
port: str = "5432"
database: str = "zhenxun"

```
```
---------------------------------------------------------------
---------------------------------------------------------------
  -------------------如果没有听我的怎么办呢--------------------
  -----------------按照下面的格式进行修改即可------------------
---------------------------------------------------------------
---------------------------------------------------------------

# 数据库（必要）
# 如果填写了bind就不需要再填写后面的字段了
# 示例："bind": "postgres://user:password@127.0.0.1:5432/database"
bind: str = ""       #数据库连接链接
sql_name: str = "postgres"
user: str = ""       #数据用户名
password: str = ""   #数据库密码
address: str = ""    #数据库地址
port: str = ""       #数据库端口
database: str = ""   #数据库名称

```

5.由于dev默认开启kaihiela(kook)，不连接将会无法启动，非使用kook连接需手动把env.dev里如图内容注释或删掉

<br><img src="Img/安装真寻/kook问题.png" width="50%">

6.由于dev版中由于数据迁移所用，暂未考虑新建数据库没有sign_group_users所导致无法启动，应删zhenxun/builtin_plugins/_init_.py中删除如图内容

<br><img src="Img/安装真寻/数据库表.png" width="50%">

7.启动真寻(虚拟环境内)，会在 zhenxun/configs 和 data/configs 目录下生成各种配置文件

```
python bot.py
```

（如果你没有这些需求可以忽略这步，毕竟默认配置了）

8.打开 zhenxun/configs/config.yaml，里面包含的是各种插件的配置项，填写完毕后重启真寻Bot

</details>

dev分支支持更多协议端，如DODO,Kook等，但还在完善，仅部署QQ真寻暂不建议使用

---

<details>
  <summary>②main主分支真寻bot（不推荐使用）</summary>

1.github下载真寻本体

```
git clone --depth 1 https://github.com/HibiKier/zhenxun_bot
```

2.在zhenxun_bot文件夹(真寻根目录)内依次执行下面内容安装依赖（无法进入虚拟可尝试管理员权限打开输入）

```
poetry shell
poetry add pyyaml@latest
poetry lock --no-update
poetry install
playwright install chromium
```

3.设置超级用户，打开 .env.dev 文件（在真寻根目录），在中添加自己大号（主人）的QQ号，123456789为QQ号

    SUPERUSERS=["123456789"]

4.打开 configs/config.py 填写数据库数据

```
-----------------------------------------------------------
-----------------------------------------------------------
 如果你听我的话了 密码和名字与我填的一样 且数据库也在该服务器上 
 可以直接复制以下配置 替换掉 configs/config.py 中的数据库数据
-----------------------------------------------------------
-----------------------------------------------------------

```
```

bind: str = ""  # 数据库连接链接
sql_name: str = "postgres"
user: str = "postgres"
password: str = "zhenxun"
address: str = "127.0.0.1"
port: str = "5432"
database: str = "zhenxun"

```
```
---------------------------------------------------------------
---------------------------------------------------------------
  -------------------如果没有听我的怎么办呢--------------------
  -----------------按照下面的格式进行修改即可------------------
---------------------------------------------------------------
---------------------------------------------------------------

# 数据库（必要）
# 如果填写了bind就不需要再填写后面的字段了
# 示例："bind": "postgres://user:password@127.0.0.1:5432/database"
bind: str = ""       #数据库连接链接
sql_name: str = "postgres"
user: str = ""       #数据用户名
password: str = ""   #数据库密码
address: str = ""    #数据库地址
port: str = ""       #数据库端口
database: str = ""   #数据库名称

```

5.启动真寻(虚拟环境内)，会在 configs 和 data/configs 目录下生成各种配置文件

```
python bot.py
```

（如果你没有这些需求可以忽略这步，毕竟默认配置了）

6.打开 configs/config.yaml，里面包含的是各种插件的配置项，填写完毕后重启真寻Bot

</details>

主分支相对稳定，其实压根不带更新的，太老了，不是很推荐使用

---

# 三 连接zhenxun_bot

<details>
  <summary>使用[云崽]的[ws插件]跳过gocq使用icqq连接真寻bot</summary>

## 安装云崽

### ①安装前置

1. 下载Node.Js（20以上的Node.Js！！！）

[点击此处下载Node.Js](https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/v20.9.0/node-v20.9.0-x86.msi)

2. 右键鼠标打开`Open Git Bash here`

Win11需先点击显示更多选项后才显示`Open Git Bash here`

<br><img src="Img/打开Git/win11打开git.png" width="40%">

<br><img src="Img/打开Git/win打开git2.png" width="40%">
 
因为TRSS Yunzai不依赖与Miao-Plugin与Genshin(俩大型原神插件)，所以本教程使用TRSS崽

然后运行下方命令
```
bash <(curl -L https://gitee.com/SHIKEAIXY/zhenxun/raw/master/Yunzai.sh)
```

<details>
  <summary>如果不想使用sh一键下载可点击此处手动下载</summary>

&nbsp;2.1. 在cmd依次输入以下内容并回车 

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
```
cd ..
```
```
git clone --depth 1 -b redis https://gitee.com/SHIKEAIXYY/Trss-ComWeChat-Yunzai.git ./redis
```
</details>
&nbsp;

#### 配置ICQQ版本信息

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

#### ②说明

1. 安装完的`云崽`和`数据库`在你bat运行的同级目录`Yunzai`的文件夹中

2. `redis`为数据库

3. `Trss-Yunzai`为机器人本体

### ③启动云崽

1. 请打开`Yunzai`文件夹

2. 运行`redis`数据库（运行`redis/双击我启动redis.bat`即可）

3. 启动机器人并配置
 - 在`TRSS-Yunzai`目录下cmd输入`node app`即可
```
node app
```

当你启动报错237频繁登录/非常用设备登录：

 - 尝试扫码登录Bot
 - 与载挂Bot的设备同一网络登录
 - 在本地常用设备（可登录Bot的设备）进行登录后复制Yunzai/data/icqq/QQ号整个文件夹到服务器的Yunzai/data/路径中后重试

#### ④机器人配置

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
  <summary>使用Gensokyo(QQBot)连接真寻bot(需要公网IP)</summary>

# 没必要评价第三方好还是官方好，各有各的好处和弊端，能接受就用，接受不了就别用，别一天天的骂来骂去，~~你就算骂也别骂到人家开发者上去，咱能不能有点良心？~~ 
# 别拿着建议的理由去骂开发者，人家更不更新跟你什么关系，没强迫你更新吧？

### ①说明：

1. 新框架`Gensokyo` 视频：https://www.bilibili.com/video/BV1Aw411K7Z5

2. `Gensokyo`仓库：https://github.com/Hoshinonyaruko/Gensokyo

3. `Gensokyo`gitee镜像：https://gitee.com/sanaefox/Gensokyo

4. `Gensokyo`教程 https://www.bilibili.com/read/cv27523883

5. `Gensokyo`的`web端`用户名和密码已全部修改为`zhenxun`

6. `Gensokyo` QQ群：196173384

### ②注册个体账号

1. 注册一个企业qq开放平台账号：[点我前往注册](https://q.qq.com/#/register?developerType=1)

2. 登录企业qq开放平台账号并创建机器人

<br><img src="Img/Gensokyo/创建机器人.png" width="50%">

3. 填好信息后点击下一步（我相信你会）

### ④下载配置Gensokyo

1. 下载gensokyo-windows-amd64（取用v459，更新时间2024.7.10）若发现教程的Gensokyo版本更新，可以选择无视更新

```
git clone --depth 1 -b gensokyo-windows-amd64 https://gitee.com/SHIKEAIXY/zhenxun.git ./Gensokyo
```

2. 打开下载的`Gensokyo`后并双击打开`config.yml`

3. 打开之前的网站`q.qq.com`点击`开发-开发设置`并复制`QQ号 ID 令牌 秘钥`填写到`config.yml配置文件`的7~9行

<br><img src="Img/Gensokyo/配置Gensokyo2.png" width="50%">

<br><img src="Img/Gensokyo/配置Gensokyo.png" width="50%">

4. 填写公网IP至开放平台（不填写无法上线和连接Bot）

<br><img src="Img/Gensokyo/配置开放平台IP.png" width="50%">

5. 将自己服务器的公网ip填入`server_dir`

<br><img src="Img/Gensokyo/配置Gensokyo3.png" width="50%">

6. 并开放端口号`15630`（不配置将无法发送图片）

打开防火墙(不会可以`按住win键+R键`输入`Firewall.cpl`并点击确定)

<br><img src="Img/Gensokyo/防火墙.png" width="50%">

打开防火墙后点击`高级设置`

<br><img src="Img/Gensokyo/防火墙2.png" width="50%">

然后点击`入站规则`并`新建规则`

<br><img src="Img/Gensokyo/防火墙3.png" width="50%">

选择端口后下一页
<br><img src="Img/Gensokyo/防火墙4.png" width="50%">

然后填写端口`15630`并下一页
<br><img src="Img/Gensokyo/防火墙5.png" width="50%">

然后一直下一页即可，名字随便起

记得服务器控制台那边也要开放端口`15630`！！！

7. 以上完成后双击运行`gensokyo.bat`不出意外就可以运行了

### ⑤配置沙箱使用机器人

1. 打开QQ点击新创建聊群（不超过20人的群）

2. 再次回到网站`q.qq.com`

3. 点击`开发-沙箱配置`后找到`在QQ群配置`将聊群修改为刚刚创建的聊群（如果失败就几秒后再试试）
<br><img src="Img/Gensokyo/机器人沙箱.png" width="50%">

4. 接下来回到QQ打开刚刚创建的聊群，点击右上角的`三个横杠`，点击`管理群-群机器人`，找到你的机器人点击添加

5. 接下来@机器人并发送真寻帮助查看是否可以发图  如：@绪山小真寻 真寻帮助

6. 如果不行自己查看上文中让填写的ip是否为公网ip并且开放了端口号，如都设置了还不行那就找作者去，我不到啊

## 至于怎么上线你自己研究吧

**注意！！！**
 
 `zhenxun_bot`与`Gensokyo`需全部运行，不可关闭

</details>

---

<details>
  <summary>使用ComWeChat(微信hook)连接真寻bot（更不建议）</summary>

## ①下载WeChat微信

版本有限制，请务必安装下方链接中的微信客户端！！！(已有微信需卸载后再安装)

[点击我进行下载WeChat](https://musetransfer.com/s/edx8lnrvo)

## ②登录微信（微信账号需要实名）

登录后，可选安装禁用更新补丁防止自动更新，[点击此处下载禁用微信更新](https://gitee.com/SHIKEAIXYY/Trss-ComWeChat-Yunzai/releases/download/1.1/禁用pc微信自动升级补丁.exe)


## ③下载ComWeChat

```
git clone --depth 1 -b ComChat https://gitee.com/SHIKEAIXY/zhenxun.git ./ComWeChat
```

## ④运行ComWeChat

1. 请先下载vc库，请正确下载电脑适用的版本，安装完成未生效请重启电脑

2. [点击此处下载vc库](https://learn.microsoft.com/zh-cn/cpp/windows/latest-supported-vc-redist?view=msvc-170)

3. 打开 ComWeChat 文件夹

4. 双击运行`install.bat`(报错就是vc库没安装)

6. 双击运行`ComWeChat-Client-v0.0.8.exe`后等待连接

# 请保持真寻Bot，ComWeChat，微信的运行，不要关闭

# 关于低版本微信无法登录问题

这个问题原因是
 - tx会联网检测版本号
 - 当小于一定的值时就会去禁止我们登录
   - 假设这个值为5，当大于5时跳过，当小于5时就会禁止我们登录
 - 由此可知，为了防止无法登录我们有必要将版本号修改为大于tx的设定的值
   - 由于我们不知道这个值是多少，所以修改时可以修改为当前最新版微信版本号
   
## 解决办法

# [点击查看视频教程](https://www.bilibili.com/video/)

由上文可知原理，所以我们可以用`Cheat Engine`去进行修改

[点我下载Cheat Engine](https://www.cheatengine.org/downloads.php)

1. 下载完成后`点击`

<br><img src="Img/Cheat/Cheat1.png" width="35%">

2. 打开`微信`（待扫码状态）

3. 选择`Processes`

<br><img src="Img/Cheat/Cheat2.png" width="35%">

4. 找到`数字/字母-Wechat.exe`后点击

<br><img src="Img/Cheat/Cheat3.png" width="35%">

5. 再点击`Open`

<br><img src="Img/Cheat/Cheat4.png" width="35%">

6. `勾选Hex`后`替换000000`为`下方内容`即可

```
6307001E
```

<br><img src="Img/Cheat/Cheat5.png" width="35%">

7. 然后点击`FIrst Scan`

<br><img src="Img/Cheat/Cheat6.png" width="35%">

8. 然后`ctrl+A全选`后`点击箭头`

<br><img src="Img/Cheat/Cheat7.png" width="35%">

9. 然后继续`ctrl+A全选`下面的内容

<br><img src="Img/Cheat/Cheat8.png" width="35%"> 

10. 然后`左键点击参数`修改为`下方内容`（使用最新3.9.11.17）

```
63090B11
```
<br><img src="Img/Cheat/Cheat9.png" width="35%"> 

11. 然后点击`OK`

12. 保存修改数据（并非永久生效，重新登录需再次修改，本步骤是保存CT文件，方便下次进行修改）

<br><img src="Img/Cheat/Cheat10.png" width="35%"> 

</details>

---

<details>
  <summary>LLOneBot</summary>

https://llonebot.github.io/zh-CN/guide/getting-started

## 连接真寻

#### 安装完成需开起反向连接并填入真寻ws地址

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

# 五 重新启动真寻

关机/页面关上了该怎么重新启动真寻？

1. 打开真寻根目录cmd运行

```
poetry shell
```
```
python bot.py
```
#### 启动命令说明
- poetry shell 这个是进入虚拟环境
- python bot.py 这个是用python来运行bot.py这个文件

# 六 真寻插件下载
 
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