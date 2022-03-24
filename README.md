# redis
redis

sh 文件在window编写是doc模式执行不了，得是Unix模式的文件。
转换方式为sed -i '/s\r//' file

集群需要开放端口加10000端口如：本节点监听6379则集群通信端口为16379
如果有密码需要加-a pass(密码不要错了)
如果显示is not empty则删除data目录下的所有数据重新创建
