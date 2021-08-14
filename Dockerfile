#Partir de una imagen
FROM node:12

#Añadir workdir
WORKDIR /dockertest

#Añadir package
ADD package.json package-lock.json /dockertest/

#Instalar dependencias
RUN npm install

#Copiar el codigo
ADD . /dockertest

#Expose
EXPOSE 5000

#Correr el contenedor
CMD ['node', 'app.js']