## 关于本库

1. 本库取自[Gensokyo](https://github.com/Hoshinonyaruko/Gensokyo/releases/tag/298%2Fmerge)298版本的linux-amd64
2. 本库修改了 ws_address 为zhenxun_bot的ws8080
* ws://127.0.0.1:8080/onebot/v11/ws/
3. 本库修改了 text_intent 为群
4. 本库修改了 server_user_name 和 server_user_password 为zhenxun
* 网页web账密
5. 本库修改了 remove_bot_at_group 为true
* 自动在命令前加上at，防止无法正常使用zhenxun_bot

## 运行Gensokyo

1. 下载screen
```
sudo apt install -y screen
screen -S zhenxun
```
2. 创建screen（最好在下载的Gensokyo中）
```
screen -S zhenxun
```
3. 运行Gensokyo
```
./gensokyo-linux-amd64
```

## 关于screen

1. 如果你不知道screen是什么请看这篇文章：[screen命令详解](https://zhuanlan.zhihu.com/p/405968623)
2. 简单说screen是可以让你的程序持久化运行，不会因为关上终端就停止运作
3. 基础命令使用：
3.1 查看所创建的全部screen
```
screen -ls
``` 
3.2 新建screen
``` 
screen -S 名字
``` 
3.3 进入screen
``` 
screen -r 名字
```
3.4 删除screen
``` 
screen -S 名字 -X quit
```