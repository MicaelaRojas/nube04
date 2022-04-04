FROM node
    LABEL mantainer micaelarojas
    RUN git clone -q https://github.com/jfarfantecsup/hola-express.git
    WORKDIR hola-express
    RUN npm install > /dev/null
    EXPOSE 9000
    CMD ["npm","start"]