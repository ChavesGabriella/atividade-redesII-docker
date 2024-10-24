# Use uma imagem base do Ruby
FROM ruby:latest

# Instale as dependências do Sinatra
RUN gem install sinatra

# Copie o arquivo do aplicativo para a imagem
COPY app.rb /app.rb

# Defina o comando para iniciar o Sinatra
CMD ["ruby", "/app.rb", "-o", "0.0.0.0"]
