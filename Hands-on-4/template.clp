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
   (slot genero))

(deftemplate orden-compra
   (slot codigo)
   (slot monto)
   (slot fecha)
   (multislot articulo-comprado)
   (multislot cantidad)
   (slot numero-tarjeta)
   (slot banco)
)

(deftemplate vale
   (slot codigo)
   (slot valor)
   (slot emisor)
   (slot monto-maximo))