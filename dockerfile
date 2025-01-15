FROM ubuntu:24.04

# Copier le fichier cowsay dans le conteneur
COPY bin/cowsay /usr/local/bin/cowsay

# Rendre le fichier exécutable
RUN chmod +x /usr/local/bin/cowsay

# Définir le répertoire de travail
WORKDIR /app

# Commande par défaut
CMD ["cowsay"]

