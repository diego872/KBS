(deftemplate smartphone
   (slot marca)
   (slot modelo)
   (slot precio)
   (slot color)
   (slot cantidad-disponible))

(deftemplate computador
   (slot marca)
   (slot modelo)
   (slot precio)
   (slot color)
   (slot cantidad-disponible))

(deftemplate tarjeta
   (slot numero)
   (slot banco)
   (slot grupo)
   (slot fecha-expiracion))

(deftemplate accesorio
   (slot nombre)
   (slot funcion)
   (slot color)
   (slot precio)
   (slot cantidad-disponible))

(deftemplate cliente
   (slot nombre)
   (slot edad)
   (slot genero)
   (slot fecha-nacimiento))

(deftemplate orden-compra
   (slot id)
   (slot monto)
   (slot fecha)
   (multislot articulo-comprado)
   (multislot cantidad)
   (slot numero-tarjeta))

(deftemplate vale
   (slot codigo)
   (slot valor)
   (slot emisor)
   (slot monto-maximo))


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
   (smartphone (marca asus) (modelo rogphone) (precio 28999) (color negro) (cantidad-disponible 3)))


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
   (accesorio (nombre "funda") (funcion "protección") (color negro) (precio 299) (cantidad-disponible 50))
   (accesorio (nombre "mica") (funcion "protección") (color transparente) (precio 199) (cantidad-disponible 40))
   (accesorio (nombre "cargador") (funcion "carga") (color blanco) (precio 399) (cantidad-disponible 30))
   (accesorio (nombre "auriculares") (funcion "sonido") (color rojo) (precio 499) (cantidad-disponible 20))
   (accesorio (nombre "adaptador") (funcion "conexión") (color negro) (precio 250) (cantidad-disponible 15))
   (accesorio (nombre "teclado") (funcion "escritura") (color negro) (precio 599) (cantidad-disponible 25))
   (accesorio (nombre "mouse") (funcion "control") (color gris) (precio 349) (cantidad-disponible 10))
   (accesorio (nombre "funda-tablet") (funcion "protección") (color azul) (precio 799) (cantidad-disponible 5))
   (accesorio (nombre "soporte") (funcion "descanso") (color negro) (precio 199) (cantidad-disponible 30))
   (accesorio (nombre "altavoces") (funcion "sonido") (color blanco) (precio 599) (cantidad-disponible 15))
)


(deffacts clientes
   (cliente (nombre "Juan Pérez") (edad 28) (genero "Masculino") (fecha-nacimiento "1996-05-17"))
   (cliente (nombre "Ana López") (edad 34) (genero "Femenino") (fecha-nacimiento "1990-11-23"))
   (cliente (nombre "Carlos García") (edad 22) (genero "Masculino") (fecha-nacimiento "2002-03-15"))
   (cliente (nombre "Marta Gómez") (edad 30) (genero "Femenino") (fecha-nacimiento "1994-07-30"))
   (cliente (nombre "Luis Martínez") (edad 40) (genero "Masculino") (fecha-nacimiento "1984-12-05"))
)


(deffacts tarjetas
   (tarjeta (numero "1234-5678-9101-1121") (banco banamex) (grupo VISA) (fecha-expiracion "12/25"))
   (tarjeta (numero "2234-5678-9101-1121") (banco liverpool) (grupo VISA) (fecha-expiracion "11/24"))
   (tarjeta (numero "3234-5678-9101-1121") (banco citibanamex) (grupo MasterCard) (fecha-expiracion "01/26"))
   (tarjeta (numero "4234-5678-9101-1121") (banco bbva) (grupo MasterCard) (fecha-expiracion "08/25"))
   (tarjeta (numero "5234-5678-9101-1121") (banco santander) (grupo VISA) (fecha-expiracion "05/24"))
   (tarjeta (numero "6234-5678-9101-1121") (banco hsbc) (grupo VISA) (fecha-expiracion "06/25"))
   (tarjeta (numero "7234-5678-9101-1121") (banco banorte) (grupo MasterCard) (fecha-expiracion "07/26"))
   (tarjeta (numero "8234-5678-9101-1121") (banco scotiabank) (grupo VISA) (fecha-expiracion "10/24"))
   (tarjeta (numero "9234-5678-9101-1121") (banco bva) (grupo MasterCard) (fecha-expiracion "02/25"))
   (tarjeta (numero "1034-5678-9101-1121") (banco citibank) (grupo VISA) (fecha-expiracion "09/25"))
)

