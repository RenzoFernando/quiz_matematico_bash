problema_suma()
{
    typeset -i a
    typeset -i b
    typeset -i respuesta
    generar_aleatorio 0 100
    a=$ALEATORIO
    generar_aleatorio 0 100
    b=$ALEATORIO
    (( respuesta = a + b ))
    realizar_pregunta "¿Cuánto es $a + $b?" $respuesta
}
