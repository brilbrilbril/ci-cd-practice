WORKDIR /app

COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY training_model.py

EXPOSE 5001

CMD ["python", "training_model.py"]