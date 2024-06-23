if ! type git >/dev/null 2>&1; then
  echo '##############################'
  echo 'git未安装！请查看教程手动安装再试'
  echo '##############################'
  exit 1
fi

if ! type node >/dev/null 2>&1; then
  echo '##############################'
  echo 'node未安装！请查看教程手动安装再试'
  echo '##############################'
  exit 1
fi

if ! type npm >/dev/null 2>&1; then
  echo '##############################'
  echo 'npm未安装！请查看教程手动安装node再试'
  echo '##############################'
  exit 1
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
    exit 1
  else
    echo 'pnpm安装成功'
  fi
fi

echo '正在下载TRSS云崽(机器人本体)'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai ./Yunzai/TRSS-Yunzai || {
  echo '##############################'
  echo '下载TRSS云崽失败，请检查网络或手动下载'
  echo '##############################'
  exit 1
}

cd Yunzai/TRSS-Yunzai
echo '正在下载ws插件（连接OneBot）'
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/ || {
  echo '##############################'
  echo '下载ws插件失败，请检查网络或手动下载'
  echo '##############################'
  exit 1
}

echo '正在安装ICQQ插件中(登录QQ)'
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-ICQQ-Plugin ./plugins/ICQQ-Plugin || {
  echo '##############################'
  echo '安装ICQQ插件失败，请检查网络或手动下载'
  echo '##############################'
  exit 1
}

echo '正在安装依赖'
pnpm i || {
  echo '##############################'
  echo '安装依赖失败，请检查网络或手动安装'
  echo '##############################'
  exit 1
}

cd ..

echo '正在下载redis数据库'
git clone --depth 1 -b redis https://gitee.com/SHIKEAIXYY/Trss-ComWeChat-Yunzai.git ./redis || {
  echo '##############################'
  echo '下载redis数据库失败，请检查网络或手动下载'
  echo '##############################'
  exit 1
}
