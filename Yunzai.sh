echo '正在下载喵崽'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git ./Miao-Yunzai/
cd Miao-Yunzai
echo '正在下载喵喵插件'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
echo '正在下载ws插件'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
echo '正在安装pnpm'
npm --registry=https://registry.npmmirror.com install pnpm -g
echo '正在安装依赖'
pnpm i
echo '正在降级puppeteer'
pnpm add puppeteer@19.7.3 -w