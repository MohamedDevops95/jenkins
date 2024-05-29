# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copier tout le contenu de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application va écouter
EXPOSE 5000

# Commande pour exécuter l'application
CMD ["python", "app.py"]

