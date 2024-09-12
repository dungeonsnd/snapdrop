#!/bin/bash

rm -rf translation
mkdir translation

# 中文
mkdir -p translation/zhcn/
cp -r client translation/zhcn/

sed -i 's|Instantly share images, videos, PDFs, and links with people nearby. Peer2Peer and Open Source. No Setup, No Signup.|即时与附近的人分享图像、视频、PDF和链接。点对点开源技术。无需设置，无需注册。|g'  translation/zhcn/client/index.html
sed -i 's|File, Transfer, Share, Peer2Peer|文件、传输、分享、点对点|g'  translation/zhcn/client/index.html
sed -i 's|Open Snapdrop on other devices to send files|在其他设备上打开 RVDrop 以发送文件|g'  translation/zhcn/client/index.html
sed -i 's|Click to send files or right click to send a message|点击以发送文件或右键点击以发送消息|g'  translation/zhcn/client/index.html
sed -i 's|Tap to send files or long tap to send a message|轻触以发送文件或长按以发送消息|g'  translation/zhcn/client/index.html
sed -i 's|The easiest way to transfer data across devices|跨设备传输数据的最简单方式|g'  translation/zhcn/client/index.html
sed -i 's|You can be discovered by everyone on this network|您可以被此网络上的所有人发现|g'  translation/zhcn/client/index.html
sed -i 's|File Received|文件已接收|g'  translation/zhcn/client/index.html
sed -i 's|Filename|文件名|g'  translation/zhcn/client/index.html
sed -i 's|Ask to save each file before downloading|在下载前询问是否保存每个文件|g'  translation/zhcn/client/index.html
sed -i 's|Save|保存|g'  translation/zhcn/client/index.html
sed -i 's|Ignore|忽略|g'  translation/zhcn/client/index.html
sed -i 's|Send a Message|发送消息|g'  translation/zhcn/client/index.html
sed -i 's|Send|发送|g'  translation/zhcn/client/index.html
sed -i 's|Cancel|取消|g'  translation/zhcn/client/index.html
sed -i 's|Message Received|消息已接收|g'  translation/zhcn/client/index.html
sed -i 's|Copy|复制|g'  translation/zhcn/client/index.html
sed -i 's|Close|关闭|g'  translation/zhcn/client/index.html
sed -i 's|File Transfer Completed|文件传输完成|g'  translation/zhcn/client/index.html
sed -i 's|<h1>Snapdrop</h1>|<h1>rvdrop</h1>|g'  translation/zhcn/client/index.html
sed -i 's|The easiest way to transfer files across devices|跨设备传输文件的最简单方式|g'  translation/zhcn/client/index.html

sed -i 's|Click to send files or right click to send a text|点击以发送文件或右键点击以发送文本|g'  translation/zhcn/client/scripts/ui.js
