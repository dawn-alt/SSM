# SSM
SSM框架指的是Spring+SpringMVC+MyBatis，是由Spring、MyBatis两个开源框架整个而成，其中SpringMVC属于Spring的一部分。
背景：本系统选择鹰嘴豆的简单重复序列SSR作为鹰嘴豆生物育种的标记来构建基因数据库，该数据库提供了鹰嘴豆简单重复序列的详细信息以及其在基因组中的特征。

本系统是一个在IDEA环境下基于SSM框架开发的Javaweb工程，在系统开发过程中使用了较多的配置文件和相关依赖，大大简化了代码量，降低了系统的耦合性。通过使用Mybatis框架连接数据库，开发者只需关注SQL语句本身，减少了JDBC大量的代码；将SQL语句封装在XML文件里实现与程序的分离，降低了耦合性，方便更新和管理。

集成开发环境：IDEA 2019.1，JDK版本1.8.0，Tomcat服务器版本9.0.2 ，maven版本apache-maven-3.8.1【仓库地址D:\maven_repotory】
数据库：MySQL 5.5

如何启用项目：
1、将本项目压缩包下载至本地后解压文件；
2、准备数据库：将database1.sql导入MySQL数据库中，查看数据库是否创建成功；
3、IDEA中配置maven环境，初次使用时建议自己重新配置，然后将代码克隆过去，具体步骤如下：选择file——>new,左侧选择Maven，右侧选择Create from archetype,下拉选择maven-archetype-webapp，groupID和ArtifactID可自行命名，Maven home directory[指定maven下载地址]我的是D:/apache-maven-3.8.1，User settings file[指定settings配置文件路径，选择maven地址后会自动填写]我的是C:\Users\86198\.m2\settings.xml，Local repository[maven仓库地址，自动填写]我的是D:\maven_repotory
4、创建成功后，将配置文件和Java文件克隆过去；
5、选择add configuration，添加Tomcat服务器即可在本地运行；

注意：克隆文件后保持文件名和文件相对地址不变[即一比一克隆]；配置文件springApplication.xml中line 12 13是MySQL的用户名和密码，默认都是root，不一致需修改。
