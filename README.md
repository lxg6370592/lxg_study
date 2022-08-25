#study spring cloud  
##docker nacos  
###1.nacos官网<https://nacos.io/zh-cn/docs/quick-start-spring-boot.html>  
###1.nacos部署  
####1.1拉取nacos镜像并启动  
docker pull nacos/nacos-server
![1](https://img.jbzj.com/file_images/article/202205/2022051911082451.png)
####1.2启动nacos命令  
````
docker run -d --name nacos -p 8848:8848 -e PREFER_HOST_MODE=hostname -e MODE=standalone nacos/nacos-server
````
访问url：http://:8848/nacos 账号:nacos 密码:nacos
![2](https://img.jbzj.com/file_images/article/202205/2022051911082452.png)
####1.3开启mysql配置  
````
#1 查看docker容器，nacos启动成功
docker ps
CONTAINER ID        IMAGE                COMMAND                  CREATED             STATUS              PORTS                    NAMES
8149bca96437        nacos/nacos-server   "bin/docker-startup.…"   4 minutes ago       Up About a minute   0.0.0.0:8848->8848/tcp   nacos
#2 进入容器
docker exec -it 8149bca96437 /bin/bash
#3 修改 conf/application.properties 内容如下：
vi conf/application.properties
````
在开启前要执行nacos数据库初始化脚本nacos-db.sql，可以在官网下
编辑application.properties文件
````
spring.datasource.platform=mysql
db.num=1
db.url.0=jdbc:mysql://<ip>:<port>/nacos?characterEncoding=utf8&connectTimeout=1000&socketTimeout=3000&autoReconnect=true
db.user=root
db.password=password
````
####1.4退出容器  
ctrl+p+q
####1.5重启容易  
````
docker restart nacos/编号
````