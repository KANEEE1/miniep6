# Use a imagem base do Caddy
FROM caddy

# Crie a pasta /usr/src/pages dentro da imagem
RUN mkdir -p /usr/src/pages

# Copie os arquivos HTML para a pasta /usr/src/pages dentro da imagem
COPY index.html /usr/src/pages/index.html
COPY about.html /usr/src/pages/about.html

# Copie o arquivo Caddyfile para a pasta de configuração do Caddy
COPY Caddyfile /etc/caddy/Caddyfile

# Exponha a porta 80 para o contêiner
EXPOSE 80
