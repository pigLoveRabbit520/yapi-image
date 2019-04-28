# 使用
添加`config.json`文件
```
{
   "port": "3000",
   "adminAccount": "your_email@qq.com",
   "db": {
      "servername": "mongo_server_addr",
      "DATABASE": "yapi",
      "port": "27071",
      "user": "your_db_user",
      "pass": "your_db_user_password"
   },
   "mail": {
      "enable": false,
      "host": "smtp.163.com",
      "port": 465,
      "from": "***@163.com",
      "auth": {
         "user": "***@163.com",
         "pass": "*****"
      }
   }
}
```
挂载`config.json`文件到容器`/root/yapi/config.json`

# docker-compose.yml示例
```
version: '2'
services:
  web:
    image: salamandermh/yapi:1.7.0
    volumes:
      - ./config.json:/root/yapi/config.json
    ports: 
      - 9002:3000
```
