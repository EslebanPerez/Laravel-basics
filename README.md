# Laravel-basics

### 1. Crear el Archivo docker-compose.yml​

En la raíz de tu proyecto, crea un archivo llamado docker-compose.yml con el siguiente contenido:


```
services:
    php:
        container_name: php-container
        build: .
        ports:
        - "5000:5000"
        volumes:
        - .:/app
        command: php -S 0.0.0.0:5000 -t /app
```

Puedes usar el nombre que quieras para tu contenedor en container_name, solo tenlo presente para el resto de la guía, puedes configurar el puerto de tu preferencia, en este caso si entras a localhost:5000 ahí estará en ejecución.



### 2. Crear el Dockerfile​

Crea un archivo llamado Dockerfile (así tal cual) en la raíz del proyecto con el siguiente contenido para definir cómo se construirá tu imagen de PHP:

```
FROM php:8.2-cli
## Instalar extensiones adicionales (opcional)

RUN docker-php-ext-install pdo pdo_mysql 
```


### 3. Construir la Imagen​

Abre una terminal en el directorio donde está el Dockerfile y ejecuta el siguiente comando para construir la imagen de Docker:



``` 
> docker compose build
```


Esto creará la imagen para el contenedor PHP basada en tu Dockerfile.



### 4. Iniciar el Contenedor​

Para iniciar el contenedor, ejecuta:



```
> docker compose up
```


Esto levantará el contenedor y estará listo para usarse. Mantén esta terminal abierta mientras desees trabajar con este contenedor.

> Nota: En caso de querer finalizar el servicio del contenedor, usa Ctrl + C en la terminal y luego utiliza:



```
> docker compose down
```

### 5. localhost
Abrir en el navegador `localhost:3000/01.php`