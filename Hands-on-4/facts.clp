(deffacts smartphones
   (smartphone (marca apple) (modelo iphone16) (precio 24999) (color negro) (cantidad-disponible 30))
   (smartphone (marca samsung) (modelo galaxyS23) (precio 19999) (color azul) (cantidad-disponible 50))
   (smartphone (marca motorola) (modelo edge30) (precio 12999) (color blanco) (cantidad-disponible 20))
   (smartphone (marca xiaomi) (modelo mi13) (precio 13999) (color gris) (cantidad-disponible 15))
   (smartphone (marca google) (modelo pixel8) (precio 21999) (color verde) (cantidad-disponible 10))
   (smartphone (marca sony) (modelo xperia5) (precio 22999) (color plata) (cantidad-disponible 5))
   (smartphone (marca nokia) (modelo x20) (precio 12999) (color negro) (cantidad-disponible 12))
   (smartphone (marca huawei) (modelo p50) (precio 23999) (color dorado) (cantidad-disponible 8))
   (smartphone (marca lg) (modelo velvet) (precio 14999) (color blanco) (cantidad-disponible 30))
   (smartphone (marca asus) (modelo rogphone) (precio 28999) (color negro) (cantidad-disponible 3))
)

(deffacts computadores
   (computador (marca apple) (modelo macbookair) (precio 27999) (color gris) (cantidad-disponible 20))
   (computador (marca dell) (modelo inspiron15) (precio 16999) (color negro) (cantidad-disponible 50))
   (computador (marca hp) (modelo pavilion15) (precio 13999) (color plata) (cantidad-disponible 30))
   (computador (marca lenovo) (modelo thinkpad) (precio 17999) (color negro) (cantidad-disponible 40))
   (computador (marca asus) (modelo zenbook14) (precio 22999) (color azul) (cantidad-disponible 15))
   (computador (marca acer) (modelo aspire5) (precio 14999) (color blanco) (cantidad-disponible 25))
   (computador (marca microsoft) (modelo surfacepro) (precio 24999) (color plata) (cantidad-disponible 10))
   (computador (marca samsung) (modelo galaxybook) (precio 19999) (color negro) (cantidad-disponible 12))
   (computador (marca msi) (modelo ge76) (precio 31999) (color gris) (cantidad-disponible 5))
   (computador (marca razer) (modelo blade15) (precio 34999) (color negro) (cantidad-disponible 3))
)

(deffacts accesorios
   (accesorio (nombre funda) (funcion protección) (color negro) (precio 299) (cantidad-disponible 50))
   (accesorio (nombre mica) (funcion protección) (color transparente) (precio 199) (cantidad-disponible 40))
   (accesorio (nombre cargador) (funcion carga) (color blanco) (precio 399) (cantidad-disponible 30))
   (accesorio (nombre auriculares) (funcion sonido) (color rojo) (precio 499) (cantidad-disponible 20))
   (accesorio (nombre adaptador) (funcion conexión) (color negro) (precio 250) (cantidad-disponible 15))
   (accesorio (nombre teclado) (funcion escritura) (color negro) (precio 599) (cantidad-disponible 25))
   (accesorio (nombre mouse) (funcion control) (color gris) (precio 349) (cantidad-disponible 10))
   (accesorio (nombre funda-tablet) (funcion protección) (color azul) (precio 799) (cantidad-disponible 5))
   (accesorio (nombre soporte) (funcion descanso) (color negro) (precio 199) (cantidad-disponible 30))
   (accesorio (nombre altavoces) (funcion sonido) (color blanco) (precio 599) (cantidad-disponible 15))
)

(deffacts clientes
   (cliente (nombre "Juan Pérez") (edad 28) (genero "Masculino"))
   (cliente (nombre "Ana López") (edad 34) (genero "Femenino"))
   (cliente (nombre "Carlos García") (edad 22) (genero "Masculino"))
   (cliente (nombre "Marta Gómez") (edad 30) (genero "Femenino"))
   (cliente (nombre "Luis Martínez") (edad 40) (genero "Masculino"))
   (cliente (nombre "Beatriz Rodríguez") (edad 25) (genero "Femenino"))
   (cliente (nombre "Raúl Fernández") (edad 33) (genero "Masculino"))
   (cliente (nombre "Paola Sánchez") (edad 27) (genero "Femenino"))
   (cliente (nombre "Eduardo Díaz") (edad 36) (genero "Masculino"))
   (cliente (nombre "Claudia Ramírez") (edad 29) (genero "Femenino"))
)

