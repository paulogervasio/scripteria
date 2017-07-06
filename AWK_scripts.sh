#########################################################################################################################
BASH/AWK - Rename file names from a directory
#########################################################################################################################

# A ideia inicial foi renomear os arquivos com extensão duplicada "jar.src.zip.src.zip" para "jar.src.zip".


#VERSÃO FINAL:
final=`ls -1 | awk '{ORS=" "; print "mv "$1; gsub("jar.src.zip.src.zip", "jar.src.zip", $1);ORS=";"; print $1};'` | eval $final



Testes:
# Exibe o replace feito, sem alterar o arquivo - (APENAS TESTES)
ls -1 | awk '{ORS=" "; print "mv "$1; 	("jar.src.zip.src.zip", "jar.src.zip", $1);ORS=";"; print $1};'


