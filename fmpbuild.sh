#!/bin/bash
# create by xibei

#ffmpeg编译动态库编译脚本
#所有参数请参照 ffmpeg 目录下 使用 ./configure --help 进行查看

#指定 NDK变量地址
NDK_ROOT=/Users/jiajie/Downloads/config/sdk/ndk-bundle

#指向NDK中的交叉编译gcc所在目录
TOOLCHAIN=$NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/

#FLAGS 与 INCLUDES 变量可以从AS的ndk工程的
#.externativeBuild/cmake/debug/armeabi-v7a/build.ninja中
#拷贝，需要注意的是**地址**
#FLAGS 是压制警告
FLAGS="-isystem /Users/jiajie/Downloads/config/ndk/android-ndk-r17c/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=21 -g -DANDROID -ffunction-sections -funwind-tables -fstack-protector-strong -no-canonical-prefixes -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -mthumb -Wa,--noexecstack -Wformat -Werror=format-security -std=c++11  -O0 -fno-limit-debug-info  -fPIC"
#引入NDK头文件
INCLUDES="-isystem /Users/jiajie/Downloads/config/ndk/android-ndk-r17c/sources/cxx-stl/llvm-libc++/include -isystem /Users/jiajie/Downloads/config/ndk/android-ndk-r17c/sources/android/support/include -isystem /Users/jiajie/Downloads/config/ndk/android-ndk-r17c/sources/cxx-stl/llvm-libc++abi/include"

#进行编译,执行脚本，用于生成makefile  具体注释 ./configure --help 来查看
# --prefix : 				安装目录
# --enable-small :			优化大小
# --disable-programs		不编译ffmpeg程序(命令行工具)，我们是需要获得静态（动态）库
# --disable-avdevice :		关闭avdevice模块，此模块在android中无用
# --disable-encoders :		关闭所有编码器（播放不需要编码，如果是视屏编辑的话，则打开）
# --disable-muxers :		关闭所有复用器(封装器)，不需要生成MP4这样的文件，所以关闭
# --disable-filters :		关闭滤镜 ，（如果涉及抖音什么的需要滤镜处理，则打开）
# --enable-cross-compile :	开启交叉编译（ffmpeg比较**跨平台**,并不是所有库都有这么happy的选项）
# --cross-prefix :			
# --disable-shared :
# --sysroot :
# --extra-cflags
# --arch --target-os


#声明路径变量
PREFIX=./android/armeabi-v7a

# 通过 \ 来换行
./configure \
--prefix=$PREFIX \
--prefix=$PREFIX \
--enable-small \
--disable-programs \
--disable-avdevice \
--disable-encoders \
--disable-muxers \
--disable-filters \
--enable-cross-compile \
--cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
--disable-shared \
--enalbe-static \
--sysroot=$NDK_ROOT/platforms/android-21/arch-arm \
--extra-cflags="$FLAGS $INCLUDES" \
--extra-cflags="-isysroot $NDK_ROOT/sysroot" \
--arch=arm \
--target-os=android

#构建文件
make clean
#安装
make install





















