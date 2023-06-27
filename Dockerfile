FROM apache/airflow:2.5.2

COPY --chown=airflow:root dags/ /opt/airflow/dags

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt
