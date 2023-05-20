# 真寻安装遇见的报错/问题总结来源issues

问题还不全 等待更新
## 1.使用poetry install命令时报错 

#### 报错图：
<br>
    <img src="图片/pyproject.toml.png" width="70%">

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