#!/bin/bash

echo "Obteniendo estadísticas de rendimiento..."
echo ""
echo "Uso de CPU:"
mpstat

echo ""
echo "Uso de Memoria:"
free -m | grep Mem | awk '{printf "TOTAL: %d MB\nUsada: %d MB (%.2f%%)\nLibre: %d MB (%.2f%%)\n", $2, $3, $3/$2*100, $4+$6, ($4+$6)/$2*100}'

echo ""
echo "Uso de Disco:"
df -h

echo ""
echo "Procesos más consumidores de CPU:"
top -bn1 | head -n 12 | tail -n 6

echo ""
echo "Procesos más consumidores de Memoria:"
top -bn1 -o %MEM | head -n 12 | tail -n 6