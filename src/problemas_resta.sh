#!/bin/bash
problema_resta()
{
    typeset -i a
    typeset -i b
    typeset -i temporal
    typeset -i respuesta
    generar_aleatorio 0 100
    a=$ALEATORIO
    generar_aleatorio 0 100
    b=$ALEATORIO
    if (( a < b ))
    then
        temporal=$a
        a=$b
        b=$temporal
    fi
    (( respuesta = a - b ))
    realizar_pregunta "¿Cuánto es $a - $b?" $respuesta
}
