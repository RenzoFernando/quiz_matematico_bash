#!/bin/bash
problema_division()
{
    typeset -i a
    typeset -i b
    typeset -i dividendo
    typeset -i respuesta
    generar_aleatorio 1 20
    a=$ALEATORIO
    generar_aleatorio 1 10
    b=$ALEATORIO
    (( dividendo = a * b ))
    (( respuesta = dividendo / b ))
    realizar_pregunta "¿Cuánto es $dividendo / $b?" $respuesta
}
