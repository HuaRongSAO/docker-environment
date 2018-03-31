# docker-mysql 环境搭建

### 准备

- docker-compose [安装](https://docs.docker.com/compose/install/s)
- 官方镜像：[docker pull mongo](https://hub.docker.com/_/mongo/)

### 文件结构：

```shell
mysql
├── chatset.cnf # 用于覆盖原文件的配置文件
├── docker-compose.yml # 启动文件
├── Dockerfile # 用于复写Dockerfile
└── readme.md # 文档
```

如何设置UTF-8中文支持：

```shell
[mysqld]
character_set_server=utf8
character_set_filesystem=utf8
collation-server=utf8_general_ci
init-connect='SET NAMES utf8'
init_connect='SET collation_connection=utf8_general_ci'
skip-character-set-client-handshake
```

### 使用：

- 启动服务

```shell
docker-compose up -d
```
- 测试链接
  1. 使用GUi工具链接数据 127.0.0.1:3306 
  2. 使用[mycli](https://github.com/dbcli/mycli)命令行工具链接
- 导入sql文件

```shell
docker exec some-mysql sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > /some/path/on/your/host/all-databases.sql
```