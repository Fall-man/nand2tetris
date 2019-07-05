# ubuntu 16.04 latest をベースにする
FROM ubuntu:16.04

# エディタの整備
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

# java環境の整備
RUN ["apt-get", "install", "-y", "openjdk-11-jdk"]

# マウント先のフォルダ作っておく(いずれdocker-composeで置換する)
# 実行時に-vコマンドでマウントするディレクトリ名を指定する必要あり
RUN ["mkdir", "/home/nand2tetris"]
VOLUME [ "/home/nand2tetris" ]

# シミュレータのパス通す
WORKDIR /home/bin
RUN ["ln", "-s", "/home/nand2tetris/tools/HardwareSimulator.sh", "HardwareSimulator"]
RUN ["chmod", "+x", "HardwareSimulator"]