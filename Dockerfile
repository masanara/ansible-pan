FROM python:3.11-slim
RUN apt update && apt upgrade -y && apt install -y ansible
RUN pip install pan-os-python pan-python
RUN ansible-galaxy collection install paloaltonetworks.panos
ENV ANSIBLE_PYTHON_INTERPRETER=/usr/local/bin/python3
COPY . /work
