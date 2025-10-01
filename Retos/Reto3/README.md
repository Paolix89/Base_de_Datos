Reto3
Enunciado:
    La liga de fútbol profesional ha decidido informatizar sus sistemas creando una base de datos para guardar la información de los partidos que se juegan en la liga.
    Se desea guardar en primer lugar los datos de los jugadores. De cada jugador se quiere guardar el nombre, fecha de nacimiento y posición en la que juega.
    Cada jugador tiene un código de jugador que lo identifica de manera única.
    De cada uno de los equipos de la liga es necesario registrar el nombre del equipo, nombre del estadio en el que juega, el aforo que tiene, el año de fundación del equipo y la ciudad de la que es el equipo. Cada equipo también tiene un código que lo identifica de manera única. Un jugador solo puede pertenecer a un único equipo.
    De cada partido que los equipos de la liga juegan hay que registrar la fecha en la que se juega el partido, los goles que ha metido el equipo de casa y los goles que ha metido el equipo de fuera. Cada partido tendrá un código numérico para identificar el partido.
    También se quiere llevar un recuento de los goles que hay en cada partido. Se quiere almacenar el minuto en el que se realizar el gol y la descripción del gol.
    Un partido tiene varios goles y un jugador puede meter varios goles en un partido.
    Por último, se quiere almacenar, en la base de datos, los datos de los presidentes de los equipos de fútbol (DNI, nombre, apellidos, fecha de nacimiento, equipo del que es presidente y año en el que fue elegido presidente).
    Un equipo de fútbol tan sólo puede tener un presidente, y una persona sólo puede ser presidente de un equipo de la liga.
1.- Realizar el diagrama entidad-relacion.
2.- Generar los comandos de creacion de las tablas.
3.- Crear las siguientes vistas:
    a) Vista de los nombres y fechas de nacimiento de los jugadores.
    b) Vista de los nombres de los equipos y nombres de estadios.
    c) Vista de los partidos con los nombres de los equipos y la cantidad total de goles.
    d) Vista de los jugadores y sus equipos.
    e) Vista de los goles de cada partido con la descripción del gol y el nombre del jugador.
    f) Vista de los equipos y sus presidentes.
    g) Vista de la cantidad máxima y mínima de goles en un partido.
    h) Vista de la cantidad promedio de goles por partido.
    i) Vista del número total de goles marcados por cada jugador.
4.- Crear un trigger en la tabla partido para actualizar el total de goles (es necesario añadir el campo TotalGoles.