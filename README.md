第一步：使用工具开发Web应用程序
平台要求：
应用服务器： Tomcat/Liberty etc.
前端页面：html/js/css
其他技术：可选， 根据自身需求使用，如数据库，消息中间件，缓存等
开发工具不限： Eclipse or IDEA ,etc.

第二步：将开发好的应用程序使用Docker的镜像打包方式进行打包。
下面以开发基于IBM WebSphere Liberty的web 应用为例:
1. 将已经开发好的Web应用程序打包 如 demo.war

2. 编写server.xml文件

3. 安装Docker运行时到本地机器,编写Dockerfile

4. 将 server.xml , demo.war, Dockerfile 放到同一个文件夹下,

5. 在创建的文件夹下使用docker命令进行image 打包：
docker build -t contest:latest .

6. 本地运行docker image
docker run -i -t -p 80:9080 -p 443:9443 contest:latest


7. 通过http://localhost:80/demo/echart 访问制作的页面,进行测试

第三步： 将生成的docker 镜像提交到dockerhub上
 要提交已经生成并运行成功的docker image 到Docker HUB上
1. 注册docker 账号(https://hub.docker.com/)   并创建repository
2. 本地通过docker login 登陆
3. 通过docker push 命令到平台
步骤举例说明：
使用注册的账号登陆到docker hub
# docker login
(enter your credential, username and password for docker hub)
Tag本地的image为dockerhub的格式
# docker tag demo floydljy/contestibmdemo:v1
查看已经Tag过的镜像是否生成
# docker images | grep contest
floydljy/contestibmdemo                         v1                             abb684ff812b        20 hours ago        387MB
将本地的镜像上传到dockerhub上
# docker push floydljy/contestibmdemo:v1
在另外一台本地没有该镜像的机器上尝试下载并运行该镜像文件
# docker run -i -t -p 80:9080 -p 443:9443 floydljy/contestibmdemo:v1
Unable to find image 'floydljy/contestibmdemo:v1' locally
v1: Pulling from floydljy/contestibmdemo
……
Status: Downloaded newer image for floydljy/contestibmdemo:v1
……
记录下docker image 的repository和tag信息， docker 平台注册用户的username以及password


第四步：  将应用部署到ECO cloud 平台上并运行

第五步：提交成果
提交内容：
1. 代码： 含代码的war包或者工程的zip包
2. 可运行Docker image： Dockerfile以及所依赖的文件（如例子中的demo.war and server.xml)
3. 部署到IBM和页面的展示视频
4. PPT要求： 成员介绍，分工， 项目周期，项目设计，技术架构，UI介绍，项目难点及改进思路，对Eco Cloud的使用感受，致谢等
5. 将所有内容打包成为zip文件
6. 提交文件到指定位置
