#study linux 
##open ports  
###参考<https://blog.csdn.net/uuqaz/article/details/124404766>
####1查看防火墙是否开启  
````
systemctl status firewalld 
or
service iptables status
````
####2查看所有端口列表
````
firewall-cmd --zone=public --list-ports
````
####3查看端口状态
````
firewall-cmd --zone=public --query-port=1883/tcp
````
如果是no-表示关闭，yes-表示开启
####4开放端口访问
````
firewall-cmd --zone=public --add-port=1883/tcp --permanent
````
####4重新加载防火墙，这里不是重启防火墙
````
firewall-cmd --reload
````
重新执行查看命令，查看端口是否打开即可。