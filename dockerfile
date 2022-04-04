 FROM node
    LABEL mantainer micaela.rojas@tecsup.edu.pe
    RUN git clone -q https://github.com/MicaelaRojas/nube04.git
    WORKDIR nube04
    RUN npm install > /dev/null
    EXPOSE 5000
    CMD ["npm","start"]
