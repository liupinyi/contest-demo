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
