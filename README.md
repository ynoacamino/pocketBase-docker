# PocketBase

Este repositorio contiene los archivos necesarios para configurar y ejecutar PocketBase utilizando Docker

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
    docker build -t pb .
  ```

### Ejecución del Contenedor
Después de construir la imagen, puedes ejecutar el contenedor con el siguiente comando:

```
docker run -d -p 80:80 --name pocketbase-server pb
```

Esto ejecutará PocketBase en el puerto 8090.

### Detalles Técnicos
## Dockerfile
El Dockerfile realiza las siguientes acciones:

1. Utiliza la imagen base alpine.
2. Establece un argumento para definir la versión de PocketBase a utilizar.
3. Instala paquetes necesarios como unzip y ca-certificates.
4. Descarga y descomprime la versión especificada de PocketBase.
5. Copia los scripts de hooks personalizados (si existen) al contenedor.
6. Define el comando por defecto para ejecutar PocketBase.

## Personalización
- Versión de PocketBase: Puedes cambiar la versión de PocketBase modificando el valor del argumento PB_VERSION en el Dockerfile.

