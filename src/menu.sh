mostrar_menu()
{
    echo ""
    echo "QUIZ MATEMÁTICO"
    echo "1) Problemas de suma"
    echo "2) Problemas de resta"
    echo "3) Problemas de multiplicación"
    echo "4) Problemas de división"
    echo "9) Salir"
    echo -n "Elige una opción: "
}

ejecutar_opcion()
{
    typeset opcion="$1"
    case $opcion in
        1) problema_suma;;
        2) echo "La opción de resta todavía no está disponible en esta versión.";;
        3) echo "La opción de multiplicación todavía no está disponible en esta versión.";;
        4) echo "La opción de división todavía no está disponible en esta versión.";;
        9) echo "Saliendo del quiz."; return 1;;
        *) echo "Opción inválida. Intenta de nuevo.";;
    esac
    return 0
}

iniciar_menu()
{
    typeset opcion
    while true
    do
        mostrar_menu
        read opcion
        ejecutar_opcion "$opcion" || break
    done
}
