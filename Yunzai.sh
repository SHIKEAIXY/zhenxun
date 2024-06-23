#!/bin/bash

cd /root/Bot/

# 检查是否安装了 Node.js
if ! type node >/dev/null 2>&1; then
    echo 'Node.js 未安装'
    echo '正在安装 Node.js 中'
    sudo apt install -y apt-transport-https curl ca-certificates software-properties-common
    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs

    # 再次检查是否安装成功
    if ! type node >/dev/null 2>&1; then
        echo '######'
        echo 'Node.js 安装失败，请尝试手动安装'
        echo '######'
    else
        echo '安装 Node.js 成功'
    fi
fi

# 检查是否安装了 fonts-wqy-microhei
if dpkg -l | grep -q "^ii  fonts-wqy-microhei"; then
    echo "fonts-wqy-microhei 已安装"
else
    echo '正在安装中文字体-文泉驿微米黑中'
    sudo apt install -y fonts-wqy-microhei
    echo "fonts-wqy-microhei 安装完成"
fi

echo '正在下载 TRSS 云崽(机器人本体)'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai ./Bot/TRSS-Yunzai
cd Bot/TRSS-Yunzai

echo '正在下载 ws 插件（连接 OneBot）'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/

echo '正在安装 ICQQ 插件中(登录 QQ)'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-ICQQ-Plugin ./plugins/ICQQ-Plugin

# 检查是否安装了 pnpm
if ! type pnpm >/dev/null 2>&1; then
    echo 'pnpm 未安装'
    echo '正在安装 pnpm 中'
    npm --registry=https://registry.npmmirror.com install pnpm -g

    # 再次检查是否安装成功
    if ! type pnpm >/dev/null 2>&1; then
        echo '######'
        echo 'pnpm 安装失败'
        echo '######'
    else
        echo 'pnpm 安装成功'
    fi
fi

echo '正在安装依赖'
pnpm i
