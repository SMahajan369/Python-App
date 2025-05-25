FROM python:3.11-slim
COPY ./app /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "app_api:app", "--host", "0.0.0.0", "--port", "8000"]
