FROM strongloop/node
ADD . /app
WORKDIR /app
RUN sudo npm install --registry=https://registry.npm.taobao.org
EXPOSE 3000
CMD ["node", "."]

