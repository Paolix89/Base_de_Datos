Reto 4
Enunciado:
Se quiere realizar el diseño de una base de datos para una cadena de hoteles.
Cada hotel (del que interesa almacenar su nombre, dirección, teléfono, año de Construcción) se encuentra clasificado obligatoriamente en una categoría (por ejemplo, tres estrellas) pudiendo bajar o aumentar de categoría.
Cada categoría tiene asociada diversas informaciones, como, por ejemplo, el tipo de IVA que le corresponde y la descripción.
Los hoteles tienen diferentes clases de habitaciones (suites, dobles, individuales, etc.), que se numeran de forma que se pueda identificar fácilmente la planta en la que se encuentran. Así pues, de cada habitación se desea guardar el código y el tipo de habitación.
Los particulares pueden realizar reservas de las habitaciones de los hoteles. En la reserva de los particulares figurarán el nombre, la dirección y el teléfono.
Las agencias de viaje también pueden realizar reservas de las habitaciones. En caso de que la reserva la realiza una agencia de viajes, se necesitarán los mismos datos que para los particulares, además del nombre de la persona para quien la agencia de viajes está realizando la reserva.
En los dos casos anteriores también se debe almacenar el precio de la reserva, la fecha de inicio y la fecha de fin de la reserva.
    1.- Diagrama Entidad – Relación.
    2.- Sentencias de creación de las tablas.
    3.- Crear las siguientes vistas:
        a) vista de los hoteles y sus categorías.
        b) vista de las habitaciones de un hotel específico.
        c) vista de las reservas realizadas por particulares.
        d) vista de las reservas realizadas por agencias de viajes.
        e) vista de la categoría de hotel con la fecha de construcción más reciente.
        f) vista de la habitación más cara de cada hotel.
        g) vista de la reserva más reciente realizada por particulares
        h) vista de la agencia de viaje con la reserva más económica.
    4.- Crear una función para calcular el promedio de precios de reserva para un tipo de habitación específico en un hotel determinado.
    5.- Crear una función que obtenga la lista de hoteles que tienen una cantidad mínima de habitaciones disponibles para reservar.