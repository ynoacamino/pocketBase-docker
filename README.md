# PocketBase + NGINX Docker Setup

Este repositorio contiene los archivos necesarios para configurar y ejecutar PocketBase utilizando Docker, con NGINX como un proxy inverso.

## Estructura del Proyecto


## Descripción

- **Dockerfile**: Crea una imagen Docker que combina NGINX (como proxy inverso) y PocketBase.
- **nginx.conf**: Configuración de NGINX para manejar las solicitudes HTTP, actuando como proxy hacia PocketBase.

## Uso

### Requisitos Previos

- [Docker](https://www.docker.com/get-started) instalado en tu sistema.

### Construcción de la Imagen Docker

1. Clona este repositorio en tu máquina local:
  ```bash
   git clone https://github.com/tu_usuario/tu_repositorio.git
   cd tu_repositorio
  ```

2. Construye la imagen Docker:
  ```bash
    docker build -t pocketbase-nginx .
  ```

### Ejecución del Contenedor
Después de construir la imagen, puedes ejecutar el contenedor con el siguiente comando:

```
docker run -d -p 80:80 --name pocketbase-server pocketbase-nginx
```

Esto ejecutará PocketBase en el puerto 8090 y NGINX en el puerto 80, manejando todas las solicitudes HTTP hacia PocketBase.

### Detalles Técnicos
## Dockerfile
El Dockerfile realiza las siguientes acciones:

1. Utiliza la imagen base nginx:alpine, una versión ligera de NGINX.
2. Establece un argumento para definir la versión de PocketBase a utilizar.
3. Copia la configuración personalizada de NGINX (nginx.conf) al contenedor.
4. Instala paquetes necesarios como unzip y ca-certificates.
5. Descarga y descomprime la versión especificada de PocketBase.
6. Copia los scripts de hooks personalizados (si existen) al contenedor.
7. Define el comando por defecto para ejecutar PocketBase.

## Configuración de NGINX
El archivo nginx.conf configura NGINX como un proxy inverso:

- Proxy hacia PocketBase: Redirige todo el tráfico entrante en el puerto 80 al servidor PocketBase corriendo en el puerto 8090.
- Encabezados de Seguridad y Proxies: Añade encabezados comunes para manejar correctamente las solicitudes HTTP y la información del cliente.


## Personalización
- Versión de PocketBase: Puedes cambiar la versión de PocketBase modificando el valor del argumento PB_VERSION en el Dockerfile.
- Configuración de NGINX: Si necesitas ajustar la configuración de NGINX, edita el archivo nginx.conf según tus necesidades.

