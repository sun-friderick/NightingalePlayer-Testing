/**
 * ��򵥵Ļ���FFmpeg����Ƶ������
 * Simplest FFmpeg Player
 *
 * ������ Lei Xiaohua
 * leixiaohua1020@126.com
 * �й���ý��ѧ/���ֵ��Ӽ���
 * Communication University of China / Digital TV Technology
 * http://blog.csdn.net/leixiaohua1020
 *
 * ������ʵ������Ƶ�ļ��Ľ������ʾ��֧��HEVC��H.264��MPEG2�ȣ���
 * ����򵥵�FFmpeg��Ƶ���뷽��Ľ̡̳�
 * ͨ��ѧϰ�����ӿ����˽�FFmpeg�Ľ������̡�
 * This software is a simplest video player based on FFmpeg.
 * Suitable for beginner of FFmpeg.
 */

/**
 *  ���룺
 *  g++ simplest_ffmpeg_player.cpp -g -o simplest_ffmpeg_player.out \
 *  -I /usr/local/SDL/include -L /usr/local/SDL/lib -lSDLmain -lSDL \
 *  -I /usr/local/ffmpeg/include -L /usr/local/ffmpeg/lib -lswscale -lavcodec -lavformat -lavutil -lm -lz
 *
 *  ��ʹ�õĿ�汾��    ffmpeg��0.8.15
 *                      SDL��1.2.0
 **/

#include <stdio.h>

//Linux...
#ifdef __cplusplus
extern "C" {
#endif

#include "SDL/SDL.h"

#include "LogWidget.h"
#include "PlayerWidget.h"

#ifdef __cplusplus
}
#endif



int init(int argc, char *argv[])
{

    return 0;
}

