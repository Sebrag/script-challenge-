# Shell Script Backup Challenge 

Programa feito em shell para automatização de Backup HTTPD em distribuições RedHat

  - Apenas executar ./script.sh com permissões administrativas 
  - Empacota e comprime para .tar.gz
  - Funciona em todas as distribuições RedHat

# Funcionamento

  - Apenas baixe e execute, os backups estarão localizados em /etc/backup
  - o programa checará se o sistema operacional é RedHat e se o usuario possui permissões administrativas 
  - Também checará e se a pasta /etc/httpd é existente, caso não seja, ele não executará
  - Os logs gerados pelo programa estarão localizados em /var/log/backup.logs
  - Todos os arquivos backups são nomeados como: bkup-"data".tar.gz

# Exemplo do log
 cat /var/log/backup.log
24-05-19-10h38min - Backup executado com sucesso
24-05-19-10h40min - Backup executado com sucesso
24-05-19-10h44min - Falha na execução
24-05-19-10h45min - Backup executado com sucesso
24-05-19-11h21min - Backup executado com sucesso
24-05-19-11h25min - Backup executado com sucesso



License
----

MIT


**Free Software, Hell Yeah!**

