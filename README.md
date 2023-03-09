# Talleres_Semillero
# Taller 1
 1) Buscar archivos: Busque en la carpeta / los archivo *.sh y guarde el resultado en un
archivo y en el mismo comando imprimir en consola el archivo de salida.
 - Desarrollo: Ejecutar el comando find _/ .sh -name "*.sh" 2> /dev/null_ (Figura 1), lo que realiza es la búsqueda de cualquier archivo con extensión .sh y que tenga permisos. 
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/f1e9ea54187317e3e95cd7795cb855976fd9b284/Taller1_SO/Taller1.SO.PNG" >
</p>
 2) Crear: Cree una lista de archivos separados por enter llamándolo entrada.in,
después con la lista leer entrada.in y crear los archivos con la listada
creada en la carpeta file_salida/, liste los archivos creados, guarde en un
archivo salida.out e imprima el archivo enumerando la lista de archivos
creados.
- Desarrollo: Ejecutar los comandos nano entrada.in y cat entrada.in
El primer comando se utiliza para listar los archivos de entrada.in y el segundo comando para imprimir la lista.
La siguiente imagen muestra la ejecución de nano entrada.in
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/f1e9ea54187317e3e95cd7795cb855976fd9b284/Taller1_SO/Taller1.1.SO.PNG" >
</p>
La siguiente imagen muestra la ejecución de cat entrada.in
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/f1e9ea54187317e3e95cd7795cb855976fd9b284/Taller1_SO/Taller1.2.SO.PNG">
</p>

Como se puede observar en la figura 3, se utiliza una shell para lograr guardar los archivos en la carpeta file_salida.
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/f1e9ea54187317e3e95cd7795cb855976fd9b284/Taller1_SO/Taller1.3.SO.PNG" >
</p>

 
 3) Eliminar: Leer entrada.in utilice un patrón para borrar solo unos de los patrones y
el resultado guárdelo en un archivo e imprima el contenido del archivos.

. Desarrollo: Se ejecuta el código de la imagen en el editor nano para guardar los archivos con extensión .sh y luego imprimirlos. 

<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/27e44aa3772018a396628cc3b472b5215d20d3ae/Taller1_SO/Taller1_Eliminarsh.PNG" >



 4) Renombrar: Del listado anterior cambie el nombre de los archivos agregándole al
final -mv.txt, liste los archivos e imprima el archivo en consola
. Desarrollo: Se ejecuta el código de la imagen en el editor nano para mover los archivos y luego imprimirlos en consola.

<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/27e44aa3772018a396628cc3b472b5215d20d3ae/Taller1_SO/mv_taller1.PNG" >
</p>

#Nota: si se presenta el error <div style="background-color:#FFFF00"> /bin/bash^M:bad interpreter: No such file or directory</div> de la siguiente imagen, se ejecuta el comando: sed -i -e 's^r$//' nombrearchivo.sh
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/27e44aa3772018a396628cc3b472b5215d20d3ae/Taller1_SO/Falla_Taller1.PNG " >
</p>

# Taller 2
Crear un script Shell con un menú que me permita:
El script Shell para linux permite :
- Cambiar nombre Servidor
- Cambiar Particion Discos
- Cambiar IP Servidor
- Cambiar tabla de host
- Agregar Permisos de Firewall
- Editar DNS server
- Configurar proxy
Desarrollo:

<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/ae1c7fe327b2a0586ffb20e00132e5ee5ea37792/Taller2_SO/Menu.PNG " >
</p>

- Desarrollo: 
1) Usuario ingresa el nombre del nuevo servidor se guarda los cambios.

<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/ae1c7fe327b2a0586ffb20e00132e5ee5ea37792/Taller2_SO/1.Nombre_Servidor.PNG">
</p>

2) Muestra el nombre de las particiones de discos existentes.

<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/277e6a80f384b8c98f338589b5d4f201dcf373e4/Taller2_SO/2.Particion.PNG">
</p>

3) Se cambia la IP, solicitando la Ip y mascara.

<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/ae1c7fe327b2a0586ffb20e00132e5ee5ea37792/Taller2_SO/3.Ip_a.PNG">
</p>

<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/ae1c7fe327b2a0586ffb20e00132e5ee5ea37792/Taller2_SO/3.Ip_b.PNG">
</p>

4) Se realiza cambios de host para agregar o eliminar.

<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/ae1c7fe327b2a0586ffb20e00132e5ee5ea37792/Taller2_SO/4.1.Tablahost.PNG">
</p>

<p align="center">
<img src=" https://github.com/NorelyJ/Talleres_Semillero/blob/ae1c7fe327b2a0586ffb20e00132e5ee5ea37792/Taller2_SO/4.Tablahost.PNG">
</p>


5) Se habilita firewall mediante el puerto TCP y UDP.
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/38609e7b0228d2c04f6298949735f661cda56278/Taller2_SO/5.Firewall.PNG">
</p>

6) Se configura DNS.

<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/38609e7b0228d2c04f6298949735f661cda56278/Taller2_SO/6.DNS.PNG">


7) Se configura PROXY

<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/38609e7b0228d2c04f6298949735f661cda56278/Taller2_SO/7.Proxy.PNG">

Al salir de la shell inicia en la terminal nuevamente.
