# autorizar o R e Tidyverse a acessar o R (criar token link externo)
library("googledrive")
google_app <- httr::oauth_app(
  appname = "RStudio",
  key = "1020310332512-guk6qgic2igcsdj9v9pedmhoj7hgeb42.apps.googleusercontent.com",
  secret = "DoSOVh6dBTS3WGYTz0Qnt2Wi"
)
drive_auth_configure(app = google_app)

drive_oauth_app()

# criar um diretório no gdrive para o projeto (ex.: r/r-tutorial)


# usar a biblioteca Rmdrive para fazer a sincronização local
library(rmdrive)
# enviar os arquivos para o google drive
upload_rmd(file = "01-intro", path = "r/r-tutorial")
upload_rmd(file = "02-instalacao", path = "r/r-tutorial")
upload_rmd(file = "03-bibliotecas", path = "r/r-tutorial")
upload_rmd(file = "04-importar", path = "r/r-tutorial")
upload_rmd(file = "05-descrever", path = "r/r-tutorial")
upload_rmd(file = "06-visualizar", path = "r/r-tutorial")
upload_rmd(file = "07-glossario", path = "r/r-tutorial")

## Uma vez feitas as alterações recuperar a versão final do google drive:
download_rmd(file = "02-instalacao", path = "r/r-tutorial")

## corrigido o Rmarkdown, podemos atualizar a versão do drive.
rmdrive::update_rmd(file = "02-instalacao", path = "r/r-tutorial")