(deffacts tarjetas
   (tarjeta (numero "1234-5678-9101-1121") (banco banamex) (grupo VISA) (fecha-expiracion "12/25"))
   (tarjeta (numero "2234-5678-9101-1121") (banco liverpool) (grupo VISA) (fecha-expiracion "11/24"))
   (tarjeta (numero "3234-5678-9101-1121") (banco banamex) (grupo MasterCard) (fecha-expiracion "01/26"))
   (tarjeta (numero "4234-5678-9101-1121") (banco bbva) (grupo MasterCard) (fecha-expiracion "08/25"))
   (tarjeta (numero "5234-5678-9101-1121") (banco santander) (grupo VISA) (fecha-expiracion "05/24"))
   (tarjeta (numero "6234-5678-9101-1121") (banco hsbc) (grupo VISA) (fecha-expiracion "06/25"))
   (tarjeta (numero "7234-5678-9101-1121") (banco banorte) (grupo MasterCard) (fecha-expiracion "07/26"))
   (tarjeta (numero "8234-5678-9101-1121") (banco scotiabank) (grupo VISA) (fecha-expiracion "10/24"))
   (tarjeta (numero "9234-5678-9101-1121") (banco bbva) (grupo MasterCard) (fecha-expiracion "02/25"))
   (tarjeta (numero "1034-5678-9101-1121") (banco banamex) (grupo VISA) (fecha-expiracion "09/25"))
)

(deffacts ordenes-compra
   (orden-compra (codigo 101) (monto 28999) (fecha "2024-11-17") (articulo-comprado iphone16 note21) (cantidad 1 1) (numero-tarjeta "1234-5678-9101-1121") (banco banamex))
   (orden-compra (codigo 102) (monto 27999) (fecha "2024-11-18") (articulo-comprado macbookair) (cantidad 1) (numero-tarjeta "2234-5678-9101-1121") (banco liverpool))
   (orden-compra (codigo 103) (monto 16999) (fecha "2024-11-19") (articulo-comprado inspiron15) (cantidad 2) (numero-tarjeta "3234-5678-9101-1121") (banco banamex))
   (orden-compra (codigo 104) (monto 21999) (fecha "2024-11-20") (articulo-comprado pixel8) (cantidad 1) (numero-tarjeta "4234-5678-9101-1121") (banco bbva))
   (orden-compra (codigo 105) (monto 19999) (fecha "2024-11-21") (articulo-comprado note21) (cantidad 2) (numero-tarjeta "5234-5678-9101-1121") (banco santander))
   (orden-compra (codigo 106) (monto 14999) (fecha "2024-11-22") (articulo-comprado velvet) (cantidad 1) (numero-tarjeta "6234-5678-9101-1121") (banco hsbc))
   (orden-compra (codigo 107) (monto 17999) (fecha "2024-11-23") (articulo-comprado thinkpad) (cantidad 3) (numero-tarjeta "7234-5678-9101-1121") (banco banorte))
   (orden-compra (codigo 108) (monto 22999) (fecha "2024-11-24") (articulo-comprado zenbook14) (cantidad 1) (numero-tarjeta "8234-5678-9101-1121") (banco scotiabank))
   (orden-compra (codigo 109) (monto 24999) (fecha "2024-11-25") (articulo-comprado surfacepro) (cantidad 1) (numero-tarjeta "9234-5678-9101-1121") (banco bbva))
   (orden-compra (codigo 110) (monto 31999) (fecha "2024-11-26") (articulo-comprado ge76) (cantidad 1) (numero-tarjeta "1034-5678-9101-1121") (banco banamex))
)

(deffacts vales
   (vale (codigo "A123") (valor 100) (emisor "Amazon") (monto-maximo 1000))
   (vale (codigo "B234") (valor 200) (emisor "Best Buy") (monto-maximo 500))
   (vale (codigo "C345") (valor 50) (emisor "Walmart") (monto-maximo 250))
   (vale (codigo "D456") (valor 150) (emisor "Cinemex") (monto-maximo 300))
   (vale (codigo "E567") (valor 300) (emisor "Netflix") (monto-maximo 1500))
   (vale (codigo "F678") (valor 400) (emisor "Carrefour") (monto-maximo 2000))
   (vale (codigo "G789") (valor 250) (emisor "Bodega Aurrera") (monto-maximo 500))
   (vale (codigo "H890") (valor 500) (emisor "Soriana") (monto-maximo 1000))
   (vale (codigo "I901") (valor 50) (emisor "Liverpool") (monto-maximo 1500))
   (vale (codigo "J012") (valor 700) (emisor "Cinemark") (monto-maximo 2000))
)

