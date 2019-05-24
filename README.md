# Shell Script Backup Challenge 

Programa feito em shell para automatização de Backup HTTPD em distribuições RedHat

  - Apenas executar ./script.sh com permissões administrativas 
  - Empacota e comprime para .tar.gz
  - Funciona em todas as distribuições RedHat

# Funcionamento

  - Apenas baixe e execute, os backups estarão localizados em /etc/backup
  - o programa checará se o sistema operacional é RedHat, se o usuario possui permissões administrativas 
  - Também checará e se a pasta /etc/httpd é existente
  - Os logs gerados pelo programa estarão localizados em /var/log/backup.logs
  - Todos os arquivos backups são nomeados como: bkup-"data".tar.gz



License
----

MIT


**Free Software, Hell Yeah!**
