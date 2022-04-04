FROM node
    LABEL mantainer micaela.rojas@tecsup.edu.pe
    RUN git clone -q https://github.com/MicaelaRojas/MicaelaRojas-Lab04_Nube
    WORKDIR hola-express
    RUN npm install > /dev/null
    EXPOSE 9000
    CMD ["npm","start"]