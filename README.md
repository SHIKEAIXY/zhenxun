## 关于本库

1. 本库取自[Gensokyo](https://github.com/Hoshinonyaruko/Gensokyo/releases/tag/435%2Fmerge)435版本的gensokyo-windows-amd64.exe
2. 本库修改了 ws_address 为 zhenxun_bot的8080端口
* ws://127.0.0.1:8080/onebot/v11/ws/
3. 本库修改了 text_intent 为群
4. 本库修改了 server_user_name 和 server_user_password 为zhenxun
* 网页web账密
5. 本库修改了 add_at_group 为true
* 自动在命令前加上at，防止无法正常使用zhenxun_bot
6. 添加订阅 self_introduce 并默认注释
* 是否入群推销指定消息
7. 开启 use_uin 
* 开启使用机器人QQ号作为id