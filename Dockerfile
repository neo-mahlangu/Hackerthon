FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
COPY ./app /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["uvicorn", "app_api:app", "--host", "0.0.0.0", "--port", "5000"]
