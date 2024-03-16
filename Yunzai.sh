if ! type git >/dev/null 2>&1; then
echo '##############################'
echo 'git未安装！请查看教程手动安装再试'
echo '##############################'
exit
else
echo 'git 已安装'
fi

if ! type node >/dev/null 2>&1; then
echo '##############################'
echo 'node未安装！请查看教程手动安装再试'
echo '##############################'
exit
else
echo 'node 已安装'
fi

if ! type npm >/dev/null 2>&1; then
echo '##############################'
echo 'npm未安装！请查看教程手动安装node再试'
echo '##############################'
exit
else
echo 'npm 已安装'
fi
if ! type pnpm >/dev/null 2>&1; then
echo '##############################'
echo 'pnpm未安装！'
echo '##############################'
echo '正在安装pnpm'
npm --registry=https://registry.npmmirror.com install pnpm -g
if ! type pnpm >/dev/null 2>&1; then
echo '##############################'
echo 'pnpm安装失败'
echo '##############################'
exit
else
echo 'pnpm安装成功'
fi
else
echo 'pnpm 已安装'
fi

echo '正在下载喵崽'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git ./Yunzai/Miao-Yunzai/
cd Yunzai/Miao-Yunzai
echo '正在下载喵喵插件'
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
echo '正在下载ws插件'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
echo '正在安装依赖'
pnpm i
echo '正在降级puppeteer'
pnpm add puppeteer@19.7.3 -w
cd ..
echo '正在下载redis数据库'
git clone --depth 1 -b redis https://gitee.com/SHIKEAIXYY/Trss-ComWeChat-Yunzai.git ./redis
echo '正在下载Qsign'
git clone --depth 1 https://gitee.com/touchscale/Qsign.git ./Qsign