generar_aleatorio()
{
    typeset -i minimo=$1
    typeset -i maximo=$2
    typeset -i rango=$(( maximo - minimo + 1 ))
    ALEATORIO=$(( RANDOM % rango + minimo ))
}

leer_entero()
{
    typeset prompt="$1"
    typeset valor
    while true
    do
        echo -n "$prompt"
        read valor
        if [[ $valor =~ ^-?[0-9]+$ ]]
        then
            RESPUESTA_LEIDA=$valor
            return 0
        else
            echo "Debes ingresar un número entero."
        fi
    done
}
