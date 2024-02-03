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
- 你要是非用脚本也拦不住你对吧 [官方传送门](https://github.com/zhenxun-org/zhenxun_bot-deploy) [TRSS脚本传送门](https://trss.me/Install/Windows.html)

### 来下载2000张真寻图片吧~

既然是喜欢真寻的肯定也喜欢真寻的表情包/头像/壁纸吧

[点击此处获取高达2000张的超级可爱的真寻表情包吧！！！](https://gitee.com/SHIKEAIXY/zhenxun-wallpaper-picture)

## 聊天群QQ：778502891

## 与真寻相关  

1. 有什么问题可以在本库提Issues或者加上方聊群询问

2. win系统的教程请看[master主分支](https://gitee.com/SHIKEAIXY/zhenxun)

3. [点击查看zhenxun_bot的介绍](https://github.com/HibiKier/zhenxun_bot/blob/main/README.md)

4. [点击查看zhenxun_bot的更新内容](https://github.com/HibiKier/zhenxun_bot/releases)

5. [点击查看zhenxun_bot使用说明](https://hibikier.github.io/zhenxun_bot/ )

## 介绍

1. 一个linux（Ubuntu）系统的[zhenxun_bot](https://github.com/HibiKier/zhenxun_bot)安装教程

2. 需要有一定的基础 如果没有一些基础的话可会困难重重哒 为了自己喜欢的真寻加油鸭！

3. 真寻bot非常可爱 嗯 非常可爱！！！非常可爱！！！非常可爱！！！

4. 真寻bot是一个基于 [Nonebot2](https://github.com/nonebot/nonebot2) 和 [~~go-cqhttp~~](https://github.com/Mrs4s/go-cqhttp) 的开发，以 [postgresql](https://www.postgresql.org/) 作为数据库，非常可爱的绪山真寻bot

<a href='https://gitee.com/SHIKEAIXY/zhenxun/stargazers'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/star.svg?theme=dark' alt='star的人'></img></a>
<a href='https://gitee.com/SHIKEAIXY/zhenxun/members'><img src='https://gitee.com/SHIKEAIXY/zhenxun/badge/fork.svg?theme=dark' alt='fork的人'></img></a>
[![](https://img.shields.io/badge/python-v3.8+-DeepSkyBlue)](https://www.python.org)
[![](https://img.shields.io/badge/poetry-brightgreen.svg)](https://python-poetry.org)
[![](https://img.shields.io/badge/nonebot-2.0.0-yellow)](https://nb2.baka.icu)
[![](https://img.shields.io/badge/go--cqhttp-1.0.0-red)](https://docs.go-cqhttp.org/)
[![](https://img.shields.io/badge/TRSS--Yunzai/Miao--Yunzai-ws--plugin-red)](https://gitee.com/xiaoye12123/ws-plugin)
[![](https://img.shields.io/badge/Gensokyo-QQAPI-red)](https://github.com/Hoshinonyaruko/Gensokyo)

本仓库访问量 统计时间2023.4.16 （好可怜）

[![访问量](https://profile-counter.glitch.me/zhenxun/count.svg)](https://gitee.com/SHIKEAIXY/zhenxun.git)

# 正文啦！

# 一 安装宝塔面板

### ①首先你应该准备一个Ubuntu22+并且是2H4G的服务器（自带ptyhon3.8）

### ②打开服务器控制台找到SSH连接工具输入下方内容回车即可（各大服务商都不一样，我就不举例了）

```
wget -O install.sh https://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh ed8484bec
```

### ③等待安装完成后打开面板（密码请牢记，如无法打开请开放端口）


# 二 前置准备

### ①安装poetry以及ffmpeg

1. 打开宝塔依次终端输入下方内容

```
sudo pip install --upgrade pip
sudo pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
sudo apt update && sudo apt install -y wget git screen ffmpeg
sudo apt install -y python3-pip
sudo pip install poetry
```

# 三 安装PostgreSQL数据库

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

ok火速下一步

# 三 开始安装真寻本体

1. 通过github下载真寻本体（在root执行）

```
git clone --depth 1 https://github.com/HibiKier/zhenxun_bot ./Bot/zhenxun_bot
```

2. 执行下面内容（在root执行）

``` 
cd Bot/zhenxun_bot
sed -i 's|bind.*|bind: str = "postgres://zhenxun:zhenxun@localhost:5432/zhenxun"|g' configs/config.py
poetry install
sudo pip install playwright
playwright install chromium
```

3. 在SUPERUSERS中添加自己大号（主人）的QQ号，123456789为QQ号，修改后执行即可

```
sed -i 's/SUPERUSERS.*/SUPERUSERS=["123456789"]/g' .env.dev
```

4. 启动真寻，会在 configs 和 data/configs 目录下生成各种配置文件

```
sudo apt install -y screen
screen -S zhenxun
poetry shell
python3 bot.py
```

5. 打开 configs/config.yaml，里面包含的是各种插件的配置项，填写完毕后重启真寻Bot（如果你没有这些需求可以忽略这步，毕竟默认配置了）

6. 重新运行真寻机器人（接下来会下载一些资源，下载失败的也不用管）

```
screen -r zhenxun
poetry shell
python3 bot.py
```

7. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r name //打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

# 四 连接zhenxun_bot

<details>
  <summary>使用go-cqhttp连接真寻bot（不建议）</summary>

# 再提醒你一句，gocq作者已经不再更新，签名服务以无法解决gocq45问题

## ①安装go-cqhttp

1. 下载go-cqhttp（此时我们的目录在root/Bot）

```
git clone --depth 1 -b go-cqhttp_1.2.0_linux_arm64.deb https://gitee.com/SHIKEAIXY/zhenxun.git ./go-cqhttp
```

2. 打开root/Bot/go-cqhttp/config.yml，修改qq账号和密码，后保存

3. 安装unidbg-fetch-qsign（返回root/Bot目录终端输入）

```
bash <(curl -L https://sourl.cn/UT4an4)
```
当出现：请选择使用 systemd 或 Docker 进行管理

请选择：1. systemd管理（官方推荐）

当出现：请输入数字选项: 

请选择：0

当出现：输入执行版本(比如 8.9.76) :

请输入8.9.78

完成后可在终端输入下发内容查看签名是否运行成功
```
curl http://127.0.0.1:8080
```

4. 启动go-cqhttp（此时应该在root/Bot/go-cqhttp目录终端输入）

输入以下内容回车即可
```
screen -S gocq
go-cqhttp
```

5. 我说过gocq寄了，无法登录就更换签名版本（唯一的办法，不一定能行）

6. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r name //打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

</details>

---

<details>
  <summary>使用[云崽]的[ws插件]跳过gocq使用icqq连接真寻bot</summary>

## 安装云崽

### ①安装前置

1. 下载node.js

打开宝塔的软件商店搜索`Node.js版本管理器`并下载20.9.0的版本（也可以下载16/18的版本）
<br>
    <img src="图片/下载node管理器.png" width="70%">

2.安装云崽机器人（此时应该在root/Bot目录）

```
bash <(curl -L https://gitee.com/SHIKEAIXY/zhenxun/raw/linux/Yunzai.sh)
```

<details>
  <summary>如果不想使用sh一键下载可点击此处手动下载</summary>

&nbsp;2.1. 在终端root/Bot目录依次输入以下内容并回车 

```
git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git ./Miao-Yunzai/
```
```
cd Miao-Yunzai
```
```
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
```
```
npm --registry=https://registry.npmmirror.com install pnpm -g
```
```
//可选
pnpm config set registry https://registry.npmmirror.com
```
```
pnpm install -P
```
```
pnpm add puppeteer@19.7.3 -w
```
```
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
```
```
pnpm install --filter=ws-plugin
```
</details>
&nbsp;

3. 安装redis数据库

还是打开软件商店搜索`redis`（剩下的你自己搞吧，累了）

4. 安装unidbg-fetch-qsign（此时应该在root/Bot目录）
```
cd ..
bash <(curl -L https://sourl.cn/UT4an4)
```
当出现：请选择使用 systemd 或 Docker 进行管理

请选择：1. systemd管理（官方推荐）

当出现：请输入数字选项: 

请选择：0

当出现：输入执行版本(比如 8.9.76) :

请输入8.9.78

完成后可在终端输入下发内容查看签名是否运行成功
```
curl http://127.0.0.1:8080
```

#### ④机器人/配置（此时应该在root/Bot目录执行）

```
cd Miao-Yunzai
screen -r yunzai
node app
```

1. 请输入机器人QQ号(建议用小号)：`这里输入机器人的QQ号即可`

2. 请输入登录密码(为空则扫码登录)：`这里输入机器人的QQ密码即可`

3. 请选择登录端口：`这里请通过方向键选择aPad！！！`

4. 请输入主人QQ号：`这里输入用来管理机器人的QQ号即可`

5. 请输入签名API地址（可留空）：`这里输入下方内容即可`

```
http://http://127.0.0.1:8080/sign?key=114514
```
<br>
    <img src="图片/机器人配置.png" width="50%">

5. 触发滑动验证，需要获取ticket通过验证，请选择获取方式:`这里选择 0.自动获取ticket 进行扫码即可`

6. 查看云崽bot是否正常运行，如运行成功请关掉云崽重新输入`node app`并回车启动机器人

7. 连接本地bot(给云崽机器人QQ发送)

```
#ws添加连接
``` 
```
zhenxun_bot,1
``` 
```
ws://127.0.0.1:8080/onebot/v11/ws/
``` 
8. 发送`#ws查看连接`来查看是否连接成功

出现带以下内容的图片，则代表连接成功
```
连接名字: zhenxun_bot
连接类型: 1
当前状态: 已连接
```
### 注意不要关闭云崽和真寻本体

如果连接失败大概率就是你关了真寻或者真寻启动失败了

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

1. 下载gensokyo-linux-amd64（取用v316，且此时应该在root/Bot目录）若发现教程的Gensokyo版本更新，可以选择无视更新
```
git clone --depth 1 -b gensokyo-linux-amd64 https://gitee.com/SHIKEAIXY/zhenxun.git ./Gensokyo
```

2. 打开下载的`Gensokyo`后并双击打开`config.yml`（此时应该在root/Bot/Gensokyo路径中）

3. 打开之前的网站`q.qq.com`点击`开发-开发设置`并复制`ID 令牌 秘钥`填写到`config.yml配置文件`的7~9行
<br>
    <img src="图片/配置Gensokyo2.png" width="50%">
<br>
    <img src="图片/配置Gensokyo.png" width="50%">

4. 将自己服务器的公网ip填入`server_dir`并开放端口号`15630`（不配置将无法发送图片）
<br>
    <img src="图片/配置Gensokyo3.png" width="50%">

5. 如果你没有公网ip可使用早苗的图床

将`lotus`的`false`设置为`true`

将`server_dir`和`port`修改为下方内容后保存即可使用

```
server_dir: "sanae.online"
port: "443" 
``` 

6. 以上完成后，输入下方内容命令（此时应该在root/Bot/Gensokyo路径中）

```
screen -S gsk
./gensokyo-linux-amd64
```

7. 关于screen命令说明：

* screen命令一般用于Linux的持久化运行
* 其中下方命令当中的name为创建screen窗口的名称
```
screen -S name //创建一个screen窗口
screen -r name //打开这个screen窗口
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

# 五 重新启动真寻

关机/页面关上了该怎么重新启动真寻？

1. 打开真寻根目录cmd运行（root/Bot/zhenxun_bot）

```
screen -r zhenxun
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
screen -r name //打开这个screen窗口
screen -ls     //查看全部screen窗口
screen -S name -X quit  //删除这个screen窗口
```

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