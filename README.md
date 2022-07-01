#  Linux Download To AliyunDrive
在Linux系统上用一个脚本完成下载一个链接再到上传到阿里云盘的过程，欢迎使用。

## 原理
这个脚本的作用分为三步：
1. 检查系统环境，需要如下命令：
    - aria2c
    - aliyunpan
2. 使用aria2c下载指定的链接
3. 使用aliyunpan命令将下载的文件夹上传到阿里云网盘。

## 用法
```bash
 ./upload.sh <NewFolderName> <TargetURL>
```
脚本将会创建一个以NewFolderName为名字的文件夹，然后下载TargetURL的链接，最后把整个文件夹使用aliyunpan upload上传到阿里云盘。

## 参考
https://www.neboer.site/blog/61e4f69ec4dd93075056338d
