FROM python:3.13.5-alpine3.22

# Definindo o diretório de trabalho dentro do container
WORKDIR /app

# Copiando arquivo de requisitos e instalando as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiando o restante do código
COPY . .

# Expondo a porta que a aplicação FastAPI irá rodar
EXPOSE 8000

# Comando para rodar a aplicação
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]