#Partir de una imagen
FROM node:12

#Añadir package
ADD package.json package-lock.json

#Instalar dependencias
RUN npm install

#Copiar el codigo
ADD .

#Expose
EXPOSE 5000

#Correr el contenedor
CMD ['node', 'app.js']