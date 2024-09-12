#!/bin/bash

rm -rf translation
mkdir translation

# 中文
mkdir -p translation/zhcn/
cp -r client translation/zhcn/

sed -i 's|Instantly share images, videos, PDFs, and links with people nearby. Peer2Peer and Open Source. No Setup, No Signup.|和附近的人分享图片、视频、PDF 和 链接。点对点并且开源。无需设置、无需注册。|g'  translation/zhcn/client/index.html

