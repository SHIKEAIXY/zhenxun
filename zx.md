<div align=center><img width="320" height="320" src="https://raw.githubusercontent.com/HibiKier/zhenxun_bot/main/logo.png"/></div>

![maven](https://img.shields.io/badge/python-3.8%2B-blue)
![maven](https://img.shields.io/badge/nonebot-2.0.0-yellow)
![maven](https://img.shields.io/badge/go--cqhttp-1.0.0-red)

# 绪山真寻Bot

****
此项目基于 Nonebot2 和 go-cqhttp 开发，以 postgresql 作为数据库的QQ群娱乐机器人

## 关于  

是新手！希望有个地方讨论绪山真寻Bot，或者有问题或建议，可以发送issues或加入[ <strong>[是真寻酱哒(萌新版)](https://jq.qq.com/?_wv=1027&k=u8PgBkMZ) </strong>]

[//]: # (是老手！讨论插件开发，nonebot2开发，可以加入[ <strong>[真寻酱的技术群]&#40;https://jq.qq.com/?_wv=1027&k=u8PgBkMZ&#41; </strong>])

# Nonebot2

<img style="height: 200px;width: 200px;" src="https://camo.githubusercontent.com/0ef71e86056da694c540790aa4a4e314396884d6c4fdb95362a7538b27a1b034/68747470733a2f2f76322e6e6f6e65626f742e6465762f6c6f676f2e706e67">

非常 [ **[NICE](https://github.com/nonebot/nonebot2)** ] 的OneBot框架

## 未完成的文档

# [传送门](https://hibikier.github.io/zhenxun_bot/)

## 真寻的帮助

请对真寻说: '真寻帮助' or '管理员帮助' or '超级用户帮助' or '真寻帮助 指令'

## 普通帮助图片

![x](https://raw.githubusercontent.com/HibiKier/zhenxun_bot/main/docs_image/help.png)

## HTML版帮助图片

![x](https://raw.githubusercontent.com/HibiKier/zhenxun_bot/main/docs_image/html_help.png)

## Web UI

[zhenxun_bot_webui](https://github.com/HibiKier/zhenxun_bot_webui)

## 一键安装脚本

[zhenxun_bot-deploy](https://github.com/AkashiCoin/zhenxun_bot-deploy)

## 提供符合真寻标准的插件仓库

[AkashiCoin/nonebot_plugins_zhenxun_bot](https://github.com/AkashiCoin/nonebot_plugins_zhenxun_bot)

## 来点优点？

* 实现了许多功能，且提供了大量功能管理命令
* 通过Config配置项将所有插件配置统计保存至config.yaml，利于统一用户修改
* 方便增删插件，原生nonebot2 matcher，不需要额外修改，仅仅通过简单的配置属性就可以生成`帮助图片`和`帮助信息`
* 提供了cd，阻塞，每日次数等限制，仅仅通过简单的属性就可以生成一个限制，例如：`__plugin_cd_limit__`
* __..... 更多详细请通过`[传送门](https://hibikier.github.io/zhenxun_bot/)`查看文档！__

## 功能列表

<details>
<summary>已实现的功能</summary>

### 已实现的常用功能

* [x] 昵称系统（群与群与私聊分开.）

* [x] 图灵AI（会把'你'等关键字替换为你的昵称），且带有 [AnimeThesaurus](https://github.com/Kyomotoi/AnimeThesaurus)，够味
* [x] 签到/我的签到/好感度排行/好感度总排行（影响色图概率和开箱次数，支持配置）
* [x] 发送某文件夹下的随机图片（支持自定义，默认：美图，萝莉，壁纸）
* [x] 色图（这不是基础功能嘛喂）
* [x] coser
* [x] 黑白草图生成器
* [x] 鸡汤/语录
* [x] 骂我（钉宫语音）
* [x] 戳一戳（概率发送美图，钉宫语音或者戳回去）
* [x] 模拟开箱/我的开箱/群开箱统计/我的金色/设置cookie（csgo，内置爬虫脚本，需要提前抓取数据和图片，需要session，可能需要代理，阿里云服务器等ip也许已经被ban了（我无代理访问失败），如果访问太多账号API调用可能被禁止访问api！）
* [x] 鲁迅说过
* [x] 构造假消息（自定义的分享链接）
* [x] 商店/我的金币/购买道具/使用道具
* [x] 8种手游抽卡 (查看 [nonebot_plugin_gamedraw](https://github.com/HibiKier/nonebot_plugin_gamedraw))
* [x] 我有一个朋友想问问..（借鉴pcrbot插件）
* [x] 原神黄历
* [x] 原神今日素材
* [x] 原神资源查询  (借鉴[Genshin_Impact_bot](https://github.com/H-K-Y/Genshin_Impact_bot)插件)
* [x] 原神便笺查询
* [x] 原神玩家查询
* [x] 原神树脂提醒
* [x] 原神签到/自动签到
* [x] 金币红包
* [x] 微博热搜
* [x] B站主播/UP/番剧订阅

* [x] pil对图片的一些操作
* [x] BUFF饰品底价查询（需要session）
* [x] 天气查询
* [x] 疫情查询
* [x] bt磁力搜索（咳咳，这功能我想dddd）
* [x] reimu搜索（上车） (使用[XUN_Langskip](https://github.com/Angel-Hair/XUN_Bot)的插件)
* [x] 靠图识番  (使用[XUN_Langskip](https://github.com/Angel-Hair/XUN_Bot)的插件)
* [x] 以图搜图 (使用[nonebot_plugin_picsearcher](https://github.com/synodriver/nonebot_plugin_picsearcher)插件)
* [x] 搜番
* [x] 点歌  [nonebot_plugin_songpicker2](https://github.com/maxesisn/nonebot_plugin_songpicker2)插件（删除了选歌和评论）
* [x] epic免费游戏
* [x] p站排行榜
* [x] p站搜图
* [x] 翻译（日英韩）
* [x] pix图库（一个自己的图库，含有增删查改，黑名单等命令）

* [x] 查看当前群欢迎消息
* [x] 查看该群自己的权限
* [x] 我的信息（只是为了看看什么时候入群）
* [x] 更新信息（如果继续更新的话）
* [x] go-cqhttp最新版下载和上传（不需要请删除）
* [x] 撤回
* [x] 滴滴滴-（用户对超级用户发送消息）
* [x] 金币红包/金币排行
* [x] 俄罗斯轮盘/胜场排行/败场排行/欧洲人排行/慈善家排行
* [x] 网易云热评
* [x] 念首古诗
* [x] 获取b站视频封面
* [x] 通过PID获取图片
* [x] 功能统计可视化
* [x] 词云
* [x] 关于

### 已实现的管理员功能

* [x] 更新群组成员信息

* [x] 95%的群功能开关
* [x] 查看群内被动技能状态
* [x] 自定义群欢迎消息（是真寻的不是管家的！）
* [x] .ban/.unban（支持设置ban时长）= 黑白名单
* [x] 刷屏禁言相关：刷屏检测设置/设置禁言时长/设置检测次数
* [x] 上传图片/连续上传图片 （上传图片至指定图库）
* [x] 移动图片  （同上）
* [x] 删除图片  （同上）
* [x] 群内B站订阅
* [x] 词条设置
* [x] 休息吧/醒来

### 已实现的超级用户功能

* [x] 添加/删除权限（是真寻的管理员权限，不是群管理员）

* [x] 开启/关闭指定群的广播通知
* [x] 广播
* [x] 自检（检查系统状态）
* [x] 所有群组/所有好友
* [x] 退出指定群
* [x] 更新好友信息/更新群信息
* [x] /t（对用户进行回复或发送消息）
* [x] 上传/删除/修改商品（需要编写对应的商品功能）
* [x] 节日红包发送
* [x] 修改群权限
* [x] ban
* [x] 更新色图
* [x] 更新价格/更加图片（csgo开箱）
* [x] 重载原神/方舟/赛马娘/坎公骑冠剑卡池
* [x] 更新原神今日素材/更新原神资源信息
* [x] PIX相关操作
* [x] 检查更新真寻
* [x] 重启
* [x] 添加/删除/查看群白名单
* [x] 功能开关(更多设置)
* [x] 功能状态
* [x] b了
* [x] 执行sql
* [x] 重载配置
* [x] 清理临时数据
* [x] 增删群认证
* [x] 同意/拒绝好友/群聊请求
* [x] 配置重载

#### 超级用户的被动技能

* [x] 邀请入群提醒(别人邀请真寻入群)

* [x] 添加好友提醒(别人添加真寻好友)

### 已实现的被动技能

* [x] 进群欢迎消息

* [x] 群早晚安
* [x] 每日开箱重置提醒
* [x] b站转发解析（解析b站分享信息，支持bv，bilibili链接，b站手机端转发卡片，cv，b23.tv），且5分钟内不解析相同url
* [x] 丢人爬（爬表情包）
* [x] epic通知（每日发送epic免费游戏链接）
* [x] 原神黄历提醒
* [x] 复读

### 已实现的看不见的技能

* [x] 刷屏禁言检测

* [x] 功能调用统计
* [x] 检测恶意触发命令（将被最高权限ban掉30分钟，只有最高权限(9级)可以进行unban）
* [x] 自动同意好友请求，加群请求将会提醒管理员，退群提示，加群欢迎等等
* [x] 群聊时间检测（当群聊最后一人发言时间大于当前36小时后将关闭该群所有通知（即被动技能））
* [x] 群管理员监控，自动为新晋管理员增加权限，为失去群管理员的用户删除权限
* [x] 群权限系统
* [x] 定时更新权限
* [x] 自动配置重载