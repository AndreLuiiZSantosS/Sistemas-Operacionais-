# Usar a imagem base mais recente do Fedora slim
FROM fedora:latest

# Atualizar o sistema e instalar ferramentas básicas
RUN dnf update -y && \
    dnf install -y util-linux procps-ng && \
    dnf clean all

# Definir o diretório de trabalho
WORKDIR /app

# Comando padrão ao iniciar o container
CMD ["/bin/bash"]