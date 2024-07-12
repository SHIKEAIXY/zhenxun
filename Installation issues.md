# 真寻安装遇见的报错/问题总结来源issues

问题还不全 等待更新

## 1.使用poetry install命令时报错 

#### 报错图：
<br>
    <img src="Img/Iss/pyproject.toml.png" width="70%">

#### 原因：

这个报错是你没有pyproject.toml这个文件导致的

#### 解决办法

方法一（无需操作自动创建）：进入你的项目文件夹，运行
```
poetry new myproject

```
方法二（需要另外操作）：进入你的项目文件夹，运行

```
poetry init

```
## 2.登录gocq时出现 登录失败: 登录失败

#### 报错内容
[2023-05-06 17:34:17] [WARNING]: 登录失败: 登录失败，建议升级最新版本后重试，或通过问题反馈与我们联系。 Code: 45

[2023-05-06 17:34:17] [WARNING]: 你的账号涉嫌违规被限制在非常用设备登录, 请在手机QQ登录并根据提示完成认证

[2023-05-06 17:34:17] [WARNING]: 或使用 -update-protocol 升级到最新协议后重试

#### 原因：

tx的打压，Gocq无力继续维护，寄

#### 解决办法

1. 使用其他协议端再试

## 3.首次启动bot报错

报错内容 
ImportError: cannot import name 'connections' from 'tortoise' 

#### 原因：

无法导入connections

#### 解决办法

进入真寻根目录，运行
```
pip install tortoise-orm -U

```

# 更多问题请前往真寻github库提issues