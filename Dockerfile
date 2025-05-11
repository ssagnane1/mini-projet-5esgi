FROM python:3.6-alpine

WORKDIR /opt

ENV ODOO_URL=http://odoo.local PGADMIN_URL=http://pgadmin.local

COPY . .

RUN pip install flask==1.1.2

EXPOSE 8080

ENTRYPOINT ["python", "app.py"]

