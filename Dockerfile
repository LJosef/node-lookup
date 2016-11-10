FROM strongloop/node
ADD . /app
WORKDIR /app
RUN sudo npm install
EXPOSE 3000
CMD ["node", "."]

