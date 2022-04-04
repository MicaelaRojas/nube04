 FROM node
    LABEL mantainer micaela.rojas@tecsup.edu.pe
    RUN git clone -q https://github.com/MicaelaRojas/MicaelaRojas-Lab04_Nube
    WORKDIR MicaelaRojas-Lab04_Nube
    RUN npm install > /dev/null
    EXPOSE 5000
    CMD ["npm","start"]
