# Usa uma imagem base leve do Nginx
FROM nginx:alpine

# Define o diretório de trabalho (onde o Nginx busca os arquivos do site)
WORKDIR /usr/share/nginx/html

# Remove os arquivos padrão do Nginx
RUN rm -rf ./*

# Copia os arquivos do seu site (HTML, CSS, imagens etc.) para dentro do container
COPY . .

# Expõe a porta 80 (padrão HTTP)
EXPOSE 80

# O Nginx inicia automaticamente quando o container roda
