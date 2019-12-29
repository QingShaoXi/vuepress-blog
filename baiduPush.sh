#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

node utils/baiduPush.js # 生成所有链接文件

# 百度链接推送
# curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=evanblogweb.com&token=T5PEAzhGaPNbjQ2X"
curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=https://xugaoyi.com&token=T5PEAzhGaPNbjQ2X"

rm -rf urls.txt # 灭迹