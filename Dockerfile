FROM oliveiradigital/odoo-br-base:8.0

LABEL maintainer "Gabriel Oliveira <admin@oliveiradigital.com.br>"

USER root

RUN mkdir /addons-br-dependencies

USER odoo

COPY account-fiscal-rule /addons-br-dependencies/
COPY account-payment /addons-br-dependencies/
COPY bank-payment /addons-br-dependencies/
COPY reporting-engine /addons-br-dependencies/
COPY server-tools /addons-br-dependencies/
COPY odoo-brazil-eletronic-documents /addons-br-dependencies/
COPY account-reconcile /addons-br-dependencies/

