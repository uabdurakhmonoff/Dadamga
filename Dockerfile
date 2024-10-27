# Python bazasini oling
FROM python:3.9.16-slim

# Ishchi katalogni yarating
WORKDIR /app

# Talablar faylini nusxalash va o'rnatish
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Kodingizni nusxalash
COPY . .

# Botni ishga tushirish
CMD ["python", "moyka.py"]
