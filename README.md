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

.Desarrollo: Se ejecuta el código de la imagen en el editor nano para guardar los archivos con extensión .sh y luego imprimirlos. 
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/27e44aa3772018a396628cc3b472b5215d20d3ae/Taller1_SO/Taller1_Eliminarsh.PNG" >
</p>


 4) Renombrar: Del listado anterior cambie el nombre de los archivos agregándole al
final -mv.txt, liste los archivos e imprima el archivo en consola
.Desarrollo: Se ejecuta el código de la imagen en el editor nano para mover los archivos y luego imprimirlos en consola.

<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/27e44aa3772018a396628cc3b472b5215d20d3ae/Taller1_SO/mv_taller1.PNG" >
</p>

#Nota: si se presenta el error <div class="phishy"> /bin/bash^M:bad interpreter: No such file or directory</div> de la siguiente imagen, se ejecuta el comando: sed -i -e 's^r$//' nombrearchivo.sh
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/27e44aa3772018a396628cc3b472b5215d20d3ae/Taller1_SO/Falla_Taller1.PNG " >
</p>

# Taller 2
El script Shell para linux permite :
1) Cambiar nombre Servidor
2) Cambiar Particion Discos
3) Cambiar IP Servidor
4) Cambiar tabla de host
5) Agregar Permisos de Firewall
6) Editar DNS server
7) Configurar proxy

A continuación se puede observar el menu en ejecución:
<p align="center">
<img src="https://github.com/NorelyJ/Talleres_Semillero/blob/543b7694b23735454f93b064c4bdd98510497ac3/Menu_Opcion4.PNG" >
</p>

Nota:Pendiente a cambios.
