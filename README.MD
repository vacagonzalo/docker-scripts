# Scripts para Docker

Autor: [Ing. Gonzalo Nahuel Vaca](vacagonzalo@gmail.com)

Este repositorio tiene como objetivo almacenar distintos scripts para hacer funcionar contenedores de docker.

## Instrucciones de uso

1. Clonar o descargar el contenido de este repositorio.

2. Los scripts que sean de interés y se quieran correr deben ser copiados a una carpeta para tal fin.

3. Antes de correr el archivo ejecutar el siguiente comando en la terminal:

```bash
sudo chmod +x <nombre del script>
```
> Esto tiene como objetivo darle al script los permisos necesarios de ejecución.

ejemplo:
```bash
sudo chmod +x postgres.sh
```

4. En la terminal, posicionado dentro de la carpeta ejecutar:

```bash
./<nombre del script>
```

ejemplo:

```bash
./postgres.sh
```

Cada script imprime en consola una serie de instrucciones e información sobre el fucionamiento.

Para detener el script:

```bash
docker ps
```

```bash
docker stop <nombre o id del contenedor>
```
## Colaboración

Realizar un pull request con las sugerencias de cambios. ¡Todas las mejoras son bienvenidas!

## Contacto

Cualquier consulta que usted desee realizar, no dude en escribirme a vacagonzalo@gmail.com