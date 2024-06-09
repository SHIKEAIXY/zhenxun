cd /root/Bot/
if ! type node >/dev/null 2>&1; then
echo 'NodeJs 未安装'
echo '正在安装NodeJs中'
sudo apt install apt-transport-https curl ca-certificates software-properties-common
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
if ! type node >/dev/null 2>&1; then
echo '######'
echo 'NodeJs安装失败，请尝试手动安装'
echo '######'
else
echo '安装NodeJs成功'
fi
else
fi
if dpkg -l | grep -q "^ii  fonts-wqy-microhei"; then
echo "fonts-wqy-microhei已安装"
else
echo '正在安装中文字体-文泉驿微米黑中'
sudo apt install -y fonts-wqy-microhei
echo "fonts-wqy-microhei安装完成"
fi
echo '正在下载TRSS云崽(机器人本体)'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai ./Bot/TRSS-Yunzai
cd Bot/TRSS-Yunzai
echo '正在下载ws插件（连接OneBot）'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
echo '正在安装ICQQ插件中(登录QQ)'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-ICQQ-Plugin ./plugins/ICQQ-Plugin
if ! type pnpm >/dev/null 2>&1; then
echo 'pnpm未安装'
echo '正在安装pnpm中'
npm --registry=https://registry.npmmirror.com install pnpm -g
if ! type pnpm >/dev/null 2>&1; then
echo '######'
echo 'pnpm安装失败'
echo '######'
else
echo 'pnpm安装成功'
fi
else
fi
echo '正在安装依赖'
pnpm i