#!/bin/bash
# Script para iniciar o servidor Gunicorn usando a variável de ambiente PORT ou 5000 como padrão

# Se a variável de ambiente PORT não existir, usar 5000 como padrão
PORT="${PORT:-5000}"

# Iniciar o Gunicorn com a porta definida
gunicorn --bind "0.0.0.0:$PORT" --reuse-port --reload main:app