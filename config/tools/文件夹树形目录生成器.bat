title �ļ��� ����Ŀ¼������
echo off
cls

echo ��������Ҫ����Ŀ¼���ļ��У���ʽ������Ŀ¼=F:\Musics1�����ɵ�txt�ļ������Ϊ��
set /p Ŀ¼=Ŀ¼=
tree /f "%Ŀ¼%">%temp%\�ļ�������Ŀ¼.txt
%temp%\�ļ�������Ŀ¼.txt