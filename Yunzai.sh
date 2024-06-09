if ! type git >/dev/null 2>&1; then
echo '##############################'
echo 'git未安装！请查看教程手动安装再试'
echo '##############################'
exit
else
fi

if ! type node >/dev/null 2>&1; then
echo '##############################'
echo 'node未安装！请查看教程手动安装再试'
echo '##############################'
exit
else
fi

if ! type npm >/dev/null 2>&1; then
echo '##############################'
echo 'npm未安装！请查看教程手动安装node再试'
echo '##############################'
exit
else
fi
if ! type pnpm >/dev/null 2>&1; then
echo '##############################'
echo 'pnpm未安装！请跟随教程手动安装再试'
echo '##############################'
echo '正在安装pnpm'
npm --registry=https://registry.npmmirror.com install pnpm -g
if ! type pnpm >/dev/null 2>&1; then
echo '##############################'
echo 'pnpm安装失败，请跟随教程手动安装再试'
echo '##############################'
exit
else
echo 'pnpm安装成功'
fi
else
fi

echo '正在下载TRSS云崽(机器人本体)'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai ./Yunzai/TRSS-Yunzai
cd Yunzai/TRSS-Yunzai
echo '正在下载ws插件（连接OneBot）'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
echo '正在安装ICQQ插件中(登录QQ)'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-ICQQ-Plugin ./plugins/ICQQ-Plugin
echo '正在安装依赖'
pnpm i
cd ..
echo '正在下载redis数据库'
git clone --depth 1 -b redis https://gitee.com/SHIKEAIXYY/Trss-ComWeChat-Yunzai.git ./redis