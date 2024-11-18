(defrule iphone16-banamex
   (orden-compra (articulo-comprado $?articulos&:(member$ iphone16 ?articulos)) 
                 (banco banamex))
   =>
   (printout t "Oferta: 24 meses sin intereses para iPhone 16 con tarjeta Banamex." crlf)
)

(defrule note21-liverpool
   (orden-compra (articulo-comprado $?articulos&:(member$ note21 ?articulos)) 
                 (banco liverpool))
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
   (orden-compra (banco santander))
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
   (printout t "Regalo: Gift card de $200 por comprar iPhone 16" crlf)
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

(defrule descuento-compra-mayor
   (orden-compra (monto ?monto&:(> ?monto 50000)))
   =>
   (bind ?total-descuento 0.2)
   (printout t "Descuento: 20% por compras superiores a $50,000." crlf)
)

(defrule descuento-total
   (orden-compra (monto ?monto&:(> ?monto 100000)))
   =>
   (bind ?total-descuento 0.1)
   (printout t "Descuento: 10% por una compra total superior a 100,000 pesos." crlf)
)

