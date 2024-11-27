# image dasar python
FROM python:3.9-slim

#direktori kerja dalam container
WORKDIR /app

#install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#salin file script
COPY training_model.py .

#service port 5001
EXPOSE 5001

#run aplikasi
CMD ["python", "training_model.py"]