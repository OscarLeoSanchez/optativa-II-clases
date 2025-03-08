FROM python:3.10
WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    numpy \
    pandas \
    scipy \
    matplotlib \
    seaborn \
    scikit-learn \
    xgboost \
    lightgbm \
    catboost \
    tensorflow \
    torch \
    optuna \
    jupyterlab

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root"]

# docker run --rm -p 8888:8888 -v ${pwd}:/app <image_name>