## killport
#### 一键干掉指定端口占用的进程
* webpack重新打包的时候，老是会出现这样的情况:
![image](https://user-images.githubusercontent.com/9162319/35551221-1d44ddbc-05c9-11e8-8e11-1a443865f610.png)
* 通常都是自己`lsof`找出占用的pid,在用`kill -9 pid` 干掉
* 上面的做法太麻烦
* 所以用这个脚本吧（目前只针对mac,其他linux我不知道，改改也可以用吧）
* 用法：
    * 下载这个脚本
    * `cd ~`
    * 把刚刚的脚本拷贝到这个目录
    * 在当前目录`ls -al`
    * 找到`.bashrc`,编辑它：`nano .bashrc`
    * 在末尾添加：`alias killport="sh ~/killport.sh" `，`control+x`保存退出
    * `source .bashrc` (很重要，不设置不生效)
    * 然后在其他地方就可以`killport 端口号`杀死指定端口号的进程
    * ![image](https://user-images.githubusercontent.com/9162319/35551592-c48ca4a0-05ca-11e8-8a17-16bae376a36c.png)