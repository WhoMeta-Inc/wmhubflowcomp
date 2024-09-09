# Verwende den offiziellen Node.js-Image als Basis
FROM node:18-alpine

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die notwendigen Dateien und Ordner
COPY index.html .
COPY db.json .
COPY components ./components

# Installiere http-server zum Bereitstellen der Dateien als statischer Server
RUN npm install -g http-server

# Exponiere den gewünschten Port
EXPOSE 4711

# Starte den http-server, um die Dateien zur Verfügung zu stellen, mit aktiviertem CORS
CMD ["http-server", "-p", "4711", "--cors"]
