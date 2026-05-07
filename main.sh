#!/bin/bash

RUTA_BASE="$(cd "$(dirname "$0")" && pwd)"

source "$RUTA_BASE/src/entrada.sh"
source "$RUTA_BASE/src/quiz.sh"
source "$RUTA_BASE/src/problemas_suma.sh"
source "$RUTA_BASE/src/problemas_resta.sh"
source "$RUTA_BASE/src/problemas_multiplicacion.sh"
source "$RUTA_BASE/src/problemas_division.sh"
source "$RUTA_BASE/src/menu.sh"

iniciar_menu
