FROM node:10.15

# 修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN mkdir /root/yapi
RUN npm install -g yapi-cli --registry https://registry.npm.taobao.org
COPY ./yapi /root/yapi
RUN cd /root/yapi/vendors && npm install --prod

WORKDIR /root/yapi

CMD ["node", "/root/yapi/vendors/server/app.js"]
