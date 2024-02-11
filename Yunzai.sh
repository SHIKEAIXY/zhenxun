git clone --depth=1 https://gitee.com/yoimiya-kokomi/Miao-Yunzai.git ./Yunzai/Miao-Yunzai/
cd Yunzai/Miao-Yunzai
git clone --depth=1 https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
git clone --depth=1 https://gitee.com/xiaoye12123/ws-plugin.git ./plugins/ws-plugin/
npm --registry=https://registry.npmmirror.com install pnpm -g
pnpm config set registry https://registry.npmmirror.com
pnpm install -P
pnpm add puppeteer@19.7.3 -w
cd ..
git clone --depth 1 -b redis https://gitee.com/SHIKEAIXYY/Trss-ComWeChat-Yunzai.git ./redis
git clone --depth 1 https://gitee.com/touchscale/Qsign.git ./Qsign