(deffunction agregar-enfermedad (?nombre ?tipo ?signos ?sintomas)
  (assert (enfermedad (nombre ?nombre) (tipo ?tipo) (signos ?signos) (sintomas ?sintomas)))
  (printout t "La enfermedad '" ?nombre "' ha sido agregada exitosamente." crlf)
)


(deffunction actualizar-enfermedad (?nombre ?nuevo-nombre ?nuevo-tipo ?nuevos-signos ?nuevos-sintomas)
  (bind ?encontrada FALSE)
  (do-for-all-facts ((?f enfermedad)) TRUE
    (if (eq ?nombre (fact-slot-value ?f nombre)) then
      (modify ?f
        (nombre ?nuevo-nombre)
        (tipo ?nuevo-tipo)
        (signos ?nuevos-signos)
        (sintomas ?nuevos-sintomas)
      )
      (bind ?encontrada TRUE)
    )
  )
  (if ?encontrada then
    (printout t "Enfermedad " ?nombre " actualizada con éxito." crlf)
    else
    (printout t "No se encontró la enfermedad con el nombre " ?nombre "." crlf)
  )
)

(deffunction borrar-enfermedad (?nombre)
  (bind ?encontrada FALSE)
  (do-for-all-facts ((?f enfermedad)) TRUE
    (if (eq ?nombre (fact-slot-value ?f nombre)) then
      (retract ?f)
      (bind ?encontrada TRUE)
    )
  )
  (if ?encontrada then
    (printout t "Enfermedad " ?nombre " eliminada con éxito." crlf)
    else
    (printout t "No se encontró la enfermedad con el nombre " ?nombre "." crlf)
  )
)
