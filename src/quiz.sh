#!/bin/bash
realizar_pregunta()
{
    typeset pregunta="$1"
    typeset -i respuesta_correcta=$2
    typeset -i intento=1
    echo "$pregunta"
    while (( intento <= 3 ))
    do
        leer_entero "Respuesta: "
        if (( RESPUESTA_LEIDA == respuesta_correcta ))
        then
            echo "Correcto. Bien hecho."
            return 0
        fi
        if (( intento < 3 ))
        then
            echo "Incorrecto. Inténtalo de nuevo."
        fi
        (( intento = intento + 1 ))
    done
    echo "Se agotaron los intentos. La respuesta correcta es $respuesta_correcta."
    return 1
}
