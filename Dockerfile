# Gunakan image Python resmi
FROM python:3.11-slim

# Buat direktori kerja
WORKDIR /app

# Salin semua file ke dalam container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Jalankan Flask pakai gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:8000"]