(deffacts ordenes-compra
   (orden-compra (id 101) (monto 28999) (fecha "2024-11-17") (articulo-comprado iphone16 galaxyS23) (cantidad 1 1) (numero-tarjeta "1234-5678-9101-1121"))
   (orden-compra (id 102) (monto 27999) (fecha "2024-11-18") (articulo-comprado macbookair) (cantidad 1) (numero-tarjeta "2234-5678-9101-1121"))
   (orden-compra (id 103) (monto 16999) (fecha "2024-11-19") (articulo-comprado inspiron15) (cantidad 2) (numero-tarjeta "3234-5678-9101-1121"))
   (orden-compra (id 104) (monto 21999) (fecha "2024-11-20") (articulo-comprado pixel8) (cantidad 1) (numero-tarjeta "4234-5678-9101-1121"))
   (orden-compra (id 105) (monto 19999) (fecha "2024-11-21") (articulo-comprado galaxyS23) (cantidad 2) (numero-tarjeta "5234-5678-9101-1121"))
   (orden-compra (id 106) (monto 14999) (fecha "2024-11-22") (articulo-comprado velvet) (cantidad 1) (numero-tarjeta "6234-5678-9101-1121"))
   (orden-compra (id 107) (monto 17999) (fecha "2024-11-23") (articulo-comprado thinkpad) (cantidad 3) (numero-tarjeta "7234-5678-9101-1121"))
   (orden-compra (id 108) (monto 22999) (fecha "2024-11-24") (articulo-comprado zenbook14) (cantidad 1) (numero-tarjeta "8234-5678-9101-1121"))
   (orden-compra (id 109) (monto 24999) (fecha "2024-11-25") (articulo-comprado surfacepro) (cantidad 1) (numero-tarjeta "9234-5678-9101-1121"))
   (orden-compra (id 110) (monto 31999) (fecha "2024-11-26") (articulo-comprado ge76) (cantidad 1) (numero-tarjeta "1034-5678-9101-1121"))
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

(deffacts fecha-actual
   (fecha "2024-11-17")
)

(defrule iphone16-banamex
   (orden-compra (articulo-comprado $?articulos&:(member$ iphone16 ?articulos)) 
                 (numero-tarjeta "1234-5678-9101-1121"))
   =>
   (printout t "Oferta: 24 meses sin intereses para iPhone 16 con tarjeta Banamex." crlf)
)

(defrule note21-liverpool
   (orden-compra (articulo-comprado $?articulos&:(member$ note21 ?articulos)) 
                 (numero-tarjeta "2234-5678-9101-1121"))
   =>
   (printout t "Oferta: 12 meses sin intereses para Samsung Note 21 con tarjeta Liverpool VISA." crlf)
)

(defrule vale-macbook-iphone
   (orden-compra (articulo-comprado $?articulos&:(and (member$ macbookair ?articulos) (member$ iphone16 ?articulos)))
                 (monto ?monto&:(> ?monto 0)))
   =>
   (bind ?vales (round (/ ?monto 1000)))
   (printout t "Oferta: " ?vales " pesos en vales por cada $1000 gastados al contado." crlf)
)

(defrule descuento-accesorios-smartphone
   (orden-compra (articulo-comprado $?articulos&:(or (member$ iphone16 ?articulos) (member$ galaxyS23 ?articulos))))
   =>
   (printout t "Descuento: 15% en fundas y micas por la compra de un smartphone." crlf)
)

(defrule cliente-mayorista
   (orden-compra (cantidad $?cantidades))
   =>
   (foreach ?cantidad $?cantidades
      (if (> ?cantidad 10) then
         (printout t "El cliente se clasifica como mayorista por la compra de más de 10 unidades de un artículo." crlf)
         (return) ; Salir del bucle si ya se encontró un caso válido
      )
   )
)


(defrule envio-gratuito
   (orden-compra (monto ?monto&:(> ?monto 20000)))
   =>
   (printout t "Promoción: Envío gratuito en compras mayores a $20,000." crlf)
)

(defrule descuento-santander
   (orden-compra (numero-tarjeta "3234-5678-9101-1121"))
   =>
   (printout t "Descuento: 5% adicional por pagar con tarjeta Santander." crlf)
)

(defrule regalo-audifonos-macbook
   (orden-compra (articulo-comprado $?articulos&:(member$ macbookair ?articulos)))
   =>
   (printout t "Regalo: Audífonos incluidos por la compra de una MacBook." crlf)
)

(defrule descuento-accesorios
   (orden-compra (articulo-comprado $?articulos))
   =>
   (bind ?accesorios 0)
   (foreach ?articulo $?articulos
      (if (or (eq ?articulo funda) (eq ?articulo cargador) (eq ?articulo audifonos) (eq ?articulo teclado) (eq ?articulo raton))
         then
         (bind ?accesorios (+ ?accesorios 1))
      )
   )
   (if (> ?accesorios 5) then
      (printout t "Descuento: 10% por la compra de más de 5 accesorios." crlf)
   )
)

(defrule descuento-segundo-articulo
   (orden-compra (articulo-comprado $?articulos) (cantidad $?cantidades))
   =>
   (bind ?segundo-articulo false)
   (foreach ?cantidad $?cantidades
      (if (>= ?cantidad 2) then
         (bind ?segundo-articulo true)
      )
   )
   (if ?segundo-articulo then
      (printout t "Descuento: 50% en el segundo artículo igual." crlf)
   )
)

(defrule descuento-laptops
   (orden-compra (articulo-comprado $?articulos&:(member$ macbookair ?articulos))
                 (monto ?monto&:(> ?monto 50000)))
   =>
   (printout t "Descuento: 10% por compra de laptops mayores a $50,000." crlf)
)

(defrule regalo-cargador
   (orden-compra (articulo-comprado $?articulos))
   =>
   (bind ?smartphone-count 0)
   (foreach ?articulo $?articulos
      (if (or (eq ?articulo iphone16) (eq ?articulo galaxyS23) (eq ?articulo pixel8) (eq ?articulo velvet))
         then
         (bind ?smartphone-count (+ ?smartphone-count 1))
      )
   )
   (if (> ?smartphone-count 2) then
      (printout t "Regalo: Cargador portátil por la compra de más de 2 smartphones." crlf)
   )
)

(defrule plan-proteccion-computadoras
   (orden-compra (articulo-comprado $?articulos&:(member$ inspiron15 ?articulos)))
   =>
   (printout t "Promoción: Plan de protección extendida incluido para computadoras." crlf)
)

(defrule descuento-vale
   (orden-compra (articulo-comprado $?articulos)
                 (cantidad $?cantidades)
                 (monto ?monto))
   (vale (codigo ?codigo))
   =>
   (printout t "Descuento: 15% por usar código de vale " ?codigo "." crlf)
)

(defrule cupón-accesorios
   (orden-compra (articulo-comprado $?articulos&:(member$ auriculares ?articulos))
                 (monto ?monto&:(> ?monto 10000)))
   =>
   (printout t "Cupón de regalo: ¡Gracias por tu compra de accesorios!" crlf)
)

(defrule gift-card-apple
   (orden-compra (articulo-comprado $?articulos&:(member$ iphone16 ?articulos)))
   =>
   (printout t "Regalo: Gift card de $500 por comprar productos Apple." crlf)
)

(defrule garantia-dell
   (orden-compra (articulo-comprado $?articulos&:(member$ inspiron15 ?articulos)))
   =>
   (printout t "Promoción: Garantía extendida de 3 meses en productos Dell." crlf)
)

(defrule descuento-mayoristas
   (orden-compra (cantidad $?cantidades))
   =>
   (foreach ?cantidad $?cantidades
      (if (> ?cantidad 50) then
         (printout t "Descuento especial: ¡Gracias por tu compra mayorista!" crlf)
         (return) ; Termina la regla después de encontrar una cantidad mayor a 50
      )
   )
)

(defrule cumpleaños-cliente
   (cliente (nombre ?nombre) (fecha-nacimiento ?fecha-nac))
   (fecha ?hoy)
   ; Extract month and day from both dates for comparison
   (test (str-cat (sub-string 6 10 ?fecha-nac)) = (str-cat (sub-string 6 10 ?hoy)))
   =>
   (printout t "Descuento: ¡Feliz cumpleaños, " ?nombre "! 20% de descuento en tu compra." crlf)
)

(defrule descuento-compra-multiples
   (orden-compra (articulo-comprado $?articulos) (cantidad $?cantidades))
   (test (or (> (length$ ?cantidades) 3)
             (> (nth$ 1 ?cantidades) 3)
             (> (nth$ 2 ?cantidades) 3)
             (> (nth$ 3 ?cantidades) 3)
             (> (nth$ 4 ?cantidades) 3)))
   =>
   (bind ?total-descuento 0.15)
   (printout t "Descuento: 15% por la compra de más de 3 unidades de un mismo artículo." crlf)
)
