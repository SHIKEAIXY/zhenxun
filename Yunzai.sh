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
echo 'NodeJs已安装，恭喜你认真看教程了！'
fi
echo '正在下载喵崽'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git ./Bot/Miao-Yunzai/
cd Bot/Miao-Yunzai
echo '正在下载喵崽'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git ./Miao-Yunzai/
cd Miao-Yunzai
echo '正在下载喵喵插件'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
echo '正在下载ws插件'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
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
echo 'pnpm已安装，恭喜你认真看教程了！'
fi
echo '正在安装依赖'
pnpm i