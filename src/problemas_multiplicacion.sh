problema_multiplicacion()
{
    typeset -i a
    typeset -i b
    typeset -i respuesta
    generar_aleatorio 1 100
    a=$ALEATORIO
    generar_aleatorio 1 10
    b=$ALEATORIO
    (( respuesta = a * b ))
    realizar_pregunta "¿Cuánto es $a * $b?" $respuesta
}
