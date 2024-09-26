FROM python:3.9

WORKDIR /app

# Copia solo el archivo requirements.txt
COPY requeriments.txt  requeriments.txt

# Actualiza pip y luego instala las dependencias
RUN pip install --no-cache-dir -r requeriments.txt

# Copia el resto de la aplicación
COPY . .

# Estabecer la variable de entorno para Flask
ENV FLASK_APP=Server.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expone el puerto 5000
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["flask", "run"]
