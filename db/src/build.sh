echo "### Nettoyage avant compilation ###"
gmake clean
echo "### Compilation - DB ###"
gmake default > ../"Rapport de compilation DB.txt" 2> ../"Rapport d'erreurs DB.txt"
echo "### Fin de la compilation - DB ###"