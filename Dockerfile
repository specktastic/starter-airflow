FROM apache/airflow:2.5.2

COPY --chown=airflow:root dags/ /opt/airflow/dags
# COPY --chown=airflow:root config/ /opt/airflow/config
# COPY --chown=airflow:root logs/ /opt/airflow/logs
# COPY --chown=airflow:root plugins/ /opt/airflow/plugins

COPY requirements.txt /
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt
