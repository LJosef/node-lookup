FROM strongloop/node
RUN sudo mv /etc/apt/sources.list /etc/apt/sources.list.back
ADD sources.list /etc/apt/sources.list
ADD . /app
WORKDIR /app
RUN sudo npm install --registry=https://registry.npm.taobao.org
EXPOSE 3000
CMD ["node", "."]

