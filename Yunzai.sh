if ! type node >/dev/null 2>&1; then
echo 'node 未安装'
echo '正在安装node中'
sudo apt install apt-transport-https curl ca-certificates software-properties-common
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
if ! type node >/dev/null 2>&1; then
echo '######'
echo 'node安装失败'
echo '######'
else
echo '安装node成功';
fi
else
echo 'node已安装，恭喜你认真看教程了！'
fi
if [ -d "Miao-Yunzai" ];then
echo "Miao-Yunzai文件夹存在，将改为路径root/Bot/Miao-Yunzai安装，请注意修改端口"
echo '正在下载喵崽'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git ./Bot/Miao-Yunzai/
cd Bot/Miao-Yunzai
else
echo '正在下载喵崽'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git ./Miao-Yunzai/
cd Miao-Yunzai
fi
echo '正在下载喵喵插件'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
echo '正在下载ws插件'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
if ! type node >/dev/null 2>&1; then
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
echo '正在降级puppeteer'
pnpm add puppeteer@19.7.3 -w