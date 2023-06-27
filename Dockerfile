FROM apache/airflow:2.5.2

COPY --chown=airflow:root test_dag.py /opt/airflow/dags

COPY requirements.txt /
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt
