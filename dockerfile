FROM node
    LABEL mantainer MicaelaRojas
    RUN git clone -q https://github.com/MicaelaRojas/MicaelaRojas-Lab04_Nube
    WORKDIR lab04
    RUN npm install > /dev/null
    EXPOSE 9000
    CMD ["npm","start"]