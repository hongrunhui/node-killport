# $1 获取第二个参数（端口号）
if [ $1 ]
then
    # lsof list open files
    # -n 不显示主机名(no host?)，-P不显示端口俗称(!PORT?)
    # -i 列出符合条件的信息（协议指定为TCP、:端口（$1）等）
    # grep: globally regular expression and print? 查找 状态为监听的
    # awk 打印出第二列的信息（就是端口）
    if [ $(lsof -nP -iTCP:$1 |grep LISTEN|awk '{print $2;}') ]
    then
        # 杀死进程
        kill -9 $(lsof -nP -iTCP:$1 |grep LISTEN|awk '{print $2;}')
        echo "端口$1清理成功"
    else
        echo "端口$1没有占用任务"
    fi
else
    echo "请输入端口号"
fi