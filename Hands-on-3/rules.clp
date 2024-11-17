(defrule mostrar-detalles-enfermedad
   (enfermedad (nombre ?nombre) (tipo ?tipo) (signos $?signos) (sintomas $?sintomas))
   =>
   (printout t "Enfermedad: " ?nombre crlf)
   (printout t "Tipo: " ?tipo crlf)
   (printout t "Signos: " ?signos crlf)
   (printout t "Síntomas: " ?sintomas crlf)
)

(defrule enfermedades-virales-con-fiebre
   (enfermedad (nombre ?nombre) (tipo "viral") (signos $?signos) (sintomas $?sintomas))  ;; Filtra enfermedades de tipo viral
   (test (member$ fiebre $?signos))  ;; Verifica si "fiebre" está en la lista de signos
   =>
   (printout t "Enfermedad viral con fiebre: " ?nombre crlf))

(defrule enfermedades-bacterianas-con-fiebre
   (enfermedad (nombre ?nombre) (tipo "bacteriana") (signos $?signos) (sintomas $?sintomas))  ;; Filtra enfermedades de tipo viral
   (test (member$ fiebre $?signos))  ;; Verifica si "fiebre" está en la lista de signos
   =>
   (printout t "Enfermedad bacteriana con fiebre: " ?nombre crlf))



