FROM python:3.8-alpine
RUN mkdir / code
COPY bbc.py /code
CMD ["python", "/code/bbc.py"]
